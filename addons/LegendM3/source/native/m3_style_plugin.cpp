// Match the platform libc++ ABI used by Mivi and libMiPhotoFilter.
#include "platform_libcpp.h"
#include <map>
#include <string>
#include <vector>
#include <cerrno>
#include <cstdio>
#include <cstring>
#include <cmath>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
#include <android/hardware_buffer.h>
#include <android/log.h>
#include <EGL/egl.h>
#include <EGL/eglext.h>
#include "mivi14.h"
#include "m3_parameters.h"

struct native_handle;
extern "C" int AHardwareBuffer_createFromHandle(const AHardwareBuffer_Desc*,
                                                const native_handle*, int, AHardwareBuffer**);
#include "m3_metadata.h"
#include "m3_style_renderer.h"
using m3::mivi14::ImageParams;
using m3::mivi14::MiaNodeInterface;
using m3::mivi14::MiaParamsOpaque;
using BufferMap = std::map<uint32_t, std::vector<ImageParams>>;
struct Request { BufferMap input; BufferMap output; };
struct RequestV2 { BufferMap input; };
static_assert(offsetof(Request, output) == 0x18);
struct Frame {
    EGLClientBuffer buffer;
    void* unused;
    uint32_t stride_x, stride_y, width, height;
    uint64_t tail[2];
};
static_assert(sizeof(Frame) == 48);

class HardwareBuffer {
public:
    ~HardwareBuffer() { if (buffer) AHardwareBuffer_release(buffer); }
    int import(const ImageParams& image) {
        AHardwareBuffer_Desc desc{};
        desc.width = image.width;
        desc.height = image.height;
        desc.layers = 1;
        desc.format = image.format;
        desc.usage = 0x333;
        desc.stride = image.stride;
        // CLONE retains ownership of the incoming Mivi buffer in the host.
        return AHardwareBuffer_createFromHandle(&desc,
                reinterpret_cast<const native_handle*>(image.native_handle), 3, &buffer);
    }
    AHardwareBuffer* buffer = nullptr;
};

