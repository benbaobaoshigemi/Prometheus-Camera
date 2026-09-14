package com.prometheus.camera.m3;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import java.io.ByteArrayOutputStream;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/** Render the M3 early JPEG before OS4 publishes it to either thumbnail consumer. */
final class M3Thumbnail {
    static void install(ClassLoader loader) {
        XposedHelpers.findAndHookMethod("s7.g", loader, "a", XposedHelpers.findClass("Rh.r", loader), new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam p) {
                Object task = p.args[0];
                Object capture = XposedHelpers.getObjectField(task, "b");
                if (XposedHelpers.getIntField(capture, "g") != 256) return;
                try {
                    Object source = XposedHelpers.getObjectField(task, "a");
                    byte[] original = (byte[]) XposedHelpers.getObjectField(source, "i");
                    byte[] rendered = render(original);
                    XposedHelpers.setObjectField(source, "i", rendered);
                    M3Runtime.log("M3 early JPEG rendered input=" + original.length + " output=" + rendered.length
                            + " task=" + Integer.toHexString(System.identityHashCode(task)));
                } catch (Exception error) {
                    M3Runtime.log("M3 early JPEG FAILED " + error);
                    p.setThrowable(error);
                }
            }
        });
        M3Runtime.log("OS4 M3 early JPEG renderer installed");
    }

    private static byte[] render(byte[] jpeg) {
        Bitmap source = BitmapFactory.decodeByteArray(jpeg, 0, jpeg.length);
        if (source == null) throw new IllegalArgumentException("Cannot decode OS4 early JPEG");
        Bitmap gray = null;
        try {
            gray = Bitmap.createBitmap(source.getWidth(), source.getHeight(), Bitmap.Config.ARGB_8888);
            // Exact grayscale coefficients from the reference LegendPreviewShader.
            Paint paint = new Paint();
            paint.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[] {
                .299f, .587f, .114f, 0, 0,
                .299f, .587f, .114f, 0, 0,
                .299f, .587f, .114f, 0, 0,
                0, 0, 0, 1, 0
            })));
            new Canvas(gray).drawBitmap(source, 0, 0, paint);
            ByteArrayOutputStream encoded = new ByteArrayOutputStream(jpeg.length);
            if (!gray.compress(Bitmap.CompressFormat.JPEG, 95, encoded))
                throw new IllegalStateException("Cannot encode M3 early JPEG");
            return M3Jpeg.previewImage(jpeg, encoded.toByteArray());
        } finally {
            source.recycle();
            if (gray != null) gray.recycle();
        }
    }
}
