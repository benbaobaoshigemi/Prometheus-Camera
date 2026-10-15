import sys,json,collections;sys.path.insert(0,'.')
from tuned import Tuned; from modes import build
sys.stdout.reconfigure(encoding='utf-8')
out={}
for lens in sys.argv[1:]:
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.madrid_%s.bin'%lens); N,chain=build(t)
    rows=json.load(open('dump/fullcmp_%s.json'%lens))
    def f0(node):
        c={}; [c.setdefault(a,b) for a,b in chain(node)]; return c.get(3)
    g=collections.defaultdict(collections.Counter)
    for s,uc,f1,f2,m,a,b,na,nb in rows:
        fa,fb=f0(na),f0(nb)
        cls='A' if fb==12 else ('B' if fa==0 else ('C' if fa is None and fb is None else 'other'))
        g[m][cls]+=1
    out[lens]={m:dict(v) for m,v in g.items()}
mods=sorted(set().union(*[set(v) for v in out.values()]))
print('%-34s'%'module',' '.join('%-16s'%l for l in out))
for m in mods:
    print('%-34s'%m,' '.join('%-16s'%(' '.join('%s%d'%(k,v) for k,v in sorted(out[l].get(m,{}).items())) or '-') for l in out))
