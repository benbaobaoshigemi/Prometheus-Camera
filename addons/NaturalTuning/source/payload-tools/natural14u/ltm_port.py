"""Port the 18PM Natural static-LTM increment (Natural - Vivid) into 14U LTM202 trigger graphs.

Facts used (verified, see rom18pm/14U原色_LTM移植研究.md):
* 14U LTM202 and 18PM LTM212 share the static engine: hw_scale = round(lobe(T,dark,bright) * strength * 0.25);
  LCE tables = curve * lce_strength * 0.25 (linear); blend_weight_tab = slots 169..180.
* trigger axes: 14U ltm202 = (drc_gain, aec_exp_sensitivity_ratio, lux_idx[, custom]);
  18PM ltm212 = (ptc[1052], custom_aec5[1016], drc_gain, lux_idx, custom_aec1).
Leaf = 14U engine value + (18PM Natural - 18PM Vivid) engine value, baked with strength = dark = bright
= lce_strength = 1, so no data-dependent zero-run logic remains in the result.
"""
from __future__ import annotations

import struct
import sys

import numpy as np

sys.path.insert(0, r"G:\LEICA\rom18pm\ana")
sys.path.insert(0, r"G:\LEICA\viv-color\scripts")
from build_vibr_tone_tuning import NewEntry, entry_data  # noqa: E402

INT_SLOTS = slice(66, 130)          # ltm_curve (int32)
S_SCALE = slice(0, 65)
S_POS, S_NEG = slice(130, 147), slice(147, 164)
S_STR, S_DARK, S_BRIGHT, S_LCE = 165, 166, 167, 168
S_BLEND = slice(169, 181)
LENS18 = {"wide": "madrid_wide_a", "ultra": "madrid_ultra_a", "tele3x": "madrid_tele_a", "tele5x": "madrid_tele_a"}
MAX_NODES = 20       # SearchLTM202AnyOtherNode aborts when a trigger list holds more than 20 nodes
AXES14 = (2, 5, 0)   # drc_gain, aec_exp_sensitivity_ratio, lux_idx


def engine(T, s, d, b):
    """Static scale engine (14U LTM202 / 18PM LTM212): zero-run lobes, then strength. Pre-0.25 domain."""
    T = np.asarray(T, np.float64)
    u46 = 0 if T[0] < 0 else 65
    u57 = u46
    st = 0
    for i in range(65):
        if st == 0:
            if T[i] == 0:
                st, u57 = 1, i
        else:
            if st != 1:
                break
            if T[i] != 0:
                st, u46 = 2, i
    out = T.copy()
    for i in range(65):
        if i < u57:
            out[i] *= d
        elif u46 <= i:
            out[i] *= b
    return out * s


def ev(nodes, coords, leaf, lerp):
    """CamX-style trigger lookup: plateau inside a bin, linear between adjacent bins, clamp outside."""
    v = coords[0]

    def sub(n):
        return ev(n["kids"], coords[1:], leaf, lerp) if n["kids"] else leaf(n)

    for n in nodes:
        if n["s"] <= v <= n["e"]:
            return sub(n)
    if v < nodes[0]["s"]:
        return sub(nodes[0])
    if v > nodes[-1]["e"]:
        return sub(nodes[-1])
    for a, b in zip(nodes, nodes[1:]):
        if a["e"] < v < b["s"]:
            return lerp(sub(a), sub(b), (v - a["e"]) / (b["s"] - a["e"]))
    raise ValueError("trigger lookup failed")


# ---------------------------------------------------------------- 18PM
_cache18 = {}


# 18PM requests whose Natural LTM differs from the generic Natural leaf (Vivid stays generic there)
VARIANTS = {None: ("None", "None"), "mmfpf_face": ("MMFPostFilter", "Face")}


