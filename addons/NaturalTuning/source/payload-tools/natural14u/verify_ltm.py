"""Hardware-level check of the baked LTM202 graphs: run the real 14U LTM202Setting::CalculateHWSetting
(unicorn) on the region the NEW tree yields at many (drc, lux) points and compare with
round(0.25 * (14U engine on the ORIGINAL tree + 18PM Natural-Vivid increment))."""
import sys, struct, collections
import numpy as np
sys.path.insert(0, r"G:\LEICA\rom18pm\ltm_off\emu")
import json
import build_natural_tuned as B
PLAN = json.load(open('deep_plan.json', encoding='utf-8'))
import ltm_port as P
from emu14 import run_region
ROOT = 'G:/LEICA/_work/14u_rootfs/odm/lib64/camera/'
LENS = {'wide': 'com.qti.tuned.aurora_semco_LYT900_wide.bin', 'ultra': 'com.qti.tuned.aurora_semco_imx858_ultra.bin',
        'tele3x': 'com.qti.tuned.aurora_ofilm_imx858_tele3x.bin', 'tele5x': 'com.qti.tuned.aurora_semco_imx858_tele5x.bin'}
OUT = sys.argv[1] if len(sys.argv) > 1 else 'out4'
DRC = [1, 1.2, 1.5, 2, 3, 4, 4.5, 6, 8, 10, 12, 14, 16.5, 50, 100]
LUX = [1, 60, 120, 130, 140, 170, 200, 205, 210, 225, 240, 250, 260, 300, 340, 350, 360, 400, 440, 455, 470, 700, 1000]


def hw_scale(region_u32):
    b = run_region(region_u32.tobytes())
    v = np.frombuffer(b[0x60], np.int16)
    return np.array([int(v[0])] + [int(v[4 * k]) for k in range(1, 65)])


worst = {}
for lens, f in LENS.items():
    o = open(ROOT + f, 'rb').read(); n = open(f'{OUT}/{f}', 'rb').read()
    oe, ob = B.parse_entries(o); ne, nb = B.parse_entries(n)
    od, nd = B.toc(o)[1][0], B.toc(n)[1][0]
    tree = B.mode_tree(o)
    B.NODES['ltm202_ipe_v2'] = {'root': 0x1C0, 'region': 0x42C}
    nat, _ = B.plan_node(o, oe, tree, lens, 'ltm202_ipe_v2', PLAN[lens]['ltm202_ipe_v2'])
    by_mode_new = collections.defaultdict(list)
    for e in ne:
        if e.name == 'ltm202_ipe_v2':
            by_mode_new[e.mode].append(e)
    done = set(); stats = []
    for mode, src, ex, act, gen in nat:
        if act == 'natural_generic':
            continue
        old_root = struct.unpack_from('<I', B.entry_data(o, od, src), 0x1C0)[0]
        variant = 'mmfpf_face' if act == 'natural_face' else None
        if (old_root, variant) in done:
            continue
        cand = nb[ex.sid] if ex is not None else sorted(by_mode_new[mode], key=lambda e: e.sid)[-1]
        new_root = struct.unpack_from('<I', B.entry_data(n, nd, cand), 0x1C0)[0]
        if new_root <= max(ob):
            pass
        done.add((old_root, variant))
        told = P.parse14(o, ob, od, old_root); tnew = P.parse14(n, nb, nd, new_root)
        depth = len(struct.unpack('<%dI' % (ob[old_root - 1].data_size // 4), B.entry_data(o, od, ob[old_root - 1])))
        sets = P.level_sets(told, depth)
        exp_c = [sorted(s)[0][0] if lv in (1, 3) else None for lv, s in enumerate(sets)]
        errs_node, errs_off, dmag = [], [], []
        pts_d = sorted({x for b in P.level_sets(tnew, depth)[0] for x in b}); pts_x = sorted({x for b in P.level_sets(tnew, depth)[2] for x in b})
        for d in DRC:
            for x in LUX:
                coords = [d, exp_c[1], x] + ([exp_c[3]] if depth == 4 else [])
                r_old = P.eval14(told, coords); r_new = P.eval14(tnew, coords)
                dl = P.delta18(lens, d, x, variant)
                f_old = r_old.view(np.float32).astype(np.float64)
                A = P.engine(f_old[P.S_SCALE], f_old[P.S_STR], f_old[P.S_DARK], f_old[P.S_BRIGHT])
                want = np.round((A + dl['scale']) * 0.25).astype(int)
                got = hw_scale(r_new)
                err = int(np.abs(got[:-1] - want[:-1]).max())
                (errs_node if (d in pts_d and x in pts_x) else errs_off).append(err)
                dmag.append(int(np.abs(dl['scale']).max() * 0.25))
        stats.append((old_root, len(told), len(tnew), max(errs_node), max(errs_off) if errs_off else 0, max(dmag)))
    print(lens, 'graphs', len(stats))
    for s in stats: print('   old_root %6d  drc-nodes %d->%d  max|err| at nodes %d, off-node %d  (max increment %d LUT units)' % s)
