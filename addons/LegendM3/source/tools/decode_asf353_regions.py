"""Expand 17U ASF353 serialized leaves into the generated numeric region.

This is a read-only, static parser.  It follows the V6 symbol table and
trigger graph in the tuning binary, then applies the memcpy/scalar layout
recovered from ``asf353_rgn_dataType::Load``.  It never loads or executes a
camera library.
"""

from __future__ import annotations

import argparse
import json
import struct
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator


DEFAULT_TUNING = Path(
    r"<SOURCE_ROOT>\_work\17u_rootfs\odm\lib64\camera\com.qti.tuned.nezha_ofilm_ovx10500u_wide_ii.bin"
)
ROOT = Path(__file__).resolve().parents[1]
DEFAULT_INDEX = ROOT / "evidence" / "m3_tuning_records.json"
DEFAULT_OUT = ROOT / "dist" / "asf353_decoded"

# Source-order destinations and memcpy sizes from asf353_rgn_dataType::Load.
# These are offsets in the numeric asf353_rgn_dataType object, not file offsets.
ARRAY_LAYOUT: tuple[tuple[int | None, int], ...] = (
    (0x000, 0x028),
    (0x028, 0x028),
    (0x050, 0x100),
    (0x150, 0x100),
    (0x250, 0x100),
    (0x360, 0x080),
    (0x3E0, 0x080),
    (0x460, 0x018),
    (0x478, 0x018),
    (0x490, 0x100),
    (0x590, 0x100),
    (0x690, 0x100),
    (0x798, 0x080),
    (0x818, 0x080),
    (0x898, 0x010),
    (0x8A8, 0x010),
    (0x8C0, 0x044),
    (0x904, 0x044),
    # The 0x14-byte serialized field is copied to a loader-local temporary
    # at 0x9ed02c; no direct numeric-region store follows that memcpy.
    (None, 0x014),
    (0x9A8, 0x080),
    (0xA28, 0x080),
)

# Scalar words occur after the indicated array.  The 13 words after array 18
# are all direct stores, including +0x948 and +0x968.  The serialized array 19
# itself is consumed by a loader-local temporary and is retained separately.
SCALAR_PLAN: dict[int, tuple[int | None, ...]] = {
    5: (0x350, 0x354, 0x358, 0x35C),
    12: (0x790, 0x794),
    16: (0x8B8, 0x8BC),
    18: (0x948, 0x94C, 0x950, 0x954, 0x958, 0x95C, 0x960, 0x964,
         0x968, 0x96C, 0x970, 0x974, 0x978),
    19: (0x990, 0x994, 0x998, 0x99C, 0x9A0, 0x9A4),
    21: (0xAA8, 0xAAC),
}

NUMERIC_REGION_SIZE = 0xAB0
SERIALIZED_LEAF_SIZE = 2820
# The loader zeroes 0x97c..0x98f and performs no serialized direct store
# there; 0x98c is an explicit zero word inside this range.
ZERO_INITIALIZED_RANGES = ((0x97C, 0x990),)
LOADER_ADDRESS = 0x9E9A30
LOADER_SIZE = 0x4060
MODULE_LOADER_ADDRESS = 0x9EE3C0


class DecodeError(ValueError):
    """Raised when a binary violates the verified ASF353 layout."""


@dataclass(frozen=True)
class Leaf:
    record: int
    leaf_index: int
    sid: int
    source_offset: int
    data: bytes
    path: tuple[tuple[float, float, int], ...]


