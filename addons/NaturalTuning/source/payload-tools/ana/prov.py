import sys,json,collections;sys.path.insert(0,'.')
from tuned import Tuned; from modes import build
sys.stdout.reconfigure(encoding='utf-8')
t=Tuned(sys.argv[1]); N,chain=build(t); V=t.dic['vals']
rows=json.load(open(sys.argv[2])); E={e[7]:e for e in t.E}
def src(node):
    c={}; [c.setdefault(a,b) for a,b in chain(node)]
    f0=V.get((3,c[3]),c[3]) if 3 in c else 'noF0'
    lv=[x for x in (4,5,6,7) if x in c]
    return f0+('' if not lv else '+'+'/'.join('%s=%s'%({4:'F1',5:'F2',6:'Sc',7:'Ef'}[x],V.get((x,c[x]),c[x])) for x in lv))
g=collections.defaultdict(collections.Counter)
for s,uc,f1,f2,m,a,b,na,nb in rows:
    sa,sb=src(na),src(nb)
    cls='主动分叉(N有Natural节点)' if sb.startswith('Natural') else ('回落不对称(V有None节点,N回落)' if sa.startswith('None') else '其他')
    g[m][(cls,uc, sa.split('+')[0], sb.split('+')[0])]+=1
for m in sorted(g):
    print('##',m)
    for k,v in sorted(g[m].items(),key=str): print('   ',k,v)
