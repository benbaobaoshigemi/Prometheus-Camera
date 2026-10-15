"""Final classification of 14U deep VIBR records left outside Natural (static)."""
import sys, collections, json
ARGS = sys.argv[1:]
exec(open('deep_map.py').read().split('# ---- request-weighted')[0])
exec('def category' + open('deep_map.py').read().split('def category')[1].split('summary = {}')[0])
VIDEO_F1 = ('LogFormat', 'MovieMode', 'Viull', 'VideoNight', 'SUPEREIS', 'ThirdVideoCall', 'Cinelook')
VIDEO_F2 = ('Video', 'miHLG', 'miHDR', 'ThirdParty', 'HLG', 'HDR10', 'ViULL', 'MMSVideo', 'ThirdSnapshot')
EFFECT_IGNORE = ('Blackboard', 'Whiteboard', 'Solarize', 'Posterize', 'Barcode')
ANALOG = {'MMFPlusEqualization': 'MMFEqualization', 'MMFPlusPostFilter': 'MMFPostFilter'}
def klass(names, cat):
    f1, f2 = names.get(3, 'None'), names.get(4, 'None')
    if f1.startswith(VIDEO_F1) or f2.startswith(VIDEO_F2): return 'V_video_or_thirdparty'
    if any(n in EFFECT_IGNORE for n in names.values()): return 'X_effect_or_barcode'
    return cat
out = {}; detail = collections.defaultdict(collections.Counter)
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
            if req[1] in NEWSTYLE[lens] or req[2] in PROTECTED_USECASES: continue
            r = tuple(enumerate(req))
            ch, _ = max(((cc, e) for cc, e in recs if r[:len(cc)] == cc), key=lambda x: len(x[0]))
            uc = NAMES14[2][req[2]]
            if len(ch) < 3: c[(uc, 'natural_already')] += 1; continue
            names = {k: NAMES14[k][v] for k, v in ch if k >= 2}
            k = klass(names, CAT[(lens, node, tuple(sorted(names.items())))])
            c[(uc, k)] += 1
            detail[k]['/'.join(names[x] for x in sorted(names))] += 1
        out[f'{lens}/{node}'] = {f'{a}|{b}': v for (a, b), v in sorted(c.items())}
json.dump({'counts': out, 'features': {k: dict(v.most_common()) for k, v in detail.items()}},
          open('deep_final.json', 'w'), ensure_ascii=False, indent=1)
for k, v in out.items(): print(k, v)
