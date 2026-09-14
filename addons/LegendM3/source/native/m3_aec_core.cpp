#include "m3_aec_parameters.h"

// Stock 17U CalculateFrameSA (libmiaec.so + 0x184838), after its
// GetFrameSATuningData / CalculateSpecificToneAvg inputs are available.
// This stage produces the histogram adjustment, not a final EV override.
int m3_aec_core_adjustment(const M3AecCoreInput* in, M3AecCoreResult* out) {
    for (float tone : in->tones) {
        const float magnitude = tone < 0 ? -tone : tone;
        if (magnitude < 1e-6f) return 0;
    }
    const float bl = in->targets[0] / in->tones[0];
    const float bh = in->targets[1] / in->tones[1];
    const float dl = in->targets[2] / in->tones[2];
    const float dh = in->targets[3] / in->tones[3];
    const float base = in->base_target / in->frame_luma;
    const float bmin = bl <= bh ? bl : bh;
    const float bmax = bl <= bh ? bh : bl;
    const float dmin = dl <= dh ? dl : dh;
    const float dmax = dl <= dh ? dh : dl;
    const float bnlo = bmin / base <= in->bright_cap ? bmin / base : in->bright_cap;
    const float bnhi = bmax / base <= in->bright_cap ? bmax / base : in->bright_cap;
    const float dnlo = in->dark_cap <= dmin / base ? dmin / base : in->dark_cap;
    const float dnhi = in->dark_cap <= dmax / base ? dmax / base : in->dark_cap;
    float low = dnhi, high = bnlo;
    if (bnlo <= dnhi) {
        if (bnhi <= dnhi) {
            low = bnhi;
            high = dnlo;
            if (dnlo <= bnhi) {
                low = bnlo;
                high = bnhi;
                if (bnlo <= dnlo) low = dnlo;
            }
        } else {
            low = bnlo;
            high = dnhi;
            if (bnlo <= dnlo) low = dnlo;
        }
    }
    const float upper = in->base_high_cap <= 1 ? 1 : in->base_high_cap;
    const float lower = 1 <= in->base_low_cap ? 1 : in->base_low_cap;
    float adjustment = 1;
    if (low > 1 && high > 1) adjustment = low;
    else if (low < 1 && high < 1) adjustment = high;
    if (!(adjustment <= upper)) adjustment = upper;
    if (!(lower <= adjustment)) adjustment = lower;
    *out = {base, {bl, bh, dl, dh},
            {in->tones[0], in->tones[1], in->tones[2], in->tones[3]},
            {bmin, bmax, dmin, dmax}, {bnlo, bnhi, dnlo, dnhi},
            in->bright_cap, in->dark_cap, low, high, adjustment, base * adjustment};
    return 1;
}
