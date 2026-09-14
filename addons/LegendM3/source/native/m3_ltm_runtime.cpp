#include "m3_ltm.h"
#include "m3_asf.h"
#include "shadowhook.h"
#include <android/log.h>
#include <atomic>
#include <cstring>
#include <link.h>

namespace {
constexpr const char* kTag = "PhoenixM3LTM";
#ifdef M3_LTM_DIAGNOSTICS
__attribute__((constructor)) void loaded_diagnostic() {
    __android_log_print(ANDROID_LOG_INFO, kTag, "native library loaded");
}
#endif
template<class T> T read(const void* p, size_t offset) {
    T value;
    std::memcpy(&value, static_cast<const char*>(p) + offset, sizeof(value));
    return value;
}
using Execute = int (*)(void*, void*);
using GetData = int (*)(void*, const uint32_t*, void**, uint64_t*, size_t,
                       const int*, uint32_t, uint32_t, const uint32_t*, int);
using LtmSetting = int (*)(void*, M3LtmRegion*, void*, void*, void*);
using AsfInterpolation = int (*)(void*, void*, void*);
using AsfSetting = int (*)(void*, uint8_t*, void*, void*, void*);
Execute original_node{}, original_ltm{}, original_asf{};
GetData original_get{};
LtmSetting original_setting{};
AsfInterpolation original_asf_interpolation{};
AsfSetting original_asf_setting{};
void* hooks[7]{};
uintptr_t core{}, isp{};
uint32_t module_tag{};
std::atomic<unsigned> install_state{0};
std::atomic<bool> enabled{false};
std::atomic<uint64_t> applied{0}, photo{0}, unknown{0};
std::atomic<uint64_t> m3_requests{0}, last_scene{0};
std::atomic<uint64_t> effect_checks{0}, effect_failures{0};
std::atomic<uint64_t> asf_applied{0}, asf_ultra{0}, asf_wide{0};
std::atomic<uint64_t> asf_bypass{0}, asf_checks{0}, asf_failures{0};

struct Request {
    void* receiver{};
    uint32_t context_a{}, context_b{};
    int context_c{};
    bool has_context{};
    int module{-1};
};
thread_local Request* request{};
thread_local bool ordinary_m3{};

struct AsfContext {
    bool m3{};
    bool triggers_valid{};
    float zoom{-1.0f};
    uint32_t mode1{~0U};
    uint32_t usecase{~0U};
    float triggers[4]{};
};
thread_local AsfContext* asf_context{};

template<class T> bool metadata(uint32_t tag, T* result) {
    if (!request || !request->has_context || !result) return false;
    void* value = nullptr;
    uint64_t offset = 0;
    const int status = original_get(request->receiver, &tag, &value, &offset, 1, nullptr,
                                    request->context_a, request->context_b, nullptr,
                                    request->context_c);
    if (status != 0 || !value) return false;
    *result = read<T>(value, 0);
    return true;
}

void read_modes(const void* input, uint32_t* mode1, uint32_t* usecase) {
    const void* modes = read<const void*>(input, 0x1d20);
    if (!modes) return;
    const uint32_t count = read<uint32_t>(modes, 0);
    if (count > 9) return;
    for (uint32_t i = 0; i < count; ++i) {
        const uint32_t id = read<uint32_t>(modes, 4 + 8 * i);
        const uint32_t value = read<uint32_t>(modes, 8 + 8 * i);
        if (id == 1) *mode1 = value;
        if (id == 2) *usecase = value;
    }
}

int execute_node(void* self, void* data) {
    Request current;
    Request* previous = request;
    request = &current;
    const int result = original_node(self, data);
    request = previous;
    return result;
}

int get_data(void* self, const uint32_t* tags, void** values, uint64_t* offsets,
             size_t count, const int* flags, uint32_t context_a, uint32_t context_b,
             const uint32_t* extra, int context_c) {
    if (request) {
        // These optional arrays belong to the caller; never retain their stack pointers.
        request->has_context = flags == nullptr && extra == nullptr;
        request->receiver = self;
        request->context_a = context_a;
        request->context_b = context_b;
        request->context_c = context_c;
    }
    return original_get(self, tags, values, offsets, count, flags,
                        context_a, context_b, extra, context_c);
}

bool ordinary_selector(const void* input) {
    const void* modes = read<const void*>(input, 0x1d20);
    if (!modes) return false;
    const uint32_t count = read<uint32_t>(modes, 0);
    if (count > 9) return false;
    for (uint32_t i = 0; i < count; ++i)
        if (read<uint32_t>(modes, 4 + 8 * i) == 5) {
            const uint32_t scene = read<uint32_t>(modes, 8 + 8 * i);
            last_scene.store(scene, std::memory_order_relaxed);
            return scene == 0 || scene == 48;
        }
    return false;
}

int execute_ltm(void* self, void* input) {
    const bool previous = ordinary_m3;
    ordinary_m3 = false;
    if (request && request->has_context) {
        void* value = nullptr;
        uint64_t offset = 0;
        const int status = original_get(request->receiver, &module_tag, &value, &offset,
                                        1, nullptr, request->context_a, request->context_b,
                                        nullptr, request->context_c);
        request->module = status == 0 && value ? read<int>(value, 0) : -1;
        if (request->module == 256) m3_requests.fetch_add(1, std::memory_order_relaxed);
        ordinary_m3 = request->module == 256 && ordinary_selector(input);
        if (request->module == 163) photo.fetch_add(1, std::memory_order_relaxed);
        if (request->module < 0) unknown.fetch_add(1, std::memory_order_relaxed);
    }
    const int result = original_ltm(self, input);
    ordinary_m3 = previous;
    return result;
}

int calculate(void* input, M3LtmRegion* region, void* reserve, void* section, void* output) {
    if (!ordinary_m3 || !enabled.load(std::memory_order_relaxed))
        return original_setting(input, region, reserve, section, output);
    const void* special = read<const void*>(input, 0x1b0);
    if (special && read<uint32_t>(special, 0x32a4) == 1)
        return original_setting(input, region, reserve, section, output);
    M3LtmRegion copy = m3_ltm_copy_region(*region, {0.0f, 0.0f});
    const int result = original_setting(input, &copy, reserve, section, output);
    const uint64_t sequence = applied.fetch_add(1, std::memory_order_relaxed);
    if (sequence < 4 || result != 1) {
        bool scale_zero = true, lce_zero = true;
        for (unsigned i = 0; i < 65; ++i)
            scale_zero &= read<float>(&copy, i * 4) == 0.0f;
        if (result == 1) {
            for (size_t field = 0x70; field <= 0x80; field += 0x10) {
                const void* table = read<const void*>(output, field);
                for (unsigned i = 0; i < 16; ++i)
                    lce_zero &= read<uint32_t>(table, i * 4) == 0;
            }
        }
        if (result == 1 && scale_zero && lce_zero) effect_checks.fetch_add(1);
        else effect_failures.fetch_add(1);
        __android_log_print(result == 1 ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, kTag,
                            "apply module=256 source=%g,%g controls=0,0 result=%d scale_zero=%d lce_zero=%d",
                            read<float>(region, 165 * 4), read<float>(region, 168 * 4),
                            result, scale_zero, lce_zero);
    }
    return result;
}

int execute_asf(void* self, void* input) {
    AsfContext current;
    AsfContext* previous = asf_context;
    int module = -1;
    current.m3 = metadata(module_tag, &module) && module == 256;
    metadata(0x0801002fU, &current.zoom);
    read_modes(input, &current.mode1, &current.usecase);
    asf_context = &current;
    const int result = original_asf(self, input);
    asf_context = previous;
    return result;
}

int interpolate_asf(void* input, void* region, void* trigger_vectors) {
    if (asf_context && trigger_vectors) {
        const void* outer_begin = read<const void*>(trigger_vectors, 0);
        const void* outer_end = read<const void*>(trigger_vectors, 8);
        const uintptr_t begin = reinterpret_cast<uintptr_t>(outer_begin);
        const uintptr_t end = reinterpret_cast<uintptr_t>(outer_end);
        if (begin && end >= begin && end - begin == 4 * 24) {
            bool valid = true;
            for (unsigned i = 0; i < 4; ++i) {
                const void* inner = reinterpret_cast<const void*>(begin + i * 24);
                const void* inner_begin = read<const void*>(inner, 0);
                const void* inner_end = read<const void*>(inner, 8);
                const uintptr_t ib = reinterpret_cast<uintptr_t>(inner_begin);
                const uintptr_t ie = reinterpret_cast<uintptr_t>(inner_end);
                valid &= ib && ie >= ib && ie - ib >= sizeof(float) &&
                         (ie - ib) % sizeof(float) == 0 && ie - ib <= 16;
                if (valid) asf_context->triggers[i] = read<float>(inner_begin, 0);
            }
            asf_context->triggers_valid = valid;
        }
    }
    return original_asf_interpolation(input, region, trigger_vectors);
}

int calculate_asf(void* input, uint8_t* region, void* reserve, void* section, void* output) {
    if (!enabled.load(std::memory_order_relaxed) || !asf_context || !asf_context->m3 ||
        !asf_context->triggers_valid) {
        return original_asf_setting(input, region, reserve, section, output);
    }
    phoenix::m3::AsfRoute route = phoenix::m3::AsfRoute::kUnsupported;
    // These are the only two closed M3-minus-ordinary V6 pairs. Current
    // mode1=7 main-camera paths and every tele path intentionally bypass.
    if (asf_context->usecase == 0 && asf_context->mode1 == 1 &&
        asf_context->zoom > 0.0f && asf_context->zoom < 0.75f)
        route = phoenix::m3::AsfRoute::kUltra;
    else if (asf_context->usecase == 0 && asf_context->mode1 == 1 &&
             asf_context->zoom >= 0.75f && asf_context->zoom < 3.0f)
        route = phoenix::m3::AsfRoute::kWidePreview;
    if (route == phoenix::m3::AsfRoute::kUnsupported) {
        asf_bypass.fetch_add(1, std::memory_order_relaxed);
        return original_asf_setting(input, region, reserve, section, output);
    }
    alignas(16) uint8_t copy[phoenix::m3::kAsf351RegionSize];
    std::memcpy(copy, region, sizeof(copy));
    if (!phoenix::m3::apply_m3_asf_delta(copy, sizeof(copy), route,
                                         asf_context->triggers)) {
        asf_failures.fetch_add(1, std::memory_order_relaxed);
        return original_asf_setting(input, region, reserve, section, output);
    }
    bool changed = false;
    constexpr size_t windows[] = {0x350, 0x450, 0x550, 0xaa0, 0xba0, 0xca0};
    for (size_t offset : windows)
        changed |= std::memcmp(copy + offset, region + offset, 0x100) != 0;
    if (!changed) {
        asf_bypass.fetch_add(1, std::memory_order_relaxed);
        return original_asf_setting(input, region, reserve, section, output);
    }
    const int result = original_asf_setting(input, copy, reserve, section, output);
    const uint64_t sequence = asf_applied.fetch_add(1, std::memory_order_relaxed);
    (route == phoenix::m3::AsfRoute::kUltra ? asf_ultra : asf_wide)
        .fetch_add(1, std::memory_order_relaxed);
    if (result == 1) asf_checks.fetch_add(1, std::memory_order_relaxed);
    else asf_failures.fetch_add(1, std::memory_order_relaxed);
    if (sequence < 4 || result != 1)
        __android_log_print(result == 1 ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR,
                            kTag, "asf apply route=%u zoom=%g mode1=%u usecase=%u triggers=%g,%g,%g,%g result=%d changed=%d",
                            unsigned(route), asf_context->zoom, asf_context->mode1,
                            asf_context->usecase, asf_context->triggers[0],
                            asf_context->triggers[1], asf_context->triggers[2],
                            asf_context->triggers[3], result, 1);
    return result;
}

bool matches_build(dl_phdr_info* info, const char* expected) {
    for (unsigned i = 0; i < info->dlpi_phnum; ++i) {
        const auto& ph = info->dlpi_phdr[i];
        if (ph.p_type != PT_NOTE) continue;
        const char* cursor = reinterpret_cast<const char*>(info->dlpi_addr + ph.p_vaddr);
        const char* end = cursor + ph.p_memsz;
        while (cursor + sizeof(Elf64_Nhdr) <= end) {
            const auto* note = reinterpret_cast<const Elf64_Nhdr*>(cursor);
            const char* name = cursor + sizeof(*note);
            const auto* desc = reinterpret_cast<const unsigned char*>(name + ((note->n_namesz + 3) & ~3U));
            if (note->n_type == NT_GNU_BUILD_ID && note->n_namesz == 4 &&
                std::memcmp(name, "GNU", 4) == 0 && note->n_descsz == 16) {
                char actual[33];
                constexpr char digits[] = "0123456789abcdef";
                for (unsigned k = 0; k < 16; ++k) {
                    actual[k * 2] = digits[desc[k] >> 4];
                    actual[k * 2 + 1] = digits[desc[k] & 15];
                }
                actual[32] = 0;
                if (std::strcmp(actual, expected) == 0) return true;
                __android_log_print(ANDROID_LOG_ERROR, kTag, "unsupported binary %s build-id=%s", info->dlpi_name, actual);
                return false;
            }
            cursor = reinterpret_cast<const char*>(desc) + ((note->n_descsz + 3) & ~3U);
        }
    }
    return false;
}

int find_libraries(dl_phdr_info* info, size_t, void*) {
    const char* name = std::strrchr(info->dlpi_name, '/');
    name = name ? name + 1 : info->dlpi_name;
    if (std::strcmp(name, "camera.qcom.so") == 0 && matches_build(info, "8d178af7199f2142e55208f85dc314dd"))
        core = info->dlpi_addr;
    if (std::strcmp(name, "camera.qcom.sm8650.so") == 0 && matches_build(info, "29c9fb0914c4f856351f30e259c3938d"))
        isp = info->dlpi_addr;
    return 0;
}
}

