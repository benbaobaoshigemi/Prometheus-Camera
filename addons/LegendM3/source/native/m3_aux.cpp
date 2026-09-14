#include "m3_aux.h"
#include "m3_metadata.h"
#include <android/log.h>
#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fcntl.h>
#include <unistd.h>

namespace {
struct Header {
    char magic[8];
    uint32_t width, height, format, orientation;
    uint64_t sensor_timestamp;
    uint32_t source_stride, payload_bytes;
    char image_name[128];
};
static_assert(sizeof(Header) == 168);

int write_all(int fd, const void* buffer, size_t size) {
    auto* data = static_cast<const uint8_t*>(buffer);
    while (size) {
        const ssize_t count = write(fd, data, size);
        if (count < 0 && errno == EINTR) continue;
        if (count <= 0) return count < 0 ? -errno : -EIO;
        data += count; size -= count;
    }
    return 0;
}
}

// Publish the selected ZSL frame by its capture image name, before FilmNoise.
// One atomic file carries both identity and pixels; no global latest-frame slot.
int m3_aux_publish(const m3::mivi14::ImageParams& input) {
    const auto* metadata = reinterpret_cast<const MiMetadata*>(input.object_28);
    if (!metadata) return -ENODATA;
    const MetadataEntry name = metadata->find("xiaomi.snapshot.imageName");
    const MetadataEntry rotation = metadata->find(0x00070003u);
    const MetadataEntry timestamp = metadata->find(0x000e0010u);
    Header header{};
    if (name.type != 0 || name.count < 2 || name.count > sizeof(header.image_name) ||
        rotation.type != 1 || rotation.count != 1 || timestamp.type != 3 || timestamp.count != 1)
        return -ENODATA;
    const auto* text = static_cast<const char*>(name.data);
    if (text[name.count - 1] != 0 || strlen(text) + 1 != name.count) return -EINVAL;
    for (size_t i = 0; i + 1 < name.count; ++i)
        if (!((text[i] >= 'a' && text[i] <= 'z') || (text[i] >= 'A' && text[i] <= 'Z') ||
              (text[i] >= '0' && text[i] <= '9') || text[i] == '_' || text[i] == '.' || text[i] == '-'))
            return -EINVAL;
    if (!input.width || !input.height || (input.width & 1) || (input.height & 1) ||
        input.stride < input.width || input.scanline < input.height || input.num_planes != 2 ||
        !input.plane_ptrs[0] || !input.plane_ptrs[1] || (input.format != 0x23 && input.format != 0x11))
        return -EINVAL;
    const uint64_t bytes = uint64_t(input.width) * input.height * 3 / 2;
    if (bytes > UINT32_MAX) return -EOVERFLOW;
    memcpy(header.magic, "PXM3AUX1", 8);
    header.width = input.width; header.height = input.height; header.format = 17;
    header.orientation = *static_cast<const uint32_t*>(rotation.data);
    if (header.orientation % 90 || header.orientation > 270) return -EINVAL;
    header.sensor_timestamp = *static_cast<const uint64_t*>(timestamp.data);
    header.source_stride = input.stride; header.payload_bytes = static_cast<uint32_t>(bytes);
    memcpy(header.image_name, text, name.count);
    auto* packed = static_cast<uint8_t*>(malloc(bytes));
    if (!packed) return -ENOMEM;
    const auto* y = reinterpret_cast<const uint8_t*>(input.plane_ptrs[0]);
    const auto* uv = reinterpret_cast<const uint8_t*>(input.plane_ptrs[1]);
    for (uint32_t row = 0; row < input.height; ++row)
        memcpy(packed + size_t(row) * input.width, y + size_t(row) * input.stride, input.width);
    auto* chroma = packed + size_t(input.width) * input.height;
    for (uint32_t row = 0; row < input.height / 2; ++row) {
        const auto* src = uv + size_t(row) * input.stride;
        auto* dst = chroma + size_t(row) * input.width;
        if (input.format == 0x11) memcpy(dst, src, input.width);
        else for (uint32_t col = 0; col < input.width; col += 2) {
            dst[col] = src[col + 1]; dst[col + 1] = src[col];
        }
    }
    char final_path[256], temporary[288];
    snprintf(final_path, sizeof(final_path), "/data/vendor/camera/offlinelog/phoenix_m3_aux/%s.aux", text);
    snprintf(temporary, sizeof(temporary), "%s.%llu.tmp", final_path,
             static_cast<unsigned long long>(header.sensor_timestamp));
    const int fd = open(temporary, O_WRONLY | O_CREAT | O_EXCL | O_CLOEXEC, 0600);
    int result = fd < 0 ? -errno : write_all(fd, &header, sizeof(header));
    if (!result) result = write_all(fd, packed, bytes);
    free(packed);
    if (fd >= 0 && close(fd) != 0 && !result) result = -errno;
    if (!result && rename(temporary, final_path) != 0) result = -errno;
    if (result) unlink(temporary);
    __android_log_print(result ? ANDROID_LOG_ERROR : ANDROID_LOG_INFO, "PhoenixM3",
        "aux publish image=%s sensor=%llu size=%ux%u orientation=%u bytes=%u result=%d", text,
        static_cast<unsigned long long>(header.sensor_timestamp), header.width, header.height,
        header.orientation, header.payload_bytes, result);
    return result;
}
