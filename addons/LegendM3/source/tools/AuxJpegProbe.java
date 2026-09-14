import com.prometheus.camera.m3.M3Jpeg;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.util.Arrays;

/** Offline strict verifier for the M3 primary+aux EOF container. */
public final class AuxJpegProbe {
    private static final byte[] XMP = ascii("http://ns.adobe.com/xap/1.0/\u0000");

    public static void main(String[] args) throws Exception {
        if (args.length < 3 || args.length > 4) {
            throw new IllegalArgumentException("usage: AuxJpegProbe <primary.jpg> <aux.jpg> <output.jpg> [auxOrient]");
        }
        Path primaryPath = Paths.get(args[0]);
        Path auxPath = Paths.get(args[1]);
        Path outputPath = Paths.get(args[2]);
        int orientation = args.length == 4 ? Integer.parseInt(args[3]) : 90;
        byte[] primary = Files.readAllBytes(primaryPath);
        byte[] aux = Files.readAllBytes(auxPath);
        Info auxInfo = info(aux);
        byte[] output = M3Jpeg.wrap(primary, aux, auxInfo.width, auxInfo.height, orientation);
        Files.write(outputPath, output);
        verify(primary, aux, output, auxInfo.width, auxInfo.height, orientation);
        System.out.println("M3 aux verified primary=" + primary.length + " aux=" + aux.length
                + " output=" + output.length + " aux=" + auxInfo.width + "x" + auxInfo.height
                + " orient=" + orientation);
    }

    private static void verify(byte[] primary, byte[] aux, byte[] output,
                               int auxWidth, int auxHeight, int auxOrientation) throws Exception {
        Info p = info(primary), o = info(output);
        require(o.xmpStart >= 0, "output must contain exactly one standard XMP packet");
        String xml = xmp(output, o.xmpStart);
        require(count(xml, "MiItem:name=\"Legend.MONOPAN\"") == 1, "aux item count mismatch");
        require(xml.contains("MiItem:UseMainImage=\"0\""), "aux item is not UseMainImage=0");
        require(xml.contains("MiItem:OffsetType=\"EOF\""), "aux item is not EOF relative");
        require(xml.contains("MiItem:width=\"" + auxWidth + "\"") &&
                xml.contains("MiItem:height=\"" + auxHeight + "\"") &&
                xml.contains("MiItem:Orient=\"" + auxOrientation + "\""), "aux geometry mismatch");
        int sosPrimary = p.sos;
        int sosOutput = o.sos;
        int primaryLength = primary.length - sosPrimary;
        require(xml.contains("MiItem:SHA_length=\"" + primaryLength + "\""), "primary SHA length mismatch");
        require(xml.contains("MiItem:SHA=\"" + sha(primary, sosPrimary, primaryLength) + "\""), "primary SHA mismatch");
        require(output.length >= aux.length && Arrays.equals(aux, Arrays.copyOfRange(output, output.length - aux.length, output.length)),
                "aux is not appended byte-for-byte at EOF");
        require(xml.contains("MiItem:length=\"" + aux.length + "\"") &&
                xml.contains("MiItem:Offset=\"" + aux.length + "\"") &&
                xml.contains("MiItem:SHA_length=\"" + aux.length + "\"") &&
                xml.contains("MiItem:SHA=\"" + sha(aux, 0, aux.length) + "\""), "aux length/hash mismatch");
        require(Arrays.equals(Arrays.copyOfRange(primary, sosPrimary, primary.length),
                Arrays.copyOfRange(output, sosOutput, sosOutput + primaryLength)),
                "primary SOS payload changed or aux entered primary range");
        require(output.length - aux.length == sosOutput + primaryLength,
                "aux does not start after the complete original primary payload");
    }

    private static Info info(byte[] jpeg) {
        require(jpeg.length >= 4 && u16(jpeg, 0) == 0xffd8, "expected JPEG SOI");
        int at = 2, width = 0, height = 0, sos = -1, xmpStart = -1;
        while (at + 4 <= jpeg.length) {
            require((jpeg[at] & 255) == 255, "invalid JPEG marker");
            int marker = jpeg[at + 1] & 255, length = u16(jpeg, at + 2) + 2;
            require(length >= 4 && at + length <= jpeg.length, "truncated JPEG header");
            if (marker == 0xc0 || marker == 0xc2) {
                height = u16(jpeg, at + 5); width = u16(jpeg, at + 7);
            }
            if (marker == 0xe1 && length >= 4 + XMP.length && starts(jpeg, at + 4, XMP)) {
                require(xmpStart < 0, "duplicate standard XMP packet"); xmpStart = at;
            }
            if (marker == 0xda) { sos = at; break; }
            at += length;
        }
        require(width > 0 && height > 0 && sos >= 0, "JPEG geometry/SOS absent");
        int eoi = jpegEnd(jpeg, sos);
        return new Info(width, height, sos, eoi, xmpStart);
    }

    private static int jpegEnd(byte[] jpeg, int sos) {
        int at = sos + u16(jpeg, sos + 2) + 2;
        for (; at + 1 < jpeg.length;) {
            if ((jpeg[at] & 255) != 255) { at++; continue; }
            int marker = jpeg[at + 1] & 255;
            if (marker == 0xd9) return at + 2;
            if (marker == 0 || (marker >= 0xd0 && marker <= 0xd7)) { at += 2; continue; }
            require(at + 4 <= jpeg.length, "truncated scan marker");
            int length = u16(jpeg, at + 2);
            require(length >= 2 && at + length + 2 <= jpeg.length, "invalid scan marker");
            at += length + 2;
        }
        throw new IllegalArgumentException("JPEG EOI absent");
    }

    private static String xmp(byte[] jpeg, int start) {
        int body = start + 4 + XMP.length;
        int length = u16(jpeg, start + 2) + 2 - 4 - XMP.length;
        return new String(jpeg, body, length, StandardCharsets.UTF_8);
    }

    private static String sha(byte[] data, int at, int length) throws Exception {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(Arrays.copyOfRange(data, at, at + length));
        StringBuilder out = new StringBuilder(64);
        for (byte value : digest) out.append(String.format(java.util.Locale.ROOT, "%02x", value & 255));
        return out.toString();
    }

    private static int count(byte[] data, byte[] needle) {
        int n = 0; for (int i = 0; i + needle.length <= data.length; i++) if (starts(data, i, needle)) n++; return n;
    }
    private static int count(String data, String needle) {
        int n = 0, at = 0; while ((at = data.indexOf(needle, at)) >= 0) { n++; at += needle.length(); } return n;
    }
    private static boolean starts(byte[] data, int at, byte[] value) {
        if (at < 0 || at + value.length > data.length) return false;
        for (int i = 0; i < value.length; i++) if (data[at + i] != value[i]) return false;
        return true;
    }
    private static int u16(byte[] b, int at) { return ((b[at] & 255) << 8) | (b[at + 1] & 255); }
    private static byte[] ascii(String value) { return value.getBytes(StandardCharsets.UTF_8); }
    private static void require(boolean condition, String message) { if (!condition) throw new IllegalArgumentException(message); }

    private static final class Info {
        final int width, height, sos, eoi, xmpStart;
        Info(int width, int height, int sos, int eoi, int xmpStart) {
            this.width = width; this.height = height; this.sos = sos; this.eoi = eoi; this.xmpStart = xmpStart;
        }
    }
}
