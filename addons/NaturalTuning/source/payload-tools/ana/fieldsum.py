import sys,json,collections,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
t=Tuned(sys.argv[1]); rows=json.load(open(sys.argv[2]))
E={}
for e in t.E: E[(e[7],e[4])]=e
cache={}
def inst(i,n):
    if i not in cache:
        e=E.get((i,n)) or [x for x in t.E if x[7]==i][0]
        try: cache[i]=t.instance(e)
        except Exception: cache[i]=None
    return cache[i]
def strip_core(x): return {k:v for k,v in x.items() if not k.endswith('_core')}
def num(v): return isinstance(v,(int,float)) and not isinstance(v,bool)
agg=collections.defaultdict(lambda: collections.defaultdict(list)); struct_=collections.Counter(); seen=set()
for s,uc,f1,f2,m,a,b,na,nb in rows:
    if (m,a,b) in seen: continue
    seen.add((m,a,b))
    A,B=inst(a,na),inst(b,nb)
    if A is None or B is None: agg[m]['<3A raw differs>'].append(1); continue
    fa,fb=flat(strip_core(A)),flat(strip_core(B))
    LA=dict(leaves(core_of(A),None)) if core_of(A) is not None else {}; LB=dict(leaves(core_of(B),None)) if core_of(B) is not None else {}
    if set(LA)!=set(LB): struct_[m]+=1
    for p in set(LA)&set(LB):
        for k,v in flat(LA[p]).items(): fa['L.'+k+'@'+str(p)]=v
        for k,v in flat(LB[p]).items(): fb['L.'+k+'@'+str(p)]=v
    for k in set(fa)|set(fb):
        x,y=fa.get(k),fb.get(k)
        if x==y: continue
        kk=k.split('@')[0]
        if isinstance(x,list) and isinstance(y,list) and len(x)==len(y) and x and num(x[0]):
            d=np.abs(np.array(y,float)-np.array(x,float)); agg[m][kk].append(float(d.max()))
        elif num(x) and num(y): agg[m][kk].append(abs(y-x))
        else: agg[m][kk].append(-1)
for m in sorted(agg):
    pairs=len([1 for q in seen if q[0]==m])
    print('##',m,'distinct V/N pairs',pairs,'trigger-structure differs in',struct_[m])
    items=sorted(agg[m].items(),key=lambda kv:-len(kv[1]))
    for k,v in items[:14]: print('    %-60s n=%-4d max|d| median %.4g  max %.4g'%(k[:60],len(v),np.median(v),max(v)))
    if len(items)>14: print('    ... +%d more fields'%(len(items)-14))
