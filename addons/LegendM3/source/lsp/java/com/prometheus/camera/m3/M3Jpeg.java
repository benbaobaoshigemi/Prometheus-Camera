package com.prometheus.camera.m3;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/** M3 MiItem container. Entropy data, vendor APP segments and TIFF values stay intact. */
public final class M3Jpeg {
    private static final byte[] EXIF = ascii("Exif\u0000\u0000");
    private static final byte[] XMP = ascii("http://ns.adobe.com/xap/1.0/\u0000");
    private static final byte[] MPF = ascii("MPF\u0000");
    private static final String NS = "http://ns.xiaomi.com/photos/1.0/";
    private M3Jpeg() {}

    public static byte[] wrap(byte[] source, int orientation) throws Exception {
        return wrapInternal(source, orientation, null, 0, 0, 0);
    }

    /**
     * Build the M3 two-image container.  The primary image is already in its
     * final display orientation, so its item uses the EXIF orientation when
     * present (otherwise zero); the aux item carries the source-frame
     * orientation supplied by the NV12 producer.
     */
    public static byte[] wrap(byte[] source, byte[] auxJpeg, int auxWidth,
                              int auxHeight, int auxOrientation) throws Exception {
        require(auxJpeg != null, "Aux JPEG is absent");
        require(auxWidth > 0 && auxHeight > 0, "Invalid aux dimensions");
        require(auxOrientation == 0 || auxOrientation == 90 ||
                auxOrientation == 180 || auxOrientation == 270,
                "Invalid aux orientation");
        List<Segment> auxSegments = segments(auxJpeg);
        int[] auxDimensions = dimensions(auxJpeg, auxSegments);
        require(auxDimensions[0] == auxWidth && auxDimensions[1] == auxHeight,
                "Aux JPEG dimensions do not match metadata");
        require(primaryEnd(auxJpeg) == auxJpeg.length,
                "Aux JPEG has trailing bytes");
        List<Segment> sourceSegments = segments(source);
        return wrapInternal(source, primaryOrientation(source, sourceSegments), auxJpeg,
                auxWidth, auxHeight, auxOrientation);
    }

    private static byte[] wrapInternal(byte[] source, int orientation, byte[] auxJpeg,
                                       int auxWidth, int auxHeight, int auxOrientation) throws Exception {
        List<Segment> before = segments(source);
        Segment oldXmp = find(source, before, 0xe1, XMP);
        String xml = oldXmp == null ? "" : new String(source, oldXmp.start + 4 + XMP.length,
                oldXmp.length - 4 - XMP.length, StandardCharsets.UTF_8);
        require(!xml.contains("Legend.MONOPAN"), "M3 container already present");
        if (auxJpeg != null && oldXmp != null) xml = shiftWatermarkOffsets(xml, auxJpeg.length);
        int width = 0, height = 0;
        for (Segment s : before) if (s.marker == 0xc0 || s.marker == 0xc2) {
            height = be16(source, s.start + 5); width = be16(source, s.start + 7);
        }
        require(width > 0 && height > 0, "JPEG dimensions absent");
        int sos = before.get(before.size() - 1).start;
        int primaryLength = source.length - sos;
        String primarySha = sha(source, sos, primaryLength);
        String description = auxJpeg == null
                ? description(width, height, orientation, primaryLength, primarySha)
                : descriptionWithAux(primaryLength, primarySha, width, height, orientation,
                        auxWidth, auxHeight, auxOrientation, auxJpeg.length,
                        sha(auxJpeg, 0, auxJpeg.length));
        if (oldXmp == null) {
            xml = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"
                    + description + "</rdf:RDF></x:xmpmeta>";
        } else {
            int end = xml.lastIndexOf("</rdf:RDF>");
            require(end >= 0, "XMP RDF merge point absent");
            xml = xml.substring(0, end) + description + xml.substring(end);
        }
        byte[] tagged = tagExif(source);
        Segment taggedXmp = find(tagged, segments(tagged), 0xe1, XMP);
        byte[] packet = app1(join(XMP, ascii(xml)));
        // Before MPF so its TIFF-relative image offsets are not displaced by a new packet.
        byte[] result = taggedXmp == null ? replace(tagged, 2, 0, packet)
                : replace(tagged, taggedXmp.start, taggedXmp.length, packet);
        updateMpf(source, before, result);
        int newSos = segments(result).get(segments(result).size() - 1).start;
        require(Arrays.equals(Arrays.copyOfRange(source, sos, source.length),
                Arrays.copyOfRange(result, newSos, result.length)), "JPEG payload changed");
        if (auxJpeg == null) return result;
        byte[] withAux = Arrays.copyOf(result, result.length + auxJpeg.length);
        System.arraycopy(auxJpeg, 0, withAux, result.length, auxJpeg.length);
        return withAux;
    }

