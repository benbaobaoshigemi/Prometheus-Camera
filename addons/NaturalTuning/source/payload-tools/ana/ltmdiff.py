import sys,numpy as np,collections;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
def flatv(x,pre=''):
    out={}
    if isinstance(x,dict):
        for k,v in x.items(): out.update(flatv(v,pre+k+'.'))
    elif isinstance(x,list):
        if x and isinstance(x[0],dict):
            for i,v in enumerate(x): out.update(flatv(v,pre+str(i)+'.'))
        else: out[pre[:-1]]=tuple(x)
    else: out[pre[:-1]]=x
    return out
def getL(t,R,V,f0,f1='None',f2='None',u=1):
    code=lambda ty,n:[k for (tt,k),v in V.items() if tt==ty and v==n][0]
    sel=R.select({1:0,2:u,3:f0,4:code(4,f1),5:code(5,f2),6:0,7:0})[0]
    h=[h for h in sel if t.mname[h]=='ltm212_ipe_v2'][0]; return t.instance(sel[h])
if __name__=='__main__':
    name=sys.argv[1]
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%name);R=Res(t);V=t.dic['vals']
    Lv=getL(t,R,V,0);Ln=getL(t,R,V,12)
    fv=flatv({k:v for k,v in Lv.items() if k!='chromatix_ltm212_core'});fn=flatv({k:v for k,v in Ln.items() if k!='chromatix_ltm212_core'})
    print('non-leaf diffs:',[(k,fv[k] if not isinstance(fv[k],tuple) else '...',fn[k] if not isinstance(fn[k],tuple) else '...') for k in fv if fv[k]!=fn.get(k)][:20])
    lv=leaves(core_of(Lv),None);ln=leaves(core_of(Ln),None)
    print(len(lv),len(ln)); 
    # per-field: which fields vary between vivid and natural leaves (as sets)
    def fields(lv):
        d=collections.defaultdict(set)
        for p,x in lv:
            for k,v in flatv(x).items(): d[k].add(v if not isinstance(v,tuple) else tuple(round(a,3) if isinstance(a,float) else a for a in v))
        return d
    dv=fields(lv);dn=fields(ln)
    for k in dv:
        if dv[k]!=dn[k]:
            print(k, 'V',sorted(dv[k],key=str)[:3] if len(str(dv[k]))<200 else '[%d vals]'%len(dv[k]),'| N',sorted(dn[k],key=str)[:3] if len(str(dn[k]))<200 else '[%d vals]'%len(dn[k]))
