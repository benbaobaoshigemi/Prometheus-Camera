package com.prometheus.camera.rev;

import android.content.Context;
import android.util.Log;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashSet;

/** Shares the photo LUT catalog with SDR video modes' native filter node. */
public final class VideoLutCatalog implements IXposedHookLoadPackage {
    private static final int VIDEO = 162;
    private static final int VIDEO_NONE = 7 << 8;
    private ClassLoader loader;
    private int activePhotoId = -1;
    private int activeSlot = 254;
    private String activeRevision;
    private HashSet<Integer> nativeVideoOrdinals;

    static boolean ordinaryVideo(int mode) { return mode == VIDEO || mode == 164 || mode == 180; }
    private boolean supportedVideo(int mode) {
        return ordinaryVideo(mode) && !(Boolean) call("com.android.camera.data.data.w", "j0", mode);
    }
    static boolean hasLut(int id, int photoNone) {
        return id != 0 && id != VIDEO_NONE && id != photoNone;
    }

    private Class<?> type(String name) { return XposedHelpers.findClass(name, loader); }
    private Object call(String name, String method, Object... args) {
        return XposedHelpers.callStaticMethod(type(name), method, args);
    }
    private int mode() { return XposedHelpers.getStaticIntField(type("com.android.camera.module.Y"), "a"); }
    private int photoNone() { return XposedHelpers.getStaticIntField(type("i3.b"), "N"); }
    boolean isVideo() { return supportedVideo(mode()); }
    boolean isLut(int id) { return hasLut(id, photoNone()); }
    boolean needsVideoCover(int id) throws Throwable {
        if (!isLut(id)) return false;
        if (nativeVideoOrdinals == null) {
            ArrayList<?> original = (ArrayList<?>) XposedBridge.invokeOriginalMethod(
                    type("A9.h").getDeclaredMethod("d"), null, new Object[0]);
            HashSet<Integer> ordinals = new HashSet<>();
            for (Object item : original) ordinals.add(XposedHelpers.getIntField(item, "b"));
            nativeVideoOrdinals = ordinals;
        }
        return !nativeVideoOrdinals.contains(id & 65535);
    }
    private ArrayList<Object> catalog() throws IllegalAccessException {
        ArrayList<?> photo = (ArrayList<?>) call("A9.h", "c");
        ArrayList<Object> video = new ArrayList<>(photo.size());
        for (Object item : photo) {
            int id = (Integer) XposedHelpers.callMethod(item, "a");
            Object copy = XposedHelpers.newInstance(type("i3.b"), id, 0, 0, 0);
            for (Field field : type("i3.b").getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers())) continue;
                field.setAccessible(true);
                field.set(copy, field.get(item));
            }
            // Keep photo IDs for the shared name/resource hooks. Only None uses the video sentinel.
            XposedHelpers.setIntField(copy, "m", id == photoNone() ? VIDEO_NONE : id);
            video.add(copy);
        }
        return video;
    }

    static final class LutSource {
        final String token, path, revision;
        LutSource(String token, String path) {
            this.token = token;
            this.path = path;
            File file = path == null ? null : new File(path);
            revision = file == null ? token : token + ":" + path + ":" + file.lastModified() + ":" + file.length();
        }
        InputStream open(Context context) throws java.io.IOException {
            return path == null ? context.getResources().openRawResource(
                    context.getResources().getIdentifier(token, "raw", context.getPackageName())) : new FileInputStream(path);
        }
    }

    LutSource source(Context context, int id) {
        Object[] enums = type("o3.d").getEnumConstants();
        Object effect = call("vi.e0", "g", enums[id & 65535], false, 0, 100);
        String token = (String) XposedHelpers.getObjectField(effect, "j");
        String path = null;
        if (token.startsWith("prometheus_gallery_filter_")) {
            Class<?> store = type("com.prometheus.camera.filters.CustomLutStore");
            path = (String) XposedHelpers.callStaticMethod(store, "pathForToken", context, token);
        }
        return new LutSource(token, path);
    }

    private synchronized int publish(int id) {
        Context context = (Context) call("com.xiaomi.camera.basic.Global", "getApplication");
        LutSource source = source(context, id);
        String revision = source.revision;
        if (activePhotoId == id && revision.equals(activeRevision)) return activeSlot;
        // The ROM reads an unsigned byte. Alternate two unregistered cloud slots
        // so the native ID-change path reloads each newly selected LUT.
        int slot = activeSlot == 253 ? 254 : 253;
        byte[] png;
        try (InputStream input = source.open(context)) {
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buffer = new byte[8192];
            for (int count; (count = input.read(buffer)) != -1;) bytes.write(buffer, 0, count);
            png = bytes.toByteArray();
        } catch (java.io.IOException failure) {
            throw new IllegalStateException("Video LUT read failed: " + source.token, failure);
        }
        // The vendor node consumes only this PNG and intensity; no photo effect script is submitted.
        if (!((Boolean) call("si.i", "d", "/data/vendor/camera/", slot + ".png", png))) {
            throw new IllegalStateException("Video LUT publication failed: " + source.token);
        }
        activePhotoId = id;
        activeRevision = revision;
        activeSlot = slot;
        Log.i("PhoenixVideoLut", "published mode=" + mode() + " photoId=" + id + " vendorId=" + slot + " lut=" + source.token);
        return slot;
    }

    private Object selectionComponent() {
        boolean persistent = (Boolean) call("r2.E", "q", mode());
        Object data = call("g2.a", persistent ? "a" : "j");
        return XposedHelpers.callMethod(data, "x", type(persistent ? "r2.E" : "v2.c0"));
    }

    private int selection() {
        return Integer.parseInt((String) XposedHelpers.callMethod(selectionComponent(), "getComponentValue", mode()));
    }

    private int migrate(int previous) throws Throwable {
        ArrayList<?> old = (ArrayList<?>) XposedBridge.invokeOriginalMethod(
                type("A9.h").getDeclaredMethod("d"), null, new Object[0]);
        ArrayList<?> shared = (ArrayList<?>) call("A9.h", "c");
        for (Object item : old) {
            if (XposedHelpers.getIntField(item, "m") != previous) continue;
            int ordinal = XposedHelpers.getIntField(item, "b");
            for (Object photo : shared) {
                if (XposedHelpers.getIntField(photo, "b") == ordinal) {
                    return (Integer) XposedHelpers.callMethod(photo, "a");
                }
            }
        }
        // A removed/hidden legacy selection is reset just as an unavailable catalog entry is.
        return VIDEO_NONE;
    }

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) {
        if (!"com.android.camera".equals(p.packageName) || !p.packageName.equals(p.processName)) return;
        loader = p.classLoader;
        new VideoLutCover(this).install(loader);
        XposedHelpers.findAndHookMethod("y9.b", loader, "initView", android.view.View.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) {
                if (!supportedVideo(XposedHelpers.getIntField(h.thisObject, "mCurrentMode"))) return;
                // The title factory uses the transient component, while video can
                // store its selection in r2.E. Bind the same component as the list.
                XposedHelpers.setObjectField(h.thisObject, "h", selectionComponent());
            }
        });
        XposedHelpers.findAndHookMethod("A9.h", loader, "d", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (isVideo()) {
                    ArrayList<Object> result = catalog();
                    h.setResult(result);
                }
            }
        });
        XposedHelpers.findAndHookMethod("v2.c0", loader, "o", int.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) throws Throwable {
                if (supportedVideo((Integer) h.args[0])) h.setResult(catalog());
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.c", loader,
                "getComponentValue", int.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                if (!supportedVideo((Integer) h.args[0]) || !type("v2.c0").isInstance(h.thisObject)) return;
                int previous = Integer.parseInt((String) h.getResult());
                if (previous >= 65536 || !hasLut(previous, photoNone())) return;
                String value = String.valueOf(migrate(previous));
                XposedHelpers.callMethod(h.thisObject, "setComponentValue", h.args[0], value);
                h.setResult(value);
                Log.i("PhoenixVideoLut", "migrated selection " + previous + " -> " + value);
            }
        });
        XposedHelpers.findAndHookMethod("v2.c0", loader, "isSwitchOn", int.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) {
                if (!supportedVideo((Integer) h.args[0])) return;
                int id = Integer.parseInt((String) XposedHelpers.callMethod(h.thisObject, "getComponentValue", h.args[0]));
                h.setResult(hasLut(id, photoNone()));
            }
        });
        XposedHelpers.findAndHookMethod("com.android.camera.data.data.j", loader, "Z", new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam h) {
                if (!isVideo()) return;
                int id = selection();
                h.setResult(hasLut(id, photoNone()) ? publish(id) : 0);
            }
        });
        Log.i("PhoenixVideoLut", "installed SDR video shared LUT catalog modes=162,164,180");
    }
}
