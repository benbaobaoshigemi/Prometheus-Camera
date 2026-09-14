package com.prometheus.camera.m3;

import android.opengl.GLES20;
import java.util.function.BooleanSupplier;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/** M3 grayscale stage from the reference APK's LegendPreviewShader. */
final class M3PreviewShader {
    private static final String STATE = "phoenix.m3.gray";
    private static final String DECLARATION =
            "uniform float uMixAlpha; uniform samplerExternalOES sTexture;";
    private static final String OUTPUT = "outColor = color*uAlpha;";

    static String inject(String source) {
        if (source.indexOf(DECLARATION) < 0 ||
                source.indexOf(DECLARATION) != source.lastIndexOf(DECLARATION) ||
                source.indexOf(OUTPUT) < 0 || source.indexOf(OUTPUT) != source.lastIndexOf(OUTPUT))
            throw new IllegalArgumentException("M3 OES shader source does not match OS4 renderer");
        return source.replace(DECLARATION,
                "uniform float uMixAlpha; uniform float uM3Gray; uniform samplerExternalOES sTexture;")
                .replace(OUTPUT,
                "float _m3y = dot(color.rgb, vec3(0.299, 0.587, 0.114)); " +
                "color.rgb = mix(color.rgb, vec3(_m3y), uM3Gray); outColor = color*uAlpha;");
    }

    static void install(ClassLoader loader, BooleanSupplier enabled) {
        XposedHelpers.findAndHookMethod("com.xiaomi.gl.ShaderManager", loader,
                "getShaderByType", int.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if ((Integer) p.args[0] != 2 || p.hasThrowable()) return;
                p.setResult(inject((String) p.getResult()));
                XposedBridge.log("PhoenixM3: reference M3 OES shader installed");
            }
        });
        Class<?> renderer = XposedHelpers.findClass("Au.a", loader);
        XposedHelpers.findAndHookMethod(renderer, "c", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if (p.hasThrowable() || XposedHelpers.getIntField(p.thisObject, "b") != 0x8d65) return;
                int program = XposedHelpers.getIntField(p.thisObject, "c");
                int location = GLES20.glGetUniformLocation(program, "uM3Gray");
                if (location < 0) throw new IllegalStateException("M3 grayscale uniform missing");
                Uniform state = new Uniform(program, location);
                XposedHelpers.setAdditionalInstanceField(p.thisObject, STATE, state);
                state.apply(enabled.getAsBoolean());
            }
        });
        XposedBridge.hookAllMethods(renderer, "a", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam p) {
                if (XposedHelpers.getIntField(p.thisObject, "b") != 0x8d65) return;
                Uniform state = (Uniform) XposedHelpers.getAdditionalInstanceField(p.thisObject, STATE);
                // The stock draw method recreates an invalid GL program through c().
                if (GLES20.glIsProgram(state.program)) state.apply(enabled.getAsBoolean());
            }
        });
    }

    private static final class Uniform {
        final int program, location;
        int applied = -1;
        Uniform(int program, int location) { this.program = program; this.location = location; }

        void apply(boolean enabled) {
            int desired = enabled ? 1 : 0;
            if (applied == desired) return;
            int[] previous = new int[1];
            GLES20.glGetIntegerv(GLES20.GL_CURRENT_PROGRAM, previous, 0);
            GLES20.glUseProgram(program);
            GLES20.glUniform1f(location, desired);
            float[] actual = new float[1];
            GLES20.glGetUniformfv(program, location, actual, 0);
            GLES20.glUseProgram(previous[0]);
            if (actual[0] != desired || GLES20.glGetError() != GLES20.GL_NO_ERROR)
                throw new IllegalStateException("M3 grayscale uniform update failed");
            applied = desired;
            XposedBridge.log("PhoenixM3: preview grayscale=" + desired + " program=" + program);
        }
    }
}
