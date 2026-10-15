"""Exhaustive mode resolution check against deep_plan.json (stock vs Natural tuned binaries)."""
import collections, json, struct, sys
ARGS = sys.argv[1:]
exec(open('deep_final.py', encoding='utf-8').read().split('out = {}')[0])
import build_natural_tuned as BN  # noqa: E402
PLAN = json.load(open('deep_plan.json', encoding='utf-8'))
OUT = ARGS[0] if ARGS else 'out7'   # set after exec: the exec'd verifier rebinds OUT


def resolver(blob):
    tree = mode_tree(blob); ents, _ = parse_entries(blob); base = toc(blob)[1][0]
    recs = collections.defaultdict(list)
    for e in ents:
        if e.name in BN.NODES: recs[e.name].append((normalized_chain(tree, e.mode), e))
    def res(node, req):
        ch, e = max(((c, e) for c, e in recs[node] if req[:len(c)] == c), key=lambda x: len(x[0]))
        return ch, e, struct.unpack_from('<I', blob, base + e.data_offset + BN.NODES[node]['root'])[0]
    return tree, res

bad = 0; summary = {}
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read(); n = open(f'{OUT}/{f}', 'rb').read()
    tree, ro = resolver(o); _, rn = resolver(n)
    reqs = set()
    for i in range(len(tree)):
        if tree[i][2] != 4: continue
        d = dict(normalized_chain(tree, i))
        if 1 in d: reqs.add(tuple(d.get(k, 0) for k in range(7)))
    c = collections.Counter()
    for node in BN.NODES:
        plan = PLAN[lens][node]['records']
        orig_roots = {ro(node, tuple(enumerate(q)))[2] for q in reqs}
        sensor_nat = {}
        for req in sorted(reqs):
            r = tuple(enumerate(req)); s, u = req[1], req[2]
            cho, eo, rto = ro(node, r); chn, en, rtn = rn(node, r)
            names = {k: NAMES14[k][v] for k, v in r if k >= 2}
            if s in NEWSTYLE[lens] or u in PROTECTED_USECASES: expect = 'same'
            elif len(cho) <= 2: expect = 'same' if klass(names, '') == 'V_video_or_thirdparty' else 'natural'
            else:
                act = plan.get(str(eo.sid), {'action': 'keep'})['action']
                expect = 'same' if act == 'keep' else act
            got = 'same' if rto == rtn else ('natural' if rtn not in orig_roots else 'other')
            if len(cho) <= 2 and got == 'natural': sensor_nat[s] = rtn
            ok = got == expect or (expect in ('natural', 'natural_face', 'natural_generic') and got == 'natural') \
                or (expect != 'same' and got == 'same' and node == 'cc14_ipe_v2')   # CC14 graphs without boost branch
            if expect == 'natural_generic' and got == 'natural':
                ok = ok and rtn == sensor_nat.get(s, rtn)
            if not ok:
                bad += 1
                if bad < 20: print('MISMATCH', lens, node, req, names, 'expect', expect, 'got', got)
            c[(node, expect, got)] += 1
    summary[lens] = {'|'.join(k): v for k, v in sorted(c.items())}
print(json.dumps(summary, ensure_ascii=False, indent=1))
print('BAD', bad)
