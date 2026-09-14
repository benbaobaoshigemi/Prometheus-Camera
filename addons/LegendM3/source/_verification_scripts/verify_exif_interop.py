"""Report EXIF InteroperabilityOffset direction and M3 essential tag."""
from __future__ import annotations

import json
from pathlib import Path
import sys
import glob


def app1_exif(data: bytes) -> bytes:
    pos = 2
    while pos + 4 <= len(data):
        if data[pos] != 0xFF:
            raise ValueError("invalid JPEG marker")
        marker = data[pos + 1]
        if marker == 0xDA:
            break
        size = int.from_bytes(data[pos + 2:pos + 4], "big") + 2
        body = data[pos + 4:pos + size]
        if marker == 0xE1 and body.startswith(b"Exif\0\0"):
            return body[6:]
        pos += size
    raise ValueError("EXIF APP1 absent")


def inspect(path: Path) -> dict:
    tiff = app1_exif(path.read_bytes())
    little = tiff[:2] == b"II"
    order = "little" if little else "big"
    u16 = lambda at: int.from_bytes(tiff[at:at + 2], order)
    u32 = lambda at: int.from_bytes(tiff[at:at + 4], order)
    ifd0 = u32(4)
    exif_ifd = None
    for i in range(u16(ifd0)):
        at = ifd0 + 2 + i * 12
        if u16(at) == 0x8769:
            exif_ifd = u32(at + 8)
            break
    if exif_ifd is None:
        raise ValueError("ExifIFD pointer absent")
    interop = None
    essential = None
    for i in range(u16(exif_ifd)):
        at = exif_ifd + 2 + i * 12
        tag = u16(at)
        if tag == 0xA005:
            interop = u32(at + 8)
        elif tag == 0x88B0:
            essential = tiff[at + 8]
    return {
        "file": path.name,
        "exif_ifd": exif_ifd,
        "interop_ifd": interop,
        "backward_interop": interop is not None and interop < exif_ifd,
        "essential": essential,
    }


def main():
    paths = [path for arg in sys.argv[1:] for path in glob.glob(arg)]
    results = [inspect(Path(path)) for path in paths]
    print(json.dumps(results, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
