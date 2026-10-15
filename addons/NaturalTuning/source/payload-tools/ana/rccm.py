import sys,numpy as np,collections;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
ang=np.radians(np.arange(0,180,30))
ring=np.array([[np.cos(a),np.cos(a-2.0944),np.cos(a+2.0944)] for a in ang])*0.09+0.18
def ch(r): a=r[:,0]-0.5*(r[:,1]+r[:,2]); b=0.866*(r[:,1]-r[:,2]); return np.hypot(a,b),np.degrees(np.arctan2(b,a))
def desc(Rm):
    y=(Rm@ring.T).T; c1,h1=ch(y); c0,h0=ch(ring); return c1/c0,((h1-h0+180)%360)-180
lenses={'wide_a':'madrid_wide_a','wide_c':'madrid_wide_c','ultra_a':'madrid_ultra_a','tele_a':'madrid_tele_a'}
out=collections.defaultdict(dict)
for ln,fn in lenses.items():
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%fn); R=Res(t)
    def get(f0):
        sel=R.select({1:0,2:1,3:f0,4:0,5:0,6:0,7:0})[0]; h=[h for h in sel if t.mname[h]=='cc152_ipe_v2'][0]
        I=t.instance(sel[h]); cv=I['control_variables']['control_var_type']; return I,cv
    (V,cvv),(N,cvn)=get(0),get(12)
    names=[x['name'] for x in t.T.values() if x['kind']==6 and x['name']=='trigger_types']
    LV=leaves(core_of(V),None); LN=leaves(core_of(N),None)
    tt=[dict((e[0],e[2]) for e in [x for x in t.T.values() if x['kind']==6 and x['name']=='trigger_types'][0]['enums'])[c] for c in cvn]
    iawb=tt.index('trigger_type_custom_awb1') if 'trigger_type_custom_awb1' in tt else None
    ilux=tt.index('trigger_type_lux_idx'); icct=tt.index('trigger_type_cct')
    def mid(r): return (r[0]+r[1])/2
    Vm=[(mid(p[ilux]),mid(p[icct]),np.array(r['c_tab']['c']).reshape(3,3)) for p,r in LV]
    for p,r in LN:
        lux,cct=mid(p[ilux]),mid(p[icct]); awb=p[iawb] if iawb is not None else None
        # nearest vivid leaf
        v=min(Vm,key=lambda q:(abs(q[0]-lux)/50)**2+(abs(q[1]-cct)/500)**2)
        Rm=np.array(r['c_tab']['c']).reshape(3,3)@np.linalg.inv(v[2])
        out[(awb,round(cct,-2),round(lux,-1))][ln]=Rm
    print(ln,'ctl',tt)
# cross-lens consistency
keys=sorted(out,key=str)
for k in keys:
    d=out[k]
    if len(d)<2: continue
    s=' | '.join('%s sat%s hue%s'%(ln,np.round(desc(m)[0],2).tolist(),np.round(desc(m)[1],0).astype(int).tolist()) for ln,m in d.items())
    print(k,s)
