import sys,numpy as np,collections;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
from ltmdiff import flatv
def inst(t,R,V,f0,mod,f1='None',f2='None',u=1):
    code=lambda ty,n:[k for (tt,k),v in V.items() if tt==ty and v==n][0]
    sel=R.select({1:0,2:u,3:f0,4:code(4,f1),5:code(5,f2),6:0,7:0})[0]
    h=[h for h in sel if t.mname[h]==mod]; return t.instance(sel[h[0]]) if h else None
name,mod=sys.argv[1],sys.argv[2]
t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%name);R=Res(t);V=t.dic['vals']
Iv=inst(t,R,V,0,mod);In=inst(t,R,V,12,mod)
print('ctl',Iv['control_variables'] if 'control_variables' in Iv else None)
nl=lambda I:{k:v for k,v in I.items() if not k.endswith('_core')}
a,b=flatv(nl(Iv)),flatv(nl(In)); print('non-leaf diff keys',[k for k in a if a[k]!=b.get(k)][:10])
cv=core_of(Iv);cn=core_of(In)
lv=leaves(cv,None);ln=leaves(cn,None); print('leaves',len(lv),len(ln))
def fields(lv):
    d=collections.defaultdict(list)
    for p,x in lv:
        for k,v in flatv(x).items(): d[k].append((p,v))
    return d
dv,dn=fields(lv),fields(ln)
for k in dv:
    sv={str(v) for p,v in dv[k]}; sn={str(v) for p,v in dn.get(k,[])}
    if sv!=sn: print(' diff',k,len(sv),len(sn))
print('paths V',sorted({tuple(p) for p,_ in lv})[:3]); print('paths N',sorted({tuple(p) for p,_ in ln})[:3])
