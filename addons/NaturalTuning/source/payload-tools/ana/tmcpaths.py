import sys,json,collections,hashlib;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from modes import build; from tree import *
from ltmdiff import flatv
t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.madrid_wide_a.bin'); R=Res(t); N,chain=build(t); V=t.dic['vals']
combos=set()
for e in t.E:
    c={}; [c.setdefault(a,b) for a,b in chain(e[4])]
    if c.get(3) in (0,12) and 2 in c and c.get(1,0)==0 and c[2]==1: combos.add((c[2],c.get(4,0),c.get(5,0)))
def leafvals(I):
    out=[]
    for p,x in leaves(core_of(I),None):
        out.append(json.dumps(flatv(x),sort_keys=True,default=str))
    return sorted(out)
res=collections.Counter(); ex=[]
for uc,f1,f2 in sorted(combos):
    S={f0:R.select({1:0,2:uc,3:f0,4:f1,5:f2,6:0,7:0})[0] for f0 in (0,12)}
    h=[h for h in S[0] if t.mname[h]=='tmc211_sw_v2']
    if not h or h[0] not in S[12]: res['absent']+=1; continue
    a,b=t.instance(S[0][h[0]]),t.instance(S[12][h[0]])
    same_vals=leafvals(a)==leafvals(b); res['values_same' if same_vals else 'values_DIFF']+=1
    if not same_vals: ex.append((V.get((4,f1),f1),V.get((5,f2),f2)))
print(dict(res)); print(ex[:12])
