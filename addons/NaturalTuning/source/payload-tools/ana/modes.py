import sys,struct,collections;sys.path.insert(0,'.')
TN={0:'Default',1:'Sensor',2:'Usecase',3:'Feature0',4:'Feature1',5:'Feature2',6:'Scene',7:'Effect'}
def build(t):
    d=t.d; o,n=t.S[2]
    recs=[struct.unpack_from('<iiiIii',d,p) for p in range(o+0x90,o+n-23,24)]
    N={r[2]:r for r in recs}
    cache={}
    def chain(i):
        if i in cache: return cache[i]
        out=[]; cur=i; g=0
        while cur in N and g<30:
            r=N[cur]; out.append((r[3]&0xffff, r[3]>>16)); cur=r[5]; g+=1
            if cur==0: break
        res=tuple(x for x in out[::-1])
        cache[i]=res; return res
    return N,chain
def label(t,ch):
    return '/'.join('%s=%s'%(TN.get(ty,ty), t.dic['vals'].get((ty,v),v)) for ty,v in ch if ty!=0)
