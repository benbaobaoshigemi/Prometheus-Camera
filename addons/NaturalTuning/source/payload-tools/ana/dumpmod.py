import sys;sys.path.insert(0,'G:/LEICA/rom18pm/ana')
from tuned import Tuned; from resolve import Res; from tree import *
def enum_names(t,mod,vals):
    m=[m for m in t.mods if m['name']==mod][0]
    for ty in [x for x in t.T.values() if x['kind']==6 and x['name']=='trigger_types']:
        return [dict((e[0],e[2]) for e in ty['enums']).get(v,v) for v in vals]
def get(t,R,req,f0,mod):
    r=dict(req); r[3]=f0; sel=R.select(r)[0]
    h=[h for h in sel if t.mname[h]==mod][0]
    return sel[h],t.instance(sel[h])
if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    path,sensor,mod=sys.argv[1],int(sys.argv[2]),sys.argv[3]; uc=int(sys.argv[4]) if len(sys.argv)>4 else 1
    t=Tuned(path); R=Res(t); req={1:sensor,2:uc,4:0,5:0,6:0,7:0}
    for f in (0,1,12):
        e,inst=get(t,R,req,f,mod)
        print('== F0',f,'sym',e[7],'ctl',enum_names(t,mod,inst['control_variables']['control_var_type']),'enable',inst['enable_section'])
        if '-r' in sys.argv: print('   reserve',{k:v for k,v in inst.items() if k.endswith('reserve')})
        for p,rg in leaves(core_of(inst),None):
            fl=flat(rg); print('   ',p,{k:(v if not isinstance(v,float) else round(v,4)) if not isinstance(v,list) else ([round(x,4) for x in v][:12] if len(v)>12 else [round(x,4) if isinstance(x,float) else x for x in v]) for k,v in fl.items()})
