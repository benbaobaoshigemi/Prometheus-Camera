#include "m3_parameters.h"

namespace {
uint16_t u16(const uint8_t* p) {
    return uint16_t(p[0]) | uint16_t(p[1]) << 8;
}
float f32(const uint8_t* p) {
    float value;
    __builtin_memcpy(&value, p, sizeof(value));
    return value;
}

// This adapter consumes the supplied M3 asset: each lux row has one CCT range.
// Both preview and snapshot LUT flags are off; the active effect is CvStyleEffect.
constexpr unsigned kLuxRowSize = 12;
constexpr unsigned kShadingValues = 8;
}

extern "C" int m3_parameters_open(const uint8_t* data, size_t size, M3Parameters* out) {
    if (size < 2) return -1;
    const unsigned scenes = u16(data);
    const unsigned header = 2 + scenes * 2;
    if (header + 8 > size) return -1;
    const unsigned tables = u16(data + header);
    const unsigned lut = u16(data + header + 2);
    const unsigned cube = u16(data + header + 4);
    const unsigned zooms = u16(data + header + 6);
    const unsigned sizes = header + 8;
    const unsigned flags = sizes + zooms * 2 + 832;
    if (!zooms || flags + 8 > size || cube != 17) return -1;
    if (u16(data + flags) || u16(data + flags + 2) ||
        u16(data + flags + 4) != 1 || u16(data + flags + 6) != 1) return -2;

    unsigned cursor = tables;
    unsigned lut_count = 0;
    for (unsigned i = 0; i < scenes; ++i) {
        const unsigned bytes = u16(data + 2 + i * 2);
        if (bytes != 78 || cursor + bytes > size) return -1;
        const uint8_t* row = data + cursor + 64;
        if (u16(row) != 1 || u16(row + 6) != 1) return -1;
        const unsigned count = u16(row + 12) + 1;
        if (count > lut_count) lut_count = count;
        cursor += bytes;
    }
    const unsigned zoom_tables = cursor;
    unsigned shading_count = 0;
    float previous_zoom = 0;
    for (unsigned i = 0; i < zooms; ++i) {
        const unsigned bytes = u16(data + sizes + i * 2);
        if (bytes < 6 || cursor + bytes > size) return -1;
        const float zoom = f32(data + cursor);
        const unsigned rows = u16(data + cursor + 4);
        if (!(zoom > previous_zoom) || !rows || bytes != 6 + rows * kLuxRowSize) return -1;
        previous_zoom = zoom;
        unsigned previous_high = 0;
        for (unsigned j = 0; j < rows; ++j) {
            const uint8_t* row = data + cursor + 6 + j * kLuxRowSize;
            const unsigned low = u16(row), high = u16(row + 2);
            if (low > high || (j && low <= previous_high) || u16(row + 4) != 1 ||
                u16(row + 6) != 1 || u16(row + 8) != 10000) return -1;
            previous_high = high;
            const unsigned count = u16(row + 10) + 1;
            if (count > shading_count) shading_count = count;
        }
        cursor += bytes;
    }
    const size_t shading = lut + size_t(lut_count) * 17 * 17 * 17 * 3;
    if (cursor > lut || shading + shading_count * 32 != size || shading_count > 65535) return -1;
    out->data = data;
    out->zoom_tables = zoom_tables;
    out->shading_data = unsigned(shading);
    out->zoom_count = uint16_t(zooms);
    out->shading_count = uint16_t(shading_count);
    return 0;
}

extern "C" int m3_parameters_shading(const M3Parameters* p, uint16_t lux,
                                    float zoom, float output[8]) {
    if (!(zoom > 0)) return -1;
    const uint8_t* table = p->data + p->zoom_tables;
    for (unsigned i = 1; i < p->zoom_count; ++i) {
        const uint8_t* next = table + 6 + u16(table + 4) * kLuxRowSize;
        if (zoom < f32(next)) break;
        table = next;
    }
    const unsigned count = u16(table + 4);
    const uint8_t* rows = table + 6;
    unsigned index = 0;
    while (index + 1 < count && lux > u16(rows + index * kLuxRowSize + 2)) ++index;
    const uint8_t* high = rows + index * kLuxRowSize;
    const uint8_t* low = high;
    float weight = 0;
    if (index && lux < u16(high)) {
        low -= kLuxRowSize;
        const unsigned start = u16(low + 2), end = u16(high);
        weight = float(lux - start) / float(end - start);
    }
    const uint8_t* a = p->data + p->shading_data + u16(low + 10) * 32;
    const uint8_t* b = p->data + p->shading_data + u16(high + 10) * 32;
    for (unsigned i = 0; i < kShadingValues; ++i) {
        output[i] = f32(a + i * 4) * (1.0f - weight) + f32(b + i * 4) * weight;
    }
    return 0;
}
