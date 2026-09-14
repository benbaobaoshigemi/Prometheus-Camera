// Runtime parameter adapter, started by the Mivi plugin's provider connection.
#include "m3_aec_parameters.h"
#include "shadowhook.h"
#include <android/log.h>
#include <atomic>
#include <cstdint>
#include <cstring>
#include <link.h>
#include <time.h>

extern "C" int m3_ltm_start();

namespace {
constexpr const char* tag = "PhoenixM3AEC";
template<class T> T read(const void* p, size_t offset) {
    T value;
    memcpy(&value, static_cast<const char*>(p) + offset, sizeof(value));
    return value;
}
uint64_t now_ms() {
    timespec t{};
    clock_gettime(CLOCK_BOOTTIME, &t);
    return uint64_t(t.tv_sec) * 1000 + t.tv_nsec / 1000000;
}
// One atomic snapshot prevents mode and freshness being read from different requests.
std::atomic<uint64_t> mode_state{0};
std::atomic<unsigned> sample_sequence{0};
std::atomic<unsigned> camera_samples[5]{};
std::atomic<bool> enabled{false};
std::atomic<unsigned> writing_frames{0};
std::atomic<unsigned> frame_counts[8]{};
std::atomic<unsigned> bright_stage_counts[8]{};
std::atomic<uint64_t> first_process_ms{0};
std::atomic<uint64_t> first_applied_ms{0};
std::atomic<uint64_t> automatic_started_ms{0};
std::atomic<uint64_t> automatic_ready_ms{0};
struct Frame {
    void* owner;
    unsigned camera;
    unsigned sequence;
    int module;
    bool write_enabled;
    bool log_sample;
    bool grid_valid;
    bool histogram_valid;
    bool scale_valid;
    float statistics_scale;
    M3AecHistogramInfo histogram;
    uint32_t histogram_counts[1024];
    void* applied_analyzer;
    float passed_luma;
    float passed_target[2];
    bool target_applied;
    float contribution_weight;
    float weight_source[2];
    float passed_weight;
    float native_ratio;
    bool bright_valid;
    float bright_ratio;
    unsigned bright_stages;
    void* bright_analyzer;
    float bright_target[2];
    float native_short_ratio;
    float native_short_weight;
    unsigned applied_stages;
    float grid[256];
};
thread_local Frame* frame = nullptr;
thread_local void* analyzer = nullptr;
thread_local bool normalize_statistics = false;
thread_local unsigned trigger_depth = 0;
using ProcessFn = uint64_t (*)(void*, void*, void*);
using MflFn = int (*)(void*, void*, void*, void*);
using AnalyzerFn = void* (*)(void*, void*);
using ReaderFn = float* (*)(void*);
using WeightedFn = uint32_t (*)(float, void*, const char*, uint32_t, void*, uint32_t, float*, int);
using HistogramFn = void (*)(void*, void*, uint32_t);
using StatisticsFn = void (*)(void*, const char*, uint32_t, void*, uint32_t, float*, int, int);
using TriggerFn = float* (*)(float, float, void*, int, int);
ProcessFn original_process;
MflFn original_mfl;
AnalyzerFn original_analyzer;
ReaderFn original_reader;
WeightedFn original_weighted;
HistogramFn original_histogram;
StatisticsFn original_statistics;
TriggerFn original_trigger;

void statistics(void* self, const char* name, uint32_t roi, void* input,
                uint32_t weight, float* output, int normalize, int interpolate) {
    const bool previous = normalize_statistics;
    normalize_statistics = normalize == 1;
    original_statistics(self, name, roi, input, weight, output, normalize, interpolate);
    normalize_statistics = previous;
}

uint64_t process(void* self, void* input, void* output) {
    uint64_t unseen = 0;
    first_process_ms.compare_exchange_strong(unseen, now_ms(), std::memory_order_relaxed);
    Frame current{};
    current.owner = self;
    current.statistics_scale = 1;
    current.camera = self ? read<unsigned>(self, 0x44) : ~0U;
    current.sequence = sample_sequence.fetch_add(1, std::memory_order_relaxed);
    current.log_sample = current.camera < 5 &&
        camera_samples[current.camera].load(std::memory_order_relaxed) % 20 == 0;
    const uint64_t state = mode_state.load(std::memory_order_acquire);
    current.module = now_ms() - (state >> 16) <= 250 ? int(state & 0xffff) : -1;
    // Pin the setting for the entire frame. Disabling between luma and target
    // would otherwise publish only half of a contribution.
    writing_frames.fetch_add(1, std::memory_order_acq_rel);
    current.write_enabled = enabled.load(std::memory_order_acquire);
    if (!current.write_enabled) writing_frames.fetch_sub(1, std::memory_order_release);
    Frame* previous = frame;
    frame = &current;
    const uint64_t result = original_process(self, input, output);
    if (current.applied_analyzer) {
        unseen = 0;
        first_applied_ms.compare_exchange_strong(unseen, now_ms(), std::memory_order_relaxed);
        const bool complete = current.applied_stages == 255;
        frame_counts[0].fetch_add(1, std::memory_order_relaxed);
        bright_stage_counts[current.bright_stages].fetch_add(1, std::memory_order_relaxed);
        frame_counts[complete ? 1 : 2].fetch_add(1, std::memory_order_relaxed);
        if (complete && current.camera < 5) frame_counts[3 + current.camera].fetch_add(1, std::memory_order_relaxed);
        if (current.log_sample || !complete)
            __android_log_print(complete ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
                "frame_complete seq=%u module=%d camera=%u stages=%u",
                current.sequence, current.module, current.camera, current.applied_stages);
    }
    if (current.camera < 5 && (!current.write_enabled || current.applied_analyzer))
        camera_samples[current.camera].fetch_add(1, std::memory_order_relaxed);
    frame = previous;
    if (current.write_enabled) writing_frames.fetch_sub(1, std::memory_order_release);
    return result;
}

int mfl(void* self, void* request, void* converted, void* state) {
    void* ops = read<void*>(request, 16);
    using Getter = int (*)(void*, const char*, const char*, int, void**);
    void* value = nullptr;
    const int status = read<Getter>(ops, 56)(read<void*>(ops, 0), "xiaomi.app", "module", 0, &value);
    const int module = status == 0 && value ? read<int>(value, 0) : -1;
    const uint64_t snapshot = (now_ms() << 16) | (unsigned(module) & 0xffff);
    const uint64_t previous = mode_state.exchange(snapshot, std::memory_order_release);
    if ((previous & 0xffff) != (snapshot & 0xffff))
        __android_log_print(ANDROID_LOG_INFO, tag, "mode module=%d status=%d policy=%p", module, status, self);
    return original_mfl(self, request, converted, state);
}

uint32_t weighted(float saturation, void* self, const char* name, uint32_t roi,
                  void* input, uint32_t weight, float* output, int interpolate) {
    const uint32_t result = original_weighted(saturation, self, name, roi, input, weight, output, interpolate);
    if (frame && normalize_statistics && roi == 1 && weight == 50 && strcmp(name, "LumaBE16x16") == 0) {
        frame->statistics_scale = 0.98f / saturation;
        frame->scale_valid = true;
    }
    if (frame && roi == 1 && weight == 1 && strcmp(name, "LumaBE16x16") == 0) {
        void* entry = read<void*>(self, 16);
        if (read<unsigned>(entry, 12) == 16 && read<unsigned>(entry, 16) == 16 &&
            read<unsigned>(entry, 24) == 8) {
            memcpy(frame->grid, read<void*>(entry, 56), sizeof(frame->grid));
            frame->grid_valid = true;
        }
    }
    return result;
}

void histogram(void* self, void* entries, uint32_t count) {
    original_histogram(self, entries, count);
    if (!frame || frame->histogram_valid) return;
    for (uint32_t i = 0; i < count; ++i) {
        const char* entry = static_cast<const char*>(entries) + i * 80;
        if (strcmp(read<const char*>(entry, 40), "BhistY") == 0 &&
            read<unsigned>(entry, 20) == 1024 && read<unsigned>(entry, 24) == 8) {
            memcpy(frame->histogram_counts, read<const uint32_t*>(entry, 56), sizeof(frame->histogram_counts));
            frame->histogram_valid = m3_aec_histogram_info(read<const uint32_t*>(entry, 56), &frame->histogram) != 0;
        }
    }
}

bool main_frame_analyzer() {
    return frame && analyzer &&
        (frame->camera == 0 || frame->camera == 2 || frame->camera == 3 || frame->camera == 4) &&
        read<unsigned>(read<void*>(analyzer, (7 + 0x26) * 8), 24) == 3 &&
        read<unsigned>(read<void*>(analyzer, (7 + 0x26) * 8), 28) == 4 &&
        read<unsigned>(read<void*>(analyzer, 0x55 * 8), 24) == 3 &&
        read<unsigned>(read<void*>(analyzer, 0x55 * 8), 28) == 5;
}

float* trigger(float current, float previous, void* self, int kind, int length) {
    ++trigger_depth;
    float* result = original_trigger(current, previous, self, kind, length);
    --trigger_depth;
    // The original trigger recursively samples/interpolates tuning leaves.
    // Only its outer result is the analyzer's component contribution.
    if (trigger_depth != 0) return result;
    if (frame && analyzer && frame->module == 256 && frame->bright_valid &&
        self == read<void*>(analyzer, 0x280)) {
        const void* config = read<void*>(analyzer, 0x2a8);
        if (read<unsigned>(config, 24) == 3 && read<unsigned>(config, 28) == 57) {
            frame->bright_stages |= 1;
            const float short_luma = read<float>(analyzer, 16);
            const float cap = frame->bright_ratio * short_luma;
            if (frame->log_sample) __android_log_print(ANDROID_LOG_INFO, tag,
                "observe_bright seq=%u module=%d camera=%u luma=%.7g original=[%.7g,%.7g] ratio=%.7g cap=%.7g candidate=%.7g",
                frame->sequence, frame->module, frame->camera, short_luma, result[0], result[1],
                frame->bright_ratio, cap, result[1] < cap ? result[1] : cap);
            if (frame->write_enabled && frame->target_applied) {
                frame->bright_target[0] = result[0];
                frame->bright_target[1] = result[1] < cap ? result[1] : cap;
                frame->bright_analyzer = analyzer;
                frame->applied_stages |= 32;
                if (frame->log_sample) __android_log_print(ANDROID_LOG_INFO, tag,
                    "apply_bright seq=%u module=%d camera=%u old=%.7g passed=%.7g luma=%.7g ratio=%.7g",
                    frame->sequence, frame->module, frame->camera, result[1], frame->bright_target[1],
                    short_luma, frame->bright_ratio);
                return frame->bright_target;
            }
        }
    }
    if (!main_frame_analyzer() || frame->module != 256 ||
        !frame->grid_valid || !frame->scale_valid || !frame->histogram_valid) return result;
    const bool apply = frame->write_enabled && frame->applied_analyzer == analyzer;
    if (self == read<void*>(analyzer, 0x3c0)) {
        // This is the independent FrameSA weight reader (bank3/id6), not
        // the weight of the target's aggregation=0 component.
        if (!apply || !frame->target_applied) return result;
        frame->weight_source[0] = result[0] * frame->contribution_weight;
        frame->weight_source[1] = result[1];
        frame->passed_weight = frame->weight_source[0];
        frame->applied_stages |= 4;
        if (frame->log_sample)
            __android_log_print(ANDROID_LOG_INFO, tag,
                "apply_weight seq=%u module=%d camera=%u old=%.7g passed=%.7g",
                frame->sequence, frame->module, frame->camera, result[0], frame->passed_weight);
        return frame->weight_source;
    }
    if (self != read<void*>(analyzer, 0x280) || (!apply && !frame->log_sample)) return result;
    void* bank = read<void*>(read<void*>(analyzer, 56), 16);
    const float lux = read<float>(bank, 12 + 8 * 16);
    const float average = read<float>(bank, 0x3e8c + 16);
    if (average <= .0001f) return result;
    float center = 0;
    for (unsigned y = 4; y < 12; ++y)
        for (unsigned x = 4; x < 12; ++x) center += frame->grid[y * 16 + x];
    center *= 1.0f / 64;
    if (center < .1f) center = .1f;
    const float replay = m3_aec_weighted_luma(frame->grid, lux, frame->statistics_scale);
    const float spatial_weight = m3_aec_dynamic_weight(lux, center / average);
    const float luma = apply ? frame->passed_luma : average + spatial_weight * (replay - average);
    const unsigned profile = m3_aec_rear_profile(frame->camera);
    float caps[2];
    m3_aec_stock_basecaps(profile, lux, caps);
    M3AecFrameInput input = {lux, result[0], luma, caps[0], caps[1], frame->statistics_scale, 1};
    M3AecNodeResult nodes{};
    const unsigned status = m3_aec_histogram_nodes(profile, frame->histogram_counts, &input, &nodes);
    if (status == 3) {
        M3AecHistogramScale scales{};
        m3_aec_histogram_scale(lux, nodes.histogram.bright_mid, nodes.histogram.mid_dark,
                               nodes.histogram.bright_dark, &scales);
        const bool logic_short = (m3_aec_stock_flags(profile) & 4) != 0;
        frame->bright_ratio = (logic_short ? nodes.core.ordered_ratios[1] : nodes.core.tone_ratios[1]) * scales.bright;
        frame->bright_valid = true;
    }
    const float total_weight = 1 + nodes.adaptive.weight;
    const float ratio = (nodes.core.exposure_ratio + nodes.adaptive.exposure_ratio * nodes.adaptive.weight) / total_weight;
    if (frame->log_sample) __android_log_print(ANDROID_LOG_INFO, tag,
        "observe_source seq=%u module=%d camera=%u status=%u target=[%.7g,%.7g] luma=%.7g core=%.7g adaptive=%.7g weight=%.7g ratio=%.7g candidate=%.7g",
        frame->sequence, frame->module, frame->camera, status, result[0], result[1], luma,
        nodes.core.exposure_ratio, nodes.adaptive.exposure_ratio, total_weight, ratio, ratio * luma);
    if (apply && status == 3) {
        frame->passed_target[0] = ratio * luma;
        frame->passed_target[1] = frame->passed_target[0];
        if (result[1] != result[0]) {
            input.base_target = result[1];
            M3AecNodeResult upper{};
            const unsigned upper_status = m3_aec_histogram_nodes(profile, frame->histogram_counts, &input, &upper);
            if (upper_status != 3) {
                __android_log_print(ANDROID_LOG_ERROR, tag, "target upper node failed status=%u", upper_status);
                return result;
            }
            frame->passed_target[1] = (upper.core.exposure_ratio + upper.adaptive.exposure_ratio * upper.adaptive.weight) /
                                      (1 + upper.adaptive.weight) * luma;
        }
        frame->contribution_weight = total_weight;
        frame->target_applied = true;
        frame->applied_stages |= 2;
        if (frame->log_sample)
            __android_log_print(ANDROID_LOG_INFO, tag,
                "apply_target seq=%u module=%d camera=%u old=[%.7g,%.7g] passed=[%.7g,%.7g] weight=%.7g",
                frame->sequence, frame->module, frame->camera, result[0], result[1],
                frame->passed_target[0], frame->passed_target[1], total_weight);
        return frame->passed_target;
    }
    if (apply) __android_log_print(ANDROID_LOG_ERROR, tag, "target node failed status=%u", status);
    return result;
}

void* analyze(void* self, void* input) {
    void* previous = analyzer;
    analyzer = self;
    void* result = original_analyzer(self, input);
    if (frame && frame->applied_analyzer == self) {
        void* bank = read<void*>(read<void*>(self, 56), 16);
        frame->native_ratio = read<float>(bank, 0x7d0c + 7 * 24);
        const bool consumed = read<float>(result, 8) == frame->passed_luma &&
            read<float>(result, 16) == frame->passed_target[0] &&
            read<float>(result, 20) == frame->passed_target[1] && frame->target_applied &&
            read<float>(bank, 0x7d0c + 6 * 24) == frame->passed_weight;
        if (consumed) frame->applied_stages |= 8;
        if (frame->log_sample || !consumed) __android_log_print(consumed ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
            "consumed seq=%u module=%d camera=%u ok=%d luma=%.7g target=[%.7g,%.7g] weight=%.7g exposure=%llu",
            frame->sequence, frame->module, frame->camera, consumed, read<float>(result, 8),
            read<float>(result, 16), read<float>(result, 20), read<float>(bank, 0x7d0c + 6 * 24),
            static_cast<unsigned long long>(read<uint64_t>(result, 24)));
    }
    if (frame && frame->target_applied) {
        void* config = read<void*>(self, 0x2a8);
        if (read<unsigned>(config, 24) == 3) {
            if (read<unsigned>(config, 28) == 57) frame->bright_stages |= 2;
            if (read<unsigned>(config, 28) == 10) frame->bright_stages |= 4;
        }
        if (frame->bright_analyzer == self) {
            void* bank = read<void*>(read<void*>(self, 56), 16);
            frame->native_short_ratio = read<float>(bank, 0x7d0c + 59 * 24);
            frame->native_short_weight = read<float>(bank, 0x7d0c + 58 * 24);
            const bool consumed = read<float>(result, 16) == frame->bright_target[0] &&
                read<float>(result, 20) == frame->bright_target[1];
            if (consumed) frame->applied_stages |= 64;
            if (frame->log_sample || !consumed) __android_log_print(consumed ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
                "consumed_bright seq=%u module=%d camera=%u ok=%d luma=%.7g target=%.7g ratio=%.7g weight=%.7g exposure=%llu",
                frame->sequence, frame->module, frame->camera, consumed, read<float>(result, 8),
                read<float>(result, 20), frame->native_short_ratio, frame->native_short_weight,
                static_cast<unsigned long long>(read<uint64_t>(result, 24)));
        }
        if (frame->bright_analyzer && read<unsigned>(config, 24) == 3 && read<unsigned>(config, 28) == 10) {
            const float value = read<float>(read<void*>(self, 0x290), 8);
            const float weight = read<float>(read<void*>(self, 0x298), 4);
            const bool consumed = value == frame->native_short_ratio && weight == frame->native_short_weight;
            if (consumed) frame->applied_stages |= 128;
            if (frame->log_sample || !consumed) __android_log_print(consumed ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
                "consumed_short_aggregate seq=%u module=%d camera=%u ok=%d point=%.7g weight=%.7g final=%.7g",
                frame->sequence, frame->module, frame->camera, consumed, value, weight, read<float>(self, 0x2b0));
        }
        if (read<unsigned>(config, 24) == 3 && read<unsigned>(config, 28) == 8) {
            const float value = read<float>(read<void*>(self, 0x290), 0);
            const float weight = read<float>(read<void*>(self, 0x298), 0);
            const bool consumed = value == frame->native_ratio && weight == frame->passed_weight;
            if (consumed) frame->applied_stages |= 16;
            if (frame->log_sample || !consumed) __android_log_print(consumed ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
                "consumed_aggregate seq=%u module=%d camera=%u ok=%d point=%.7g weight=%.7g final=%.7g",
                frame->sequence, frame->module, frame->camera, consumed, value, weight,
                read<float>(self, 0x2b0));
        }
    }
    analyzer = previous;
    return result;
}

float* reader(void* self) {
    const bool main_analyzer = frame && analyzer &&
        read<unsigned>(read<void*>(analyzer, (7 + 0x26) * 8), 24) == 3 &&
        read<unsigned>(read<void*>(analyzer, (7 + 0x26) * 8), 28) == 4 &&
        read<unsigned>(read<void*>(analyzer, 0x55 * 8), 24) == 3 &&
        read<unsigned>(read<void*>(analyzer, 0x55 * 8), 28) == 5;
    const bool apply = main_analyzer && frame->write_enabled &&
        frame->module == 256 && frame->grid_valid && frame->scale_valid && frame->histogram_valid;
    if (apply && self == static_cast<char*>(analyzer) + 56) {
        float* result = original_reader(self);
        void* bank = read<void*>(read<void*>(analyzer, 56), 16);
        const float average = read<float>(bank, 0x3e8c + 16);
        const float lux = read<float>(bank, 12 + 8 * 16);
        float center = 0;
        for (unsigned y = 4; y < 12; ++y)
            for (unsigned x = 4; x < 12; ++x) center += frame->grid[y * 16 + x];
        center *= 1.0f / 64;
        if (center < .1f) center = .1f;
        if (average > .0001f) {
            const float replay = m3_aec_weighted_luma(frame->grid, lux, frame->statistics_scale);
            const float weight = m3_aec_dynamic_weight(lux, center / average);
            const float candidate = average + weight * (replay - average);
            const float old = *result;
            *result = candidate;
            // Match the component's SetDataSceneAnalyzer publication of both lanes.
            memcpy(static_cast<char*>(bank) + 0x7d0c + 4 * 24, &candidate, 4);
            memcpy(static_cast<char*>(bank) + 0x7d10 + 4 * 24, &candidate, 4);
            frame->applied_analyzer = analyzer;
            frame->applied_stages |= 1;
            frame->passed_luma = candidate;
            if (frame->log_sample)
                __android_log_print(ANDROID_LOG_INFO, tag,
                    "apply_luma seq=%u module=%d camera=%u old=%.7g passed=%.7g avg=%.7g scale=%.7g",
                    frame->sequence, frame->module, frame->camera, old, candidate, average, frame->statistics_scale);
        }
        return result;
    }
    // This call is after RunTargetAnalyzerComponent and before exposure calculation.
    if (frame && analyzer && self == static_cast<char*>(analyzer) + 0x2b8) {
        void* luma_config = read<void*>(analyzer, (7 + 0x26) * 8);
        void* target_config = read<void*>(analyzer, 0x55 * 8);
        if (read<unsigned>(luma_config, 24) == 3 && read<unsigned>(luma_config, 28) == 4 &&
            read<unsigned>(target_config, 24) == 3 && read<unsigned>(target_config, 28) == 5 &&
            frame->grid_valid && frame->scale_valid && frame->log_sample) {
            void* bank = read<void*>(read<void*>(analyzer, 56), 16);
            const float lux = read<float>(bank, 12 + 8 * 16);
            const float average = read<float>(bank, 0x3e8c + 16);
            float center = 0;
            for (unsigned y = 4; y < 12; ++y)
                for (unsigned x = 4; x < 12; ++x) center += frame->grid[y * 16 + x];
            center *= 1.0f / 64;
            if (center < .1f) center = .1f;
            // QTI 0x897d0 passes 0.98/exposure-match-scale as the clip fraction.
            // The 17U CalcMatchExpIdx's safe_offset supplies this same role.
            const float replay = m3_aec_weighted_luma(frame->grid, lux, frame->statistics_scale);
            const float weight = average > 0.0001f ? m3_aec_dynamic_weight(lux, center / average) : 0;
            const float candidate = average + weight * (replay - average);
            const float base_scale = frame->histogram_valid ? m3_aec_base_scale(lux, frame->histogram.bright_dark) : 1;
            __android_log_print(ANDROID_LOG_INFO, tag,
                "observe seq=%u module=%d camera=%u owner=%p analyzer=%p grid=1 lux=%.7g avg=%.7g center=%.7g replay=%.7g weight=%.7g candidate=%.7g luma=%.7g target=[%.7g,%.7g] statistics_scale=%.7g hist=%d ratios=[%.7g,%.7g,%.7g] base_scale=%.7g",
                frame->sequence, frame->module, frame->camera, frame->owner, analyzer, lux, average,
                center, replay, weight, candidate, read<float>(analyzer, 16),
                read<float>(analyzer, 24), read<float>(analyzer, 28), frame->statistics_scale,
                frame->histogram_valid, frame->histogram.bright_mid, frame->histogram.mid_dark,
                frame->histogram.bright_dark, base_scale);
            if (frame->module == 256 && frame->histogram_valid &&
                (frame->camera == 0 || frame->camera == 2 || frame->camera == 3 || frame->camera == 4)) {
                const unsigned profile = m3_aec_rear_profile(frame->camera);
                float caps[2];
                m3_aec_stock_basecaps(profile, lux, caps);
                M3AecFrameInput input = {lux, read<float>(analyzer, 24), candidate,
                                         caps[0], caps[1], frame->statistics_scale, 0};
                M3AecNodeResult baseline{}, styled{};
                const unsigned baseline_status = m3_aec_histogram_nodes(profile, frame->histogram_counts, &input, &baseline);
                input.reference_enabled = 1;
                const unsigned styled_status = m3_aec_histogram_nodes(profile, frame->histogram_counts, &input, &styled);
                __android_log_print(ANDROID_LOG_INFO, tag,
                    "observe_hist seq=%u camera=%u profile=%u status=%u/%u core=%.7g/%.7g adaptive=%.7g/%.7g weight=%.7g caps=%.7g/%.7g",
                    frame->sequence, frame->camera, profile, baseline_status, styled_status,
                    baseline.core.exposure_ratio, styled.core.exposure_ratio,
                    baseline.adaptive.exposure_ratio, styled.adaptive.exposure_ratio,
                    styled.adaptive.weight, caps[0], caps[1]);
            }
        }
    }
    return original_reader(self);
}

struct Target { const char* name; const char* build_id; std::atomic<uintptr_t> base; };
Target targets[] = {
    {"com.qti.stats.aec.so", "5bc2dd32eaeb2fdc37b5aab778b12711", 0},
    {"com.qti.stats.aecxcore.so", "691c12d3f208aa92489358c61929e82b", 0},
    {"com.qualcomm.mcx.policy.mfl.so", "bb16460569c1a10d4bb2525463f684e4", 0}
};
int find_target(dl_phdr_info* info, size_t, void*) {
    const char* name = strrchr(info->dlpi_name, '/');
    name = name ? name + 1 : info->dlpi_name;
    for (auto& target : targets) {
        if (strcmp(name, target.name) != 0) continue;
        for (unsigned i = 0; i < info->dlpi_phnum; ++i) {
            const auto& ph = info->dlpi_phdr[i];
            if (ph.p_type != PT_NOTE) continue;
            const char* cursor = reinterpret_cast<const char*>(info->dlpi_addr + ph.p_vaddr);
            const char* end = cursor + ph.p_memsz;
            while (cursor + sizeof(Elf64_Nhdr) <= end) {
                const auto* note = reinterpret_cast<const Elf64_Nhdr*>(cursor);
                const char* note_name = cursor + sizeof(*note);
                const auto* desc = reinterpret_cast<const unsigned char*>(note_name + ((note->n_namesz + 3) & ~3U));
                if (note->n_type == NT_GNU_BUILD_ID && note->n_namesz == 4 && memcmp(note_name, "GNU", 4) == 0 && note->n_descsz == 16) {
                    char hex[33];
                    constexpr char digits[] = "0123456789abcdef";
                    for (unsigned k = 0; k < 16; ++k) { hex[k*2] = digits[desc[k] >> 4]; hex[k*2+1] = digits[desc[k] & 15]; }
                    hex[32] = 0;
                    if (strcmp(hex, target.build_id) == 0) target.base = info->dlpi_addr;
                    else __android_log_print(ANDROID_LOG_ERROR, tag, "Unsupported %s build-id %s", name, hex);
                }
                cursor = reinterpret_cast<const char*>(desc) + ((note->n_descsz + 3) & ~3U);
            }
        }
    }
    return 0;
}
void* stubs[8]{};
std::atomic<bool> automatic_loading{false};
std::atomic<unsigned> automatic_install_state{0};
void loaded(dl_phdr_info*, size_t, void*);
} // namespace

