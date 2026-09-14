#include "m3_monopan.h"

extern "C" void m3_monopan_config(M3MonopanConfig* config, const char* opencl_path) {
    // Stock 17U FilmNoise provider constructor, ELF VA 0x3320 and 0x68ec;
    // initialize at 0x4404 supplies the first six fields.
    *config = {20, 0.8f, 0.3f, 3, 0.2f, 0,
        {0.098f, 0.114f, 0.129f, 0.153f, 0.176f, 0.204f, 0.231f, 0.255f,
         0.282f, 0.306f, 0.337f, 0.369f, 0.400f, 0.431f, 0.463f, 0.494f,
         0.525f, 0.557f, 0.588f, 0.620f, 0.651f, 0.682f, 0.710f, 0.741f,
         0.769f, 0.800f, 0.827f, 0.855f, 0.882f, 0.914f, 0.941f, 0.969f},
         1.0f, 0, opencl_path};
}

extern "C" void m3_monopan_neutralize_uv(M3Image* image) {
    for (uint32_t row = 0; row < image->height / 2; ++row) {
        uint8_t* uv = image->planes[1] + row * image->stride[1];
        for (uint32_t column = 0; column < image->width; ++column) uv[column] = 128;
    }
}

extern "C" int m3_monopan_image_from_mia14(const void* image_params, M3Image* image) {
    const auto* data = static_cast<const uint8_t*>(image_params);
    const auto read32 = [data](size_t offset) { return *reinterpret_cast<const uint32_t*>(data + offset); };
    const uint32_t format = read32(0);
    if ((format != 0x11 && format != 0x23) || read32(0x48) != 2) return -1;
    // Stock 14U FilterPlugin::getImageBuffer layout, independently checked
    // against the original ROM filter. Preserve allocator stride and slices.
    *image = {};
    image->format = format == 0x23 ? 2000 : 2001;
    image->width = read32(4);
    image->height = read32(8);
    image->plane_count = 2;
    for (size_t plane = 0; plane < 2; ++plane) {
        image->stride[plane] = read32(0x1c);
        image->scanlines[plane] = read32(0x20);
        image->plane_bytes[plane] = image->stride[plane] * image->scanlines[plane];
        image->planes[plane] = *reinterpret_cast<uint8_t* const*>(data + 0x58 + plane * 8);
        image->fds[plane] = static_cast<int32_t>(read32(0x4c + plane * 4));
    }
    return 0;
}
