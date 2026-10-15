"""Port the 18PM (Natural - Vivid) increment of CV122 / ColorLUT20 into 14U CV12 / TDL11 trigger graphs.

Equivalence evidence (see rom18pm/14U原色_剩余节点移植.md):
* CV12 (14U) and CV122 (18PM) share the 14-float region (r_to_y,g_to_y,b_to_y,y_offset,ap,am,bp,bm,cp,cm,dp,dm,kcr,kcb),
  the same trigger axes (drc_gain, aec_exp_sensitivity_ratio, led_idx, lux_idx, cct) and the same neutral values;
  14U VIBR (ap 0.54 at low lux / >=4700K) follows the same pattern as 18PM Vivid (ap 0.53).
* TDL11 (14U, 891 floats = hue 24x16 + sat 24x16 + 123 parameters) corresponds to one plane of ColorLUT20 (the three
  planes are identical in every Vivid and Natural leaf, the 123 parameters are the boundary/blend constants).
Leaf = 14U value + (18PM Natural - 18PM Vivid) evaluated at the same trigger point.
"""
from __future__ import annotations

import struct
import sys

import numpy as np

sys.path.insert(0, r"G:\LEICA\rom18pm\ana")
sys.path.insert(0, r"G:\LEICA\viv-color\scripts")
from build_vibr_tone_tuning import NewEntry, entry_data  # noqa: E402
from ltm_port import LENS18, MAX_NODES, ev, parse14, level_sets  # noqa: E402

CONT = {2: (0.0, 100.0), 0: (0.0, 1000.0), 6: (0.0, 10000.0)}   # ported continuous axes (type -> clip)

SPECS = {
    "cv12_ipe_v2": {"mod18": "cv122_ipe_v2", "types18": [2, 5, 100, 0, 6], "map": [0, 1, 2, 3, 4], "region": 0x38,
                    "root": 0x2C},
    "tdl11_ipe_v2": {"mod18": "colorlut20_ipe_v2", "types18": [2, 2, 5, 100, 0, 6], "map": [1, 2, 3, 4, 5],
                     "region": 0xDEC, "root": 0xFC},
}
_c18 = {}


def load18(lens, mod18):
    key = (LENS18[lens], mod18)
    if key in _c18:
        return _c18[key]
    from tuned import Tuned
    from resolve import Res
    from tree import core_of
    t = Tuned(r"G:\LEICA\rom18pm\fs\odm\lib64\camera\com.qti.tuned.%s.bin" % LENS18[lens])
    R, Vd = Res(t), t.dic["vals"]

    def code(ty, n):
        return [k for (tt, k), v in Vd.items() if tt == ty and v == n][0]

    def tree_of(f0):
        sel = R.select({1: 0, 2: 1, 3: f0, 4: code(4, "None"), 5: code(5, "None"), 6: 0, 7: 0})[0]
        h = [h for h in sel if t.mname[h] == mod18][0]
        L = t.instance(sel[h])
        types = L["control_variables"]["control_var_type"]

        def conv(lst):
            out = []
            for n in lst:
                d = {"s": n["start"], "e": n["end"], "kids": None, "leaf": None}
                if n["trigger"]:
                    d["kids"] = conv(n["trigger"])
                if n["region"]:
                    x = n["region"][0]
                    if mod18 == "cv122_ipe_v2":
                        d["leaf"] = np.array([x["ap"], x["am"], x["cp"], x["cm"]], np.float64)
                    else:
                        pl = x["h_s_planes"]
                        hs = [(np.array(p["lut_2d_h_tab"]["lut_2d_h"], np.float64),
                               np.array(p["lut_2d_s_tab"]["lut_2d_s"], np.float64)) for p in pl]
                        for a, b in zip(hs, hs[1:]):
                            assert np.array_equal(a[0], b[0]) and np.array_equal(a[1], b[1]), "planes differ"
                        d["leaf"] = np.concatenate(hs[0])
                out.append(d)
            return out
        return types, conv(core_of(L))

    (types, tn), (_, tv) = tree_of(12), tree_of(0)
    res = {"types": types, "N": tn, "V": tv}
    _c18[key] = res
    return res