extern "C" __attribute__((visibility("default"))) int m3_aec_uninstall() {
    if (automatic_loading.exchange(false, std::memory_order_acq_rel)) {
        const int removed = shadowhook_unregister_dl_init_callback(nullptr, loaded, nullptr);
        if (removed != 0) return removed;
    }
    enabled.store(false, std::memory_order_release);
    const timespec frame_wait{0, 1000000};
    while (writing_frames.load(std::memory_order_acquire) != 0) nanosleep(&frame_wait, nullptr);
    for (unsigned i = 8; i-- > 0;) {
        if (stubs[i]) {
            const int result = shadowhook_unhook(stubs[i]);
            if (result != 0) return result;
            stubs[i] = nullptr;
        }
    }
    __android_log_print(ANDROID_LOG_INFO, tag, "observation hooks removed");
    return 0;
}

extern "C" __attribute__((visibility("default"))) int m3_aec_set_enabled(int value) {
    enabled.store(value != 0, std::memory_order_release);
    __android_log_print(ANDROID_LOG_INFO, tag, "parameter writes enabled=%d", value != 0);
    return 0;
}

extern "C" __attribute__((visibility("default"))) void m3_aec_statistics(unsigned* output) {
    for (unsigned i = 0; i < 8; ++i) output[i] = frame_counts[i].load(std::memory_order_acquire);
}

