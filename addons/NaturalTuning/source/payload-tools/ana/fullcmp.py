import sys,json,hashlib,collections;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from modes import build
sys.stdout.reconfigure(encoding='utf-8')
path=sys.argv[1]; out=sys.argv[2]
t=Tuned(path); R=Res(t); N,chain=build(t); V=t.dic['vals']
H={}
def dh(e):
    k=e[7]
    if k not in H:
        try: H[k]=hashlib.md5(json.dumps(t.instance(e),sort_keys=True).encode()).hexdigest()
        except Exception: H[k]='raw:'+hashlib.md5(t.d[t.D+e[5]:t.D+e[5]+e[6]]).hexdigest()
    return H[k]
combos=set()
for e in t.E:
    c={}; [c.setdefault(a,b) for a,b in chain(e[4])]
    if c.get(3) in (0,12) and 2 in c: combos.add((c.get(1,0),c[2],c.get(4,0),c.get(5,0)))
rows=[]; summ=collections.defaultdict(lambda: collections.Counter())
for s,uc,f1,f2 in sorted(combos):
    S={f0:R.select({1:s,2:uc,3:f0,4:f1,5:f2,6:0,7:0})[0] for f0 in (0,12)}
    for h in set(S[0])|set(S[12]):
        a,b=S[0].get(h),S[12].get(h); m=t.mname[h]
        if a is None or b is None: st='missing'
        elif a[7]==b[7]: st='same_sym'
        elif dh(a)==dh(b): st='same_data'
        else: st='DIFF'
        summ[m][st]+=1
        if st=='DIFF': rows.append((s,V.get((2,uc),uc),V.get((4,f1),f1),V.get((5,f2),f2),m,a[7],b[7],a[4],b[4]))
json.dump(rows,open(out,'w'),ensure_ascii=False)
print('paths',len(combos))
for m in sorted(summ):
    c=summ[m]
    if c['DIFF']: print('%-30s DIFF %4d  same_data %4d  same_sym %4d'%(m,c['DIFF'],c['same_data'],c['same_sym']))
print('modules never differing:',len([m for m in summ if not summ[m]['DIFF']]),'of',len(summ))
