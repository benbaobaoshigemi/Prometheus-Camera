#include "m3_aec_parameters.h"
#include "m3_aec_tables.h"

namespace {
unsigned ceil_positive(float value) {
    const unsigned truncated = static_cast<unsigned>(value);
    return truncated + (value > static_cast<float>(truncated));
}
using namespace m3_aec_tables;

struct Interval { unsigned low; unsigned high; float weight; };

template<unsigned N>
Interval locate(float value, const float (&nodes)[N]) {
    if (value <= nodes[0]) return {0, 0, 0.0f};
    if (value >= nodes[N - 1]) return {N - 1, N - 1, 0.0f};
    for (unsigned i = 1; i < N; ++i) {
        if (value <= nodes[i]) {
            return {i - 1, i, (value - nodes[i - 1]) / (nodes[i] - nodes[i - 1])};
        }
    }
    __builtin_unreachable(); // Finite inputs and strictly increasing extracted nodes.
}

template<unsigned X, unsigned Y, unsigned V>
float interpolate(float x, float y, const float (&xs)[X], const float (&ys)[Y],
                  const float (&values)[V]) {
    static_assert(V == X * Y);
    const Interval ix = locate(x, xs);
    const Interval iy = locate(y, ys);
    const float a = values[iy.low * X + ix.low];
    const float b = values[iy.high * X + ix.low];
    const float low = a + (values[iy.low * X + ix.high] - a) * ix.weight;
    const float high = b + (values[iy.high * X + ix.high] - b) * ix.weight;
    return low + (high - low) * iy.weight;
}

template<unsigned N>
float interpolate(float x, const float (&nodes)[N], const float (&values)[N]) {
    const Interval i = locate(x, nodes);
    return values[i.low] + (values[i.high] - values[i.low]) * i.weight;
}
} // namespace

namespace {
// Port of the original CalculateHistAvgWithPctRangeV2 Y-channel branch.
// Keep its boundary-bin treatment and float operation order for native replay.
float hist_tone(const uint32_t* counts, const float* cdf, const float* percentiles,
                float low, float high) {
    unsigned first = static_cast<unsigned>(percentiles[static_cast<int>(low * 100)]);
    // ARM64 FCVTPS rounds both upper indices upward; the decompiler's casts
    // erase this distinction from the lower FCVTMS indices.
    unsigned high_percent = ceil_positive(high * 100);
    if (high_percent > 100) high_percent = 100;
    unsigned last = ceil_positive(percentiles[high_percent]);
    if (first > 1023) first = 1023;
    if (last > 1023) last = 1023;
    float sum = 0, number = 0, fraction = 1;
    for (unsigned i = first; i <= last; ++i) {
        const float midpoint = i == 1023 ? 1023.0f : static_cast<float>(i) + 0.5f;
        const float count = static_cast<float>(counts[i]);
        if (i == 0) {
            if (low < cdf[0]) {
                fraction = low / cdf[0];
                sum += (1 - fraction) * (midpoint * count);
                number += (1 - fraction) * count;
            }
            if (high < cdf[0]) {
                sum += fraction * (midpoint * count);
                number += fraction * count;
            }
        } else if (cdf[i - 1] < low && low < cdf[i]) {
            fraction = (low - cdf[i - 1]) / (cdf[i] - cdf[i - 1]);
            sum += (1 - fraction) * (midpoint * count);
            number += (1 - fraction) * count;
        } else if (cdf[i - 1] < high && high < cdf[i]) {
            fraction = (high - cdf[i - 1]) / (cdf[i] - cdf[i - 1]);
            sum += fraction * (midpoint * count);
            number += fraction * count;
        } else if (low <= cdf[i] && cdf[i] <= high) {
            sum += midpoint * count;
            number += count;
        }
    }
    return number != 0 ? (sum / number) / 4 : 0;
}
bool prepare_histogram(const uint32_t* counts, float* cdf, float* percentiles) {
    uint64_t total = 0, cumulative = 0;
    for (unsigned i = 0; i < 1024; ++i) total += counts[i];
    if (total == 0) return false;
    for (unsigned i = 0; i < 1024; ++i) {
        cumulative += counts[i];
        cdf[i] = static_cast<float>(static_cast<double>(cumulative) / static_cast<double>(total));
    }
    unsigned previous_percent = 0;
    float previous_cdf_percent = 0;
    for (unsigned i = 1; i < 1024; ++i) {
        const float current = cdf[i] * 100;
        const unsigned percent = static_cast<unsigned>(current);
        for (unsigned p = previous_percent + 1; p <= percent; ++p) {
            float fraction = (static_cast<float>(p) - previous_cdf_percent) / (current - previous_cdf_percent);
            if (fraction > 1) fraction = 1;
            if (fraction < 0) fraction = 0;
            percentiles[p] = fraction + static_cast<float>(i - 1);
        }
        previous_percent = percent;
        previous_cdf_percent = current;
    }
    return true;
}
} // namespace

int m3_aec_histogram_tones(const uint32_t* counts, const float* ranges,
                          unsigned range_count, float* output) {
    float cdf[1024], percentiles[101]{};
    if (!prepare_histogram(counts, cdf, percentiles)) {
        for (unsigned i = 0; i < range_count; ++i) output[i] = 0;
        return 0;
    }
    for (unsigned i = 0; i < range_count; ++i)
        output[i] = hist_tone(counts, cdf, percentiles, ranges[2*i], ranges[2*i+1]);
    return 1;
}

