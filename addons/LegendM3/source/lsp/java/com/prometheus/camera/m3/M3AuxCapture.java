package com.prometheus.camera.m3;

import android.app.AndroidAppHelper;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.os.SystemClock;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

/** Consume only the clean image published for this exact capture name. */
final class M3AuxCapture {
    final byte[] jpeg;
    final int width, height, orientation;
    final long sensorTimestamp;
    private final File staging;

    private M3AuxCapture(File staging, byte[] jpeg, int width, int height, int orientation, long timestamp) {
        this.staging = staging; this.jpeg = jpeg; this.width = width; this.height = height;
        this.orientation = orientation; this.sensorTimestamp = timestamp;
    }

    static M3AuxCapture read(String imageName) throws Exception {
        if (imageName == null || !imageName.matches("[A-Za-z0-9_.-]+\\.jpg"))
            throw new IOException("Invalid capture image name: " + imageName);
        File directory = new File(AndroidAppHelper.currentApplication().getFilesDir(), "phoenix_m3_aux");
        File file = new File(directory, imageName + ".aux");
        long deadline = SystemClock.elapsedRealtime() + 4000;
        while (!file.isFile() && SystemClock.elapsedRealtime() < deadline) Thread.sleep(25);
        if (!file.isFile()) throw new IOException("Clean M3 image not delivered: " + imageName);
        try (FileInputStream input = new FileInputStream(file)) {
            byte[] headerBytes = new byte[168];
            readFully(input, headerBytes);
            ByteBuffer header = ByteBuffer.wrap(headerBytes).order(ByteOrder.LITTLE_ENDIAN);
            byte[] magic = new byte[8]; header.get(magic);
            if (!"PXM3AUX1".equals(new String(magic, StandardCharsets.US_ASCII)))
                throw new IOException("Invalid M3 aux header");
            int width = header.getInt(), height = header.getInt(), format = header.getInt();
            int orientation = header.getInt(); long timestamp = header.getLong();
            int stride = header.getInt(), length = header.getInt();
            byte[] nameBytes = new byte[128]; header.get(nameBytes);
            int end = 0; while (end < nameBytes.length && nameBytes[end] != 0) end++;
            String storedName = new String(nameBytes, 0, end, StandardCharsets.US_ASCII);
            if (!imageName.equals(storedName)) throw new IOException("M3 aux capture identity differs");
            if (width <= 0 || height <= 0 || (width & 1) != 0 || (height & 1) != 0 || stride < width ||
                    format != ImageFormat.NV21 || orientation < 0 || orientation > 270 || orientation % 90 != 0 ||
                    (long) width * height * 3 / 2 != length || file.length() != 168L + length)
                throw new IOException("Invalid M3 aux geometry");
            byte[] pixels = new byte[length]; readFully(input, pixels);
            ByteArrayOutputStream encoded = new ByteArrayOutputStream(length / 4);
            if (!new YuvImage(pixels, format, width, height, null).compressToJpeg(
                    new Rect(0, 0, width, height), 90, encoded)) throw new IOException("M3 aux JPEG encoding failed");
            M3Runtime.log("aux matched image=" + imageName + " sensor=" + timestamp + " size=" + width + "x" +
                    height + " orientation=" + orientation + " jpeg=" + encoded.size());
            return new M3AuxCapture(file, encoded.toByteArray(), width, height, orientation, timestamp);
        } catch (Exception error) {
            if (!file.delete()) error.addSuppressed(new IOException("M3 aux cleanup failed: " + imageName));
            throw error;
        }
    }

    void consumed() throws IOException {
        if (!staging.delete()) throw new IOException("M3 aux cleanup failed: " + staging.getName());
    }

    private static void readFully(FileInputStream input, byte[] bytes) throws IOException {
        for (int at = 0; at < bytes.length;) {
            int count = input.read(bytes, at, bytes.length - at);
            if (count < 0) throw new IOException("Truncated M3 aux image");
            at += count;
        }
    }
}
