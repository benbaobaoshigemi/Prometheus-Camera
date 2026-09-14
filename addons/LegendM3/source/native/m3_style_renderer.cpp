#include <android/log.h>
#define _LIBCPP_VERBOSE_ABORT(...) __android_log_assert(nullptr, "PhoenixM3", __VA_ARGS__)
#include <string>
#include <cerrno>
#include "m3_style_renderer.h"

namespace videoprocess { enum VideoFormat : int {}; }
class CvStyleRtCreator {
public:
    static void* createFilter(videoprocess::VideoFormat, bool);
};

extern "C" __attribute__((visibility("default")))
int m3_style_render(int format, const char* configuration, void* input, void* output) {
    void* object = CvStyleRtCreator::createFilter(static_cast<videoprocess::VideoFormat>(format), false);
    if (!object) return -ENODEV;
    void** table = *static_cast<void***>(object);
    const bool configured = reinterpret_cast<bool (*)(void*, std::string)>(table[10])(
        object, std::string(configuration));
    if (configured)
        reinterpret_cast<void (*)(void*, void*, void*)>(table[12])(object, input, output);
    reinterpret_cast<void (*)(void*)>(table[1])(object);
    return configured ? 0 : -EINVAL;
}
