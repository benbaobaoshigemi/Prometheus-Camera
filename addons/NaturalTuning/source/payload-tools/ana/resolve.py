import sys,struct,collections;sys.path.insert(0,'G:/LEICA/rom18pm/ana')
from tuned import Tuned
ORDER=[1,2,3,4,5,6,7]
class Res:
    def __init__(s,t):
        s.t=t; d=t.d; o,n=t.S[2]
        recs=[struct.unpack_from('<iiiIii',d,p) for p in range(o+0x90,o+n-23,24)]
        s.N={r[2]:r for r in recs}; s.K=collections.defaultdict(list)
        for r in recs:
            if r[2]!=r[5]: s.K[r[5]].append(r[2])
        s.inst=collections.defaultdict(dict)   # node -> {modhash: symentry}
        for e in t.E: s.inst[e[4]][e[0]]=e
        s.roots=[r[2] for r in recs if r[5]==0 and r[2]!=0]
    def tv(s,n): r=s.N[n]; return r[3]&0xffff, r[3]>>16
    def structural(s,n):
        return [k for k in s.K.get(n,[]) if s.tv(k)[0]!=0 and (n==0 or s.tv(k)!=s.tv(n))]
    def path(s,req):
        cur=0; path=[k for k in s.K.get(0,[]) if s.tv(k)[0]==0]
        while True:
            best=None
            for k in s.structural(cur):
                ty,v=s.tv(k)
                if req.get(ty)==v and (best is None or ORDER.index(ty)<ORDER.index(s.tv(best)[0])): best=k
            if best is None: break
            cur=best; path.append(cur)
        return path
    def select(s,req):
        p=s.path(req); out={}
        for n in p:
            att=[n]+([k for k in s.K.get(n,[]) if s.tv(k)==s.tv(n)] if s.tv(n)[0] else [])
            for a in att:
                for h,e in s.inst.get(a,{}).items(): out[h]=e   # deeper overrides
        return out,p