def lerp(a, b, w):
    return a * (1 - w) + b * w


def fixed_coords(tree, depth):
    """first bin start per level, following the first child (used for 18PM levels the 14U graph lacks)."""
    out, nodes = [], tree
    for _ in range(depth):
        out.append(nodes[0]["s"])
        nodes = nodes[0]["kids"] or []
    return out


def lvlmap(types14, types18):
    """14U level -> 18PM level carrying the same trigger variable (last occurrence), else None."""
    out = []
    for t in types14:
        idx = [i for i, x in enumerate(types18) if x == t]
        out.append(idx[-1] if idx else None)
    return out


def delta18(spec, d18, coords14, types14):
    c = list(fixed_coords(d18["N"], len(d18["types"])))
    for l14, l18 in enumerate(lvlmap(types14, d18["types"])):
        if l18 is not None:
            c[l18] = coords14[l14]
    n = ev(d18["N"], c, lambda x: x["leaf"], lerp)
    v = ev(d18["V"], c, lambda x: x["leaf"], lerp)
    return n - v


def apply_delta(mod, region_u32, dl):
    r = region_u32.view(np.float32).astype(np.float64).copy()
    if mod == "cv12_ipe_v2":
        for k, slot in enumerate((4, 5, 8, 9)):
            r[slot] += dl[k]
    else:
        r[:384] += dl[:384]
        r[384:768] += dl[384:768]
    return r.astype(np.float32).view(np.uint32).copy()


def edges18(d18, level18, acc):
    def walk(tr, lvl):
        for n in tr:
            if lvl == level18:
                acc.update((n["s"], n["e"]))
            if n["kids"]:
                walk(n["kids"], lvl + 1)
    for tg in ("N", "V"):
        walk(d18[tg], 0)


