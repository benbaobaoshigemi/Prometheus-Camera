# -*- coding: utf-8 -*-
"""Extract LYT900 VIBR/AUTH color runtime regions through the symbol graph."""
from __future__ import annotations

import argparse
import csv
import hashlib
import math
import struct
from dataclasses import dataclass
from pathlib import Path

from symbol_table_probe import Entry, parse_entries, toc


MODULES = {
    "CC14": {"size": 0x104, "vibr": 1378, "auth": 171512},
    "CV12": {"size": 0x38, "vibr": 1521, "auth": 171563},
    "CS20": {"size": 0x100, "vibr": 320365, "auth": 191763},
    "SCE11": {"size": 0xF8, "vibr": 1928, "auth": 1928},
    "TDL11": {"size": 0xDEC, "vibr": 1935, "auth": 171766},
}


@dataclass(frozen=True)
class Leaf:
    path: tuple[tuple[float, float, int], ...]
    sid: int
    index: int
    physical: int
    data: bytes


def entry_data(blob: bytes, data_base: int, entry: Entry) -> bytes:
    start = data_base + entry.data_offset
    chunk = blob[start:start + entry.data_size]
    if len(chunk) != entry.data_size:
        raise ValueError(f"sid {entry.sid}: data outside file")
    return chunk


def walk(blob: bytes, by_id: dict[int, Entry], data_base: int, sid: int,
         region_size: int, path=(), expected_count: int | None = None,
         seen=frozenset()) -> list[Leaf]:
    if sid in seen:
        raise ValueError(f"cycle at sid {sid}")
    entry = by_id[sid]
    chunk = entry_data(blob, data_base, entry)
    if len(chunk) % 24:
        raise ValueError(f"sid {sid} {entry.name!r}: trigger block size {len(chunk)}")
    count = len(chunk) // 24
    if expected_count is not None and count != expected_count:
        raise ValueError(f"sid {sid}: expected {expected_count} triggers, got {count}")
    leaves = []
    for idx in range(count):
        start, end, child_count, child_sid, region_count, region_sid = struct.unpack_from(
            "<ffIIII", chunk, idx * 24
        )
        branch = path + ((start, end, idx),)
        if child_count:
            leaves.extend(walk(blob, by_id, data_base, child_sid, region_size,
                               branch, child_count, seen | {sid}))
        if region_count:
            region_entry = by_id[region_sid]
            raw = entry_data(blob, data_base, region_entry)
            if len(raw) != region_count * region_size:
                raise ValueError(
                    f"sid {region_sid}: {len(raw)} != {region_count} * {region_size}"
                )
            physical = data_base + region_entry.data_offset
            for region_idx in range(region_count):
                a = region_idx * region_size
                leaves.append(Leaf(branch, region_sid, region_idx,
                                   physical + a, raw[a:a + region_size]))
    return leaves


def path_key(leaf: Leaf):
    return tuple((a, b, i) for a, b, i in leaf.path) + ((leaf.index,),)


def path_text(leaf: Leaf) -> str:
    return " / ".join(f"[{a:g},{b:g}]#{i}" for a, b, i in leaf.path) + f" / region#{leaf.index}"


def f32_diffs(a: bytes, b: bytes):
    result = []
    for off in range(0, min(len(a), len(b)), 4):
        av, bv = struct.unpack_from("<ff", a, off)
        if a[off:off + 4] != b[off:off + 4]:
            result.append((off, av, bv))
    return result


