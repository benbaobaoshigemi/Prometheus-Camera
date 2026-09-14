package com.prometheus.camera.m3;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.opengl.GLES20;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.ZipFile;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public final class M3Runtime implements IXposedHookLoadPackage, IXposedHookZygoteInit {
    private static final String TAG = "PhoenixM3";
    private static final String PREVIEW = "phoenix.m3.preview";
    private static String modulePath;
    private static volatile int currentModule;
    private static volatile Exposure exposure;
    private static M3Parameters parameters;
    private static Class<?> candyClass, glClass;
    private static final CaptureRequest.Key<int[]> MODULE =
            new CaptureRequest.Key<>("xiaomi.app.module", int[].class);
    private static final CaptureResult.Key<byte[]> AEC =
            new CaptureResult.Key<>("org.quic.camera2.statsconfigs.AECFrameControl", byte[].class);

    @Override public void initZygote(StartupParam param) { modulePath = param.modulePath; }

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam param) throws Throwable {
        if (!"com.android.camera".equals(param.packageName) ||
            !"com.android.camera".equals(param.processName)) return;
        try (ZipFile module = new ZipFile(modulePath);
             InputStream input = module.getInputStream(module.getEntry("assets/phoenix_m3/leica_filter_param_m3.bin"));
             ByteArrayOutputStream bytes = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[8192];
            for (int count; (count = input.read(buffer)) != -1;) bytes.write(buffer, 0, count);
            parameters = new M3Parameters(bytes.toByteArray());
        }
        ClassLoader loader = param.classLoader;
        candyClass = XposedHelpers.findClass("com.xiaomi.milab.filtersdk.CandySDK", loader);
        glClass = XposedHelpers.findClass("com.xiaomi.gl.MIGL", loader);
        M3PreviewShader.install(loader, () -> currentModule == 256);
        M3SaveBridge.install(loader);
        M3Thumbnail.install(loader);
        XposedHelpers.findAndHookMethod(CaptureRequest.Builder.class, "build", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam p) {
                CaptureRequest.Builder builder = (CaptureRequest.Builder) p.thisObject;
                int[] value = builder.get(MODULE);
                if (value == null || value.length != 1) return;
                int previous = currentModule;
                currentModule = value[0];
                if (previous != value[0]) {
                    exposure = null;
                    log("request module=" + value[0]);
                }
            }
        });
        XposedBridge.hookAllConstructors(TotalCaptureResult.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if (currentModule != 256) return;
                TotalCaptureResult result = (TotalCaptureResult) p.thisObject;
                int[] module = result.getRequest().get(MODULE);
                if (module == null || module.length != 1 || module[0] != 256) return;
                byte[] aec = result.get(AEC);
                Float zoom = result.get(CaptureResult.CONTROL_ZOOM_RATIO);
                if (aec == null || aec.length < 100 || zoom == null) return;
                float lux = ByteBuffer.wrap(aec).order(ByteOrder.LITTLE_ENDIAN).getFloat(96);
                if (!Float.isFinite(lux) || lux < 0 || lux > 65535 || !Float.isFinite(zoom) || zoom <= 0)
                    throw new IllegalArgumentException("Invalid M3 exposure metadata");
                if (exposure == null) log("preview metadata lux=" + lux + " zoom=" + zoom);
                exposure = new Exposure((int) lux, zoom);
            }
        });
        // k() means that the render engine needs the existing OES-to-2D and
        // ping-pong passes. This also makes the presenter use the resulting 2D image.
        XposedHelpers.findAndHookMethod("ru.h", loader, "k", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                if (currentModule == 256) p.setResult(true);
            }
        });
        XposedHelpers.findAndHookMethod("ru.h", loader, "e", boolean.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam p) {
                Exposure current = exposure;
                if (currentModule != 256 || current == null || p.hasThrowable()) return;
                Object engine = p.thisObject;
                if (!XposedHelpers.getBooleanField(engine, "Z")) return;
                Preview preview = (Preview) XposedHelpers.getAdditionalInstanceField(engine, PREVIEW);
                if (preview == null) {
                    preview = new Preview();
                    XposedHelpers.setAdditionalInstanceField(engine, PREVIEW, preview);
                }
                preview.render(engine, current);
            }
        });
        XposedHelpers.findAndHookMethod("Cu.w", loader, "d", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam p) {
                Object engine = XposedHelpers.getObjectField(p.thisObject, "c");
                Preview preview = (Preview) XposedHelpers.removeAdditionalInstanceField(engine, PREVIEW);
                if (preview != null) preview.release();
            }
        });
        log("runtime hooks installed: request, AEC, OES/2D, preview, release");
    }

    static void log(String message) {
        Log.i(TAG, message);
        XposedBridge.log(TAG + ": " + message);
    }

    private static final class Exposure {
        final int lux;
        final float zoom;
        Exposure(int lux, float zoom) { this.lux = lux; this.zoom = zoom; }
    }

    private static final class Preview {
        private final Object sdk = XposedHelpers.newInstance(candyClass, 6);
        private final long handle = XposedHelpers.getLongField(sdk, "a");
        private final float[] identity = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
        private String configuration;
        private int frames;

        void render(Object engine, Exposure exposure) {
            if (handle == 0) throw new IllegalStateException("M3 preview renderer initialization failed");
            Object pair = XposedHelpers.getObjectField(engine, "D");
            Object input = XposedHelpers.getObjectField(pair, "a");
            Object output = XposedHelpers.getObjectField(pair, "b");
            int width = (Integer) XposedHelpers.callMethod(input, "d");
            int height = (Integer) XposedHelpers.callMethod(input, "b");
            int texture = (Integer) XposedHelpers.callMethod(input, "c");
            int framebuffer = (Integer) XposedHelpers.callMethod(output, "a");
            String config = parameters.configuration(width, height, exposure.lux, exposure.zoom);
            if (!config.equals(configuration)) {
                String method = configuration == null ? "configPipeline" : "updatePipeline";
                boolean success = (Boolean) XposedHelpers.callStaticMethod(candyClass, method, handle, config);
                if (!success) throw new IllegalStateException("M3 " + method + " failed");
                configuration = config;
            }
            XposedHelpers.callMethod(sdk, "d", identity, texture, framebuffer, width, height,
                    new float[]{0, 0, width, height});
            // Same framebuffer transition used by the stock CandySDK renderer.
            XposedHelpers.callStaticMethod(glClass, "glBindFramebuffer", 0);
            int error = GLES20.glGetError();
            if (error != GLES20.GL_NO_ERROR)
                throw new IllegalStateException("M3 preview GL error=" + error);
            XposedHelpers.callMethod(pair, "d");
            if (frames++ % 120 == 0)
                log("preview rendered frames=" + frames + " lux=" + exposure.lux +
                        " zoom=" + exposure.zoom + " size=" + width + "x" + height);
        }

        void release() {
            XposedHelpers.callMethod(sdk, "e");
            log("preview released frames=" + frames);
        }
    }
}
