"""Value-level check of the CV12 / TDL11 graphs: new tree at (many) trigger points == original tree + 18PM increment."""
import sys, struct, collections, itertools
import numpy as np
import json
import build_natural_tuned as B
PLAN = json.load(open('deep_plan.json', encoding='utf-8'))
import node_port as N
from survey_ltm import LENS, ROOT
OUT = sys.argv[1] if len(sys.argv) > 1 else 'out6'
rng = np.random.default_rng(1)
for mod in ('cv12_ipe_v2', 'tdl11_ipe_v2'):
    spec = N.SPECS[mod]; B.NODES[mod] = {'root': spec['root'], 'region': spec['region']}
    for lens, f in LENS.items():
        o = open(ROOT + f, 'rb').read(); n = open(f'{OUT}/{f}', 'rb').read()
        oe, ob = B.parse_entries(o); ne, nb = B.parse_entries(n); od, nd = B.toc(o)[1][0], B.toc(n)[1][0]
        tree = B.mode_tree(o)
        nat, _ = B.plan_node(o, oe, tree, lens, mod, PLAN[lens][mod])
        by_mode = collections.defaultdict(list)
        for e in ne:
            if e.name == mod: by_mode[e.mode].append(e)
        done = set(); res = []
        for mode, src, ex, act, gen in nat:
            if act == 'natural_generic': continue
            old_root = struct.unpack_from('<I', B.entry_data(o, od, src), spec['root'])[0]
            if old_root in done: continue
            done.add(old_root)
            cand = nb[ex.sid] if ex is not None else sorted(by_mode[mode], key=lambda e: e.sid)[-1]
            new_root = struct.unpack_from('<I', B.entry_data(n, nd, cand), spec['root'])[0]
            if new_root == old_root:
                res.append((old_root, 'unchanged (graph skipped)')); continue
            types = struct.unpack('<%dI' % (ob[old_root - 1].data_size // 4), B.entry_data(o, od, ob[old_root - 1]))
            told = N.parse14(o, ob, od, old_root); tnew = N.parse14(n, nb, nd, new_root)
            sets = N.level_sets(told, 5)
            d18 = N.load18(lens, spec['mod18'])
            worst = 0.0; dmax = 0.0; cnt = 0
            for _ in range(400):
                c = []
                for l in range(5):
                    lo = min(x for b in sets[l] for x in b); hi = max(x for b in sets[l] for x in b)
                    if types[l] in N.CONT:
                        c.append(float(rng.uniform(lo * 0.9, hi * 1.1)) if rng.random() < .7 else float(rng.choice(sorted({x for b in sets[l] for x in b}))))
                    else:
                        c.append(float(rng.choice(sorted(sets[l]))[0]))
                base = N.ev(told, c, lambda x: x['leaf'], N._lerp_region)
                want = N.apply_delta(mod, base, N.delta18(spec, d18, c, types)).view(np.float32).astype(np.float64)
                got = N.ev(tnew, c, lambda x: x['leaf'], N._lerp_region).view(np.float32).astype(np.float64)
                worst = max(worst, float(np.abs(got - want).max()))
                dl = N.delta18(spec, d18, c, types); dmax = max(dmax, float(np.abs(dl).max()))
            res.append((old_root, 'axes nodes new', [len(a) for a in [sorted({x for b in s for x in b}) for s in N.level_sets(tnew, 5)]], 'max|new-want| %.4g' % worst, 'max|delta| %.4g' % dmax))
        print(mod, lens, len(res), 'graphs')
        for r in res: print('   ', r)
