#pragma once
#include <stddef.h>
#include <stdint.h>

struct M3MonopanConfig {
    uint32_t density;
    float grain_size;
    float mix;
    uint32_t kernel_size;
    float sigma;
    uint32_t mode;
    float curve[32];
    float curve_end;
    uint32_t reserved;
    const char* opencl_binary_path;
};

struct M3Image {
    uint32_t format, width, height, plane_count;
    uint32_t stride[4], scanlines[4], plane_bytes[4];
    uint8_t* planes[4];
    int32_t fds[4];
};

// These are the actual vendor C entry points; deinit consumes a handle pointer.
using M3MonopanInit = void* (*)(const M3MonopanConfig*);
using M3MonopanProcess = int (*)(void*, const M3Image*, M3Image*);
using M3MonopanDeinit = void (*)(void**);

extern "C" void m3_monopan_config(M3MonopanConfig* config, const char* opencl_path);
extern "C" void m3_monopan_neutralize_uv(M3Image* image);
extern "C" int m3_monopan_image_from_mia14(const void* image_params, M3Image* image);

static_assert(sizeof(M3Image) == 112);
static_assert(offsetof(M3Image, planes) == 0x40);
static_assert(offsetof(M3Image, fds) == 0x60);
static_assert(offsetof(M3MonopanConfig, curve) == 24);
static_assert(offsetof(M3MonopanConfig, opencl_binary_path) == 0xa0);
static_assert(sizeof(M3MonopanConfig) == 168);
