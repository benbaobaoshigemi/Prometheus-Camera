import struct,sys,collections
sys.path.insert(0,'G:/LEICA/rom18pm/ana')
from dict import secs_of
from schema import parse
SCAL={12:'<i',13:'<I',16:'<f',22:'<I',23:'<I',9:'<q',17:'<d',11:'<B',14:'<h',15:'<H'}
class Tuned:
    def __init__(s,path):
        d=s.d=open(path,'rb').read(); S=s.S=secs_of(d)
        s.dic,s.mods,_=parse(d)
        s.T={}; s.mod_of={}
        for m in s.mods:
            for t in m['types']: s.T[t['ti']]=t; s.mod_of[t['ti']]=m
        s.root={m['hash']:m['idx'] for m in s.mods}
        s.mname={m['hash']:m['name'] for m in s.mods}
        so,sn=S[0]; s.D=S[1][0]
        s.E=[(int.from_bytes(d[p:p+8],'little'),)+struct.unpack('<HHIIIII',d[p+8:p+32]) for p in range(so+32,so+sn,32)]
        bo,bn=S[3]; s.B=[struct.unpack_from('<III',d,bo+12*k) for k in range(bn//12)]
        s.stats=collections.Counter()
    def blob(s,k):
        o,n,i=s.B[k]; return s.d[s.D+o:s.D+o+n]
    # decode struct at buf[p:], returns (obj, newp)
    def struct_(s,ti,buf,p):
        t=s.T[ti]; ln=struct.unpack_from('<I',buf,p)[0]; end=p+4+ln; q=p+4; obj={}
        for f in t['fields']:
            obj[f['name']],q=s.field(f,buf,q)
        assert q==end,('struct len mismatch',t['name'],q-p-4,ln)
        return obj,end
    def elem(s,f,buf,q):
        k=f['kind']
        if k==5: return s.struct_(f['ti'],buf,q)
        if k==24: raise Exception('str elem')
        fmt='<f' if (f['a']&1 and k in (12,13)) else SCAL[k]
        return struct.unpack_from(fmt,buf,q)[0], q+struct.calcsize(fmt)
    def field(s,f,buf,q):
        k=f['kind']; mn,mx=f['min'],f['max']
        if k==24:
            n,ref=struct.unpack_from('<II',buf,q); b=s.blob(ref); assert len(b)==n; return b.rstrip(b'\0').decode('latin1'),q+8
        if mn==1 and mx==1 and not f['a']&2:
            return s.elem(f,buf,q)
        if f['a']&4:
            n=struct.unpack_from('<I',buf,q)[0]; q+=4; out=[]
            assert mn<=n<=mx,('fixed count',f['name'],n,mn,mx); s.stats[('fix',k,f['a'])]+=1
            for _ in range(n):
                v,q=s.elem(f,buf,q); out.append(v)
            return out,q
        # variable/optional/array -> [count][ref]
        n,ref=struct.unpack_from('<II',buf,q); s.stats[('var',k,f['a'],mn==mx)]+=1
        b=s.blob(ref); out=[]; r=0
        for _ in range(n):
            v,r=s.elem(f,b,r); out.append(v)
        assert r==len(b),('array blob mismatch',f['name'],n,r,len(b))
        return out,q+8
    def instance(s,e):
        h,maj,mn,flag,mode,off,sz,idx=e
        buf=s.d[s.D+off:s.D+off+sz]
        obj,end=s.struct_(s.root[h],buf,0); assert end==sz,('head size',end,sz)
        return obj
if __name__=='__main__':
    t=Tuned(sys.argv[1]); ok=0; bad=collections.Counter(); ex={}
    for e in t.E:
        try: t.instance(e); ok+=1
        except Exception as x:
            n=t.mname.get(e[0],'%x'%e[0]); bad[n]+=1; ex.setdefault(n,repr(x)[:200])
    print('ok',ok,'bad',sum(bad.values()),'of',len(t.E)); print(t.stats)
    for n,c in bad.most_common(40): print(c,n,ex[n])
