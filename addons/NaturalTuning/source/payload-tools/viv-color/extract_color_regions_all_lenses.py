# -*- coding: utf-8 -*-
"""Resolve and extract ordinary-photo VIBR/AUTH color regions for four rear lenses."""
from __future__ import annotations

import csv
import hashlib
import struct
from pathlib import Path

from extract_color_symbol_regions import MODULES, finite_text, path_key, path_text, walk
from resolve_tuned_mode import mode_tree, normalized_chain
from symbol_table_probe import parse_entries, toc


ROOT = Path(r"G:\LEICA\_work\14u_rootfs\odm\lib64\camera")
WORK = Path(r"G:\LEICA\viv-color")
LENSES = {
    "wide": {
        "bin": "com.qti.tuned.aurora_semco_LYT900_wide.bin",
        "csv": "chromatix_nodes_lyt900_wide.csv", "vibr": 4, "auth": 30,
    },
    "ultra": {
        "bin": "com.qti.tuned.aurora_semco_imx858_ultra.bin",
        "csv": "chromatix_nodes_imx858_ultra.csv", "vibr": 1, "auth": 8,
    },
    "tele3x": {
        "bin": "com.qti.tuned.aurora_ofilm_imx858_tele3x.bin",
        "csv": "chromatix_nodes_imx858_tele3x.csv", "vibr": 1, "auth": 6,
    },
    "tele5x": {
        "bin": "com.qti.tuned.aurora_semco_imx858_tele5x.bin",
        "csv": "chromatix_nodes_imx858_tele5x.csv", "vibr": 1, "auth": 8,
    },
}
NODE = {"CC14": "cc14_ipe_v2", "CV12": "cv12_ipe_v2", "CS20": "cs20_ipe_v2",
        "SCE11": "sce11_ipe_v2", "TDL11": "tdl11_ipe_v2"}
ROOT_POINTER = {"CC14": 0x44, "CV12": 0x2C, "CS20": 0x34, "SCE11": 0x44,
                "TDL11": 0xFC}


def selected_row(rows, tree, node, sensor):
    requested = tuple(enumerate((0, sensor, 0, 36, 0, 0, 28)))
    candidates = []
    for row in rows:
        if row["name"] != node:
            continue
        chain = normalized_chain(tree, int(row["c"]))
        if requested[:len(chain)] == chain:
            candidates.append((len(chain), int(row["c"]), chain, row))
    if not candidates:
        raise ValueError(f"no {node} for sensor {sensor}")
    return max(candidates, key=lambda x: x[0])


def main():
    md = [
        "# 四后摄普通照片 VIBR/AUTH 有效 color region",
        "",
        "状态：`已验证`。每个顶层模块经 mode tree 选择、type-1 data base、symbol ID、"
        "trigger graph 和固定 region size 五级校验。",
        "",
        "| 镜头 | sensor V→A | 模块 | VIBR leaves/unique | AUTH leaves/unique | 共有 payload | 共同路径逐字节相同 |",
        "|---|---|---|---:|---:|---:|---:|",
    ]
    csv_rows = []
    selection_rows = []
    for lens, cfg in LENSES.items():
        binary = ROOT / cfg["bin"]
        blob = binary.read_bytes()
        tree = mode_tree(blob)
        with (WORK / "evidence" / cfg["csv"]).open(encoding="utf-8", newline="") as stream:
            rows = list(csv.DictReader(stream))
        _, by_id = parse_entries(blob)
        data_base = toc(blob)[1][0]
        for module, node in NODE.items():
            leaves_by_style = {}
            for style in ("vibr", "auth"):
                depth, index, chain, row = selected_row(rows, tree, node, cfg[style])
                physical = int(row["data_start"], 0)
                pointer_at = physical + ROOT_POINTER[module]
                if pointer_at + 4 > int(row["data_end"], 0):
                    raise ValueError(f"{lens}/{module}/{style}: root pointer outside module chunk")
                root_sid = struct.unpack_from("<I", blob, pointer_at)[0]
                if root_sid not in by_id or not by_id[root_sid].name.startswith("mod_"):
                    raise ValueError(f"{lens}/{module}/{style}: invalid root sid {root_sid}")
                leaves = walk(blob, by_id, data_base, root_sid, MODULES[module]["size"])
                leaves_by_style[style] = leaves
                selection_rows.append(
                    (lens, style.upper(), module, cfg[style], depth, index, chain,
                     row["rec_offset"], row["data_offset"], row["data_start"], root_sid, len(leaves))
                )
                for leaf in leaves:
                    values = struct.unpack("<%df" % (len(leaf.data) // 4), leaf.data)
                    csv_rows.append({
                        "lens": lens, "style": style.upper(), "sensor": cfg[style],
                        "module": module, "path": path_text(leaf), "region_sid": leaf.sid,
                        "region_index": leaf.index, "physical_offset": f"0x{leaf.physical:x}",
                        "size": len(leaf.data), "sha256": hashlib.sha256(leaf.data).hexdigest(),
                        "f32_values": ",".join(finite_text(x) for x in values),
                    })
            vibr, auth = leaves_by_style["vibr"], leaves_by_style["auth"]
            vh = {hashlib.sha256(x.data).digest() for x in vibr}
            ah = {hashlib.sha256(x.data).digest() for x in auth}
            vm, am = {path_key(x): x for x in vibr}, {path_key(x): x for x in auth}
            common = set(vm) & set(am)
            identical = sum(vm[k].data == am[k].data for k in common)
            md.append(
                f"| {lens} | {cfg['vibr']}→{cfg['auth']} | {module} | {len(vibr)}/{len(vh)} | "
                f"{len(auth)}/{len(ah)} | {len(vh & ah)} | {identical}/{len(common)} |"
            )
    md += [
        "", "## 顶层选择与 root symbol", "",
        "| 镜头 | 风格 | 模块 | sensor | 选择深度 | tree index | 选择链 | record | data rel | data file | root sid | leaves |",
        "|---|---|---|---:|---:|---:|---|---|---|---|---:|---:|",
    ]
    for lens, style, module, sensor, depth, index, chain, record, rel, physical, root, count in selection_rows:
        chain_text = ">".join(f"{t}={v}" for t, v in chain)
        md.append(f"| {lens} | {style} | {module} | {sensor} | {depth} | {index} | `{chain_text}` | "
                  f"`{record}` | `{rel}` | `{physical}` | {root} | {count} |")

    md_path = WORK / "evidence" / "color_regions_all_lenses.md"
    md_path.write_text("\n".join(md) + "\n", encoding="utf-8")
    csv_path = WORK / "evidence" / "color_regions_all_lenses.csv"
    with csv_path.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(csv_rows[0]))
        writer.writeheader(); writer.writerows(csv_rows)
    print(md_path)
    print(csv_path)


if __name__ == "__main__":
    main()
