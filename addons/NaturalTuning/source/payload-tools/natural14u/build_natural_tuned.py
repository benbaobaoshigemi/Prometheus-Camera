"""Build a 14U "Natural" tuned binary by hijacking every VIBR (non-NewStyle) photo request.

Placement rules (per lens, per node, per non-NewStyle sensor mode s):

* Natural record at the sensor-level IPE node (default/s).  Photo usecases 0/1/6/7 and every
  usecase without a mode-tree node fall back to it.  If a record already sits at that node, its
  root pointer is re-targeted to a Natural clone of its own graph instead of adding a twin.
* Protective records at the usecase 2/4 (video) IPE nodes that would otherwise fall back to the
  sensor level; they point at exactly the graph those requests used before.
* Deeper, mode-specific records follow the static deep plan (gen_deep_plan.py, 14U enum names mapped to 18PM):
  rewritten with the same Natural rule, pointed at the sensor-level Natural graph, or kept (18PM Natural shares
  Vivid data there, multi-frame intermediate stages, video/third-party, effects).  Video/third-party requests that
  would otherwise fall back to the sensor level get protective records pointing at their original graph.

Node content:

* gamma15_ipe_v2: every region carries the 18PM Natural fixed curve on R/G/B.
* cc14_ipe_v2:    the custom_awb1 [0,0.99] boost branch is re-pointed to the [1,64] subtree;
                  graphs without a boost branch are left as they are.
"""
from __future__ import annotations

import argparse
import binascii
import hashlib
import json
import struct
import sys
from pathlib import Path

sys.path.insert(0, r"G:\LEICA\viv-color\scripts")
from extract_color_regions_all_lenses import LENSES  # noqa: E402
from extract_color_symbol_regions import walk  # noqa: E402
from resolve_tuned_mode import mode_tree, normalized_chain  # noqa: E402
from symbol_table_probe import ENTRY_SIZE, parse_entries, toc  # noqa: E402
from build_vibr_tone_tuning import NewEntry, entry_bytes, entry_data, graph_sids, IPE_SLOT  # noqa: E402
sys.path.insert(0, str(Path(__file__).resolve().parent))
import ltm_port  # noqa: E402
import node_port  # noqa: E402

NODES = {
    "gamma15_ipe_v2": {"root": 0x2C, "region": 0xC0C},
    "cc14_ipe_v2": {"root": 0x44, "region": 0x104},
    "ltm202_ipe_v2": {"root": 0x1C0, "region": 0x42C},
    "cv12_ipe_v2": {"root": 0x2C, "region": 0x38},
    "tdl11_ipe_v2": {"root": 0xFC, "region": 0xDEC},
}
NEWSTYLE = {
    "wide": set(range(29, 51)),
    "ultra": {8, 9, 10, 11},
    "tele3x": {6, 7, 10, 11},
    "tele5x": {8, 9, 10, 11, 14, 15, 18, 19},
}
PROTECTED_USECASES = (2, 4)


def clone(blob, by_id, data_off, root_sid, first_sid, region_size, region_fn):
    sids = graph_sids(blob, by_id, data_off, root_sid)
    remap = {old: first_sid + i for i, old in enumerate(sids)}
    result = []
    for old in sids:
        src = by_id[old]
        data = bytearray(entry_data(blob, data_off, src))
        if src.name == "region":
            if len(data) % region_size:
                raise ValueError(f"region sid {old} size {len(data)}")
            if region_fn:
                for off in range(0, len(data), region_size):
                    data[off:off + region_size] = region_fn(bytes(data[off:off + region_size]))
        else:
            for off in range(0, len(data), 24):
                cc, cs, rc, rs = struct.unpack_from("<IIII", data, off + 8)
                if cc:
                    struct.pack_into("<I", data, off + 12, remap[cs])
                if rc:
                    struct.pack_into("<I", data, off + 20, remap[rs])
        # link is the dedup canonical twin; a clone owns its data, so out-of-graph links become self
        result.append(NewEntry(remap[old], src.name, src.version, src.mode, bytes(data),
                               remap.get(src.link, remap[old])))
    return result, remap[root_sid]