    /** OS4 watermark blobs are addressed backwards from the final file EOF. */
    private static String shiftWatermarkOffsets(String xml, int appendedBytes) throws Exception {
        javax.xml.parsers.DocumentBuilderFactory factory = javax.xml.parsers.DocumentBuilderFactory.newInstance();
        factory.setNamespaceAware(true);
        javax.xml.parsers.DocumentBuilder builder = factory.newDocumentBuilder();
        org.w3c.dom.Document xmp = builder.parse(new java.io.ByteArrayInputStream(ascii(xml)));
        org.w3c.dom.NodeList descriptions = xmp.getElementsByTagNameNS(
                "http://www.w3.org/1999/02/22-rdf-syntax-ns#", "Description");
        boolean changed = false;
        for (int i = 0; i < descriptions.getLength(); i++) {
            org.w3c.dom.Element description = (org.w3c.dom.Element) descriptions.item(i);
            org.w3c.dom.Attr meta = description.getAttributeNodeNS(NS + "camera/", "XMPMeta");
            if (meta == null) continue;
            String fragment = meta.getValue().replaceFirst("^\\s*<\\?xml[^?]*\\?>", "");
            org.w3c.dom.Document watermark = builder.parse(new java.io.ByteArrayInputStream(
                    ascii("<watermark>" + fragment + "</watermark>")));
            org.w3c.dom.NodeList items = watermark.getDocumentElement().getChildNodes();
            boolean shifted = false;
            for (int j = 0; j < items.getLength(); j++) {
                if (!(items.item(j) instanceof org.w3c.dom.Element)) continue;
                org.w3c.dom.Element item = (org.w3c.dom.Element) items.item(j);
                if (!item.hasAttribute("offset")) continue;
                long offset = Long.parseLong(item.getAttribute("offset"));
                // Zero denotes a canvas-only watermark without an embedded payload.
                if (offset == 0) continue;
                item.setAttribute("offset", Long.toString(Math.addExact(offset, (long) appendedBytes)));
                shifted = true;
            }
            if (shifted) {
                StringBuilder value = new StringBuilder();
                for (int j = 0; j < items.getLength(); j++) value.append(xmlText(items.item(j)));
                meta.setValue(value.toString());
                changed = true;
            }
        }
        return changed ? xmlText(xmp) : xml;
    }

    private static String xmlText(org.w3c.dom.Node node) throws Exception {
        javax.xml.transform.Transformer transformer = javax.xml.transform.TransformerFactory.newInstance().newTransformer();
        transformer.setOutputProperty(javax.xml.transform.OutputKeys.OMIT_XML_DECLARATION, "yes");
        java.io.StringWriter text = new java.io.StringWriter();
        transformer.transform(new javax.xml.transform.dom.DOMSource(node),
                new javax.xml.transform.stream.StreamResult(text));
        return text.toString();
    }

    /** Replace only the early preview codestream; retain OS4's vendor metadata packets. */
    static byte[] previewImage(byte[] source, byte[] encoded) {
        List<Segment> old = segments(source), fresh = segments(encoded);
        require(find(source, old, 0xe2, MPF) == null, "Early preview unexpectedly contains MPF");
        java.io.ByteArrayOutputStream output = new java.io.ByteArrayOutputStream(source.length);
        output.write(255); output.write(216);
        for (Segment s : old) if (s.marker >= 0xe0 && s.marker <= 0xef)
            output.write(source, s.start, s.length);
        for (Segment s : fresh) {
            if (s.marker >= 0xe0 && s.marker <= 0xef) continue;
            if (s.marker == 0xda) { output.write(encoded, s.start, encoded.length - s.start); break; }
            output.write(encoded, s.start, s.length);
        }
        return output.toByteArray();
    }