def load18(lens, variant=None):
    name = LENS18[lens]
    if (name, variant) in _cache18:
        return _cache18[(name, variant)]
    from tuned import Tuned
    from resolve import Res
    from tree import core_of
    t = Tuned(r"G:\LEICA\rom18pm\fs\odm\lib64\camera\com.qti.tuned.%s.bin" % name)
    R, Vd = Res(t), t.dic["vals"]

    def code(ty, n):
        return [k for (tt, k), v in Vd.items() if tt == ty and v == n][0]

    def tree_of(f0, f2="None", scene="None"):
        sel = R.select({1: 0, 2: 1, 3: f0, 4: code(4, "None"), 5: code(5, f2), 6: code(6, scene), 7: 0})[0]
        h = [h for h in sel if t.mname[h] == "ltm212_ipe_v2"][0]
        L = t.instance(sel[h])
        assert L["control_variables"]["control_var_type"] == [1052, 1016, 2, 0, 1000]

        def conv(lst):
            out = []
            for n in lst:
                d = {"s": n["start"], "e": n["end"], "kids": None, "leaf": None}
                if n["trigger"]:
                    d["kids"] = conv(n["trigger"])
                if n["region"]:
                    x = n["region"][0]

                    def g(k):
                        return np.array([vv for vv in x[k].values()][0], np.float64)
                    d["leaf"] = {"s": x["ltm_strength"], "d": x["dark_boost"], "b": x["bright_suppress"],
                                 "lce": x["lce_strength"], "T": g("ltm_scale_tab"),
                                 "pos": g("lce_scale_pos_tab"), "neg": g("lce_scale_neg_tab"),
                                 "blend": g("blend_weight_tab")}
                out.append(d)
            return out
        return conv(core_of(L))

    res = {"N": tree_of(12, *VARIANTS[variant]), "V": tree_of(0, *VARIANTS[variant])}
    _cache18[(name, variant)] = res
    return res


def _lerp_leaf(a, b, w):
    return {k: (a[k] * (1 - w) + b[k] * w) for k in a}


def delta18(lens, drc, lux, variant=None):
    """(Natural - Vivid) static scale (pre-0.25), LCE pos/neg (curve*strength), blend weights; ptc = 0."""
    tr = load18(lens, variant)
    out = {}
    for tag in ("N", "V"):
        p = ev(tr[tag], [0.0, 500.0, drc, lux, 50.0], lambda n: n["leaf"], _lerp_leaf)
        out[tag] = {"scale": engine(p["T"], p["s"], p["d"], p["b"]), "pos": p["pos"] * p["lce"],
                    "neg": p["neg"] * p["lce"], "blend": p["blend"]}
    return {k: out["N"][k] - out["V"][k] for k in out["N"]}


# ---------------------------------------------------------------- 14U
def parse14(blob, by, data_off, sid):
    d = entry_data(blob, data_off, by[sid])
    out = []
    for o in range(0, len(d), 24):
        s, e, cc, cs, rc, rs = struct.unpack_from("<ffIIII", d, o)
        n = {"s": s, "e": e, "kids": parse14(blob, by, data_off, cs) if cc else None, "leaf": None}
        if rc:
            n["leaf"] = np.frombuffer(entry_data(blob, data_off, by[rs]), np.uint32).copy()
        out.append(n)
    return out


def _lerp_region(a, b, w):
    fa, fb = a.view(np.float32).astype(np.float64), b.view(np.float32).astype(np.float64)
    r = (fa * (1 - w) + fb * w).astype(np.float32).view(np.uint32).copy()
    r[INT_SLOTS] = a[INT_SLOTS]
    return r


def eval14(tree, coords):
    return ev(tree, coords, lambda n: n["leaf"], _lerp_region)


def level_sets(tree, depth):
    sets = [set() for _ in range(depth)]

    def walk(nodes, lvl):
        for n in nodes:
            sets[lvl].add((round(n["s"], 4), round(n["e"], 4)))
            if n["kids"]:
                walk(n["kids"], lvl + 1)
    walk(tree, 0)
    return sets


