"""Map 14U deeper (mode-specific) VIBR records to 18PM by enum NAME and test Natural vs Vivid there.

14U enum names: camera.qcom.so relative string tables (enum14u_camera_qcom.json).
18PM enum names: V7.1.1 tuned embedded schema.
"""
import sys, json, collections, struct
sys.path.insert(0, 'G:/LEICA/rom18pm/ana')
from tuned import Tuned
from resolve import Res
sys.argv = ['x', 'out5']
src = open('verify_resolution.py').read().split("bad = 0")[0]
exec(src)
sys.stdout.reconfigure(encoding='utf-8')
E14 = json.load(open('enum14u_camera_qcom.json'))
NAMES14 = {2: E14['Preview@0x1e66b8'], 3: E14['ISPHDR@0x1e66d8'], 4: E14['MFNRBlend@0x1e67ac'],
           5: E14['Landscape@0x1e6970'], 6: E14['Mono@0x1e6a5c']}
L14_TO_18TYPE = {2: 2, 3: 4, 4: 5, 5: 6, 6: 7}
LENS18 = {'wide': 'wide_a', 'ultra': 'ultra_a', 'tele3x': 'tele_a', 'tele5x': 'tele_a'}
MOD = {'gamma15_ipe_v2': 'gamma153_ipe_v2', 'cc14_ipe_v2': 'cc152_ipe_v2', 'ltm202_ipe_v2': 'ltm212_ipe_v2',
       'cv12_ipe_v2': 'cv122_ipe_v2', 'tdl11_ipe_v2': 'colorlut20_ipe_v2'}

T18 = {}
def t18(name):
    if name not in T18:
        t = Tuned(f'G:/LEICA/rom18pm/fs/odm/lib64/camera/com.qti.tuned.madrid_{name}.bin')
        rev = collections.defaultdict(dict)
        for (ty, v), n in t.dic['vals'].items():
            rev[ty][n.lower()] = v
        T18[name] = (t, Res(t), rev)
    return T18[name]

def sel(R, t, req, modname):
    p = R.path(req); hit = None; depth = None
    for i, n in enumerate(p):
        att = [n] + ([k for k in R.K.get(n, []) if R.tv(k) == R.tv(n)] if R.tv(n)[0] else [])
        for a in att:
            for h, e in R.inst.get(a, {}).items():
                if t.mname[h] == modname:
                    hit = e; depth = tuple(R.tv(x) for x in p[:i + 1] if R.tv(x)[0] > 3)
    return hit, depth

def same(t, a, b):
    if a is None or b is None: return a is b
    if a == b: return True
    return json.dumps(t.instance(a), sort_keys=True, default=str) == json.dumps(t.instance(b), sort_keys=True, default=str)

rows = []
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read(); tree = mode_tree(o); ents, _ = parse_entries(o)
    t, R, rev = t18(LENS18[lens])
    for node, m18 in MOD.items():
        seen = set()
        for e in ents:
            if e.name != node: continue
            ch = normalized_chain(tree, e.mode); d = dict(ch)
            if d.get(1) in NEWSTYLE[lens] or d.get(2) in PROTECTED_USECASES: continue
            key = tuple((k, v) for k, v in ch if k >= 3)
            if not key or (d.get(2), key) in seen: continue
            seen.add((d.get(2), key))
            names = {k: NAMES14[k][v] for k, v in ch if k >= 2}
            req = {1: 0, 3: 0}; miss = []
            for k, n in names.items():
                v18 = rev[L14_TO_18TYPE[k]].get(n.lower())
                if v18 is None: miss.append(n)
                else: req[L14_TO_18TYPE[k]] = v18
            if miss:
                rows.append((lens, node, names, 'NO_18PM_NAME', miss)); continue
            nv, dv = sel(R, t, dict(req), m18)
            req[3] = 12
            nn, dn = sel(R, t, dict(req), m18)
            # does 18PM have a mode-specific node for this feature at all (Vivid side)?
            status = ('SAME' if same(t, nv, nn) else 'NATURAL_DIFFERS')
            rows.append((lens, node, names, status, {'vivid_depth': dv, 'natural_depth': dn}))
json.dump([[r[0], r[1], r[2], r[3], str(r[4])] for r in rows], open('deep_map.json', 'w'), ensure_ascii=False, indent=0)
c = collections.Counter((r[0], r[1], r[3]) for r in rows)
for k in sorted(c): print(k, c[k])


# ---- request-weighted classification (same request set as coverage.py) ----
def category(st, info):
    if st == 'NO_18PM_NAME': return 'E_no_18PM_name'
    vd, nd = bool(info['vivid_depth']), bool(info['natural_depth'])
    if st == 'SAME': return 'C_18PM_natural_shares_vivid_deep_data' if vd else 'C0_same_generic'
    if nd: return 'D_18PM_natural_has_own_deep_node'
    if vd: return 'B_18PM_natural_drops_feature_node'
    return 'A_14U_only_node_generic_style_delta'

CAT = {}
for lens, node, names, st, info in rows:
    CAT[(lens, node, tuple(sorted(names.items())))] = category(st, info if isinstance(info, dict) else {})
summary = {}
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read(); tree = mode_tree(o); ents, _ = parse_entries(o)
    reqs = set()
    for i in range(len(tree)):
        if tree[i][2] != 4: continue
        d = dict(normalized_chain(tree, i))
        if 1 in d: reqs.add(tuple(d.get(k, 0) for k in range(7)))
    for node in MOD:
        recs = [(normalized_chain(tree, e.mode), e) for e in ents if e.name == node]
        c = collections.Counter()
        for req in reqs:
            s, u = req[1], req[2]
            if s in NEWSTYLE[lens] or u in PROTECTED_USECASES: continue
            r = tuple(enumerate(req))
            ch, _ = max(((cc, e) for cc, e in recs if r[:len(cc)] == cc), key=lambda x: len(x[0]))
            if len(ch) < 3: c['natural_already'] += 1; continue
            names = {k: NAMES14[k][v] for k, v in ch if k >= 2}
            c[CAT.get((lens, node, tuple(sorted(names.items()))), '?')] += 1
        summary[f'{lens}/{node}'] = dict(c)
        print(lens, node, dict(sorted(c.items())))
json.dump(summary, open('deep_map_summary.json', 'w'), indent=1)
