import struct,sys,json
import numpy as np
from elftools.elf.elffile import ELFFile
F=sys.argv[1]; d=open(F,'rb').read(); e=ELFFile(open(F,'rb'))
ro=e.get_section_by_name('.rodata'); o0=ro['sh_offset']; a0=ro['sh_addr']; n=ro['sh_size']
def va(s): i=d.find(b'\0'+s.encode()+b'\0',o0)+1; return i-o0+a0
def cstr(v):
    if not a0<=v<a0+n: return None
    o=v-a0+o0
    if d[o-1]!=0: return None
    end=d.find(b'\0',o); s=d[o:end]
    return s.decode() if s and len(s)<80 and all(32<=c<127 for c in s) else None
def table(T):
    out=[]; p=T
    while True:
        if not a0<=p<a0+n: break
        s=cstr(T+struct.unpack_from('<i',d,p-a0+o0)[0])
        if s is None: break
        out.append(s); p+=4
    return out
arr=np.frombuffer(d[o0:o0+n-n%4],dtype='<i4').astype(np.int64)
res={}
for a,b in [('Landscape','Snow'),('MFNRBlend','MFNRPostFilter'),('Mono','Sepia'),('Preview','Snapshot'),('ISPHDR','ADRC'),('Authentic','SecondVibrant')]:
    for k in np.nonzero(arr[1:]-arr[:-1]==va(b)-va(a))[0]:
        p=a0+k*4; B=va(a)-int(arr[k])
        if a0<=B<=p and (p-B)%4==0:
            t=table(B); res[f'{a}@{hex(B)}']=t
            print(a,hex(B),len(t),' '.join(f'{i}={x}' for i,x in enumerate(t)));print()
json.dump(res,open(sys.argv[2],'w'),indent=0)
