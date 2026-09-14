#pragma once
#include "m3_monopan.h"

extern "C" void* m3_grain_open();
extern "C" int m3_grain_process(void* handle, const void* mia14_input, const void* mia14_output);
extern "C" void m3_grain_close(void** handle);
