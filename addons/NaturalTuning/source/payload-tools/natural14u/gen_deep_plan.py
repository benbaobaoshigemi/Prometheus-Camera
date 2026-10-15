"""Static plan for 14U deep (mode-specific) VIBR records under the Natural hijack.

Actions per deep record (non-NewStyle sensor, non-video usecase):
  natural          A/E (and D): rewrite the record's own graph with the same Natural rule as the sensor level
  natural_face     D on wide LTM202: 18PM Natural has its own Snapshot/MMFPostFilter/Face LTM leaf
  natural_generic  B: 18PM Natural drops the feature node -> point at the sensor-level Natural graph
  keep             C (18PM Natural shares Vivid data), multi-frame intermediate stages, video/third-party, effects
Protect: video/third-party requests that would otherwise fall back to the sensor-level Natural record get a record
at the shallowest IPE node carrying the video feature, pointing at the original graph.
Inputs: stock tuned bins (sha256 pinned), enum14u_camera_qcom.json, 18PM tuned bins via deep_map.py.
"""
import collections, hashlib, json, struct, sys
ARGS = sys.argv[1:]
exec(open('deep_final.py', encoding='utf-8').read().split('out = {}')[0])
from extract_color_symbol_regions import walk  # noqa: E402

INTERMEDIATE_LO, INTERMEDIATE_HI = 0.47, 1.0   # gamma y(0.25): style curves sit in 0.49..0.62


def is_intermediate(o, by, base, e):
    root = struct.unpack_from('<I', o, base + e.data_offset + 0x2C)[0]
    ys = [struct.unpack_from('<257f', lf.data, 0)[64] / 1023 for lf in walk(o, by, base, root, 0xC0C)]
    return any(y < INTERMEDIATE_LO or y > INTERMEDIATE_HI for y in ys)


plan = {}
stats = collections.Counter()
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read(); tree = mode_tree(o); ents, by = parse_entries(o); base = toc(o)[1][0]
    chains = {e.sid: normalized_chain(tree, e.mode) for e in ents if e.name in MOD}
    grecs = [(chains[e.sid], e) for e in ents if e.name == 'gamma15_ipe_v2']

    def gamma_at(ch):
        return max(((c, e) for c, e in grecs if ch[:len(c)] == c), key=lambda x: len(x[0]))

    inter_cache = {}
    def intermediate(ch):
        c, e = gamma_at(ch)
        if len(c) <= 2: return False
        if e.sid not in inter_cache: inter_cache[e.sid] = is_intermediate(o, by, base, e)
        return inter_cache[e.sid]

    nodes_ipe = {normalized_chain(tree, i): i for i in range(len(tree)) if tree[i][2] == 4}
    reqs = set()
    for ch in nodes_ipe:
        d = dict(ch)
        if 1 in d: reqs.add(tuple(d.get(k, 0) for k in range(7)))
    lp = plan[lens] = {'sha256': hashlib.sha256(o).hexdigest()}
    for node in MOD:
        recs = {}
        for e in ents:
            if e.name != node: continue
            ch = chains[e.sid]; d = dict(ch)
            if len(ch) < 3 or d.get(1) in NEWSTYLE[lens] or d.get(2) in PROTECTED_USECASES: continue
            names = {k: NAMES14[k][v] for k, v in ch if k >= 2}
            cat = klass(names, CAT.get((lens, node, tuple(sorted(names.items()))), 'A_usecase_level'))
            if cat[0] in 'VX' or cat[0] == 'C': act = 'keep'
            elif intermediate(ch): act = 'keep'; cat = 'I_intermediate_stage'
            elif cat[0] == 'B': act = 'natural_generic'
            elif cat[0] == 'D' and node == 'ltm202_ipe_v2' and lens == 'wide': act = 'natural_face'
            else: act = 'natural'
            recs[str(e.sid)] = {'action': act, 'class': cat, 'chain': '/'.join(names[k] for k in sorted(names))}
            stats[(lens, node, act)] += 1
        # video leak protection
        nrecs = [(chains[e.sid], e) for e in ents if e.name == node]
        protect = {}
        for req in reqs:
            if req[1] in NEWSTYLE[lens] or req[2] in PROTECTED_USECASES: continue
            r = tuple(enumerate(req))
            ch, src = max(((c, e) for c, e in nrecs if r[:len(c)] == c), key=lambda x: len(x[0]))
            if len(ch) > 2: continue
            names = {k: NAMES14[k][v] for k, v in r if k >= 2}
            if klass(names, '') != 'V_video_or_thirdparty': continue
            # shallowest IPE node along the request chain that already contains the video feature
            pick = None
            for n in range(3, len(r) + 1):
                pre = r[:n]
                pn = {k: NAMES14[k][v] for k, v in pre if k >= 2}
                if klass(pn, '') == 'V_video_or_thirdparty' and pre in nodes_ipe:
                    pick = pre; break
            if pick is None: stats[(lens, node, 'protect_unplaceable')] += 1; continue
            protect[str(nodes_ipe[pick])] = src.sid
        lp[node] = {'records': recs, 'protect': protect}
        stats[(lens, node, 'protect')] += len(protect)
json.dump(plan, open('deep_plan.json', 'w'), ensure_ascii=False, indent=0)
for k in sorted(stats): print(k, stats[k])
