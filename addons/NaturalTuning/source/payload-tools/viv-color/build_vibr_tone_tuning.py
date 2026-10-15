"""Build a VIBR-only Gamma15 override inside a QTI Chromatix tuned binary.

The tool does not overwrite the shared default Gamma15 graph.  It clones that
graph, assigns fresh symbol IDs, adds a top-level gamma15_ipe_v2 record for the
ordinary-photo VIBR tuning tuple, and rebuilds the container TOC and CRC32.
"""
from __future__ import annotations

import argparse
import binascii
import csv
import re
import struct
import sys
from dataclasses import dataclass
from pathlib import Path

from extract_color_regions_all_lenses import LENSES
from extract_color_symbol_regions import walk
from resolve_tuned_mode import mode_tree, normalized_chain
from symbol_table_probe import ENTRY_SIZE, Entry, parse_entries, toc


NODE = "gamma15_ipe_v2"
ROOT_POINTER = 0x2C
REGION_SIZE = 0xC0C
IPE_SLOT = 4
CAPTURE_EFFECT = 28
PREVIEW_EFFECT = 0


@dataclass(frozen=True)
class NewEntry:
    sid: int
    name: str
    version: int
    mode: int
    data: bytes
    link: int


def parse_points(text: str) -> list[tuple[float, float]]:
    points = []
    for token in text.split(","):
        x, y = token.split(":", 1)
        points.append((float(x), float(y)))
    if len(points) < 2 or points[0] != (0.0, 0.0) or points[-1] != (1.0, 1.0):
        raise ValueError("tone points must start at 0:0 and end at 1:1")
    if any(not (0 <= x <= 1 and 0 <= y <= 1) for x, y in points):
        raise ValueError("tone points must stay in the normalized 0..1 range")
    if any(bx <= ax or by < ay for (ax, ay), (bx, by) in zip(points, points[1:])):
        raise ValueError("tone x must increase and tone y must not decrease")
    return points


def sample_curve(points: list[tuple[float, float]]) -> tuple[float, ...]:
    result = []
    segment = 0
    for knot in range(257):
        x = knot / 256
        while segment + 1 < len(points) - 1 and x > points[segment + 1][0]:
            segment += 1
        x0, y0 = points[segment]
        x1, y1 = points[segment + 1]
        y = y0 + (y1 - y0) * (x - x0) / (x1 - x0)
        result.append(float(round(y * 1023)))
    if result[0] != 0 or result[-1] != 1023:
        raise AssertionError("sampled curve endpoints changed")
    if any(b < a for a, b in zip(result, result[1:])):
        raise AssertionError("sampled curve is not monotonic")
    return tuple(result)


def entry_bytes(entry: NewEntry, data_offset: int) -> bytes:
    name = entry.name.encode("ascii")
    if len(name) > 31:
        raise ValueError(f"symbol name too long: {entry.name}")
    return struct.pack(
        "<I32sQIIII", entry.sid, name.ljust(32, b"\0"), entry.version,
        entry.mode, data_offset, len(entry.data), entry.link,
    )


def entry_data(blob: bytes, data_base: int, entry: Entry) -> bytes:
    start = data_base + entry.data_offset
    data = blob[start:start + entry.data_size]
    if len(data) != entry.data_size:
        raise ValueError(f"sid {entry.sid} data is outside the type-1 section")
    return data


def graph_sids(blob: bytes, by_id: dict[int, Entry], data_base: int,
               root_sid: int) -> list[int]:
    ordered = []
    seen = set()

    def visit(sid: int) -> None:
        if sid in seen:
            return
        seen.add(sid)
        ordered.append(sid)
        entry = by_id[sid]
        if entry.name == "region":
            return
        chunk = entry_data(blob, data_base, entry)
        if len(chunk) % 24:
            raise ValueError(f"sid {sid} trigger graph size is not divisible by 24")
        for offset in range(0, len(chunk), 24):
            _, _, child_count, child_sid, region_count, region_sid = \
                struct.unpack_from("<ffIIII", chunk, offset)
            if child_count:
                visit(child_sid)
            if region_count:
                visit(region_sid)

    visit(root_sid)
    return ordered


def request(sensor: int, effect: int) -> tuple[tuple[int, int], ...]:
    return tuple(enumerate((0, sensor, 0, 36, 0, 0, effect)))


def target_mode_index(tree: list, sensor: int, effect: int) -> tuple[int, tuple]:
    requested = request(sensor, effect)
    matches = []
    for index, node in enumerate(tree):
        chain = normalized_chain(tree, index)
        if requested[:len(chain)] == chain and node[2] == IPE_SLOT:
            matches.append((len(chain), index, chain))
    if not matches:
        raise ValueError(f"no IPE mode-tree slot for VIBR sensor {sensor}")
    return max(matches, key=lambda item: item[0])[1:]


