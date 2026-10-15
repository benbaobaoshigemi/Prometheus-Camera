"""Resolve QTI tuned node records for an exact seven-level tuning mode path."""
from __future__ import annotations

import argparse
import csv
import struct
from pathlib import Path


MODE_NAMES = ("default", "sensor", "usecase", "feature1", "feature2", "scene", "effect")


def toc(data: bytes) -> dict[int, tuple[int, int]]:
    count = struct.unpack_from("<I", data, 0xA4)[0]
    return {
        kind: (offset, size)
        for kind, offset, size in struct.iter_unpack("<III", data[0xA8:0xA8 + count * 12])
    }


def mode_tree(data: bytes) -> list[tuple[int, tuple[int, int], int, int, int]]:
    offset, size = toc(data)[2]
    if size % 20:
        raise ValueError("mode tree is not an array of 20-byte records")
    result = []
    for pos in range(offset, offset + size, 20):
        index, packed, slot, parent, alternate = struct.unpack_from("<5I", data, pos)
        if index != len(result):
            raise ValueError(f"non-contiguous mode node index at {pos:#x}")
        result.append((index, (packed & 0xFFFF, packed >> 16), slot, parent, alternate))
    return result


def normalized_chain(tree, index: int) -> tuple[tuple[int, int], ...]:
    chain = []
    seen = set()
    while index not in seen:
        seen.add(index)
        node = tree[index]
        chain.append(node[1])
        parent = node[3]
        if parent == index or parent >= len(tree):
            break
        index = parent
    chain.reverse()
    # Each tuning group has a slot-0 root and same-key slot children.  Node
    # records point at the slot child, so collapse that structural duplicate.
    return tuple(pair for i, pair in enumerate(chain) if i == 0 or pair != chain[i - 1])


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("binary", type=Path)
    parser.add_argument("csv", type=Path)
    parser.add_argument("node", nargs="?")
    parser.add_argument("--all", action="store_true", help="resolve every node and emit CSV")
    parser.add_argument("--modes", default="0,4,0,36,0,0,28")
    args = parser.parse_args()
    values = tuple(int(x, 0) for x in args.modes.split(","))
    if len(values) != 7:
        raise ValueError("--modes requires default,sensor,usecase,feature1,feature2,scene,effect")
    requested = tuple(enumerate(values))
    data = args.binary.read_bytes()
    tree = mode_tree(data)
    if not args.all and not args.node:
        parser.error("node is required unless --all is used")
    candidates_by_name = {}
    with args.csv.open(encoding="utf-8", newline="") as stream:
        for row in csv.DictReader(stream):
            if not args.all and row["name"] != args.node:
                continue
            index = int(row["c"])
            chain = normalized_chain(tree, index)
            if requested[:len(chain)] == chain:
                candidates_by_name.setdefault(row["name"], []).append(
                    (len(chain), index, chain, row)
                )
    if not candidates_by_name:
        raise SystemExit("no matching record")
    if args.all:
        writer = csv.writer(__import__("sys").stdout, lineterminator="\n")
        writer.writerow(("name", "depth", "selected_chain", "tree_index", "slot",
                         "record", "data_start", "data_end", "size"))
        for name in sorted(candidates_by_name):
            length, index, chain, row = max(candidates_by_name[name], key=lambda item: item[0])
            data_start = int(row.get("data_start", row.get("data_offset")), 0)
            size = int(row["size"])
            writer.writerow((name, length,
                             ">".join(f"{MODE_NAMES[t]}={v}" for t, v in chain),
                             index, tree[index][2], row["rec_offset"],
                             f"{data_start:#x}", f"{data_start + size:#x}", size))
        return
    length, index, chain, row = max(candidates_by_name[args.node], key=lambda item: item[0])
    print("requested=" + ",".join(f"{MODE_NAMES[t]}={v}" for t, v in requested))
    print("selected_chain=" + " -> ".join(f"{MODE_NAMES[t]}={v}" for t, v in chain))
    print(f"tree_index={index} slot={tree[index][2]}")
    data_start = int(row.get("data_start", row.get("data_offset")), 0)
    size = int(row["size"])
    print(f"record={row['rec_offset']} data_start={data_start:#x} "
          f"data_end={data_start + size:#x} size={size}")


if __name__ == "__main__":
    main()
