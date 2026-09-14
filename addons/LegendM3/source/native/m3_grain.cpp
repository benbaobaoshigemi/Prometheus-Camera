#include "m3_grain.h"

extern "C" void* MonopanInit(const M3MonopanConfig*);
extern "C" int MonopanProcess(void*, const M3Image*, M3Image*);
extern "C" void MonopanDeinit(void**);

extern "C" void* m3_grain_open() {
    M3MonopanConfig config;
    // Match the stock FilmNoise plugin: the vendor implementation owns its
    // /data/vendor/camera cache and reads the original ODM OpenCL asset.
    m3_monopan_config(&config, "/odm/etc/camera/xiaomi/phoenix_m3/mialgo_monopan_cl.bin");
    return MonopanInit(&config);
}

extern "C" int m3_grain_process(void* handle, const void* mia14_input, const void* mia14_output) {
    M3Image input, output;
    if (m3_monopan_image_from_mia14(mia14_input, &input) != 0 ||
        m3_monopan_image_from_mia14(mia14_output, &output) != 0) return -22;
    const int result = MonopanProcess(handle, &input, &output);
    if (result != 0) return result;
    m3_monopan_neutralize_uv(&output);
    return 0;
}

extern "C" void m3_grain_close(void** handle) {
    MonopanDeinit(handle);
}