def redirect_awb_branch(entries, root_sid):
    """CC14 graph: drc level -> custom_awb1 level. Point [0,0.99] at the [1,64] child."""
    by = {e.sid: e for e in entries}
    changed = 0
    root = by[root_sid]
    for off in range(0, len(root.data), 24):
        _, _, cc, cs, _, _ = struct.unpack_from("<ffIIII", root.data, off)
        if not cc:
            continue
        awb = by[cs]
        recs = [struct.unpack_from("<ffIIII", awb.data, o) for o in range(0, len(awb.data), 24)]
        low = [i for i, r in enumerate(recs) if r[1] < 1.0]
        high = [i for i, r in enumerate(recs) if r[0] >= 1.0]
        if not low or not high:
            continue
        hi = recs[high[0]]
        if hi[4] or not hi[2]:
            raise ValueError("unexpected awb1 [1,64] record layout")
        data = bytearray(awb.data)
        for i in low:
            r = recs[i]
            struct.pack_into("<ffIIII", data, i * 24, r[0], r[1], hi[2], hi[3], 0, 0)
            changed += 1
        idx = entries.index(awb)
        entries[idx] = NewEntry(awb.sid, awb.name, awb.version, awb.mode, bytes(data), awb.link)
        by[awb.sid] = entries[idx]
    return changed


def ipe_nodes(tree):
    out = {}
    for index, node in enumerate(tree):
        if node[2] == IPE_SLOT:
            out[normalized_chain(tree, index)] = index
    return out


def plan_node(blob, entries, tree, lens, node, deep):
    """Return natural (mode, source, existing_or_None, action, generic_source) and protect (mode, source)."""
    chains = {e.sid: normalized_chain(tree, e.mode) for e in entries if e.name == node}
    recs = [e for e in entries if e.name == node]
    at_mode = {e.mode: e for e in recs}

    def resolve(prefix):
        c = [e for e in recs if prefix[:len(chains[e.sid])] == chains[e.sid]]
        return max(c, key=lambda e: len(chains[e.sid]))

    nodes = ipe_nodes(tree)
    natural, protect, sensor_src = [], [], {}
    sensors = sorted({c[1][1] for c in nodes if len(c) >= 2 and c[0] == (0, 0) and c[1][0] == 1}
                     - NEWSTYLE[lens])
    for s in sensors:
        sensor_chain = ((0, 0), (1, s))
        if sensor_chain not in nodes:
            continue
        mode = nodes[sensor_chain]
        existing = at_mode.get(mode)
        source = existing or resolve(sensor_chain)
        natural.append((mode, source, existing, "natural", None))
        sensor_src[s] = source
        for u in PROTECTED_USECASES:
            uc_chain = sensor_chain + ((2, u),)
            if uc_chain not in nodes or nodes[uc_chain] in at_mode:
                continue
            original = resolve(uc_chain)
            if len(chains[original.sid]) <= 2:
                protect.append((nodes[uc_chain], original))
    by_sid = {e.sid: e for e in recs}
    for sid, rec in deep["records"].items():
        if rec["action"] == "keep":
            continue
        e = by_sid[int(sid)]
        generic = sensor_src[dict(chains[e.sid])[1]] if rec["action"] == "natural_generic" else None
        natural.append((e.mode, e, e, rec["action"], generic))
    for mode, src in deep["protect"].items():
        protect.append((int(mode), by_sid[src]))
    return natural, protect


