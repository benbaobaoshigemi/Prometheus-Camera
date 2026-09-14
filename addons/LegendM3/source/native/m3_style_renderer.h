#pragma once

// The Mivi plugin uses platform libc++ (__1), while the original M3 renderer
// uses NDK libc++ (__ndk1). Only C-compatible values cross this boundary.
extern "C" int m3_style_render(int format, const char* configuration,
                                void* input_frame, void* output_frame);
