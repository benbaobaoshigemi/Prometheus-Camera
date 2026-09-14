package com.prometheus.camera.m3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;

/** Reader for the original M3 parameter asset, shared by every preview frame. */
public final class M3Parameters {
    private final ByteBuffer data;
    private final int[] zoomTables;
    private final int shadingData;

    private int u16(int offset) { return data.getShort(offset) & 65535; }
    private static void require(boolean value) {
        if (!value) throw new IllegalArgumentException("Invalid M3 parameter asset");
    }

    public M3Parameters(byte[] bytes) {
        data = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).asReadOnlyBuffer()
                .order(ByteOrder.LITTLE_ENDIAN);
        int scenes = u16(0);
        int header = 2 + scenes * 2;
        int tables = u16(header), lut = u16(header + 2), cube = u16(header + 4);
        int zooms = u16(header + 6), sizes = header + 8;
        int flags = sizes + zooms * 2 + 832;
        require(zooms > 0 && cube == 17 && flags + 8 <= bytes.length);
        require(u16(flags) == 0 && u16(flags + 2) == 0 &&
                u16(flags + 4) == 1 && u16(flags + 6) == 1);
        int cursor = tables, lutCount = 0;
        for (int i = 0; i < scenes; ++i) {
            int length = u16(2 + i * 2), row = cursor + 64;
            require(length == 78 && u16(row) == 1 && u16(row + 6) == 1);
            lutCount = Math.max(lutCount, u16(row + 12) + 1);
            cursor += length;
        }
        zoomTables = new int[zooms];
        int shadingCount = 0;
        float previousZoom = 0;
        for (int i = 0; i < zooms; ++i) {
            zoomTables[i] = cursor;
            int length = u16(sizes + i * 2), rows = u16(cursor + 4);
            float zoom = data.getFloat(cursor);
            require(zoom > previousZoom && rows > 0 && length == 6 + rows * 12);
            previousZoom = zoom;
            int previousHigh = 0;
            for (int j = 0; j < rows; ++j) {
                int row = cursor + 6 + j * 12, low = u16(row), high = u16(row + 2);
                require(low <= high && (j == 0 || low > previousHigh) &&
                        u16(row + 4) == 1 && u16(row + 6) == 1 && u16(row + 8) == 10000);
                previousHigh = high;
                shadingCount = Math.max(shadingCount, u16(row + 10) + 1);
            }
            cursor += length;
        }
        shadingData = lut + lutCount * 17 * 17 * 17 * 3;
        require(cursor <= lut && shadingData + shadingCount * 32 == bytes.length);
    }

    public float[] shading(int lux, float zoom) {
        require(lux >= 0 && lux <= 65535 && Float.isFinite(zoom) && zoom > 0);
        int table = zoomTables[0];
        for (int i = 1; i < zoomTables.length && zoom >= data.getFloat(zoomTables[i]); ++i)
            table = zoomTables[i];
        int count = u16(table + 4), rows = table + 6, index = 0;
        while (index + 1 < count && lux > u16(rows + index * 12 + 2)) ++index;
        int high = rows + index * 12, low = high;
        float weight = 0;
        if (index > 0 && lux < u16(high)) {
            low -= 12;
            int start = u16(low + 2), end = u16(high);
            weight = (float) (lux - start) / (end - start);
        }
        int a = shadingData + u16(low + 10) * 32, b = shadingData + u16(high + 10) * 32;
        float[] output = new float[8];
        for (int i = 0; i < 8; ++i)
            output[i] = data.getFloat(a + i * 4) * (1.0f - weight) + data.getFloat(b + i * 4) * weight;
        return output;
    }

    public String configuration(int width, int height, int lux, float zoom) {
        float[] v = shading(lux, zoom);
        return String.format(Locale.ROOT,
                "CvStyleEffect;Width=%d;Height=%d;SmoothStartValue=%.9g;SmoothEndValue=%.9g;" +
                "SmoothCoordScale=%.9g;SmoothValueScale=%.9g;LightDarkPreserveK=%.9g;" +
                "LightDarkPreserveB=%.9g;LightDarkPreserveV=%.9g;LightDarkPreserveT=%.9g;",
                width, height, v[0], v[1], v[2], v[3], v[4], v[5], v[6], v[7]);
    }
}