class V6Binary:
    """Minimal V6 tuning reader: TOC, symbol blocks, and trigger leaves."""

    def __init__(self, path: Path):
        self.path = path
        self.data = path.read_bytes()
        if len(self.data) < 0xB0:
            raise DecodeError(f"tuning file is too small: {path}")
        count = self.u32(0xA4)
        toc_end = 0xA8 + count * 12
        if toc_end > len(self.data):
            raise DecodeError("V6 TOC exceeds file")
        self.sections = {
            kind: (offset, size)
            for kind, offset, size in struct.iter_unpack(
                "<III", self.data[0xA8:toc_end]
            )
        }
        for kind in (1, 3):
            if kind not in self.sections:
                raise DecodeError(f"V6 section {kind} is missing")
            offset, size = self.sections[kind]
            if offset + size > len(self.data):
                raise DecodeError(f"V6 section {kind} exceeds file")
        self.data_base = self.sections[1][0]
        self.symbol_base, self.symbol_size = self.sections[3]
        if self.symbol_size % 12:
            raise DecodeError("V6 symbol section is not a 12-byte table")
        self.symbol_count = self.symbol_size // 12

    def u32(self, offset: int) -> int:
        if offset < 0 or offset + 4 > len(self.data):
            raise DecodeError(f"u32 outside tuning file at {offset:#x}")
        return struct.unpack_from("<I", self.data, offset)[0]

    def symbol(self, sid: int) -> tuple[int, int, int]:
        if not 0 <= sid < self.symbol_count:
            raise DecodeError(f"symbol id {sid} outside V6 symbol table")
        return struct.unpack_from("<III", self.data, self.symbol_base + sid * 12)

    def block(self, sid: int) -> tuple[bytes, int]:
        relative, size, _canonical = self.symbol(sid)
        section_offset, section_size = self.sections[1]
        if relative > section_size or size > section_size - relative:
            raise DecodeError(
                f"symbol {sid} block exceeds V6 section 1: "
                f"relative {relative:#x}, size {size:#x}"
            )
        start = self.data_base + relative
        end = start + size
        if end > len(self.data):
            raise DecodeError(f"symbol {sid} block exceeds tuning file")
        return self.data[start:end], start

    def leaves(
        self,
        record: int,
        root_sid: int,
        count: int,
        path: tuple[tuple[float, float, int], ...] = (),
        seen: frozenset[int] = frozenset(),
        leaf_counter: list[int] | None = None,
    ) -> Iterator[Leaf]:
        if leaf_counter is None:
            leaf_counter = [0]
        if root_sid in seen:
            raise DecodeError(f"trigger cycle through symbol {root_sid}")
        raw, start = self.block(root_sid)
        if len(raw) != count * 28:
            raise DecodeError(
                f"trigger {root_sid}: {len(raw)} != {count} * 28 bytes"
            )
        for index in range(count):
            length, low, high, children, child_sid, regions, region_sid = (
                struct.unpack_from("<Iff4I", raw, index * 28)
            )
            if length != 24:
                raise DecodeError(f"trigger {root_sid}/{index}: length {length}")
            branch = path + ((low, high, index),)
            if children:
                yield from self.leaves(
                    record, child_sid, children, branch, seen | {root_sid}, leaf_counter
                )
            if not regions:
                continue
            payload, payload_start = self.block(region_sid)
            cursor = 0
            for _ in range(regions):
                if cursor + 4 > len(payload):
                    raise DecodeError(f"region symbol {region_sid}: missing size")
                size = struct.unpack_from("<I", payload, cursor)[0]
                start_in_block = cursor + 4
                end_in_block = start_in_block + size
                if end_in_block > len(payload):
                    raise DecodeError(f"region symbol {region_sid}: short payload")
                yield Leaf(
                    record=record,
                    leaf_index=leaf_counter[0],
                    sid=region_sid,
                    source_offset=payload_start + start_in_block,
                    data=payload[start_in_block:end_in_block],
                    path=branch,
                )
                leaf_counter[0] += 1
                cursor = end_in_block
            if cursor != len(payload):
                raise DecodeError(
                    f"region symbol {region_sid}: {len(payload) - cursor} trailing bytes"
                )


def expand_leaf(leaf: Leaf) -> tuple[bytes, dict[str, list[dict]]]:
    """Apply the recovered generated-loader layout to one serialized leaf."""

    if len(leaf.data) != SERIALIZED_LEAF_SIZE:
        raise DecodeError(
            f"record {leaf.record} leaf {leaf.leaf_index}: serialized size "
            f"{len(leaf.data)} != {SERIALIZED_LEAF_SIZE}; refusing 304-byte descriptors"
        )
    out = bytearray(NUMERIC_REGION_SIZE)
    cursor = 0
    unmapped_arrays: list[dict] = []
    unmapped_scalars: list[dict] = []
    for index, (destination, length) in enumerate(ARRAY_LAYOUT, start=1):
        if cursor + 4 > len(leaf.data):
            raise DecodeError("missing serialized array length")
        declared = struct.unpack_from("<I", leaf.data, cursor)[0]
        if declared != length:
            raise DecodeError(
                f"record {leaf.record} leaf {leaf.leaf_index}: array {index} "
                f"at {cursor:#x} declares {declared:#x}, expected {length:#x}"
            )
        cursor += 4
        end = cursor + length
        if end > len(leaf.data):
            raise DecodeError(f"array {index} exceeds serialized or numeric region")
        if destination is None:
            unmapped_arrays.append(
                {
                    "array_index": index,
                    "source_offset": cursor,
                    "size": length,
                    "payload_hex": leaf.data[cursor:end].hex(),
                }
            )
        else:
            if destination + length > len(out):
                raise DecodeError(f"array {index} exceeds serialized or numeric region")
            out[destination:destination + length] = leaf.data[cursor:end]
        cursor = end
        for destination_scalar in SCALAR_PLAN.get(index, ()):
            if cursor + 4 > len(leaf.data):
                raise DecodeError("missing serialized scalar word")
            value = leaf.data[cursor:cursor + 4]
            if destination_scalar is None:
                unmapped_scalars.append(
                    {"source_offset": cursor, "value_u32": struct.unpack("<I", value)[0]}
                )
            else:
                out[destination_scalar:destination_scalar + 4] = value
            cursor += 4
    if cursor != len(leaf.data):
        raise DecodeError(
            f"record {leaf.record} leaf {leaf.leaf_index}: {len(leaf.data) - cursor} "
            f"unconsumed bytes at {cursor:#x}"
        )
    return bytes(out), {
        "unmapped_arrays": unmapped_arrays,
        "unmapped_scalar_words": unmapped_scalars,
    }


