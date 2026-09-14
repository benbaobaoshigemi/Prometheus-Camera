#include "m3_asf.h"

#include <cmath>
#include <cstring>

namespace phoenix {
namespace m3 {
namespace {

constexpr std::size_t kCurveCount = 6;
constexpr std::size_t kCurveLength = 64;
constexpr std::size_t kMaxGroups = 64;
constexpr std::size_t kTargetWindows[kCurveCount] = {
    0x350, 0x450, 0x550, 0xAA0, 0xBA0, 0xCA0,
};

struct Group {
    std::size_t begin;
    std::size_t end;
    std::uint8_t branch;
    float low;
    float high;
};

bool finite_triggers(const float triggers[4]) {
    if (triggers == nullptr) {
        return false;
    }
    for (std::size_t i = 0; i < 4; ++i) {
        if (!std::isfinite(triggers[i])) {
            return false;
        }
    }
    return true;
}

bool make_groups(const AsfCurveLeaf* leaves,
                 std::size_t begin,
                 std::size_t end,
                 std::size_t axis,
                 Group groups[kMaxGroups],
                 std::size_t* count) {
    if (leaves == nullptr || count == nullptr || begin >= end || axis >= 4) {
        return false;
    }
    std::size_t group_count = 0;
    for (std::size_t i = begin; i < end;) {
        if (group_count >= kMaxGroups) {
            return false;
        }
        const std::uint8_t branch = leaves[i].branch[axis];
        std::size_t j = i + 1;
        while (j < end && leaves[j].branch[axis] == branch) {
            ++j;
        }
        groups[group_count] = {
            i,
            j,
            branch,
            leaves[i].bounds[axis][0],
            leaves[i].bounds[axis][1],
        };
        ++group_count;
        i = j;
    }
    *count = group_count;
    return group_count != 0;
}

bool evaluate_curve(const AsfCurveTable& table,
                    std::size_t begin,
                    std::size_t end,
                    std::size_t axis,
                    const float triggers[4],
                    float output[kCurveCount][kCurveLength]) {
    if (begin >= end || end > table.count) {
        return false;
    }
    if (axis == 4) {
        // Every generated leaf has exactly four interpolation axes.  A
        // defensive range check keeps malformed generated data fail-closed.
        if (end != begin + 1) {
            return false;
        }
        std::memcpy(output, table.leaves[begin].curves, sizeof(float) * kCurveCount * kCurveLength);
        return true;
    }

    Group groups[kMaxGroups] = {};
    std::size_t group_count = 0;
    if (!make_groups(table.leaves, begin, end, axis, groups, &group_count)) {
        return false;
    }

    // V6 leaves are emitted in trigger branch order.  Check the invariant
    // before using the compact group ranges below.
    for (std::size_t i = 1; i < group_count; ++i) {
        if (groups[i - 1].branch >= groups[i].branch) {
            return false;
        }
    }

    const float value = triggers[axis];
    std::size_t first = 0;
    std::size_t second = 0;
    float ratio = 0.0f;
    if (value <= groups[0].high) {
        first = second = 0;
    } else {
        bool identified = false;
        for (std::size_t i = 0; i + 1 < group_count; ++i) {
            if (value > groups[i].high && value < groups[i + 1].low) {
                first = i;
                second = i + 1;
                const float gap = groups[i + 1].low - groups[i].high;
                ratio = (gap > 0.0f) ? (value - groups[i].high) / gap : 0.0f;
                identified = true;
                break;
            }
            if (value <= groups[i + 1].high) {
                first = second = i + 1;
                identified = true;
                break;
            }
        }
        if (!identified) {
            first = second = group_count - 1;
        }
    }

    float first_output[kCurveCount][kCurveLength] = {};
    if (!evaluate_curve(table, groups[first].begin, groups[first].end, axis + 1,
                        triggers, first_output)) {
        return false;
    }
    if (first == second) {
        std::memcpy(output, first_output, sizeof(first_output));
        return true;
    }

    float second_output[kCurveCount][kCurveLength] = {};
    if (!evaluate_curve(table, groups[second].begin, groups[second].end, axis + 1,
                        triggers, second_output)) {
        return false;
    }
    for (std::size_t curve = 0; curve < kCurveCount; ++curve) {
        for (std::size_t i = 0; i < kCurveLength; ++i) {
            output[curve][i] = first_output[curve][i] +
                (second_output[curve][i] - first_output[curve][i]) * ratio;
        }
    }
    return true;
}

} // namespace

bool apply_m3_asf_delta(std::uint8_t* target_region,
                        std::size_t target_size,
                        AsfRoute route,
                        const float triggers[4]) {
    if (target_region == nullptr || target_size < kAsf351RegionSize ||
        !finite_triggers(triggers)) {
        return false;
    }

    const AsfCurveTable* table = nullptr;
    switch (route) {
        case AsfRoute::kUltra:
            table = &asf_data::kUltra;
            break;
        case AsfRoute::kWidePreview:
            table = &asf_data::kWidePreview;
            break;
        case AsfRoute::kUnsupported:
        default:
            return false;
    }
    if (table->leaves == nullptr || table->count == 0) {
        return false;
    }

    float donor[kCurveCount][kCurveLength] = {};
    float ordinary[kCurveCount][kCurveLength] = {};
    // Generated tables store donor and ordinary leaves in two contiguous
    // sections.  Evaluate each section independently so differing trigger
    // partitions (the ultra pair is 8 vs 9 leaves) remain correct.
    std::size_t donor_count = 0;
    while (donor_count < table->count && table->leaves[donor_count].donor) {
        ++donor_count;
    }
    if (donor_count == 0 || donor_count >= table->count) {
        return false;
    }
    if (!evaluate_curve(*table, 0, donor_count, 0, triggers, donor) ||
        !evaluate_curve(*table, donor_count, table->count, 0, triggers, ordinary)) {
        return false;
    }

    for (std::size_t curve = 0; curve < kCurveCount; ++curve) {
        for (std::size_t i = 0; i < kCurveLength; ++i) {
            float target = 0.0f;
            const std::size_t offset = kTargetWindows[curve] + i * sizeof(float);
            std::memcpy(&target, target_region + offset, sizeof(target));
            target += donor[curve][i] - ordinary[curve][i];
            std::memcpy(target_region + offset, &target, sizeof(target));
        }
    }
    return true;
}

} // namespace m3
} // namespace phoenix

#include "m3_asf_data.inc"
