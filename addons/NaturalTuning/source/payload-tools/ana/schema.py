import struct,sys,collections
from dict import secs_of
class R:
    def __init__(s,b,p=0): s.b=b; s.p=p
    def u8(s): v=s.b[s.p]; s.p+=1; return v
    def u16(s): v=struct.unpack_from('<H',s.b,s.p)[0]; s.p+=2; return v
    def u32(s): v=struct.unpack_from('<I',s.b,s.p)[0]; s.p+=4; return v
    def u64(s): v=struct.unpack_from('<Q',s.b,s.p)[0]; s.p+=8; return v
    def str(s):
        n=s.u32(); v=s.b[s.p:s.p+n]; s.p+=n
        assert n>=1 and v[-1]==0,(s.p,n,v[:40]); return v[:-1].decode('latin1')
def parse(d):
    secs=secs_of(d); o,n=secs[4]; r=R(d[o:o+n])
    dic={'types':{},'vals':{},'blocks':{}}
    modules=[]; trace=collections.Counter()
    while r.p<len(r.b):
        start=r.p; k=r.u8()
        if k==0: t=r.u8(); dic['types'][t]=r.str(); f=r.u8(); assert f==0,(start,f)
        elif k==1: t=r.u8(); v=r.u16(); dic['vals'][(t,v)]=r.str(); f=r.u8(); assert f==0,(start,f)
        elif k==2: i=r.u16(); dic['blocks'][i]=(r.str(),r.str())
        elif k==4:
            idx=r.u32(); h=r.u64(); m={'idx':idx,'hash':h,'name':r.str(),'xsd':r.str(),'types':[]}; modules.append(m)
        elif k in (5,):
            ti=r.u32(); name=r.str(); h=r.u64(); nf=r.u32(); fields=[]
            for _ in range(nf):
                fk=r.u8(); fti=r.u32(); fn=r.str(); a=r.u8(); b=r.u8(); mn=r.u32(); mx=r.u32(); df=r.str()
                fields.append(dict(kind=fk,ti=fti,name=fn,a=a,b=b,min=mn,max=mx,default=df)); trace[('f',fk,a,b)]+=1
            modules[-1]['types'].append(dict(kind=5,ti=ti,name=name,hash=h,fields=fields))
        elif k==6:
            ti=r.u32(); name=r.str(); h=r.u64(); ne=r.u32(); ents=[]
            for _ in range(ne):
                i=r.u32(); one=r.u8(); en=r.str(); ev=r.str(); ents.append((i,one,en,ev)); trace[('e',one)]+=1
            modules[-1]['types'].append(dict(kind=6,ti=ti,name=name,hash=h,enums=ents))
        else:
            raise Exception('unknown kind %d at %d: %s'%(k,start,r.b[start:start+64]))
        trace[('k',k)]+=1
    return dic,modules,trace
if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    d=open(sys.argv[1],'rb').read()
    dic,mods,tr=parse(d)
    print(len(mods),'modules'); 
    for k,v in sorted(tr.items(),key=str): print(k,v)