extern "C" __attribute__((visibility("default"))) void m3_ltm_set_enabled(int value) {
    enabled.store(value != 0, std::memory_order_relaxed);
}

#ifdef M3_LTM_DIAGNOSTICS
extern "C" __attribute__((visibility("default"))) int m3_ltm_uninstall() {
    enabled.store(false);
    for (void*& hook : hooks) {
        if (!hook) continue;
        const int status = shadowhook_unhook(hook);
        if (status != 0) return status;
        hook = nullptr;
    }
    install_state.store(0);
    return 0;
}
#endif

extern "C" __attribute__((visibility("default"))) void m3_ltm_statistics(uint64_t* values) {
    values[0] = install_state.load();
    values[1] = applied.load();
    values[2] = photo.load();
    values[3] = unknown.load();
    values[4] = m3_requests.load();
    values[5] = last_scene.load();
    values[6] = effect_checks.load();
    values[7] = effect_failures.load();
}

extern "C" __attribute__((visibility("default"))) void m3_asf_statistics(uint64_t* values) {
    values[0] = asf_applied.load();
    values[1] = asf_ultra.load();
    values[2] = asf_wide.load();
    values[3] = asf_bypass.load();
    values[4] = asf_checks.load();
    values[5] = asf_failures.load();
}

extern "C" __attribute__((visibility("default"))) int m3_ltm_start() {
    __android_log_print(ANDROID_LOG_INFO, kTag, "start");
    unsigned expected = 0;
    if (!install_state.compare_exchange_strong(expected, 1)) return expected == 2 ? 0 : -1;
    dl_iterate_phdr(find_libraries, nullptr);
    __android_log_print(ANDROID_LOG_INFO, kTag, "libraries core=%p isp=%p",
                        reinterpret_cast<void*>(core), reinterpret_cast<void*>(isp));
    int status = core && isp ? 0 : -2;
    if (status == 0) {
        using Query = int (*)(const char*, const char*, uint32_t*);
        status = reinterpret_cast<Query>(core + 0x3538d0)("xiaomi.app", "module", &module_tag);
        __android_log_print(ANDROID_LOG_INFO, kTag, "query status=%d tag=%x", status, module_tag);
        module_tag |= 0x08000000;
    }
    if (status == 0) status = shadowhook_init(SHADOWHOOK_MODE_UNIQUE, false);
    if (status == 0) {
        struct Hook { uintptr_t address; void* proxy; void** original; };
        const Hook plan[] = {
            {isp + 0x536300, reinterpret_cast<void*>(execute_node), reinterpret_cast<void**>(&original_node)},
            {core + 0x4e2310, reinterpret_cast<void*>(get_data), reinterpret_cast<void**>(&original_get)},
            {isp + 0x7edb10, reinterpret_cast<void*>(execute_ltm), reinterpret_cast<void**>(&original_ltm)},
            {isp + 0xf4d830, reinterpret_cast<void*>(calculate), reinterpret_cast<void**>(&original_setting)},
            {isp + 0x7433f0, reinterpret_cast<void*>(execute_asf), reinterpret_cast<void**>(&original_asf)},
            {isp + 0x10ab820, reinterpret_cast<void*>(interpolate_asf), reinterpret_cast<void**>(&original_asf_interpolation)},
            {isp + 0xec22f0, reinterpret_cast<void*>(calculate_asf), reinterpret_cast<void**>(&original_asf_setting)}
        };
        for (unsigned i = 0; i < 7; ++i) {
            __android_log_print(ANDROID_LOG_INFO, kTag, "hook begin index=%u", i);
            hooks[i] = shadowhook_hook_func_addr(reinterpret_cast<void*>(plan[i].address),
                                                plan[i].proxy, plan[i].original);
            if (!hooks[i]) { status = shadowhook_get_errno(); break; }
            __android_log_print(ANDROID_LOG_INFO, kTag, "hook ready index=%u", i);
        }
    }
    if (status != 0) {
        for (void*& hook : hooks) {
            if (hook) { shadowhook_unhook(hook); hook = nullptr; }
        }
    }
    enabled.store(status == 0);
    install_state.store(status == 0 ? 2 : 3);
    __android_log_print(status == 0 ? ANDROID_LOG_INFO : ANDROID_LOG_ERROR, kTag,
                        "install status=%d input_module_tag=%x", status, module_tag);
    return status;
}
