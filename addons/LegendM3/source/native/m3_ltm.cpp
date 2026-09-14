#include "m3_ltm.h"
#include <cstring>

M3LtmRegion m3_ltm_copy_region(const M3LtmRegion& source, M3LtmControls controls) {
    M3LtmRegion result = source;
    std::memcpy(&result.words[165], &controls.scale_strength, sizeof(float));
    std::memcpy(&result.words[168], &controls.lce_strength, sizeof(float));
    return result;
}
