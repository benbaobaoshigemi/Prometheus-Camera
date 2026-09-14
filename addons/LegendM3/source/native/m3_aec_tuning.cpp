#include "m3_aec_parameters.h"

namespace {
struct StockCurve {
    const float* lux;
    const float* dynamic;
    const float* values;
    unsigned nx, ny, kind;
};
struct StockTuning { const StockCurve* core; const StockCurve* adaptive; const StockCurve* safe; const StockCurve* base; unsigned flags; };
#include "m3_aec_stock_tuning.h"

unsigned interval(float x, const float* axis, unsigned n) {
    if (x <= axis[0]) return 0;
    for (unsigned i = 0; i + 1 < n; ++i)
        if (x < axis[i + 1]) return i;
    return n - 1;
}
float linear(float x, const float* axis, const float* values, unsigned n) {
    const unsigned i = interval(x, axis, n);
    if (i + 1 == n) return values[i];
    float fraction = (x - axis[i]) / (axis[i + 1] - axis[i]);
    if (fraction > 1) fraction = 1;
    if (fraction < 0) fraction = 0;
    return values[i] + (values[i + 1] - values[i]) * fraction;
}
float query(const StockCurve& curve, float lux, const M3AecHistogramInfo& hist) {
    if (!curve.kind) return linear(lux, curve.lux, curve.values, curve.nx);
    const float dynamic = curve.kind == 1 ? hist.bright_mid : curve.kind == 2 ? hist.mid_dark : hist.bright_dark;
    const unsigned row = interval(dynamic, curve.dynamic, curve.ny);
    const float first = linear(lux, curve.lux, curve.values + row * curve.nx, curve.nx);
    if (row + 1 == curve.ny) return first;
    const float second = linear(lux, curve.lux, curve.values + (row + 1) * curve.nx, curve.nx);
    float fraction = (dynamic - curve.dynamic[row]) / (curve.dynamic[row + 1] - curve.dynamic[row]);
    if (fraction > 1) fraction = 1;
    if (fraction < 0) fraction = 0;
    return first + (second - first) * fraction;
}
}

extern "C" void m3_aec_stock_tuning(unsigned record, float lux, const M3AecHistogramInfo* hist,
                                     float* core, float* adaptive) {
    const StockTuning& tuning = kStock17Tuning[record];
    for (unsigned i = 0; i < 14; ++i) core[i] = query(tuning.core[i], lux, *hist);
    for (unsigned i = 0; i < 24; ++i) adaptive[i] = query(tuning.adaptive[i], lux, *hist);
}

extern "C" unsigned m3_aec_stock_flags(unsigned record) { return kStock17Tuning[record].flags; }

extern "C" unsigned m3_aec_rear_profile(unsigned camera) {
    if (camera == 0) return kStock17Default_wide;
    if (camera == 2) return kStock17Default_ultra;
    return kStock17Default_tele; // Caller supplies the already identified rear tele IDs 3/4.
}

extern "C" void m3_aec_stock_basecaps(unsigned record, float lux, float* output) {
    const M3AecHistogramInfo hist{};
    for (unsigned i = 0; i < 2; ++i) output[i] = query(kStock17Tuning[record].base[i], lux, hist);
}

extern "C" void m3_aec_stock_safe(unsigned record, float lux, float tone_ratio,
                                   float bright_dark, float* output) {
    const M3AecHistogramInfo hist = {tone_ratio, tone_ratio, bright_dark, {}};
    for (unsigned i = 0; i < 3; ++i) output[i] = query(kStock17Tuning[record].safe[i], lux, hist);
}
