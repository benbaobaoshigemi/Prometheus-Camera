#pragma once
#include <stddef.h>
#include <stdint.h>

// Read-only view of the original leica_filter_param_m3.bin. The caller owns data.
struct M3Parameters {
    const uint8_t* data;
    uint32_t zoom_tables;
    uint32_t shading_data;
    uint16_t zoom_count;
    uint16_t shading_count;
};

extern "C" int m3_parameters_open(const uint8_t* data, size_t size, M3Parameters* result);
extern "C" int m3_parameters_shading(const M3Parameters* parameters, uint16_t lux,
                                    float zoom, float output[8]);
