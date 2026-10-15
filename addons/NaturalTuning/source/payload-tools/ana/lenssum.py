import sys,glob,collections,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
def inst(t,sel,mod):
    h=[h for h in sel if t.mname[h]==mod]; return (sel[h[0]],t.instance(sel[h[0]])) if h else (None,None)
def ccm_sat(mv,mn):
    ang=np.radians(np.arange(0,180,15)); ring=np.array([[np.cos(a),np.cos(a-2.0944),np.cos(a+2.0944)] for a in ang])*0.09+0.18
    x=np.linalg.solve(mv,ring.T).T; yn=(mn@x.T).T
    def ch(r): a=r[:,0]-0.5*(r[:,1]+r[:,2]); b=0.866*(r[:,1]-r[:,2]); return np.hypot(a,b)
    return (ch(yn)/ch(ring)).mean()
for f in sorted(glob.glob('../fs/odm/lib64/camera/com.qti.tuned.madrid_*.bin')):
    t=Tuned(f); R=Res(t); lens=f.split('madrid_')[1][:-4]
    sensors=sorted({R.tv(k)[1] for k in R.structural(0) if R.tv(k)[0]==1})
    for uc in (0,1):
        rows=collections.defaultdict(list)
        for s in sensors:
            S={f0:R.select({1:s,2:uc,3:f0,4:0,5:0,6:0,7:0})[0] for f0 in (0,12)}
            ev,V=inst(t,S[0],'gamma153_ipe_v2'); en,N=inst(t,S[12],'gamma153_ipe_v2')
            if V is None or ev==en: continue
            rows['sensors'].append(s)
            rows['gamma_leaves'].append((len(leaves(core_of(V),None)),len(leaves(core_of(N),None))))
            for k,x in (('V',S[0]),('N',S[12])):
                _,L=inst(t,x,'ltm212_ipe_v2')
                if L: rows['ltm_'+k].append(sorted({round(r['ltm_strength'],2) for p,r in leaves(core_of(L),None)}))
            _,CV=inst(t,S[0],'cc152_ipe_v2'); _,CN=inst(t,S[12],'cc152_ipe_v2')
            lv={p[-2:]:np.array(r['c_tab']['c']).reshape(3,3) for p,r in leaves(core_of(CV),None)}
            rs=[ccm_sat(lv[p[-2:]],np.array(r['c_tab']['c']).reshape(3,3)) for p,r in leaves(core_of(CN),None) if p[-2:] in lv]
            rows['ccm_sat'].append((round(min(rs),2),round(float(np.median(rs)),2),round(max(rs),2)) if rs else None)
        if rows['sensors']:
            print(lens,'uc',uc,'sensors',rows['sensors'][:6],'..')
            print('   gamma leaves V/N',sorted(set(rows['gamma_leaves'])),' ltm V',sorted({tuple(x) for x in rows['ltm_V']})[:3],' ltm N',sorted({tuple(x) for x in rows['ltm_N']})[:3])
            print('   CCM sat N/V (min,med,max) per sensor',sorted(set(rows['ccm_sat']),key=str)[:4])
