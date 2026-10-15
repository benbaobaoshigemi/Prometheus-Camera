import sys,csv,numpy as np,collections;sys.path.insert(0,'.')
from anchors18 import cc_leaves
csv.field_size_limit(10**9); sys.stdout.reconfigure(encoding='utf-8')
ang=np.radians([0,60,120]); ring=np.array([[np.cos(a),np.cos(a-2.0944),np.cos(a+2.0944)] for a in ang])*0.09+0.18
def desc(D):
    y=(D@ring.T).T
    f=lambda r: np.hypot(r[:,0]-0.5*(r[:,1]+r[:,2]),0.866*(r[:,1]-r[:,2]))
    h=lambda r: np.degrees(np.arctan2(0.866*(r[:,1]-r[:,2]),r[:,0]-0.5*(r[:,1]+r[:,2])))
    return '饱和 R/C %.2f Y/B %.2f G/M %.2f | 色相 %+.0f %+.0f %+.0f'%(*(f(y)/f(ring)),*(((h(y)-h(ring)+180)%360)-180))
def cband(c): 
    lo=c[0]
    return 'D65' if lo>=4700 else ('3000K' if 2600<=lo<=2700 else None)
def lband(l):
    m=(l[0]+l[1])/2
    return 'bright' if m<=320 else ('mid' if m<=460 else 'dark')
# 18PM
for fn in ['madrid_wide_a','madrid_ultra_a','madrid_tele_a']:
    for f0,st in ((0,'生动'),(12,'原色')):
        V=cc_leaves(fn,0); L=cc_leaves(fn,f0)
        # anchors: vivid, first awb branch, lux bin (230,~270) 
        anc={}
        for d,M in V:
            if d['lux_idx'][0]==230 and d['custom_awb1'][0]==1.0 and cband(d['cct']): anc.setdefault(cband(d['cct']),M)
        agg=collections.defaultdict(list)
        for d,M in L:
            cb=cband(d['cct'])
            if not cb or cb not in anc: continue
            agg[(d['custom_awb1'],lband(d['lux_idx']),cb)].append(M@np.linalg.inv(anc[cb]))
        for k in sorted(agg,key=str):
            D=np.mean(agg[k],0); print('18PM %-6s %s awb1%s %-6s %-5s'%(fn.split('_',1)[1],st,k[0],k[1],k[2]),desc(D))
# 14U VIBR
rows=[r for r in csv.DictReader(open('G:/LEICA/viv-color/evidence/color_regions_all_lenses.csv',encoding='utf-8')) if r['module']=='CC14' and r['style']=='VIBR']
def rng(s): a,b=s.strip('[]').split(','); return (float(a),float(b))
for lens in ('wide','ultra','tele3x','tele5x'):
    L=[]
    for r in rows:
        if r['lens']!=lens: continue
        p=[x.strip().split('#')[0] for x in r['path'].split('/')]
        L.append(({'awb':rng(p[1]),'lux':rng(p[3]),'cct':rng(p[4])},np.array([float(x) for x in r['f32_values'].split(',')[:9]]).reshape(3,3)))
    luxbins=sorted({d['lux'] for d,M in L if d['awb'][0]>=1})
    anchorlux=[l for l in luxbins if l[0]>=130][0]
    anc={}
    for d,M in L:
        if d['awb'][0]>=1 and d['lux']==anchorlux and cband(d['cct']): anc.setdefault(cband(d['cct']),M)
    agg=collections.defaultdict(list)
    for d,M in L:
        cb=cband(d['cct'])
        if cb and cb in anc: agg[(d['awb'],lband(d['lux']),cb)].append(M@np.linalg.inv(anc[cb]))
    for k in sorted(agg,key=str): print('14U  %-6s 生动 awb1%s %-6s %-5s'%(lens,k[0],k[1],k[2]),desc(np.mean(agg[k],0)))