    private static String description(int width, int height, int orientation, int length, String hash) {
        return "<rdf:Description rdf:about=\"\" xmlns:MiContainer=\"" + NS + "container/\" xmlns:MiItem=\""
                + NS + "container/item/\" MiContainer:Version=\"1.0\"><MiContainer:Directory><rdf:Seq>"
                + "<rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Primary\" MiItem:SHA_Start=\"SOS\" MiItem:SHA_length=\""
                + length + "\" MiItem:SHA=\"" + hash + "\"/></rdf:li>"
                + "<rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Legend.MONOPAN\" MiItem:length=\"0\" MiItem:Offset=\"0\" MiItem:OffsetType=\"EOF\" MiItem:Mime=\"image/jpeg\" MiItem:width=\""
                + width + "\" MiItem:height=\"" + height + "\" MiItem:Orient=\"" + orientation
                + "\" MiItem:UseMainImage=\"1\" MiItem:SHA_length=\"0\"/></rdf:li>"
                + "</rdf:Seq></MiContainer:Directory></rdf:Description>";
    }

    private static String descriptionWithAux(int primaryLength, String primaryHash,
                                             int width, int height, int orientation,
                                             int auxWidth, int auxHeight, int auxOrientation,
                                             int auxLength, String auxHash) {
        return "<rdf:Description rdf:about=\"\" xmlns:MiContainer=\"" + NS + "container/\" xmlns:MiItem=\""
                + NS + "container/item/\" MiContainer:Version=\"1.0\"><MiContainer:Directory><rdf:Seq>"
                + "<rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Primary\" MiItem:SHA_Start=\"SOS\" MiItem:SHA_length=\""
                + primaryLength + "\" MiItem:SHA=\"" + primaryHash + "\"/></rdf:li>"
                + "<rdf:li rdf:parseType=\"Resource\"><MiContainer:Item MiItem:name=\"Legend.MONOPAN\" MiItem:length=\""
                + auxLength + "\" MiItem:Offset=\"" + auxLength + "\" MiItem:OffsetType=\"EOF\" MiItem:Mime=\"image/jpeg\" MiItem:width=\""
                + auxWidth + "\" MiItem:height=\"" + auxHeight + "\" MiItem:Orient=\"" + auxOrientation
                + "\" MiItem:UseMainImage=\"0\" MiItem:SHA_length=\"" + auxLength + "\" MiItem:SHA=\"" + auxHash + "\"/></rdf:li>"
                + "</rdf:Seq></MiContainer:Directory></rdf:Description>";
    }

    private static int[] dimensions(byte[] jpeg, List<Segment> header) {
        int width = 0, height = 0;
        for (Segment s : header) if (s.marker == 0xc0 || s.marker == 0xc2) {
            height = be16(jpeg, s.start + 5);
            width = be16(jpeg, s.start + 7);
        }
        require(width > 0 && height > 0, "JPEG dimensions absent");
        return new int[] {width, height};
    }