def bake(region_u32, dl):
    r = region_u32.view(np.float32).astype(np.float64).copy()
    a = engine(r[S_SCALE], r[S_STR], r[S_DARK], r[S_BRIGHT])
    new = r.copy()
    new[S_SCALE] = a + dl["scale"]
    new[S_STR] = new[S_DARK] = new[S_BRIGHT] = 1.0
    new[S_POS] = r[S_POS] * r[S_LCE] + dl["pos"]
    new[S_NEG] = r[S_NEG] * r[S_LCE] + dl["neg"]
    new[S_LCE] = 1.0
    new[S_BLEND] = np.clip(r[S_BLEND] + dl["blend"], 0.0, 256.0)
    out = new.astype(np.float32).view(np.uint32).copy()
    out[INT_SLOTS] = region_u32[INT_SLOTS]
    return out


def build_graph(blob, by, data_off, old_root, first_sid, lens, variant=None):
    """Return (entries, new_root) or None when the graph shape is not covered."""
    cv = by[old_root - 1]
    if cv.name != "control_var_type":
        return None
    types = struct.unpack("<%dI" % (cv.data_size // 4), entry_data(blob, data_off, cv))
    if types[:3] != AXES14:
        return None
    depth = len(types)
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
            if cc:
                stack.append(cs)
            else:
                ph.setdefault("trig", cs)
            if rc:
                stack.append(rs)
            else:
                ph.setdefault("reg", rs)
    if "trig" not in ph or "reg" not in ph or "region" not in kinds or "trigger" not in kinds:
        return None
    edges_drc = sorted({x for b in sets[0] for x in b})
    edges_lux = sorted({x for b in sets[2] for x in b})
    e18 = {2: set(), 3: set()}

    def collect(tr, lvl):
        for n in tr:
            if lvl in e18:
                e18[lvl].update((n["s"], n["e"]))
            if n["kids"]:
                collect(n["kids"], lvl + 1)
    t18 = load18(lens, variant)
    for tg in ("N", "V"):
        collect(t18[tg], 0)
    # 14U clamps outside its own bins, the 18PM increment does not: keep every 18PM breakpoint
    pts_drc = sorted(set(edges_drc) | {x for x in e18[2] if x <= 100.0})
    pts_lux = sorted(set(edges_lux) | {x for x in e18[3] if x <= 1000.0})

    def with_gap_samples(pts):
        # 14U interpolates LTM parameters inside gaps and runs the non-linear engine on them; the baked leaves
        # are linear in engine output, so steep gaps need interior samples (compress keeps the useful ones)
        extra = {p + (q - p) * f for p, q in zip(pts, pts[1:]) for f in (0.25, 0.5, 0.75) if q - p > 1e-3}
        return sorted(set(pts) | extra)
    pts_drc, pts_lux = with_gap_samples(pts_drc), with_gap_samples(pts_lux)
    other = {lvl: sorted(sets[lvl]) for lvl in range(depth) if lvl not in (0, 2)}
    lv1 = other[1]
    lv3 = other.get(3, [(None, None)])
    # grid of baked leaves: key = (drc_idx, exp_idx, lux_idx, cust_idx)
    vals = {}
    for di, d in enumerate(pts_drc):
        for xi, x in enumerate(pts_lux):
            dl = delta18(lens, d, x, variant)
            for ei, (es, _) in enumerate(lv1):
                for ci, (cs, _) in enumerate(lv3):
                    c = [d, es, x] + ([cs] if depth == 4 else [])
                    vals[(di, ei, xi, ci)] = bake(eval14(tree, c), dl)

    def f64(u):
        return u.view(np.float32).astype(np.float64)

    def compress(pts, other_keys, key_of):
        """Group the axis into CamX interval nodes [s, e] (constant inside, linear in the gaps).

        Consecutive points with identical baked leaves merge losslessly; only if more than MAX_NODES intervals
        remain are whole intervals dropped where neighbour interpolation reproduces them best."""
        def same(i, j):
            return all(vals[key_of(k, i)].tobytes() == vals[key_of(k, j)].tobytes() for k in other_keys)
        groups = []
        for i in range(len(pts)):
            if groups and same(groups[-1][0], i):
                groups[-1][1] = i
            else:
                groups.append([i, i])
        worst = 0.0

        def dev(pos):
            a, b = groups[pos - 1][1], groups[pos + 1][0]
            m = 0.0
            for k in set(groups[pos]):
                w = (pts[k] - pts[a]) / (pts[b] - pts[a])
                for key in other_keys:
                    va, vk, vb = f64(vals[key_of(key, a)]), f64(vals[key_of(key, k)]), f64(vals[key_of(key, b)])
                    m = max(m, float(np.abs(vk - (va * (1 - w) + vb * w))[S_FLOAT].max()))
            return m
        while len(groups) > 2:
            m, p = min((dev(p), p) for p in range(1, len(groups) - 1))
            if m > 0.05 and len(groups) <= MAX_NODES:
                break
            worst = max(worst, m)
            groups.pop(p)
        return groups, worst

    S_FLOAT = np.r_[0:66, 130:267]
    keys = [(di, ei, ci) for di in range(len(pts_drc)) for ei in range(len(lv1)) for ci in range(len(lv3))]
    lux_g, w1 = compress(pts_lux, keys, lambda k, xi: (k[0], k[1], xi, k[2]))
    vals = {(di, ei, gi, ci): vals[(di, ei, g[0], ci)] for gi, g in enumerate(lux_g)
            for di in range(len(pts_drc)) for ei in range(len(lv1)) for ci in range(len(lv3))}
    ax_lux = [(pts_lux[a], pts_lux[b]) for a, b in lux_g]
    keys = [(ei, xi, ci) for ei in range(len(lv1)) for xi in range(len(ax_lux)) for ci in range(len(lv3))]
    drc_g, w2 = compress(pts_drc, keys, lambda k, di: (di, k[0], k[1], k[2]))
    vals = {(gi, ei, xi, ci): vals[(g[0], ei, xi, ci)] for gi, g in enumerate(drc_g)
            for ei in range(len(lv1)) for xi in range(len(ax_lux)) for ci in range(len(lv3))}
    ax_drc = [(pts_drc[a], pts_drc[b]) for a, b in drc_g]
    pts_lux, pts_drc = ax_lux, ax_drc
    if len(pts_lux) > MAX_NODES or len(pts_drc) > MAX_NODES:
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
        if lvl == 0:
            axis = [(a, b, i) for i, (a, b) in enumerate(pts_drc)]
        elif lvl == 2:
            axis = [(a, b, i) for i, (a, b) in enumerate(pts_lux)]
        else:
            axis = [(s, e, i) for i, (s, e) in enumerate(other[lvl])]
        for (s, e, i) in axis:
            cur = dict(idx)
            cur[lvl] = i
            if lvl == depth - 1:
                rid = mk("region", vals[(cur[0], cur[1], cur[2], cur.get(3, 0))].tobytes())
                out += struct.pack("<ffIIII", s, e, 0, ph["trig"], 1, rid)
            else:
                kid = rec(lvl + 1, cur)
                kid_sid = mk("trigger", bytes(kid))
                out += struct.pack("<ffIIII", s, e, len(kid) // 24, kid_sid, 0, ph["reg"])
        return bytes(out)

    root_sid = new_sid()
    root_data = rec(0, {})
    e = by[old_root]
    entries.append(NewEntry(root_sid, e.name, e.version, e.mode, root_data, root_sid))
    entries.sort(key=lambda x: x.sid)
    build_graph.last = {"lux_nodes": len(pts_lux), "drc_nodes": len(pts_drc), "max_dropped_dev": max(w1, w2)}
    return entries, root_sid
