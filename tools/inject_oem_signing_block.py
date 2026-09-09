import argparse
import struct
from pathlib import Path


EOCD = b"PK\x05\x06"
APK_SIG_MAGIC = b"APK Sig Block 42"


def central_directory_offset(data: bytes) -> tuple[int, int]:
    eocd = data.rfind(EOCD, max(0, len(data) - 65557))
    if eocd < 0:
        raise ValueError("ZIP EOCD was not found")
    offset = struct.unpack_from("<I", data, eocd + 16)[0]
    if offset == 0xFFFFFFFF:
        raise ValueError("ZIP64 APKs are not supported")
    return eocd, offset


def signing_block(data: bytes) -> bytes:
    _, offset = central_directory_offset(data)
    if data[offset - 16 : offset] != APK_SIG_MAGIC:
        raise ValueError("Source APK has no APK Signing Block")
    size = struct.unpack_from("<Q", data, offset - 24)[0]
    start = offset - size - 8
    block = data[start:offset]
    if struct.unpack_from("<Q", block, 0)[0] != size:
        raise ValueError("APK Signing Block size fields disagree")
    return block


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("source", type=Path, help="OEM-signed source APK")
    parser.add_argument("target", type=Path, help="Aligned unsigned APK")
    parser.add_argument("output", type=Path)
    args = parser.parse_args()

    source_data = args.source.read_bytes()
    target_data = args.target.read_bytes()
    block = signing_block(source_data)
    eocd, offset = central_directory_offset(target_data)
    if target_data[offset - 16 : offset] == APK_SIG_MAGIC:
        raise ValueError("Target APK already contains an APK Signing Block")

    output = bytearray(target_data[:offset] + block + target_data[offset:])
    new_eocd = eocd + len(block)
    struct.pack_into("<I", output, new_eocd + 16, offset + len(block))
    args.output.write_bytes(output)

    if signing_block(bytes(output)) != block:
        raise RuntimeError("Injected signing block did not round-trip")
    print(f"Injected {len(block)}-byte OEM APK Signing Block into {args.output}")


if __name__ == "__main__":
    main()
