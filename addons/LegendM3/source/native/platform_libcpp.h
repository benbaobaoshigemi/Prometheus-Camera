#pragma once
#include <__config_site>
#undef _LIBCPP_ABI_NAMESPACE
#define _LIBCPP_ABI_NAMESPACE __1
#include <android/log.h>
// Camera's VNDK v34 libc++ has no LLVM 19 verbose-abort export.
// Use libc++'s documented termination customization; keep diagnostics and abort.
#define _LIBCPP_VERBOSE_ABORT(...) __android_log_assert(nullptr, "PhoenixM3", __VA_ARGS__)
