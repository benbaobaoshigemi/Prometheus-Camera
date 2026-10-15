import sys,json,collections,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from modes import build; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
lens=sys.argv[1]; MODS=sys.argv[2:]
t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.madrid_%s.bin'%lens); N,chain=build(t)
rows=json.load(open('dump/fullcmp_%s.json'%lens))
E={}
for e in t.E: E[(e[7],e[4])]=e
def f0(node):
    c={}; [c.setdefault(a,b) for a,b in chain(node)]; return c.get(3)
def num(v): return isinstance(v,(int,float)) and not isinstance(v,bool)
for M in MODS:
    seen=set(); agg=collections.defaultdict(list); n=0
    for s,uc,f1,f2,m,a,b,na,nb in rows:
        if m!=M or f0(nb)!=12 or (a,b) in seen: continue
        seen.add((a,b)); n+=1
        A=t.instance(E[(a,na)]); B=t.instance(E[(b,nb)])
        fa=flat({k:v for k,v in A.items() if not k.endswith('_core')}); fb=flat({k:v for k,v in B.items() if not k.endswith('_core')})
        CA,CB=core_of(A),core_of(B)
        if CA is not None:
            la=leaves(CA,None); lb=leaves(CB,None)
            for tag,L in (('V',la),('N',lb)):
                acc=collections.defaultdict(list)
                for p,r in L:
                    for k,v in flat(r).items(): acc[k].append(np.mean(v) if isinstance(v,list) and v and num(v[0]) else v)
                for k,v in acc.items():
                    if v and num(v[0]): (fa if tag=='V' else fb)['L.'+k+'(mean)']=float(np.mean(v))
            fa['#leaves']=len(la); fb['#leaves']=len(lb)
        for k in set(fa)|set(fb):
            x,y=fa.get(k),fb.get(k)
            if x!=y: agg[k].append((x,y))
    print('##',lens,M,'distinct A pairs',n)
    for k,v in sorted(agg.items(),key=lambda kv:-len(kv[1]))[:12]:
        x,y=v[0]; fx=lambda z: (round(z,3) if isinstance(z,float) else (str(z)[:40]))
        print('    %-58s n=%-3d e.g. V=%s -> N=%s'%(k[:58],len(v),fx(x),fx(y)))