def build_graph(blob, by, data_off, old_root, first_sid, lens, mod):
    spec = SPECS[mod]
    cv = by[old_root - 1]
    if cv.name != "control_var_type":
        return None
    types = struct.unpack("<%dI" % (cv.data_size // 4), entry_data(blob, data_off, cv))
    if len(types) != 5 or types[1:] != (5, 100, 0, 6):
        return None
    depth = 5
    d18 = load18(lens, spec["mod18"])
    tree = parse14(blob, by, data_off, old_root)
    sets = level_sets(tree, depth)
    kinds, ph, seen, stack = {}, {}, set(), [old_root]
    while stack:
        sid = stack.pop()
        if sid in seen:
            continue
        seen.add(sid)
        e = by[sid]
        kinds.setdefault(e.name, e)
        if e.name == "region":
            continue
        d = entry_data(blob, data_off, e)
        for o in range(0, len(d), 24):
            _, _, cc, cs, rc, rs = struct.unpack_from("<ffIIII", d, o)
            (stack.append(cs) if cc else ph.setdefault("trig", cs))
            (stack.append(rs) if rc else ph.setdefault("reg", rs))
    if "trig" not in ph or "reg" not in ph or "region" not in kinds or "trigger" not in kinds:
        return None
    # axes: continuous ones are rebuilt on the union of all breakpoints, the others keep their bins
    axes = []
    for l in range(depth):
        t = types[l]
        if t in CONT:
            acc = {x for b in sets[l] for x in b}
            l18 = lvlmap(types, d18["types"])[l]
            if l18 is not None:
                edges18(d18, l18, acc)
            lo, hi = CONT[t]
            pts = sorted(x for x in acc if lo <= x <= hi)
            axes.append(("pt", pts))
        else:
            axes.append(("bin", sorted(sets[l])))

    def coords_of(idx):
        out = []
        for l, i in enumerate(idx):
            kind, a = axes[l]
            out.append(a[i] if kind == "pt" else a[i][0])
        return out
    import itertools
    shape = [len(a) for _, a in axes]
    vals = {}
    for idx in itertools.product(*[range(n) for n in shape]):
        c = coords_of(idx)
        base = ev(tree, c, lambda n: n["leaf"], lambda a, b, w: _lerp_region(a, b, w))
        vals[idx] = apply_delta(mod, base, delta18(spec, d18, c, types))

    def f64(u):
        return u.view(np.float32).astype(np.float64)

    def runs_of(l, keep):
        """maximal runs of consecutive kept points whose leaves are identical for every other-axis combination"""
        others = [range(n) for k, n in enumerate(shape) if k != l]
        runs = [[keep[0]]]
        for p in keep[1:]:
            same = True
            for oi in itertools.product(*others):
                def key(i):
                    return tuple(i if q == l else oi[q - (q > l)] for q in range(depth))
                if not np.array_equal(vals[key(runs[-1][-1])], vals[key(p)]):
                    same = False
                    break
            if same:
                runs[-1].append(p)
            else:
                runs.append([p])
        return runs

    def fit(l):
        """drop collinear points, merge plateaus into bins, then (only if still > MAX_NODES) drop least-deviating points"""
        kind, pts = axes[l]
        keep = list(range(len(pts)))
        others = [range(n) for k, n in enumerate(shape) if k != l]
        worst = 0.0

        def dev(pos):
            a, k, b = keep[pos - 1], keep[pos], keep[pos + 1]
            w = (pts[k] - pts[a]) / (pts[b] - pts[a])
            m = 0.0
            for oi in itertools.product(*others):
                def key(i):
                    return tuple(i if q == l else oi[q - (q > l)] for q in range(depth))
                va, vk, vb = f64(vals[key(a)]), f64(vals[key(k)]), f64(vals[key(b)])
                m = max(m, float(np.abs(vk - (va * (1 - w) + vb * w)).max()))
            return m
        while len(keep) > 2:
            m, p = min((dev(p), p) for p in range(1, len(keep) - 1))
            if m > 1e-4 and len(runs_of(l, keep)) <= MAX_NODES:
                break
            worst = max(worst, m)
            keep.pop(p)
        return keep, worst

    worst = 0.0
    for l in range(depth):
        if axes[l][0] != "pt":
            continue
        keep, w = fit(l)
        worst = max(worst, w)
        runs = runs_of(l, keep)
        pts = axes[l][1]
        vals = {tuple(runs.index(next(r for r in runs if i in r)) if q == l else i for q, i in enumerate(idx)): v
                for idx, v in vals.items() if any(i == idx[l] for r in runs for i in r[:1])}
        axes[l] = ("bin", [(pts[r[0]], pts[r[-1]]) for r in runs])
        shape[l] = len(runs)
    if any(len(a) > MAX_NODES for _, a in axes):
        return None
    entries, nxt = [], [first_sid]

    def new_sid():
        nxt[0] += 1
        return nxt[0] - 1

    def mk(kind, data):
        e = kinds[kind]
        sid = new_sid()
        entries.append(NewEntry(sid, e.name, e.version, e.mode, data, sid))
        return sid

    def rec(lvl, idx):
        out = bytearray()
        kind, a = axes[lvl]
        for i, item in enumerate(a):
            s, e = (item, item) if kind == "pt" else item
            cur = idx + [i]
            if lvl == depth - 1:
                rid = mk("region", vals[tuple(cur)].tobytes())
                out += struct.pack("<ffIIII", s, e, 0, ph["trig"], 1, rid)
            else:
                kid = rec(lvl + 1, cur)
                kid_sid = mk("trigger", bytes(kid))
                out += struct.pack("<ffIIII", s, e, len(kid) // 24, kid_sid, 0, ph["reg"])
        return bytes(out)

    root_sid = new_sid()
    root_data = rec(0, [])
    e = by[old_root]
    entries.append(NewEntry(root_sid, e.name, e.version, e.mode, root_data, root_sid))
    entries.sort(key=lambda x: x.sid)
    build_graph.last = {"nodes": [len(a) for _, a in axes], "max_dropped_dev": worst}
    return entries, root_sid


def _lerp_region(a, b, w):
    fa, fb = a.view(np.float32).astype(np.float64), b.view(np.float32).astype(np.float64)
    return (fa * (1 - w) + fb * w).astype(np.float32).view(np.uint32).copy()
