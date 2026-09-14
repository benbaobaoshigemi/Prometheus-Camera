package com.prometheus.camera.m3;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/** Merge after OS4's deferred EXIF/XMP writer has serialized every JPEG component. */
final class M3SaveBridge {
    private static final String SAVE = "phoenix.m3.jpeg.save";

    static void install(ClassLoader loader) {
        XposedHelpers.findAndHookMethod("Nf.b", loader, "d", OutputStream.class, new XC_MethodHook() {
            @Override protected void beforeHookedMethod(MethodHookParam param) {
                Object task = XposedHelpers.getObjectField(param.thisObject, "a");
                Object capture = XposedHelpers.getObjectField(task, "b");
                int module = XposedHelpers.getIntField(capture, "g");
                M3Runtime.log("storage writer task=" + Integer.toHexString(System.identityHashCode(task))
                        + " module=" + module);
                if (module != 256) return;
                Object storage = XposedHelpers.getObjectField(task, "k");
                String imageName = (String) XposedHelpers.getObjectField(storage, "b");
                M3Runtime.log("capture storage image=" + imageName);
                Object source = XposedHelpers.getObjectField(task, "a");
                byte[] jpeg = (byte[]) XposedHelpers.getObjectField(source, "i");
                Save save = new Save((OutputStream) param.args[0], jpeg.length,
                        imageName);
                param.setObjectExtra(SAVE, save);
                param.args[0] = save.bytes;
            }

            @Override protected void afterHookedMethod(MethodHookParam param) {
                Save save = (Save) param.getObjectExtra(SAVE);
                if (save == null || param.hasThrowable()) return;
                try {
                    byte[] original = save.bytes.toByteArray();
                    M3AuxCapture aux = M3AuxCapture.read(save.imageName);
                    aux.consumed();
                    byte[] result = M3Jpeg.wrap(original, aux.jpeg, aux.width, aux.height, aux.orientation);
                    save.output.write(result);
                    M3Runtime.log("M3 JPEG committed input=" + original.length + " output="
                            + result.length + " image=" + save.imageName + " aux=" + aux.jpeg.length);
                } catch (Exception error) {
                    M3Runtime.log("M3 JPEG FAILED " + error);
                    param.setThrowable(error);
                }
            }
        });
        M3Runtime.log("OS4 M3 final JPEG writer hook installed");
    }

    private static final class Save {
        final OutputStream output;
        final ByteArrayOutputStream bytes;
        final String imageName;
        Save(OutputStream output, int size, String imageName) {
            this.output = output;
            this.bytes = new ByteArrayOutputStream(size);
            this.imageName = imageName;
        }
    }
}