    private static int primaryOrientation(byte[] jpeg, List<Segment> header) {
        Segment exif = find(jpeg, header, 0xe1, EXIF);
        if (exif == null) return 0;
        byte[] body = Arrays.copyOfRange(jpeg, exif.start + 4, exif.start + exif.length);
        ByteBuffer tiff = tiff(body, 6);
        int ifd = 6 + tiff.getInt(10);
        int count = ifdCount(tiff, ifd);
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (u16(tiff, at) != 0x0112) continue;
            int type = u16(tiff, at + 2);
            int value = type == 3 ? u16(tiff, at + 8) : type == 4 ? tiff.getInt(at + 8) : 1;
            if (value == 3) return 180;
            if (value == 6) return 90;
            if (value == 8) return 270;
            return 0;
        }
        return 0;
    }

    private static byte[] tagExif(byte[] jpeg) {
        Segment segment = find(jpeg, segments(jpeg), 0xe1, EXIF);
        require(segment != null, "Camera EXIF absent");
        byte[] body = Arrays.copyOfRange(jpeg, segment.start + 4, segment.start + segment.length);
        ByteBuffer tiff = tiff(body, 6);
        int ifd0 = 6 + tiff.getInt(10);
        removeStyleTag(tiff, ifd0);
        int count0 = ifdCount(tiff, ifd0);
        int pointer = -1;
        for (int i = 0; i < count0; i++) {
            int at = ifd0 + 2 + i * 12;
            if (u16(tiff, at) == 0x8769) {
                require(u16(tiff, at + 2) == 4 && tiff.getInt(at + 4) == 1, "Invalid EXIF pointer");
                pointer = at + 8;
            }
        }
        require(pointer >= 0, "Camera EXIF IFD absent");
        int ifd = 6 + tiff.getInt(pointer);
        removeStyleTag(tiff, ifd);
        removeBackwardInteropTag(tiff, ifd);
        int count = ifdCount(tiff, ifd);
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (u16(tiff, at) == 0x88b0) {
                writeTag(tiff, at);
                return replace(jpeg, segment.start, segment.length, app1(body));
            }
        }
        // Clone only the directory at EOF. Existing TIFF offsets and MakerNote bytes stay fixed.
        int newIfd = (body.length + 1) & ~1;
        byte[] updated = Arrays.copyOf(body, newIfd + 2 + (count + 1) * 12 + 4);
        ByteBuffer out = ByteBuffer.wrap(updated).order(tiff.order());
        out.putInt(pointer, newIfd - 6);
        out.putShort(newIfd, (short) (count + 1));
        int cursor = newIfd + 2;
        boolean inserted = false;
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (!inserted && u16(tiff, at) > 0x88b0) {
                writeTag(out, cursor); cursor += 12; inserted = true;
            }
            System.arraycopy(body, at, updated, cursor, 12); cursor += 12;
        }
        if (!inserted) { writeTag(out, cursor); cursor += 12; }
        out.putInt(cursor, tiff.getInt(ifd + 2 + count * 12));
        // A forward pointer in the source can become backward after cloning the
        // directory to EOF, so validate the final directory as well.
        removeBackwardInteropTag(out, newIfd);
        return replace(jpeg, segment.start, segment.length, app1(updated));
    }

    // Ordinary AUTH/VIBR and portrait variants are not the M3 style enum.
    private static void removeStyleTag(ByteBuffer tiff, int ifd) {
        int count = ifdCount(tiff, ifd);
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (u16(tiff, at) != 0x889f) continue;
            System.arraycopy(tiff.array(), at + 12, tiff.array(), at, (count - i - 1) * 12 + 4);
            tiff.putShort(ifd, (short) (count - 1));
            return;
        }
    }

    /**
     * Some camera EXIF layouts place the ExifIFD after the thumbnail while its
     * InteroperabilityOffset points backwards. Xiaomi Gallery's streaming TIFF
     * parser cannot seek back to that IFD and aborts special-photo detection.
     * Keep valid forward pointers and remove only the incompatible backward one.
     */
    private static void removeBackwardInteropTag(ByteBuffer tiff, int ifd) {
        int count = ifdCount(tiff, ifd);
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (u16(tiff, at) != 0xa005) continue;
            require(u16(tiff, at + 2) == 4 && tiff.getInt(at + 4) == 1,
                    "Invalid Interoperability IFD pointer");
            int target = 6 + tiff.getInt(at + 8);
            if (target >= ifd) return;
            System.arraycopy(tiff.array(), at + 12, tiff.array(), at,
                    (count - i - 1) * 12 + 4);
            tiff.putShort(ifd, (short) (count - 1));
            return;
        }
    }

    private static void writeTag(ByteBuffer out, int at) {
        out.putShort(at, (short) 0x88b0); out.putShort(at + 2, (short) 1);
        out.putInt(at + 4, 1); out.putInt(at + 8, 0); out.put(at + 8, (byte) 2);
    }

    private static void updateMpf(byte[] original, List<Segment> before, byte[] result) {
        Segment old = find(original, before, 0xe2, MPF);
        if (old == null) return;
        Segment now = find(result, segments(result), 0xe2, MPF);
        int oldBase = old.start + 8, base = now.start + 8;
        ByteBuffer mp = tiff(result, base);
        int ifd = base + mp.getInt(base + 4), count = ifdCount(mp, ifd);
        int growth = result.length - original.length;
        for (int i = 0; i < count; i++) {
            int at = ifd + 2 + i * 12;
            if (u16(mp, at) != 0xb002) continue;
            int bytes = mp.getInt(at + 4), entries = base + mp.getInt(at + 8);
            require(bytes >= 32 && bytes % 16 == 0 && entries + bytes <= now.start + now.length, "Invalid MP entries");
            for (int j = 0; j < bytes / 16; j++) {
                int entry = entries + j * 16;
                // OS4 vendor APP insertion can leave the incoming primary size stale.
                // Derive the new index from the actual codestream boundary.
                if (j == 0) mp.putInt(entry + 4, primaryEnd(result));
                else mp.putInt(entry + 8, Math.addExact(mp.getInt(entry + 8), growth + oldBase - base));
            }
        }
    }

    private static int primaryEnd(byte[] jpeg) {
        List<Segment> header = segments(jpeg);
        Segment sos = header.get(header.size() - 1);
        for (int at = sos.start + sos.length; at + 1 < jpeg.length;) {
            if ((jpeg[at] & 255) != 255) { at++; continue; }
            int marker = jpeg[at + 1] & 255;
            if (marker == 0xd9) return at + 2;
            if (marker == 0xff) { at++; continue; }
            if (marker == 0 || (marker >= 0xd0 && marker <= 0xd7)) { at += 2; continue; }
            require(at + 4 <= jpeg.length, "Truncated scan marker");
            int length = be16(jpeg, at + 2);
            require(length >= 2 && at + 2 + length <= jpeg.length, "Invalid scan marker");
            at += length + 2;
        }
        throw new IllegalArgumentException("Primary JPEG EOI absent");
    }

    private static ByteBuffer tiff(byte[] data, int base) {
        require(base >= 0 && base + 8 <= data.length, "Truncated TIFF");
        boolean little = data[base] == 'I' && data[base + 1] == 'I';
        require(little || (data[base] == 'M' && data[base + 1] == 'M'), "Invalid TIFF byte order");
        ByteBuffer result = ByteBuffer.wrap(data).order(little ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        require(u16(result, base + 2) == 42, "Invalid TIFF header"); return result;
    }
    private static int ifdCount(ByteBuffer data, int at) {
        require(at >= 0 && at + 2 <= data.limit(), "Invalid IFD offset");
        int count = u16(data, at);
        require((long) at + 2 + (long) count * 12 + 4 <= data.limit(), "Truncated IFD"); return count;
    }
    private static List<Segment> segments(byte[] jpeg) {
        require(jpeg.length >= 4 && be16(jpeg, 0) == 0xffd8, "Expected JPEG");
        List<Segment> result = new ArrayList<>();
        for (int at = 2; at + 4 <= jpeg.length;) {
            require((jpeg[at] & 255) == 255, "Invalid JPEG marker");
            int marker = jpeg[at + 1] & 255, length = be16(jpeg, at + 2) + 2;
            require(length >= 4 && at + length <= jpeg.length, "Truncated JPEG segment");
            result.add(new Segment(at, length, marker));
            if (marker == 0xda) return result;
            at += length;
        }
        throw new IllegalArgumentException("JPEG SOS absent");
    }
    private static Segment find(byte[] jpeg, List<Segment> segments, int marker, byte[] prefix) {
        Segment found = null;
        for (Segment s : segments) if (s.marker == marker && s.length >= prefix.length + 4) {
            boolean matches = true;
            for (int i = 0; i < prefix.length; i++) if (jpeg[s.start + 4 + i] != prefix[i]) matches = false;
            if (matches) { require(found == null, "Duplicate metadata packet"); found = s; }
        }
        return found;
    }
    private static byte[] app1(byte[] body) {
        require(body.length + 2 <= 65535, "APP1 exceeds 64 KiB");
        byte[] result = new byte[body.length + 4]; result[0] = -1; result[1] = -31;
        result[2] = (byte) ((body.length + 2) >>> 8); result[3] = (byte) (body.length + 2);
        System.arraycopy(body, 0, result, 4, body.length); return result;
    }
    private static byte[] replace(byte[] src, int at, int length, byte[] value) {
        byte[] result = new byte[src.length - length + value.length];
        System.arraycopy(src, 0, result, 0, at); System.arraycopy(value, 0, result, at, value.length);
        System.arraycopy(src, at + length, result, at + value.length, src.length - at - length); return result;
    }
    private static byte[] join(byte[] a, byte[] b) {
        byte[] result = Arrays.copyOf(a, a.length + b.length); System.arraycopy(b, 0, result, a.length, b.length); return result;
    }
    private static String sha(byte[] b, int at, int length) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256"); digest.update(b, at, length);
        StringBuilder hex = new StringBuilder(64);
        for (byte value : digest.digest()) hex.append(String.format(java.util.Locale.ROOT, "%02x", value & 255));
        return hex.toString();
    }
    private static byte[] ascii(String s) { return s.getBytes(StandardCharsets.UTF_8); }
    private static int be16(byte[] b, int at) { return ((b[at] & 255) << 8) | (b[at + 1] & 255); }
    private static int u16(ByteBuffer b, int at) { return b.getShort(at) & 65535; }
    private static void require(boolean condition, String message) { if (!condition) throw new IllegalArgumentException(message); }
    private static final class Segment {
        final int start, length, marker;
        Segment(int start, int length, int marker) { this.start = start; this.length = length; this.marker = marker; }
    }
}