def add_node(blob: bytes, lens: str, node: str, curve, deep) -> tuple[bytes, dict]:
    if struct.unpack_from("<I", blob, len(blob) - 4)[0] != binascii.crc32(blob[:-4]):
        raise ValueError("source CRC32 invalid")
    (sym_off, sym_size), (data_off, data_size), (tree_off, tree_size) = [toc(blob)[i] for i in (0, 1, 2)]
    entries, by_id = parse_entries(blob)
    tree = mode_tree(blob)
    cfg = NODES[node]
    natural, protect = plan_node(blob, entries, tree, lens, node, deep)

    region_fn = None
    if node == "gamma15_ipe_v2":
        packed = struct.pack("<771f", *(tuple(curve) * 3))
        region_fn = lambda _r: packed  # noqa: E731

    next_sid = max(by_id) + 1
    new, retarget, checks = [], {}, []
    clones = {}  # (source sid, variant) -> new root (or None when skipped)
    info = {"node": node, "natural_added": 0, "natural_retargeted": 0, "natural_skipped": 0,
            "protected": 0, "deep_rewritten": 0, "deep_generic": 0}
    for mode, source, existing, action, generic in natural:
        variant = "mmfpf_face" if action == "natural_face" else None
        key = (generic.sid, None) if action == "natural_generic" else (source.sid, variant)
        if key not in clones:
            if action == "natural_generic":
                raise AssertionError("sensor-level Natural graph must be built before natural_generic records")
            old_root = struct.unpack_from("<I", entry_data(blob, data_off, source), cfg["root"])[0]
            if node == "ltm202_ipe_v2":
                built = ltm_port.build_graph(blob, by_id, data_off, old_root, next_sid, lens, variant)
                graph, new_root = built if built else (None, None)
            elif node in node_port.SPECS:
                built = node_port.build_graph(blob, by_id, data_off, old_root, next_sid, lens, node)
                graph, new_root = built if built else (None, None)
            else:
                graph, new_root = clone(blob, by_id, data_off, old_root, next_sid, cfg["region"], region_fn)
            if graph is None or (node == "cc14_ipe_v2" and redirect_awb_branch(graph, new_root) == 0):
                clones[key] = None
            else:
                clones[key] = new_root
                new += graph
                next_sid += len(graph)
                checks.append((old_root, new_root))
        new_root = clones[key]
        if new_root is None:
            info["natural_skipped"] += 1
            continue
        top = bytearray(entry_data(blob, data_off, source))
        struct.pack_into("<I", top, cfg["root"], new_root)
        if existing is not None:
            retarget[existing.sid] = bytes(top)
            info["natural_retargeted"] += 1
            if action != "natural" or len(normalized_chain(tree, existing.mode)) > 2:
                info["deep_generic" if action == "natural_generic" else "deep_rewritten"] += 1
        else:
            new.append(NewEntry(next_sid, source.name, source.version, mode, bytes(top), next_sid))
            next_sid += 1
            info["natural_added"] += 1
    for mode, original in protect:
        new.append(NewEntry(next_sid, original.name, original.version, mode,
                            entry_data(blob, data_off, original), next_sid))
        next_sid += 1
        info["protected"] += 1

    # re-targeted existing records: their data is rewritten as appended copies (original bytes kept)
    cursor = data_size
    sym, app = bytearray(), bytearray()
    for e in new:
        sym += entry_bytes(e, cursor)
        app += e.data
        cursor += len(e.data)
    retarget_offsets = {}
    for sid, data in retarget.items():
        retarget_offsets[sid] = cursor
        app += data
        cursor += len(data)
    out_sym = bytearray(blob[sym_off:sym_off + sym_size])
    for sid, off in retarget_offsets.items():
        e = by_id[sid]
        pos = e.record_offset - sym_off
        old = out_sym[pos:pos + ENTRY_SIZE]
        new_rec = entry_bytes(NewEntry(e.sid, e.name, e.version, e.mode, retarget[sid], e.link), off)
        if len(new_rec) != ENTRY_SIZE or old[:36] != new_rec[:36]:
            raise AssertionError(f"retarget record layout mismatch for sid {sid}")
        out_sym[pos:pos + ENTRY_SIZE] = new_rec
    out = bytearray(blob[:sym_off]) + out_sym + sym + blob[data_off:data_off + data_size] + app \
        + blob[tree_off:tree_off + tree_size] + blob[tree_off + tree_size:-4]
    for i, kind in enumerate((0, 1, 2)):
        if struct.unpack_from("<I", out, 0xA8 + i * 12)[0] != kind:
            raise ValueError("unexpected TOC order")
    struct.pack_into("<I", out, 0xA8 + 8, sym_size + len(sym))
    struct.pack_into("<I", out, 0xB8, data_off + len(sym))
    struct.pack_into("<I", out, 0xBC, data_size + len(app))
    struct.pack_into("<I", out, 0xC4, tree_off + len(sym) + len(app))
    struct.pack_into("<I", out, 0x1C, len(out))
    out += struct.pack("<I", binascii.crc32(out) & 0xFFFFFFFF)
    verify(bytes(out), blob, node, checks, curve, set(retarget))
    return bytes(out), info


