"""Exhaustive mode-resolution check: original vs Natural tuned binaries."""
import collections
import json
import struct
import sys

sys.path.insert(0, 'G:/LEICA/viv-color/scripts')
sys.path.insert(0, 'G:/LEICA/rom18pm/natural14u')
from resolve_tuned_mode import mode_tree, normalized_chain  # noqa: E402
from symbol_table_probe import parse_entries, toc  # noqa: E402
from build_natural_tuned import NEWSTYLE, NODES, PROTECTED_USECASES  # noqa: E402

sys.stdout.reconfigure(encoding='utf-8')
ROOT = 'G:/LEICA/_work/14u_rootfs/odm/lib64/camera/'
LENS = {'wide': 'com.qti.tuned.aurora_semco_LYT900_wide.bin',
        'ultra': 'com.qti.tuned.aurora_semco_imx858_ultra.bin',
        'tele3x': 'com.qti.tuned.aurora_ofilm_imx858_tele3x.bin',
        'tele5x': 'com.qti.tuned.aurora_semco_imx858_tele5x.bin'}
OUT = sys.argv[1] if len(sys.argv) > 1 else 'out3'


def resolver(blob):
    tree = mode_tree(blob)
    ents, _ = parse_entries(blob)
    base = toc(blob)[1][0]
    recs = collections.defaultdict(list)
    for e in ents:
        if e.name in NODES:
            recs[e.name].append((normalized_chain(tree, e.mode), e))

    def res(node, req):
        ch, e = max(((c, e) for c, e in recs[node] if req[:len(c)] == c), key=lambda x: len(x[0]))
        return ch, struct.unpack_from('<I', blob, base + e.data_offset + NODES[node]['root'])[0]
    return tree, res


bad = 0
summary = {}
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read()
    n = open(f'{OUT}/{f}', 'rb').read()
    tree, ro = resolver(o)
    _, rn = resolver(n)
    reqs = set()
    vibr_sensors = set()
    for i in range(len(tree)):
        if tree[i][2] != 4:
            continue
        d = dict(normalized_chain(tree, i))
        if 1 in d:
            reqs.add(tuple(d.get(k, 0) for k in range(7)))
            if d[1] not in NEWSTYLE[lens]:
                vibr_sensors.add(d[1])
    for s in vibr_sensors:
        for u in (3, 5, 6):
            reqs.add((0, s, u, 36, 0, 0, 0))
            reqs.add((0, s, u, 36, 0, 0, 28))
    orig_roots = {node: set() for node in NODES}
    for req in reqs:
        for node in NODES:
            orig_roots[node].add(ro(node, tuple(enumerate(req)))[1])
    c = collections.Counter()
    for req in sorted(reqs):
        r = tuple(enumerate(req))
        s, u = req[1], req[2]
        for node in NODES:
            cho, rto = ro(node, r)
            chn, rtn = rn(node, r)
            if s in NEWSTYLE[lens]:
                expect = 'same'
            elif u in PROTECTED_USECASES:
                expect = 'same'
            elif len(cho) >= 3:
                expect = 'same'
            elif node == 'cc14_ipe_v2' and lens == 'wide' and s == 16:
                expect = 'same'
            else:
                expect = 'natural'
            got = 'same' if rto == rtn else ('natural' if rtn not in orig_roots[node] else 'other')
            if got != expect:
                bad += 1
                print('MISMATCH', lens, node, req, 'expect', expect, 'got', got, cho, chn)
            c[(expect, got)] += 1
    summary[lens] = {f'{k[0]}': v for k, v in c.items()}
print(json.dumps(summary, ensure_ascii=False, indent=1))
print('BAD', bad)