int m3_aec_histogram_info(const uint32_t* counts, M3AecHistogramInfo* output) {
    float cdf[1024], percentiles[101]{};
    if (!prepare_histogram(counts, cdf, percentiles)) {
        *output = {1, 1, 1, {0, 0, 0, 0, 0, 0}};
        return 0;
    }
    constexpr float limits[6] = {0, .2f, .4f, .6f, .8f, 1};
    for (unsigned i = 0; i < 5; ++i)
        output->tones[i] = hist_tone(counts, cdf, percentiles, limits[i], limits[i + 1]);
    output->tones[5] = hist_tone(counts, cdf, percentiles, .2f, .8f);
    for (float tone : output->tones) {
        if (tone < 1e-6f) {
            output->bright_mid = output->mid_dark = output->bright_dark = 1;
            return 0;
        }
    }
    output->bright_mid = output->tones[4] / output->tones[5];
    output->mid_dark = output->tones[5] / output->tones[0];
    output->bright_dark = output->tones[4] / output->tones[0];
    return 1;
}

float m3_aec_base_scale(float lux, float dynamic_range) {
    return interpolate(lux, dynamic_range, kM256M3StyleBaseLuxNode,
                       kM256M3StyleBaseDrNode, kM256M3StyleBaseScale);
}

float m3_aec_dynamic_weight(float lux, float center_average_ratio) {
    return interpolate(lux, center_average_ratio, kM256M3DynamicLuxNode,
                       kM256M3DynamicCenterNode, kM256M3DynamicWeight);
}

float m3_aec_weighted_luma(const float* grid, float lux, float scale) {
    const float bright_start = interpolate(lux, kM256M3WeightLuxNode, kM256M3BrightStart) / scale;
    const float bright_end = interpolate(lux, kM256M3WeightLuxNode, kM256M3BrightEnd) / scale;
    const float bright_weight = interpolate(lux, kM256M3WeightLuxNode, kM256M3BrightWeight);
    const float clamp = 220.0f / scale;
    float weighted_sum = 0.0f;
    float weight_sum = 0.0f;
    for (unsigned i = 0; i < 256; ++i) {
        const float luma = grid[i];
        float adjustment = 1.0f;
        if (luma > bright_start) {
            float fraction = (luma - bright_start) / (bright_end - bright_start);
            if (fraction > 1.0f) fraction = 1.0f;
            adjustment = 1.0f + (bright_weight - 1.0f) * fraction;
        }
        const float weight = kM256M3CenterTable[i] * adjustment;
        const float clipped = luma < clamp ? luma : clamp;
        weighted_sum += clipped * weight;
        weight_sum += weight;
    }
    // Stock 17 Ultra 0x176a6c applies this floor on the ARM64 return value.
    const float result = weighted_sum / weight_sum;
    return result > 0.1f ? result : 0.1f;
}

void m3_aec_histogram_scale(float lux, float bright_mid, float mid_dark,
                          float bright_dark, M3AecHistogramScale* out) {
    out->bright = interpolate(lux, bright_dark, kM256M3StyleHistLuxNode,
                             kM256Aec17uShortLongDr, kM256M3StyleBrightScale);
    out->core_bright_low = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                      kM256M3StyleCoreDrNode, kM256M3StyleCoreBrightLow);
    out->core_dark_low = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                    kM256M3StyleCoreDrNode, kM256M3StyleCoreDarkLow);
    out->core_bright_high = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                       kM256M3StyleCoreDrNode, kM256M3StyleCoreBrightHigh);
    out->core_dark_high = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                     kM256M3StyleCoreDrNode, kM256M3StyleCoreDarkHigh);
    out->core_bright_cap = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                      kM256M3StyleCoreDrNode, kM256M3StyleCoreBrightCap);
    out->core_dark_cap = interpolate(lux, bright_dark, kM256M3StyleCoreLuxNode,
                                    kM256M3StyleCoreDrNode, kM256M3StyleCoreDarkCap);
    out->adaptive_bright = interpolate(lux, bright_mid, kM256M3StyleAdaptiveLuxNode,
                                      kM256M3StyleAdaptiveDrNode, kM256M3StyleAdaptiveBright);
    out->adaptive_mid = interpolate(lux, bright_mid, kM256M3StyleAdaptiveLuxNode,
                                   kM256M3StyleAdaptiveDrNode, kM256M3StyleAdaptiveMid);
    out->adaptive_dark = interpolate(lux, bright_mid, kM256M3StyleAdaptiveLuxNode,
                                    kM256M3StyleAdaptiveDrNode, kM256M3StyleAdaptiveDark);
    out->adaptive_dark_cap = interpolate(lux, mid_dark, kM256M3StyleAdaptiveLuxNode,
                                        kM256M3StyleAdaptiveM2dNode, kM256M3StyleAdaptiveDarkCap);
    out->adaptive_bright_cap = interpolate(lux, bright_mid, kM256M3StyleAdaptiveLuxNode,
                                          kM256M3StyleAdaptiveB2mNode, kM256M3StyleAdaptiveBrightCap);
    out->adaptive_low_cap = 1.0f;
    out->adaptive_high_cap = interpolate(lux, kM256M3StyleAdaptiveLuxNode,
                                         kM256M3StyleAdaptiveHighCap);
}