def selected_top(entries: list[Entry], tree: list, sensor: int) -> Entry:
    requested = request(sensor, CAPTURE_EFFECT)
    candidates = []
    for entry in entries:
        if entry.name != NODE:
            continue
        chain = normalized_chain(tree, entry.mode)
        if requested[:len(chain)] == chain:
            candidates.append((len(chain), entry))
    if not candidates:
        raise ValueError("shared VIBR Gamma15 source record is missing")
    return max(candidates, key=lambda item: item[0])[1]


def clone_graph(blob: bytes, by_id: dict[int, Entry], data_base: int,
                root_sid: int, first_sid: int,
                curve: tuple[float, ...]) -> tuple[list[NewEntry], int]:
    source_sids = graph_sids(blob, by_id, data_base, root_sid)
    sid_map = {old: first_sid + index for index, old in enumerate(source_sids)}
    packed_curve = struct.pack("<771f", *(curve * 3))
    result = []
    for old_sid in source_sids:
        source = by_id[old_sid]
        if source.link not in sid_map:
            raise ValueError(
                f"sid {old_sid} links outside the cloned graph to {source.link}")
        data = bytearray(entry_data(blob, data_base, source))
        if source.name == "region":
            if len(data) % REGION_SIZE:
                raise ValueError(f"Gamma region sid {old_sid} has invalid size {len(data)}")
            for offset in range(0, len(data), REGION_SIZE):
                data[offset:offset + REGION_SIZE] = packed_curve
        else:
            for offset in range(0, len(data), 24):
                child_count, child_sid, region_count, region_sid = struct.unpack_from(
                    "<IIII", data, offset + 8)
                if child_count:
                    struct.pack_into("<I", data, offset + 12, sid_map[child_sid])
                if region_count:
                    struct.pack_into("<I", data, offset + 20, sid_map[region_sid])
        new_sid = sid_map[old_sid]
        result.append(NewEntry(new_sid, source.name, source.version,
                               source.mode, bytes(data), sid_map[source.link]))
    return result, sid_map[root_sid]


def rebuild(source: Path, output: Path, node_csv: Path, sensor: int,
            curve: tuple[float, ...]) -> dict[str, object]:
    blob = source.read_bytes()
    if struct.unpack_from("<I", blob, len(blob) - 4)[0] != binascii.crc32(blob[:-4]):
        raise ValueError("source CRC32 is invalid")
    sections = toc(blob)
    sym_off, sym_size = sections[0]
    data_off, data_size = sections[1]
    tree_off, tree_size = sections[2]
    if sym_off + sym_size != data_off or data_off + data_size != tree_off:
        raise ValueError("Chromatix sections are not contiguous")
    entries, by_id = parse_entries(blob)
    tree = mode_tree(blob)
    targets = []
    for effect in (CAPTURE_EFFECT, PREVIEW_EFFECT):
        mode, chain = target_mode_index(tree, sensor, effect)
        if all(existing_mode != mode for existing_mode, _, _ in targets):
            targets.append((mode, chain, effect))
    for mode, _, _ in targets:
        if any(entry.name == NODE and entry.mode == mode for entry in entries):
            raise ValueError(f"VIBR-specific Gamma15 record already exists at mode {mode}")
    source_top = selected_top(entries, tree, sensor)
    top_data = bytearray(entry_data(blob, data_off, source_top))
    old_root = struct.unpack_from("<I", top_data, ROOT_POINTER)[0]
    first_sid = max(by_id) + 1
    graph, new_root = clone_graph(blob, by_id, data_off, old_root,
                                  first_sid + len(targets), curve)
    struct.pack_into("<I", top_data, ROOT_POINTER, new_root)
    new_tops = [
        NewEntry(first_sid + index, source_top.name, source_top.version,
                 mode, bytes(top_data), first_sid + index)
        for index, (mode, _, _) in enumerate(targets)
    ]
    new_entries = [*new_tops, *graph]

    data_cursor = data_size
    symbol_bytes = bytearray()
    appended_data = bytearray()
    for entry in new_entries:
        symbol_bytes += entry_bytes(entry, data_cursor)
        appended_data += entry.data
        data_cursor += len(entry.data)
    if len(symbol_bytes) != len(new_entries) * ENTRY_SIZE:
        raise AssertionError("new symbol table size mismatch")

    rebuilt = bytearray()
    rebuilt += blob[:sym_off + sym_size]
    rebuilt += symbol_bytes
    rebuilt += blob[data_off:data_off + data_size]
    rebuilt += appended_data
    rebuilt += blob[tree_off:tree_off + tree_size]
    rebuilt += blob[tree_off + tree_size:-4]

    symbol_delta = len(symbol_bytes)
    data_delta = len(appended_data)
    for index, kind in enumerate((0, 1, 2)):
        base = 0xA8 + index * 12
        actual_kind = struct.unpack_from("<I", rebuilt, base)[0]
        if actual_kind != kind:
            raise ValueError(f"unexpected TOC order at entry {index}: {actual_kind}")
    struct.pack_into("<I", rebuilt, 0xA8 + 8, sym_size + symbol_delta)
    struct.pack_into("<I", rebuilt, 0xB8, data_off + symbol_delta)
    struct.pack_into("<I", rebuilt, 0xBC, data_size + data_delta)
    struct.pack_into("<I", rebuilt, 0xC4, tree_off + symbol_delta + data_delta)
    struct.pack_into("<I", rebuilt, 0x1C, len(rebuilt))
    rebuilt += struct.pack("<I", binascii.crc32(rebuilt) & 0xFFFFFFFF)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(rebuilt)

    verify(output, blob, source_top, [mode for mode, _, _ in targets],
           curve, len(new_entries),
           sym_size, data_size, tree_size)
    return {
        "source_top_sid": source_top.sid,
        "source_root_sid": old_root,
        "new_top_sids": [entry.sid for entry in new_tops],
        "new_root_sid": new_root,
        "new_symbols": len(new_entries),
        "appended_data": data_delta,
        "targets": [
            {"effect": effect, "mode": mode, "chain": chain}
            for mode, chain, effect in targets
        ],
    }


