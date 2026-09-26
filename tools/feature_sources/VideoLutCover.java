package com.prometheus.camera.rev;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.LruCache;
import android.widget.ImageView;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Video-only covers derived from the native STD image, without photo effects. */
final class VideoLutCover {
    private final VideoLutCatalog catalog;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final Map<ImageView, String> bindings = new WeakHashMap<>();
    private final HashSet<String> pending = new HashSet<>();
    private final LruCache<String, Bitmap> cache = new LruCache<String, Bitmap>(4 * 1024 * 1024) {
        @Override protected int sizeOf(String key, Bitmap bitmap) { return bitmap.getByteCount(); }
    };

    VideoLutCover(VideoLutCatalog catalog) { this.catalog = catalog; }

    void install(ClassLoader loader) {
        XposedHelpers.findAndHookMethod("com.android.camera.fragment.d$c", loader, "c", int.class,
                "com.android.camera.data.data.d", new XC_MethodHook() {
            @Override protected void afterHookedMethod(MethodHookParam hook) throws Throwable {
                ImageView view = (ImageView) XposedHelpers.getObjectField(hook.thisObject, "f");
                bindings.remove(view);
                if (!catalog.isVideo()) return;
                int id = Integer.parseInt((String) XposedHelpers.getObjectField(hook.args[1], "q"));
                if (!catalog.needsVideoCover(id)) return;
                bind(view, id);
            }
        });
    }

    private void bind(ImageView view, int id) {
        Context context = view.getContext().getApplicationContext();
        VideoLutCatalog.LutSource source = catalog.source(context, id);
        int std = context.getResources().getIdentifier("video_filter_image_none", "drawable", context.getPackageName());
        if (std == 0) throw new IllegalStateException("STD video cover missing");
        String key = source.revision + ":" + context.getResources().getConfiguration().toString();
        bindings.put(view, key);
        Bitmap ready = cache.get(key);
        if (ready != null) { view.setImageBitmap(ready); return; }
        // Never show the old photo cover while the background calculation runs.
        view.setImageResource(std);
        if (!pending.add(key)) return;
        worker.execute(() -> {
            try {
                Bitmap original = BitmapFactory.decodeResource(context.getResources(), std);
                Bitmap cube;
                try (InputStream input = source.open(context)) { cube = BitmapFactory.decodeStream(input); }
                if (original == null || cube == null) throw new IllegalStateException("Video cover/LUT decode failed");
                int[] pixels = new int[original.getWidth() * original.getHeight()];
                int[] lut = new int[cube.getWidth() * cube.getHeight()];
                original.getPixels(pixels, 0, original.getWidth(), 0, 0, original.getWidth(), original.getHeight());
                cube.getPixels(lut, 0, cube.getWidth(), 0, 0, cube.getWidth(), cube.getHeight());
                Bitmap output = Bitmap.createBitmap(LutThumbnail.render(pixels, lut, cube.getWidth(), cube.getHeight()),
                        original.getWidth(), original.getHeight(), Bitmap.Config.ARGB_8888);
                output.setDensity(original.getDensity());
                cube.recycle();
                original.recycle();
                main.post(() -> {
                    pending.remove(key);
                    cache.put(key, output);
                    if (!catalog.isVideo()) return;
                    for (Map.Entry<ImageView, String> binding : bindings.entrySet()) {
                        if (key.equals(binding.getValue())) binding.getKey().setImageBitmap(output);
                    }
                });
            } catch (Exception error) {
                Log.e("PhoenixVideoLut", "STD cover generation failed: " + source.revision, error);
                main.post(() -> pending.remove(key));
            }
        });
    }
}
