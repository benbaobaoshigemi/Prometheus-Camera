#include "shadowhook.h"
#include <android/log.h>
#include <cerrno>
#include <cstddef>
#include <cstdint>
#include <cstring>

namespace {
// mihal::Metadata::find returns a 32-byte entry; only count and data are used.
struct MetadataEntry {
    uint64_t descriptor[2];
    size_t count;
    const int32_t* data;
};
static_assert(sizeof(MetadataEntry) == 32);
static_assert(offsetof(MetadataEntry, count) == 16);
static_assert(offsetof(MetadataEntry, data) == 24);
using FindMetadata = MetadataEntry (*)(const void*, const char*);
using Convert = void (*)(void*, void*, uint32_t, const char*);
FindMetadata find_metadata;
Convert original_convert;
void* hook;

template<class T> T read(const void* object, size_t offset) {
    T value;
    memcpy(&value, static_cast<const uint8_t*>(object) + offset, sizeof(value));
    return value;
}

void convert(void* mode, void* stream, uint32_t features, const char* tag) {
    const float ratio = read<float>(stream, 0x24);
    if (read<uint32_t>(stream, 0x28) == 32 && read<uint8_t>(stream, 0x32) != 0 &&
        ratio > 1.499f && ratio < 1.501f) {
        const void* config = read<const void*>(mode, 0x28);
        if (read<uint32_t>(config, 0x28) == 0x9002) {
            const auto entry = find_metadata(static_cast<const uint8_t*>(config) + 0x30,
                                             "xiaomi.app.module");
            if (entry.count == 1 && entry.data && *entry.data == 256) {
                // The 14U remosaic selector has only 4:3 and 16:9 envelopes.
                // A 3:2 final image needs the full 4:3 RAW envelope, just like
                // its binned RAW streams. Keep the separate YUV output at 3:2.
                const float full_frame = 4.0f / 3.0f;
                memcpy(static_cast<uint8_t*>(stream) + 0x24, &full_frame, sizeof(full_frame));
                __android_log_print(ANDROID_LOG_INFO, "PhoenixM3Geometry",
                    "M3 remosaic camera=%u role=%u input_ratio=4:3 output_ratio=3:2",
                    read<uint32_t>(stream, 0), read<uint32_t>(stream, 4));
            }
        }
    }
    original_convert(mode, stream, features, tag);
}
}

extern "C" int m3_stream_geometry_start() {
    if (hook) return 0;
    const int status = shadowhook_init(SHADOWHOOK_MODE_UNIQUE, false);
    if (status) return status;
    void* library = shadowhook_dlopen("camera.xiaomi.so");
    if (!library) return -ENOENT;
    find_metadata = reinterpret_cast<FindMetadata>(shadowhook_dlsym(library,
        "_ZNK5mihal8Metadata4findEPKc"));
    shadowhook_dlclose(library);
    if (!find_metadata) return -ENOENT;
    hook = shadowhook_hook_sym_name("camera.xiaomi.so",
        "_ZN5mihal10CameraMode36convertAspectRatioToActualResolutionERNS_18InternalStreamInfoEjPKc",
        reinterpret_cast<void*>(convert), reinterpret_cast<void**>(&original_convert));
    if (!hook) return shadowhook_get_errno();
    __android_log_print(ANDROID_LOG_INFO, "PhoenixM3Geometry", "RAW geometry hook installed");
    return 0;
}