def verify(output: Path, original: bytes, source_top: Entry, target_modes: list[int],
           curve: tuple[float, ...], new_count: int, old_sym_size: int,
           old_data_size: int, old_tree_size: int) -> None:
    data = output.read_bytes()
    if struct.unpack_from("<I", data, 0x1C)[0] != len(data) - 4:
        raise AssertionError("rebuilt file length header is wrong")
    if struct.unpack_from("<I", data, len(data) - 4)[0] != binascii.crc32(data[:-4]):
        raise AssertionError("rebuilt CRC32 is wrong")
    sections = toc(data)
    if sections[0][1] != old_sym_size + new_count * ENTRY_SIZE:
        raise AssertionError("rebuilt symbol section size is wrong")
    if sections[2][1] != old_tree_size:
        raise AssertionError("mode-tree size changed")
    old_sections = toc(original)
    old_data = original[old_sections[1][0]:old_sections[1][0] + old_data_size]
    new_data = data[sections[1][0]:sections[1][0] + old_data_size]
    if new_data != old_data:
        raise AssertionError("original type-1 data was modified")
    old_tree = original[old_sections[2][0]:old_sections[2][0] + old_tree_size]
    new_tree = data[sections[2][0]:sections[2][0] + old_tree_size]
    if new_tree != old_tree:
        raise AssertionError("mode tree was modified")

    entries, by_id = parse_entries(data)
    expected = struct.pack("<257f", *curve)
    roots = set()
    for target_mode in target_modes:
        matches = [entry for entry in entries
                   if entry.name == NODE and entry.mode == target_mode]
        if len(matches) != 1:
            raise AssertionError(
                f"expected one VIBR Gamma15 record at mode {target_mode}, got {len(matches)}")
        chunk = entry_data(data, sections[1][0], matches[0])
        root = struct.unpack_from("<I", chunk, ROOT_POINTER)[0]
        roots.add(root)
        leaves = walk(data, by_id, sections[1][0], root, REGION_SIZE)
        if not leaves or any(leaf.data[:0x404] != expected
                             or leaf.data[0x404:0x808] != expected
                             or leaf.data[0x808:] != expected for leaf in leaves):
            raise AssertionError("custom Gamma15 curve did not round-trip")
    if len(roots) != 1:
        raise AssertionError("capture and preview do not share the cloned Gamma graph")
    if any(entry.sid == source_top.sid and entry.mode != source_top.mode for entry in entries):
        raise AssertionError("source top-level Gamma15 record changed")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--lens", choices=tuple(LENSES), required=True)
    parser.add_argument("--input", type=Path)
    parser.add_argument("--node-csv", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--points", default="0:0,0.25:0.25,0.5:0.5,0.75:0.75,1:1",
        help="comma-separated normalized piecewise-linear points",
    )
    args = parser.parse_args()
    cfg = LENSES[args.lens]
    root = Path(r"G:\LEICA\_work\14u_rootfs\odm\lib64\camera")
    evidence = Path(r"G:\LEICA\viv-color\evidence")
    source = args.input or root / cfg["bin"]
    node_csv = args.node_csv or evidence / cfg["csv"]
    if not node_csv.is_file():
        raise FileNotFoundError(node_csv)
    curve = sample_curve(parse_points(args.points))
    result = rebuild(source, args.output, node_csv, cfg["vibr"], curve)
    print(f"output={args.output}")
    for key, value in result.items():
        print(f"{key}={value}")


if __name__ == "__main__":
    main()