extern "C" __attribute__((visibility("default"))) void m3_aec_bright_statistics(unsigned* output) {
    for (unsigned i = 0; i < 8; ++i) output[i] = bright_stage_counts[i].load(std::memory_order_acquire);
}

extern "C" __attribute__((visibility("default"))) void m3_aec_loader_status(uint64_t* output) {
    output[0] = automatic_install_state.load(std::memory_order_acquire);
    output[1] = automatic_started_ms.load(std::memory_order_acquire);
    output[2] = automatic_ready_ms.load(std::memory_order_acquire);
    output[3] = first_process_ms.load(std::memory_order_acquire);
    output[4] = first_applied_ms.load(std::memory_order_acquire);
}

extern "C" __attribute__((visibility("default"))) int m3_aec_install() {
    if (stubs[0]) return -1;
    dl_iterate_phdr(find_target, nullptr);
    for (const auto& target : targets) if (!target.base) return -2;
    const int status = shadowhook_init(SHADOWHOOK_MODE_UNIQUE, false);
    if (status != 0) return status;
    struct Hook { uintptr_t address; void* proxy; void** original; };
    const Hook hooks[] = {
        {targets[0].base + 0x50f40, reinterpret_cast<void*>(process), reinterpret_cast<void**>(&original_process)},
        {targets[2].base + 0x37ea0, reinterpret_cast<void*>(mfl), reinterpret_cast<void**>(&original_mfl)},
        {targets[1].base + 0x8aa30, reinterpret_cast<void*>(weighted), reinterpret_cast<void**>(&original_weighted)},
        {targets[1].base + 0x7e460, reinterpret_cast<void*>(analyze), reinterpret_cast<void**>(&original_analyzer)},
        {targets[1].base + 0x7c740, reinterpret_cast<void*>(reader), reinterpret_cast<void**>(&original_reader)},
        {targets[1].base + 0x8e830, reinterpret_cast<void*>(histogram), reinterpret_cast<void**>(&original_histogram)},
        {targets[1].base + 0x897d0, reinterpret_cast<void*>(statistics), reinterpret_cast<void**>(&original_statistics)},
        {targets[1].base + 0x2b910, reinterpret_cast<void*>(trigger), reinterpret_cast<void**>(&original_trigger)}
    };
    for (unsigned i = 0; i < 8; ++i) {
        stubs[i] = shadowhook_hook_func_addr(reinterpret_cast<void*>(hooks[i].address), hooks[i].proxy, hooks[i].original);
        if (!stubs[i]) {
            const int error = shadowhook_get_errno();
            __android_log_print(ANDROID_LOG_ERROR, tag, "install hook=%u failed=%d %s", i, error, shadowhook_to_errmsg(error));
            const int removed = m3_aec_uninstall();
            return removed ? removed : error;
        }
    }
    __android_log_print(ANDROID_LOG_INFO, tag, "observation hooks installed count=8 writes=0");
    return 0;
}