class StylePlugin {
public:
    virtual int initialize(void*, MiaNodeInterface) {
        const int fd = open("/odm/etc/camera/xiaomi/phoenix_m3/leica_filter_param_m3.bin", O_RDONLY | O_CLOEXEC);
        if (fd < 0) return -errno;
        struct stat info{};
        int status = fstat(fd, &info);
        if (status != 0) { const int error = errno; close(fd); return -error; }
        size_ = static_cast<size_t>(info.st_size);
        void* data = mmap(nullptr, size_, PROT_READ, MAP_PRIVATE, fd, 0);
        const int error = errno;
        close(fd);
        if (data == MAP_FAILED) return -error;
        data_ = static_cast<const uint8_t*>(data);
        status = m3_parameters_open(data_, size_, &parameters_);
        __android_log_print(status ? ANDROID_LOG_ERROR : ANDROID_LOG_INFO, "PhoenixM3",
                            "style initialize parameters=%d", status);
        return status;
    }
    virtual int preProcess(void*) { return 0; }
    virtual int processRequest(Request* request) {
        if (request->input.size() != 1 || request->output.size() != 1 ||
            request->input.begin()->second.size() != 1 ||
            request->output.begin()->second.size() != 1) return -EINVAL;
        const int result = process(request->input.begin()->second.front(), request->output.begin()->second.front());
        __android_log_print(result ? ANDROID_LOG_ERROR : ANDROID_LOG_INFO, "PhoenixM3",
                            "style request result=%d", result);
        return result;
    }
    virtual int processRequest(RequestV2*) { return -ENOTSUP; }
    virtual void customizeOutBufferFormat(void*) {}
    virtual int postProcess(void*) { return 0; }
    virtual int flushRequest(void*) { return 0; }
    virtual void destroy() {
        if (data_) { munmap(const_cast<uint8_t*>(data_), size_); data_ = nullptr; }
        parameters_ = {};
    }
    virtual bool isEnabled(MiaParamsOpaque params) {
        const auto* metadata = *reinterpret_cast<const MiMetadata* const*>(params.bytes);
        if (!metadata) return false;
        const MetadataEntry module = metadata->find("xiaomi.app.module");
        return module.type == 1 && module.count == 1 &&
               *static_cast<const int32_t*>(module.data) == 256;
    }
    virtual void reservedBaseSlot9() {}
    virtual ~StylePlugin() { destroy(); }
    virtual int convertImageParams(const ImageParams*, void*) { return -ENOTSUP; }
    virtual bool isPreProcessed() { return false; }
    virtual bool supportPreProcess() { return false; }

private:
    int process(const ImageParams& input, const ImageParams& output) {
        if (!parameters_.data) return -ENODEV;
        const auto* metadata = reinterpret_cast<const MiMetadata*>(input.object_28);
        const MetadataEntry aec = metadata->find("org.quic.camera2.statsconfigs.AECFrameControl");
        const MetadataEntry zoom = metadata->find(0x1002fu);
        if (aec.type != 0 || aec.count < 100 || zoom.type != 2 || zoom.count != 1) return -ENODATA;
        float lux, zoom_value;
        memcpy(&lux, static_cast<const uint8_t*>(aec.data) + 0x60, sizeof(lux));
        memcpy(&zoom_value, zoom.data, sizeof(zoom_value));
        if (!std::isfinite(lux) || lux < 0 || lux > 65535 || !std::isfinite(zoom_value)) return -ERANGE;
        float shading[8];
        int status = m3_parameters_shading(&parameters_, static_cast<uint16_t>(lux), zoom_value, shading);
        if (status) return status;
        return render(input, output, shading, lux, zoom_value);
    }
public:
    static int render(const ImageParams& input, const ImageParams& output,
                      const float shading[8], float lux, float zoom_value) {
        int status;
        HardwareBuffer in, out;
        if ((status = in.import(input)) || (status = out.import(output))) return status;
        AHardwareBuffer_Planes planes{};
        status = AHardwareBuffer_lockPlanes(in.buffer, AHARDWAREBUFFER_USAGE_CPU_READ_RARELY, -1, nullptr, &planes);
        if (status) return status;
        const bool valid = planes.planeCount == 3;
        const bool nv21 = valid && reinterpret_cast<uintptr_t>(planes.planes[2].data) <
                                  reinterpret_cast<uintptr_t>(planes.planes[1].data);
        status = AHardwareBuffer_unlock(in.buffer, nullptr);
        if (status) return status;
        if (!valid || (input.format != 0x23 && input.format != 0x11)) return -ENOTSUP;
        const int format = ((nv21 && input.format == 0x23) || (!nv21 && input.format == 0x11)) ? 9 : 10;
        const auto client_buffer = reinterpret_cast<PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC>(
                eglGetProcAddress("eglGetNativeClientBufferANDROID"));
        if (!client_buffer) return -ENOSYS;
        Frame input_frame{client_buffer(in.buffer), nullptr, input.stride, input.stride,
                          input.width, input.height, {0, 0}};
        Frame output_frame{client_buffer(out.buffer), nullptr, output.stride, output.stride,
                           output.width, output.height, {0, 0}};
        if (!input_frame.buffer || !output_frame.buffer) return -EIO;
        char config[768];
        const int length = snprintf(config, sizeof(config),
            "CvStyleEffect;Width=%u;Height=%u;SmoothStartValue=%.9g;SmoothEndValue=%.9g;"
            "SmoothCoordScale=%.9g;SmoothValueScale=%.9g;LightDarkPreserveK=%.9g;"
            "LightDarkPreserveB=%.9g;LightDarkPreserveV=%.9g;LightDarkPreserveT=%.9g;",
            input.width, input.height, shading[0], shading[1], shading[2], shading[3],
            shading[4], shading[5], shading[6], shading[7]);
        if (length < 0 || static_cast<size_t>(length) >= sizeof(config)) return -EOVERFLOW;
        status = m3_style_render(format, config, &input_frame, &output_frame);
        if (status) return status;
        // The stock renderer has a void process ABI; pixel validation is separate.
        __android_log_print(ANDROID_LOG_INFO, "PhoenixM3", "style submitted lux=%g zoom=%g format=%d %ux%u",
                            lux, zoom_value, format, input.width, input.height);
        return 0;
    }
private:
    const uint8_t* data_ = nullptr;
    size_t size_ = 0;
    M3Parameters parameters_{};
};
namespace mialgo2 {
class Provider {
public:
    virtual ~Provider() = default;
    virtual unsigned int getVersion() const = 0;
    virtual std::string getType() const = 0;
};
class ProviderManager { public: bool add(Provider*); };
}
class StyleProvider final : public mialgo2::Provider {
public:
    unsigned int getVersion() const override { return 1; }
    std::string getType() const override { return "PluginWraper"; }
    virtual StylePlugin* create() const { return new StylePlugin; }
    virtual std::string getName() const { return "com.xiaomi.plugin.m3style"; }
};
#ifndef M3_STYLE_STANDALONE
extern "C" int m3_aec_start();
extern "C" int m3_stream_geometry_start();
extern "C" __attribute__((visibility("default"))) bool connect(mialgo2::ProviderManager& manager) {
    const int aec_status = m3_aec_start();
    if (aec_status != 0) {
        __android_log_print(ANDROID_LOG_ERROR, "PhoenixM3AEC", "provider loader failed status=%d", aec_status);
        return false;
    }
    const int geometry_status = m3_stream_geometry_start();
    if (geometry_status != 0) {
        __android_log_print(ANDROID_LOG_ERROR, "PhoenixM3Geometry", "loader failed status=%d", geometry_status);
        return false;
    }
    return manager.add(new StyleProvider);
}
#endif