def finite_text(value: float) -> str:
    return f"{value:.7g}" if math.isfinite(value) else repr(value)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("binary", type=Path)
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--csv", type=Path)
    args = ap.parse_args()
    blob = args.binary.read_bytes()
    _, by_id = parse_entries(blob)
    data_base = toc(blob)[1][0]

    lines = [
        "# LYT900 普通照片 VIBR/AUTH 色彩 symbol-region 对照",
        "",
        "状态：`已验证`（ParameterFileSymbolTable、生成 schema LoadModule、IQ interpolation 三方交叉）。",
        "",
        f"- type-1 data base: `0x{data_base:x}`",
        "- trigger 项结构：`<float start, float end, u32 child_count, u32 child_sid, "
        "u32 region_count, u32 region_sid>`，24 B/项。",
        "- 下表 region 是 loader 实际展开并交给 interpolation 的完整字节块，不是顶层 module chunk。",
        "",
        "| 模块 | region 大小 | VIBR 叶子 | AUTH 叶子 | 相同路径 | 完全相同 | 有差异 |",
        "|---|---:|---:|---:|---:|---:|---:|",
    ]
    details = []
    csv_rows = []
    for module, cfg in MODULES.items():
        vibr = walk(blob, by_id, data_base, cfg["vibr"], cfg["size"])
        auth = walk(blob, by_id, data_base, cfg["auth"], cfg["size"])
        vm = {path_key(x): x for x in vibr}
        am = {path_key(x): x for x in auth}
        for style, leaves in (("VIBR", vibr), ("AUTH", auth)):
            for leaf in leaves:
                floats = struct.unpack("<%df" % (len(leaf.data) // 4), leaf.data)
                csv_rows.append({
                    "module": module,
                    "style": style,
                    "path": path_text(leaf),
                    "region_sid": leaf.sid,
                    "region_index": leaf.index,
                    "physical_offset": f"0x{leaf.physical:x}",
                    "size": len(leaf.data),
                    "sha256": hashlib.sha256(leaf.data).hexdigest(),
                    "f32_values": ",".join(finite_text(x) for x in floats),
                })
        common = sorted(set(vm) & set(am), key=repr)
        same = sum(vm[k].data == am[k].data for k in common)
        changed = len(common) - same
        lines.append(
            f"| {module} | `0x{cfg['size']:x}` | {len(vibr)} | {len(auth)} | "
            f"{len(common)} | {same} | {changed} |"
        )
        details += ["", f"## {module}", ""]
        vh = {hashlib.sha256(x.data).digest() for x in vibr}
        ah = {hashlib.sha256(x.data).digest() for x in auth}
        details.append(
            f"- VIBR root sid={cfg['vibr']}，AUTH root sid={cfg['auth']}；"
            f"VIBR unique SHA-256={len(vh)}，AUTH unique SHA-256={len(ah)}，"
            f"跨风格共有 region payload={len(vh & ah)}。"
        )
        only_v = set(vm) - set(am)
        only_a = set(am) - set(vm)
        details.append(f"- 路径集合：VIBR-only={len(only_v)}，AUTH-only={len(only_a)}。")
        changed_rows = []
        for key in common:
            va, aa = vm[key], am[key]
            if va.data == aa.data:
                continue
            diffs = f32_diffs(va.data, aa.data)
            preview = "; ".join(
                f"+0x{o:x}:{finite_text(v)}→{finite_text(a)}" for o, v, a in diffs[:8]
            )
            changed_rows.append(
                (path_text(va), va, aa,
                 sum(x != y for x, y in zip(va.data, aa.data)), len(diffs), preview)
            )
        if changed_rows:
            details += [
                "",
                "| 触发路径 | VIBR region | AUTH region | 差异字节 | 差异 u32/f32 槽 | 前 8 个槽差异 |",
                "|---|---|---|---:|---:|---|",
            ]
            for path, va, aa, byte_count, slot_count, preview in changed_rows[:40]:
                details.append(
                    f"| `{path}` | sid {va.sid} @`0x{va.physical:x}` | "
                    f"sid {aa.sid} @`0x{aa.physical:x}` | {byte_count} | {slot_count} | {preview} |"
                )
            if len(changed_rows) > 40:
                details.append(f"\n仅展示前 40 条；总差异路径 {len(changed_rows)}。")
        else:
            details.append("- 所有共同路径 region 逐字节相同。")

    args.out.write_text("\n".join(lines + details) + "\n", encoding="utf-8")
    if args.csv:
        with args.csv.open("w", encoding="utf-8", newline="") as stream:
            writer = csv.DictWriter(stream, fieldnames=list(csv_rows[0]))
            writer.writeheader()
            writer.writerows(csv_rows)
    print(args.out)


if __name__ == "__main__":
    main()