namespace {
void install_when_ready() {
    if (!automatic_loading.load(std::memory_order_acquire)) return;
    for (const auto& target : targets)
        if (!target.base.load(std::memory_order_acquire)) return;
    unsigned expected = 0;
    if (!automatic_install_state.compare_exchange_strong(expected, 1, std::memory_order_acq_rel)) return;
    const int status = m3_aec_install();
    if (status == 0) {
        automatic_ready_ms.store(now_ms(), std::memory_order_release);
        m3_aec_set_enabled(1);
        const int ltm_status = m3_ltm_start();
        __android_log_print(ltm_status == 0 ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR,
                            "PhoenixM3LTM", "provider startup status=%d", ltm_status);
    }
    automatic_install_state.store(status == 0 ? 2 : 3, std::memory_order_release);
    __android_log_print(status == 0 ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, tag,
                        "provider initialization status=%d time_ms=%llu", status,
                        static_cast<unsigned long long>(now_ms()));
}

void loaded(dl_phdr_info* info, size_t size, void*) {
    if (automatic_install_state.load(std::memory_order_acquire) != 0) return;
    find_target(info, size, nullptr);
    install_when_ready();
}
}

extern "C" __attribute__((visibility("default"))) int m3_aec_start() {
    const int status = shadowhook_init(SHADOWHOOK_MODE_UNIQUE, false);
    if (status != 0) return status;
    bool expected = false;
    if (!automatic_loading.compare_exchange_strong(expected, true, std::memory_order_acq_rel)) return 0;
    automatic_started_ms.store(now_ms(), std::memory_order_release);
    const int registered = shadowhook_register_dl_init_callback(nullptr, loaded, nullptr);
    if (registered != 0) {
        automatic_loading.store(false, std::memory_order_release);
        return registered;
    }
    // Register first so a library loaded concurrently with this scan cannot be missed.
    dl_iterate_phdr(find_target, nullptr);
    install_when_ready();
    __android_log_print(ANDROID_LOG_INFO, tag, "provider loader registered state=%u time_ms=%llu",
                        automatic_install_state.load(std::memory_order_acquire),
                        static_cast<unsigned long long>(now_ms()));
    return automatic_install_state.load(std::memory_order_acquire) == 3 ? -3 : 0;
}
