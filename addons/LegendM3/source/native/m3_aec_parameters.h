#pragma once
#include <stdint.h>

struct M3AecHistogramInfo {
    float bright_mid;
    float mid_dark;
    float bright_dark;
    float tones[6]; // five consecutive quintiles, then the 20–80% middle region
};

// Ratios are the reference's bright/mid, mid/dark, and bright/dark statistics.
// They are not exposure compensation, sensor gain, or HDR exposure ratios.
struct M3AecHistogramScale {
    float bright;
    float core_bright_low;
    float core_dark_low;
    float core_bright_high;
    float core_dark_high;
    float core_bright_cap;
    float core_dark_cap;
    float adaptive_bright;
    float adaptive_mid;
    float adaptive_dark;
    float adaptive_dark_cap;
    float adaptive_bright_cap;
    float adaptive_low_cap;
    float adaptive_high_cap;
};

// Inputs after stock tone sampling and tuning interpolation.
struct M3AecCoreInput {
    float tones[4]; // bright low/high, dark low/high; bright includes saturation scale
    float targets[4];
    float bright_cap;
    float dark_cap;
    float base_target;
    float frame_luma;
    float base_high_cap;
    float base_low_cap;
};

struct M3AecCoreResult {
    float base_ratio;
    float tone_ratios[4];
    float tones[4];
    float ordered_ratios[4];
    float normalized_ratios[4];
    float bright_cap;
    float dark_cap;
    float selected_low;
    float selected_high;
    float adjustment;
    float exposure_ratio;
};

struct M3AecAdaptiveInput {
    float tones[2]; // bright (with saturation scale), dark
    float targets[2];
    float bright_cap;
    float dark_cap;
    float base_ratio;
    float high_cap;
    float low_cap;
    float weight;
    float thresholds[7]; // low start/end, high start/end, extra start/end/multiplier
    float limit;
    float high_scale;
    float low_scale;
    uint32_t enabled;
    uint32_t extra_enabled;
};

struct M3AecAdaptiveResult {
    float tones[2];
    float tone_ratios[2];
    float normalized_ratios[2];
    float blend_ratio;
    float target_high;
    float target_low;
    float extra_ratio;
    float exposure_ratio;
    float weight;
    float adjustment;
    float extra_target;
    float high_cap;
    float low_cap;
    float reserved[2]; // The stock consumer does not write these slots.
    float bright_dark_ratio;
    float high_scale;
    float low_scale;
    float limit;
};

struct M3AecFrameInput {
    float lux;
    float base_target;
    float frame_luma;
    float base_high_cap;
    float base_low_cap;
    float saturation_scale;
    uint32_t reference_enabled;
};

struct M3AecNodeResult {
    M3AecHistogramInfo histogram;
    float core_tuning[14];
    float adaptive_tuning[24];
    M3AecCoreResult core;
    M3AecAdaptiveResult adaptive;
};

extern "C" {
void m3_aec_histogram_scale(float lux, float bright_mid, float mid_dark,
                          float bright_dark, M3AecHistogramScale* output);
float m3_aec_base_scale(float lux, float dynamic_range);
float m3_aec_dynamic_weight(float lux, float center_average_ratio);
// Row-major 16x16 linear luma; scale is the caller's statistics exposure scale.
// Spatial table, bright weighting and clamp follow the reference M3 replay.
float m3_aec_weighted_luma(const float* grid, float lux, float scale);
// The current 14U BhistY is a single Y channel with 1024 linear bins.
// Returns zero when the original 17U dynamic-range calculation rejects a tone.
int m3_aec_histogram_info(const uint32_t* counts, M3AecHistogramInfo* output);
// Consecutive [low, high] percentile pairs from interpolated original tuning.
int m3_aec_histogram_tones(const uint32_t* counts, const float* ranges,
                          unsigned range_count, float* output);
int m3_aec_core_adjustment(const M3AecCoreInput* input, M3AecCoreResult* output);
int m3_aec_adaptive_adjustment(const M3AecAdaptiveInput* input, M3AecAdaptiveResult* output);
void m3_aec_stock_tuning(unsigned record, float lux, const M3AecHistogramInfo* hist,
                         float* core, float* adaptive);
unsigned m3_aec_stock_flags(unsigned record);
unsigned m3_aec_rear_profile(unsigned camera);
void m3_aec_stock_basecaps(unsigned record, float lux, float* output);
void m3_aec_stock_safe(unsigned record, float lux, float tone_ratio, float bright_dark, float* output);
unsigned m3_aec_histogram_nodes(unsigned record, const uint32_t* counts,
                                const M3AecFrameInput* input, M3AecNodeResult* output);
}
