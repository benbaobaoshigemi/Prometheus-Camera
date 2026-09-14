#pragma once

#include <cstddef>
#include <cstdint>

namespace phoenix {
namespace m3 {

constexpr std::size_t kAsf351RegionSize = 0x1108;

// Only routes with a closed 17U M3-minus-ordinary pair are exposed.  The
// caller selects this after the normal ASF351 interpolation has completed.
enum class AsfRoute : std::uint8_t {
    kUnsupported = 0,
    kUltra = 1,
    kWidePreview = 2,
};

struct AsfCurveLeaf {
    float bounds[4][2];
    std::uint8_t branch[4];
    float curves[6][64];
    bool donor;
};

struct AsfCurveTable {
    const AsfCurveLeaf* leaves;
    std::size_t count;
};

// Adds (interpolated 17U M3 curve - interpolated ordinary curve) to the six
// equivalent ASF351 target windows.  The target region is otherwise left
// untouched.  Returns false for a null/short region, invalid triggers, or an
// unsupported route.
bool apply_m3_asf_delta(std::uint8_t* target_region,
                        std::size_t target_size,
                        AsfRoute route,
                        const float triggers[4]);

namespace asf_data {
extern const AsfCurveTable kUltra;
extern const AsfCurveTable kWidePreview;
}

} // namespace m3
} // namespace phoenix
