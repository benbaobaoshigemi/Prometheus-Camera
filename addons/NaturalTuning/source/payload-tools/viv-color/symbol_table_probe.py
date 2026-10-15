# -*- coding: utf-8 -*-
"""Inspect Qualcomm ParameterFileSymbolTable entries and pointer-looking words.

This is a static verifier, not a generic Chromatix decoder.  It follows the
0x3c entry layout proved by ParameterFileSymbolTable::Load and reports which
u32 words in a selected entry resolve to real symbol IDs.
"""
from __future__ import annotations

import argparse
import struct
from dataclasses import dataclass
from pathlib import Path


ENTRY_SIZE = 0x3C


@dataclass(frozen=True)
class Entry:
    record_offset: int
    sid: int
    name: str
    version: int
    mode: int
    data_offset: int
    data_size: int
    link: int


def toc(data: bytes) -> dict[int, tuple[int, int]]:
    count = struct.unpack_from("<I", data, 0xA4)[0]
    return {
        kind: (offset, size)
        for kind, offset, size in struct.iter_unpack(
            "<III", data[0xA8:0xA8 + count * 12]
        )
    }


def parse_entries(data: bytes) -> tuple[list[Entry], dict[int, Entry]]:
    offset, size = toc(data)[0]
    if size % ENTRY_SIZE:
        raise ValueError(f"symbol section size {size:#x} is not divisible by 0x3c")
    entries = []
    by_id = {}
    for pos in range(offset, offset + size, ENTRY_SIZE):
        sid = struct.unpack_from("<I", data, pos)[0]
        raw_name = data[pos + 4:pos + 0x24].split(b"\0", 1)[0]
        name = raw_name.decode("ascii", errors="backslashreplace")
        version, mode, data_offset, data_size, link = struct.unpack_from(
            "<QIIII", data, pos + 0x24
        )
        entry = Entry(pos, sid, name, version, mode, data_offset, data_size, link)
        entries.append(entry)
        if sid in by_id:
            raise ValueError(f"duplicate symbol id {sid} at {pos:#x}")
        by_id[sid] = entry
    return entries, by_id


def fmt_version(value: int) -> str:
    major = value & 0xFFFF
    minor = (value >> 16) & 0xFFFF
    patch = (value >> 32) & 0xFFFFFFFF
    return f"{major}.{minor}.{patch}"


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("binary", type=Path)
    ap.add_argument("--record", type=lambda x: int(x, 0))
    ap.add_argument("--sid", type=lambda x: int(x, 0))
    ap.add_argument("--name")
    ap.add_argument("--mode", type=lambda x: int(x, 0))
    args = ap.parse_args()
    if args.record is None and args.sid is None and args.name is None:
        ap.error("use --record, --sid, or --name")

    data = args.binary.read_bytes()
    entries, by_id = parse_entries(data)
    selected = []
    for entry in entries:
        name_offset = entry.record_offset + 4
        if args.record is not None and args.record not in (entry.record_offset, name_offset):
            continue
        if args.sid is not None and entry.sid != args.sid:
            continue
        if args.name is not None and entry.name != args.name:
            continue
        if args.mode is not None and entry.mode != args.mode:
            continue
        selected.append(entry)

    print(f"symbols={len(entries)} ids={len(by_id)} toc0={toc(data)[0]}")
    for entry in selected:
        print(
            f"ENTRY record={entry.record_offset:#x} name_at={entry.record_offset + 4:#x} "
            f"sid={entry.sid} name={entry.name!r} version={fmt_version(entry.version)} "
            f"mode={entry.mode} data={entry.data_offset:#x}.."
            f"{entry.data_offset + entry.data_size:#x} size={entry.data_size} link={entry.link}"
        )
        data_base = toc(data)[1][0]
        physical = data_base + entry.data_offset
        print(f"  data_base={data_base:#x} physical={physical:#x}..{physical + entry.data_size:#x}")
        chunk = data[physical:physical + entry.data_size]
        if len(chunk) != entry.data_size:
            print("  DATA OUT OF RANGE")
            continue
        for off in range(0, len(chunk) - 3, 4):
            word = struct.unpack_from("<I", chunk, off)[0]
            target = by_id.get(word)
            suffix = ""
            if target is not None:
                suffix = (
                    f" -> sid={target.sid} name={target.name!r} "
                    f"data_rel={target.data_offset:#x}+{target.data_size} link={target.link}"
                )
            as_float = struct.unpack_from("<f", chunk, off)[0]
            print(f"  +{off:04x} u32={word:10d} hex={word:08x} f32={as_float: .7g}{suffix}")


if __name__ == "__main__":
    main()
