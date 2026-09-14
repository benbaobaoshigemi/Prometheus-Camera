"""Independent TIFF/XML/MPF verification against real OS4 captures; no image re-encode."""
from pathlib import Path
import hashlib
import json
import subprocess
import xml.etree.ElementTree as ET
from PIL import Image

ROOT = Path(__file__).resolve().parent
JAVA = Path('<SOURCE_ROOT>/_tools/jdk-21.0.12.1+1/bin/java.exe')
NS = {'mi': 'http://ns.xiaomi.com/photos/1.0/container/',
      'item': 'http://ns.xiaomi.com/photos/1.0/container/item/'}


def interop_direction(data):
    exif = next(body for tag, pos, body in segments(data)
                if tag == 0xe1 and body.startswith(b'Exif\0\0'))
    tiff = exif[6:]
    order = 'little' if tiff[:2] == b'II' else 'big'
    u = lambda at, size: int.from_bytes(tiff[at:at + size], order)
    ifd0 = u(4, 4)
    exif_ifd = None
    for i in range(u(ifd0, 2)):
        at = ifd0 + 2 + i * 12
        if u(at, 2) == 0x8769:
            exif_ifd = u(at + 8, 4)
            break
    assert exif_ifd is not None
    for i in range(u(exif_ifd, 2)):
        at = exif_ifd + 2 + i * 12
        if u(at, 2) == 0xa005:
            target = u(at + 8, 4)
            return {'exif_ifd': exif_ifd, 'target': target, 'backward': target < exif_ifd}
    return {'exif_ifd': exif_ifd, 'target': None, 'backward': False}


def segments(data):
    pos = 2
    while pos + 4 <= len(data):
        assert data[pos] == 255
        length = int.from_bytes(data[pos+2:pos+4], 'big') + 2
        yield data[pos+1], pos, data[pos+4:pos+length]
        if data[pos+1] == 0xda:
            return
        pos += length
    raise AssertionError('SOS absent')


def validate(original, output):
    a, b = original.read_bytes(), output.read_bytes()
    sa, sb = list(segments(a)), list(segments(b))
    assert a[sa[-1][1]:] == b[sb[-1][1]:], 'All entropy and appended data must survive'
    with Image.open(original) as ia, Image.open(output) as ib:
        assert ia.size == ib.size
        ea, eb = ia.getexif(), ib.getexif()
        # Only the EXIF directory pointer changes in IFD0.
        assert {k: v for k, v in ea.items() if k not in (34665, 0x889f)} == {k: v for k, v in eb.items() if k not in (34665, 0x889f)}
        fa, fb = ea.get_ifd(34665), eb.get_ifd(34665)
        assert fb[0x88b0] == b'\x02'
        assert 0x889f not in eb and 0x889f not in fb, 'Ordinary Leica style must not label M3'
        assert {k: v for k, v in fa.items() if k not in (0x889f, 0xa005)} == {k: v for k, v in fb.items() if k not in (0x88b0, 0xa005)}, 'Unrelated EXIF values changed'
        assert ia.tobytes() == ib.tobytes(), 'Decoded primary pixels changed'
        dimensions = ia.size
    xmp = next(body.split(b'\0', 1)[1] for tag, pos, body in sb if tag == 0xe1 and body.startswith(b'http:'))
    root = ET.fromstring(xmp)
    items = root.findall('.//mi:Item', NS)
    assert len(items) == 2
    attrs = [{k.split('}', 1)[-1]: v for k, v in x.attrib.items()} for x in items]
    primary, mono = attrs
    assert primary['name'] == 'Primary' and primary['SHA_Start'] == 'SOS'
    assert int(primary['SHA_length']) == len(a) - sa[-1][1]
    assert primary['SHA'] == hashlib.sha256(b[sb[-1][1]:]).hexdigest()
    assert mono['name'] == 'Legend.MONOPAN' and mono['UseMainImage'] == '1'
    assert (int(mono['width']), int(mono['height'])) == dimensions
    assert mono['Offset'] == mono['length'] == mono['SHA_length'] == '0'
    mpfs = []
    for tag, pos, body in sb:
        if tag != 0xe2 or not body.startswith(b'MPF\0'):
            continue
        tiff = body[4:]; order = 'little' if tiff[:2] == b'II' else 'big'
        def u(at, n): return int.from_bytes(tiff[at:at+n], order)
        ifd = u(4, 4)
        for i in range(u(ifd, 2)):
            at = ifd + 2 + i * 12
            if u(at, 2) != 0xb002: continue
            entries, count = u(at+8, 4), u(at+4, 4)//16
            for j in range(count):
                entry = entries+j*16
                size, offset = u(entry+4, 4), u(entry+8, 4)
                start = 0 if j == 0 else pos+8+offset
                assert b[start:start+2] == b'\xff\xd8'
                assert b[start+size-2:start+size] == b'\xff\xd9', 'MPF size or offset invalid'
                mpfs.append({'start': start, 'size': size})
    preserved = [(tag, body) for tag, pos, body in sa if tag not in (0xe1, 0xe2)]
    assert preserved == [(tag, body) for tag, pos, body in sb if tag not in (0xe1, 0xe2)]
    interop = interop_direction(b)
    assert not interop['backward'], 'Output contains a backward InteroperabilityOffset'
    return {'input': original.name, 'output': output.name, 'growth': len(b)-len(a), 'mpf': mpfs,
            'exif_preserved': True, 'pixels_preserved': True, 'payload_preserved': True, 'container_verified': True}


def main():
    results = []
    for name in ('m3_111_shot.jpg', 'm3_111_shot2.jpg', 'm3_111_photo.jpg'):
        source = ROOT/'evidence'/name
        output = source.with_stem(source.stem+'_container')
        subprocess.run([str(JAVA), '-cp', str(ROOT/'inputs/jpeg-probe'), 'JpegProbe', str(source), str(output), '0'], check=True)
        results.append(validate(source, output))
    (ROOT/'evidence/m3_jpeg_verification.json').write_text(json.dumps(results, indent=2), encoding='utf-8')
    print(json.dumps(results, indent=2))


if __name__ == '__main__':
    main()
