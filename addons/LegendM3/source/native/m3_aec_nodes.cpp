#include "m3_aec_parameters.h"

unsigned m3_aec_histogram_nodes(unsigned record, const uint32_t* counts,
                                const M3AecFrameInput* in, M3AecNodeResult* out) {
    m3_aec_histogram_info(counts, &out->histogram);
    const auto& hist = out->histogram;
    float* c = out->core_tuning;
    float* a = out->adaptive_tuning;
    m3_aec_stock_tuning(record, in->lux, &hist, c, a);
    float base_target = in->base_target;
    if (in->reference_enabled) {
        M3AecHistogramScale scale;
        m3_aec_histogram_scale(in->lux, hist.bright_mid, hist.mid_dark, hist.bright_dark, &scale);
        base_target *= m3_aec_base_scale(in->lux, hist.bright_dark);
        c[8] *= scale.core_bright_low;
        c[9] *= scale.core_bright_high;
        c[10] *= scale.core_dark_low;
        c[11] *= scale.core_dark_high;
        c[12] *= scale.core_bright_cap;
        c[13] *= scale.core_dark_cap;
        a[6] *= scale.adaptive_bright;
        a[7] *= scale.adaptive_mid;
        a[8] *= scale.adaptive_dark;
        a[19] *= scale.adaptive_dark_cap;
        a[20] *= scale.adaptive_bright_cap;
        // Names in the reference describe its source slots. Preserve the slots:
        // +0x59 is the original high cap and +0x5d the original low cap.
        a[22] *= scale.adaptive_low_cap;
        a[23] *= scale.adaptive_high_cap;
    }
    const float ranges[] = {c[0], c[2], c[1], c[3], c[4], c[5], c[6], c[7], a[0], a[1], a[2], a[3]};
    float tones[6];
    m3_aec_histogram_tones(counts, ranges, 6, tones);
    tones[0] *= in->saturation_scale;
    tones[1] *= in->saturation_scale;
    tones[4] *= in->saturation_scale;
    const M3AecCoreInput core = {{tones[0], tones[1], tones[2], tones[3]},
                                {c[8], c[9], c[10], c[11]}, c[12], c[13],
                                base_target, in->frame_luma, in->base_high_cap, in->base_low_cap};
    const unsigned core_ok = m3_aec_core_adjustment(&core, &out->core);
    const float base = base_target / in->frame_luma;
    float bright = a[6] / tones[4] / base;
    float dark = a[8] / tones[5] / base;
    if (bright < a[20]) bright = a[20];
    if (dark < a[19]) dark = a[19];
    const float ratio = dark <= 1e-6f ? 1 : bright / dark;
    float safe[3];
    m3_aec_stock_safe(record, in->lux, ratio, hist.bright_dark, safe);
    const unsigned flags = m3_aec_stock_flags(record);
    const M3AecAdaptiveInput adaptive = {
        {tones[4], tones[5]}, {a[6], a[8]}, a[20], a[19], base, a[22], a[23], a[21],
        {a[9], a[10], a[11], a[12], a[13], a[14], a[15]},
        safe[0], safe[1], safe[2], flags & 1, (flags >> 1) & 1};
    const unsigned adaptive_ok = m3_aec_adaptive_adjustment(&adaptive, &out->adaptive);
    return core_ok | adaptive_ok << 1;
}
