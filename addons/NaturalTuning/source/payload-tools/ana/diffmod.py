import sys,json,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *; from dumpmod import get, enum_names
def summarize(a,b):
    out={}
    for k in set(a)|set(b):
        x,y=a.get(k),b.get(k)
        if x==y: continue
        if isinstance(x,list) and isinstance(y,list) and len(x)==len(y) and x and isinstance(x[0],(int,float)):
            d=np.array(y,float)-np.array(x,float); out[k]='n=%d maxabs=%.4g mean=%.4g'%(len(d),abs(d).max(),d.mean())
        else: out[k]='%s -> %s'%(str(x)[:60],str(y)[:60])
    return out
if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    path,sensor,uc=sys.argv[1],int(sys.argv[2]),int(sys.argv[3]); mods=sys.argv[4:]
    t=Tuned(path); R=Res(t); req={1:sensor,2:uc,4:0,5:0,6:0,7:0}
    lens=path.split('tuned.')[1][:-4]
    for mod in mods:
        (ev,V),(en,N)=get(t,R,req,0,mod),get(t,R,req,12,mod)
        json.dump({'V':V,'N':N},open('dump/%s_s%d_u%d_%s.json'%(lens,sensor,uc,mod),'w'))
        print('#',mod,'sym V/N',ev[7],en[7])
        cv,cn=[enum_names(t,mod,x['control_variables']['control_var_type']) for x in (V,N)]
        if cv!=cn: print('  ctl V',cv,'\n  ctl N',cn)
        else: print('  ctl',cv)
        for part in V:
            if part.endswith('_core'): continue
            s=summarize(flat(V[part]),flat(N[part]))
            if s: print('  [%s]'%part,s)
        LV=dict(leaves(core_of(V),None)); LN=dict(leaves(core_of(N),None))
        print('  leaves V %d N %d, same-path %d'%(len(LV),len(LN),len(set(LV)&set(LN))))
        nd=0
        for p in LN:
            if p in LV:
                s=summarize(flat(LV[p]),flat(LN[p]))
                if s:
                    nd+=1
                    if nd<=int(__import__('os').environ.get('NSHOW','4')): print('   ',p,s)
        print('  differing same-path leaves',nd)
