package com.prometheus.camera.rev;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AtomicFile;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.List;

/** Adds the ordinary-filter mark to the native Leica Looks watermark image slot. */
public final class WatermarkFilterIcon implements IXposedHookLoadPackage {
    private final HashSet<String> published = new HashSet<>();

    @Override public void handleLoadPackage(XC_LoadPackage.LoadPackageParam p) {
        if (!"com.android.camera".equals(p.packageName)) return;
        XposedHelpers.findAndHookMethod("com.xiaomi.cam.watermark.a", p.classLoader, "w0",
                String.class, new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam h) throws Throwable {
                if (h.hasThrowable()) return;
                String name = (String) h.args[0];
                if (name == null || name.trim().isEmpty()) return;
                Context context = (Context) XposedHelpers.callStaticMethod(
                        XposedHelpers.findClass("com.xiaomi.camera.basic.Global", p.classLoader), "getApplication");
                // Match the captured name, not the current selection: watermark processing is asynchronous.
                Object controller = XposedHelpers.callStaticMethod(
                        XposedHelpers.findClass("com.xiaomi.camera.effect.EffectController", p.classLoader), "s");
                int ordinaryIcon = context.getResources().getIdentifier(
                        "ic_filter_input_front_lc", "drawable", context.getPackageName());
                if (ordinaryIcon == 0) throw new IllegalStateException("Ordinary filter icon missing");
                List<?> filters = (List<?>) XposedHelpers.callStaticMethod(
                        XposedHelpers.findClass("A9.h", p.classLoader), "c");
                boolean ordinary = false;
                for (Object filter : filters) {
                    int id = (Integer) XposedHelpers.callMethod(filter, "a");
                    String label = (String) XposedHelpers.callMethod(controller, "q", context, id);
                    if (!name.equals(label)) continue;
                    // A name shared with a native Leica entry must retain the native identity.
                    if (XposedHelpers.getIntField(filter, "d") != ordinaryIcon) return;
                    ordinary = true;
                }
                if (!ordinary) return;
                Object model = XposedHelpers.callMethod(h.thisObject, "q");
                List<?> slots = (List<?>) XposedHelpers.callMethod(model, "q");
                if (slots.isEmpty()) return;
                Path directory = (Path) XposedHelpers.getObjectField(h.thisObject, "a");
                Object settings = XposedHelpers.callMethod(h.thisObject, "M");
                String group = (String) XposedHelpers.getObjectField(settings, "e");
                String template = (String) XposedHelpers.getObjectField(settings, "f");
                publish(context, directory, group, template, ordinaryIcon, p.classLoader);
                for (Object slot : slots) {
                    String source = (String) XposedHelpers.callMethod(slot, "k");
                    XposedHelpers.setObjectField(slot, "n", source.replace("@type_leica_looks", "phoenix_filter"));
                    XposedHelpers.callMethod(slot, "e", true);
                }
                PhoenixFileLogger.info("PhoenixWatermark", "ordinary filter icon template=" + group + "/" + template + " name=" + name);
            }
        });
    }

    private synchronized void publish(Context context, Path directory, String group, String template,
            int icon, ClassLoader loader) throws Exception {
        String key = directory.toString();
        if (published.contains(key)) return;
        BitmapFactory.Options bounds = new BitmapFactory.Options();
        bounds.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(directory.resolve("leica_looks_standard_black.webp").toString(), bounds);
        if (bounds.outWidth <= 0 || bounds.outHeight <= 0) throw new IllegalStateException("Native watermark icon dimensions missing: " + directory);
        for (boolean white : new boolean[]{false, true}) {
            Drawable drawable = context.getDrawable(icon).mutate();
            drawable.setTint(white ? Color.WHITE : Color.BLACK);
            Bitmap bitmap = Bitmap.createBitmap(bounds.outWidth, bounds.outHeight, Bitmap.Config.ARGB_8888);
            drawable.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
            drawable.draw(new Canvas(bitmap));
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            if (!bitmap.compress(Bitmap.CompressFormat.WEBP_LOSSLESS, 100, bytes)) throw new IllegalStateException("Watermark icon encoding failed");
            bitmap.recycle();
            byte[] data = bytes.toByteArray();
            String filename = "phoenix_filter_" + (white ? "white" : "black") + ".webp";
            AtomicFile file = new AtomicFile(directory.resolve(filename).toFile());
            FileOutputStream output = file.startWrite();
            try { output.write(data); file.finishWrite(output); }
            catch (Exception error) { file.failWrite(output); throw error; }
            boolean saved = (Boolean) XposedHelpers.callStaticMethod(XposedHelpers.findClass("si.i", loader),
                    "d", "/data/vendor/camera/watermarks/" + group + "/" + template + "/", filename, data);
            if (!saved) throw new IllegalStateException("Watermark vendor icon publication failed: " + filename);
        }
        published.add(key);
    }
}