def load_index(path: Path) -> dict[int, dict]:
    rows = json.loads(path.read_text(encoding="utf-8"))["records"]
    result = {}
    for row in rows:
        result[int(row["record"])] = row
    return result


def decode_records(
    tuning_path: Path, index_path: Path, records: list[int], out_dir: Path
) -> dict:
    v6 = V6Binary(tuning_path)
    index = load_index(index_path)
    out_dir.mkdir(parents=True, exist_ok=True)
    manifest: dict = {
        "input": str(tuning_path),
        "index": str(index_path),
        "loader": {
            "symbol": "asf_3_5_3::asf353_rgn_dataType::Load",
            "address": hex(LOADER_ADDRESS),
            "size": LOADER_SIZE,
            "module_loader_address": hex(MODULE_LOADER_ADDRESS),
        },
        "numeric_region_size": NUMERIC_REGION_SIZE,
        "serialized_leaf_size": SERIALIZED_LEAF_SIZE,
        "zero_initialized_ranges": [
            {"start": start, "end": end} for start, end in ZERO_INITIALIZED_RANGES
        ],
        "records": [],
    }
    for record_id in records:
        if record_id not in index:
            raise DecodeError(f"record {record_id} is absent from {index_path}")
        row = index[record_id]
        if row.get("name") != "asf353_ipe_v2":
            raise DecodeError(
                f"record {record_id} is {row.get('name')!r}, not asf353_ipe_v2"
            )
        data_start = int(row["data_start"], 0)
        size = int(row["size"])
        if size != 304:
            raise DecodeError(f"record {record_id}: module descriptor size is {size}, expected 304")
        if data_start + size > len(v6.data):
            raise DecodeError(f"record {record_id}: module descriptor exceeds tuning file")
        root_size, count, root_sid = struct.unpack_from(
            "<3I", v6.data, data_start + size - 12
        )
        if root_size != 8 or count == 0:
            raise DecodeError(f"record {record_id}: invalid root descriptor")
        record_manifest = {
            "record": record_id,
            "chain": row.get("chain"),
            "module_descriptor_offset": data_start,
            "module_descriptor_size": size,
            "root_sid": root_sid,
            "root_count": count,
            "leaves": [],
        }
        leaves = list(v6.leaves(record_id, root_sid, count))
        for leaf in leaves:
            numeric, details = expand_leaf(leaf)
            name = f"record_{record_id}_leaf_{leaf.leaf_index:02d}_numeric.bin"
            (out_dir / name).write_bytes(numeric)
            record_manifest["leaves"].append(
                {
                    "leaf_index": leaf.leaf_index,
                    "symbol_sid": leaf.sid,
                    "serialized_offset": leaf.source_offset,
                    "serialized_size": len(leaf.data),
                    "path": [list(x) for x in leaf.path],
                    "numeric_region_file": name,
                    "numeric_region_size": len(numeric),
                    "unmapped_arrays": details["unmapped_arrays"],
                    "unmapped_scalar_words": details["unmapped_scalar_words"],
                }
            )
        manifest["records"].append(record_manifest)
    (out_dir / "manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    return manifest


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--tuning", type=Path, default=DEFAULT_TUNING)
    parser.add_argument("--index", type=Path, default=DEFAULT_INDEX)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT)
    parser.add_argument(
        "--records", default="1799,1810,1821",
        help="comma-separated ASF353 record ids (default: ordinary 1799 plus 1810/1821)",
    )
    args = parser.parse_args()
    record_ids = [int(value, 0) for value in args.records.split(",") if value.strip()]
    manifest = decode_records(args.tuning, args.index, record_ids, args.out_dir)
    print(
        f"decoded {len(manifest['records'])} records, "
        f"{sum(len(r['leaves']) for r in manifest['records'])} leaves -> {args.out_dir}"
    )


if __name__ == "__main__":
    main()
