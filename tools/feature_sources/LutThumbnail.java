package com.prometheus.camera.rev;

/** RGB cube interpolation for the same tiled PNG delivered to the video node. */
final class LutThumbnail {
    static int[] render(int[] source, int[] lut, int width, int height) {
        int size = (int) Math.round(Math.cbrt(lut.length));
        if (size < 2 || size * size * size != lut.length || width * height != lut.length
                || width % size != 0 || height % size != 0) {
            throw new IllegalArgumentException("Unsupported LUT dimensions: " + width + "x" + height);
        }
        int tiles = width / size;
        int[] result = new int[source.length];
        for (int i = 0; i < source.length; i++) {
            int pixel = source[i];
            float r = ((pixel >>> 16) & 255) * (size - 1) / 255f;
            float g = ((pixel >>> 8) & 255) * (size - 1) / 255f;
            float b = (pixel & 255) * (size - 1) / 255f;
            int r0 = (int) r, g0 = (int) g, b0 = (int) b;
            int output = pixel & 0xff000000;
            for (int channel = 0; channel < 3; channel++) {
                float value = 0;
                for (int z = 0; z < 2; z++) {
                    int bz = Math.min(b0 + z, size - 1);
                    for (int y = 0; y < 2; y++) {
                        int gy = Math.min(g0 + y, size - 1);
                        int row = (bz / tiles * size + gy) * width + bz % tiles * size;
                        for (int x = 0; x < 2; x++) {
                            int rx = Math.min(r0 + x, size - 1);
                            float weight = (x == 0 ? 1 - (r-r0) : r-r0)
                                    * (y == 0 ? 1 - (g-g0) : g-g0)
                                    * (z == 0 ? 1 - (b-b0) : b-b0);
                            value += ((lut[row + rx] >>> (channel * 8)) & 255) * weight;
                        }
                    }
                }
                output |= Math.round(value) << (channel * 8);
            }
            result[i] = output;
        }
        return result;
    }
}
