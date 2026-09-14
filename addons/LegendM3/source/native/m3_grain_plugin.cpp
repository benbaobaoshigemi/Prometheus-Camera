// Platform Mivi uses the Android libc++ __1 ABI, not the NDK __ndk1 namespace.
#include "platform_libcpp.h"
#include <map>
#include <string>
#include <vector>
#include <cerrno>
#include <android/log.h>
#include "mivi14.h"
#include "m3_grain.h"
#include "m3_aux.h"

#include "m3_metadata.h"

using m3::mivi14::ImageParams;
using m3::mivi14::MiaNodeInterface;
using m3::mivi14::MiaParamsOpaque;
using BufferMap = std::map<uint32_t, std::vector<ImageParams>>;
static_assert(sizeof(BufferMap) == 0x18);
static_assert(sizeof(std::vector<ImageParams>) == 0x18);
struct Request { BufferMap input; BufferMap output; };
struct RequestV2 { BufferMap input; };
static_assert(offsetof(Request, output) == 0x18);

// Recovered host vtable order. Non-processing callbacks have no work because
// this node owns no asynchronous request or deferred post-processing operation.
class GrainPlugin {
public:
    virtual int initialize(void*, MiaNodeInterface) {
        handle_ = m3_grain_open();
        __android_log_print(handle_ ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR,
                            "PhoenixM3", "grain initialize handle=%p", handle_);
        return handle_ ? 0 : -ENODEV;
    }
    virtual int preProcess(void*) { return 0; }
    virtual int processRequest(Request* request) {
        if (request->input.size() != 1 || request->output.size() != 1 ||
            request->input.begin()->second.size() != 1 ||
            request->output.begin()->second.size() != 1) return -EINVAL;
        return process(request->input.begin()->second.front(), request->output.begin()->second.front());
    }
    virtual int processRequest(RequestV2*) {
        __android_log_print(ANDROID_LOG_ERROR, "PhoenixM3", "grain requires separate input/output buffers");
        return -ENOTSUP;
    }
    virtual void customizeOutBufferFormat(void*) {}
    virtual int postProcess(void*) { return 0; }
    virtual int flushRequest(void*) { return 0; }
    virtual void destroy() {
        if (handle_) m3_grain_close(&handle_);
    }
    virtual bool isEnabled(MiaParamsOpaque params) {
        const auto* metadata = *reinterpret_cast<const MiMetadata* const*>(params.bytes);
        if (!metadata) return false;
        const MetadataEntry module = metadata->find("xiaomi.app.module");
        const bool enabled = module.type == 1 && module.count == 1 &&
                             *static_cast<const int32_t*>(module.data) == 256;
        if (enabled) __android_log_print(ANDROID_LOG_INFO, "PhoenixM3", "grain selected module=256");
        return enabled;
    }
    virtual void reservedBaseSlot9() {}
    virtual ~GrainPlugin() { destroy(); }
    virtual int convertImageParams(const ImageParams* input, M3Image* output) {
        return m3_monopan_image_from_mia14(input, output);
    }
    virtual bool isPreProcessed() { return false; }
    virtual bool supportPreProcess() { return false; }

private:
    int process(const ImageParams& input, const ImageParams& output) {
        if (!handle_) return -ENODEV;
        const int aux = m3_aux_publish(input);
        if (aux) return aux;
        const int result = m3_grain_process(handle_, &input, &output);
        __android_log_print(result ? ANDROID_LOG_ERROR : ANDROID_LOG_INFO, "PhoenixM3",
                            "grain process width=%u height=%u stride=%u result=%d",
                            input.width, input.height, input.stride, result);
        return result;
    }
    void* handle_ = nullptr;
};

namespace mialgo2 {
class Provider {
public:
    virtual ~Provider() = default;
    virtual unsigned int getVersion() const = 0;
    virtual std::string getType() const = 0;
};
class ProviderManager {
public:
    bool add(Provider*);
};
}

class GrainProvider final : public mialgo2::Provider {
public:
    unsigned int getVersion() const override { return 1; }
    std::string getType() const override { return "PluginWraper"; }
    virtual GrainPlugin* create() const { return new GrainPlugin; }
    virtual std::string getName() const { return "com.xiaomi.plugin.m3grain"; }
};

extern "C" __attribute__((visibility("default"))) bool connect(mialgo2::ProviderManager& manager) {
    return manager.add(new GrainProvider);
}
