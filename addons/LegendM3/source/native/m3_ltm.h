#pragma once
#include <cstdint>

struct M3LtmRegion {
    uint32_t words[267];
};
static_assert(sizeof(M3LtmRegion) == 0x42c);

// Controls must come from the selected donor branch. Other target fields stay native.
struct M3LtmControls {
    float scale_strength;
    float lce_strength;
};

M3LtmRegion m3_ltm_copy_region(const M3LtmRegion& source, M3LtmControls controls);
