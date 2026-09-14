#include "m3_aec_parameters.h"

namespace {
float minimum(float a, float b) { return a < b ? a : b; }
float maximum(float a, float b) { return a > b ? a : b; }
float magnitude(float a) { return a < 0 ? -a : a; }
}

// Stock 17U CalculateAdaptiveToneSA, after tuning interpolation and tone sampling.
int m3_aec_adaptive_adjustment(const M3AecAdaptiveInput* in, M3AecAdaptiveResult* out) {
    if (!in->enabled || magnitude(in->tones[0]) < 1e-6f || magnitude(in->tones[1]) < 1e-6f) {
        out->exposure_ratio = in->base_ratio;
        out->weight = 0;
        out->adjustment = 1;
        return 0;
    }
    const float bright = in->targets[0] / in->tones[0];
    const float dark = in->targets[1] / in->tones[1];
    const float bn = maximum(in->bright_cap, bright / in->base_ratio);
    const float dn = maximum(in->dark_cap, dark / in->base_ratio);
    float blend;
    if (bn > 1 && dn > 1) blend = maximum(bn, dn);
    else if (bn < 1 && dn < 1) blend = minimum(bn, dn);
    else blend = dn * bn;
    const float upper = maximum(in->high_cap, 1);
    const float lower = minimum(in->low_cap, 1);
    const float bright_dark = dn <= 1e-6f ? 1 : bn / dn;
    float high = maximum(1, minimum(dn, upper));
    float low = minimum(1, maximum(bn, lower));
    if (in->extra_enabled) {
        high = in->high_scale * high;
        low = in->low_scale * low;
        blend = minimum(blend, in->limit);
    }
    const float* t = in->thresholds;
    const float extra_start = maximum(t[3], t[4]);
    // 0x18532c FMAXNM applies the lower clamp omitted by the decompiler.
    const float extra_fraction = maximum(minimum((blend - extra_start) / (t[5] - extra_start), 1), 0);
    const float extra_ratio = (t[6] - 1) * extra_fraction + 1;
    const float extra_target = extra_ratio * high;
    float adjustment = low;
    if (t[0] <= blend) {
        if (t[1] <= blend) {
            adjustment = 1;
            if (t[2] <= blend) {
                if (t[3] <= blend) {
                    adjustment = high;
                    if (extra_start <= blend) {
                        adjustment = extra_target;
                        if (blend < t[5]) adjustment = (extra_target - high) * extra_fraction + high;
                    }
                } else {
                    const float fraction = maximum(minimum((blend - t[2]) / (t[3] - t[2]), 1), 0);
                    adjustment = (high - 1) * fraction + 1;
                }
            }
        } else {
            const float fraction = maximum(minimum((blend - t[0]) / (t[1] - t[0]), 1), 0);
            adjustment = low + (1 - low) * fraction;
        }
    }
    const float r0 = out->reserved[0], r1 = out->reserved[1];
    *out = {{in->tones[0], in->tones[1]}, {bright, dark}, {bn, dn}, blend,
            high, low, extra_ratio, in->base_ratio * adjustment, in->weight,
            adjustment, extra_target, upper, lower, {r0, r1}, bright_dark,
            in->high_scale, in->low_scale, in->limit};
    return 1;
}