def verify(data, original, node, checks, curve, retargeted):
    assert struct.unpack_from("<I", data, len(data) - 4)[0] == binascii.crc32(data[:-4])
    assert struct.unpack_from("<I", data, 0x1C)[0] == len(data) - 4
    ns, os_ = toc(data), toc(original)
    if data[ns[1][0]:ns[1][0] + os_[1][1]] != original[os_[1][0]:os_[1][0] + os_[1][1]]:
        raise AssertionError("original type-1 data modified")
    if data[ns[2][0]:ns[2][0] + os_[2][1]] != original[os_[2][0]:os_[2][0] + os_[2][1]]:
        raise AssertionError("mode tree modified")
    entries, by_id = parse_entries(data)
    old_entries, old_by = parse_entries(original)
    if sorted(by_id) != list(range(1, len(entries) + 1)):
        raise AssertionError("SID set not contiguous")
    for old in old_entries:
        e = by_id[old.sid]
        same = (e.name, e.mode, e.link) == (old.name, old.mode, old.link)
        if old.sid in retargeted:
            same = same and e.data_size == old.data_size
        else:
            same = same and (e.data_offset, e.data_size) == (old.data_offset, old.data_size)
        if not same:
            raise AssertionError(f"original symbol {old.sid} changed unexpectedly")
    cfg = NODES[node]
    for old_root, new_root in checks:
        leaves = walk(data, by_id, ns[1][0], new_root, cfg["region"])
        if not leaves:
            raise AssertionError("cloned graph has no leaves")
        if node == "gamma15_ipe_v2":
            want = struct.pack("<257f", *curve) * 3
            if any(lf.data != want for lf in leaves):
                raise AssertionError("gamma curve did not round-trip")
        elif node == "ltm202_ipe_v2" or node in node_port.SPECS:
            pass  # value-level checks live in verify_ltm.py / verify_nodes.py
        else:
            old_leaves = walk(original, old_by, os_[1][0], old_root, cfg["region"])
            if {x.data for x in leaves} != {x.data for x in old_leaves if x.path[1][0] >= 1.0}:
                raise AssertionError("CC14 [1,64] matrices not preserved exactly")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--lens", choices=tuple(LENSES), required=True)
    ap.add_argument("--input", type=Path, required=True)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--curve", type=Path, required=True)
    ap.add_argument("--deep-plan", type=Path, required=True)
    a = ap.parse_args()
    curve = json.loads(a.curve.read_text(encoding="utf-8"))["curve"]
    if len(curve) != 257 or curve[0] != 0 or curve[-1] != 1023 or any(b < c for c, b in zip(curve, curve[1:])):
        raise ValueError("curve must be 257 monotonic points 0..1023")
    blob = a.input.read_bytes()
    plan = json.loads(a.deep_plan.read_text(encoding="utf-8"))[a.lens]
    if hashlib.sha256(blob).hexdigest() != plan["sha256"]:
        raise ValueError("deep plan was generated for a different stock tuned binary")
    log = []
    for node in NODES:
        blob, info = add_node(blob, a.lens, node, curve, plan[node])
        log.append(info)
    a.output.parent.mkdir(parents=True, exist_ok=True)
    tmp = a.output.with_suffix(".tmp")
    tmp.write_bytes(blob)
    tmp.replace(a.output)
    print(json.dumps({"lens": a.lens, "output": str(a.output), "size": len(blob),
                      "crc32": "%08x" % struct.unpack_from("<I", blob, len(blob) - 4)[0],
                      "steps": log}, ensure_ascii=False))


if __name__ == "__main__":
    main()
