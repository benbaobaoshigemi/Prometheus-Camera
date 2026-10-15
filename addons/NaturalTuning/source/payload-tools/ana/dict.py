import struct,sys,re
def secs_of(d):
    h=struct.unpack('<'+'I'*20,d[0x98:0x98+80])
    return {h[4+3*i]:(h[5+3*i],h[6+3*i]) for i in range(h[3])}
def load(path):
    d=open(path,'rb').read(); secs=secs_of(d)
    o,n=secs[4]; b=d[o:o+n]
    types={}; vals={}
    # defs: [00][type][u32 len][name\0]; vals: [01][type][u16 v][u32 len][name\0]; records separated by one 0x00
    p=0; first=True
    while p<len(b):
        if not first:
            assert b[p]==0, (p,b[p:p+16]); p+=1
        first=False
        if p>=len(b): break
        k=b[p]
        if k==0 or (first and k!=1):
            pass
        if b[p]==0:
            ty=b[p+1]; ln=struct.unpack('<I',b[p+2:p+6])[0]; types[ty]=b[p+6:p+5+ln].decode('latin1'); p+=6+ln-1
        elif b[p]==1:
            ty=b[p+1]; v,ln=struct.unpack('<HI',b[p+2:p+8]); vals[(ty,v)]=b[p+8:p+7+ln].decode('latin1'); p+=8+ln-1
        else: raise Exception((p,b[p:p+32]))
        p+=1  # skip terminating NUL of string
    return d,secs,types,vals
if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    d,secs,types,vals=load(sys.argv[1])
    print('types',types)
    for (ty,v),s in sorted(vals.items()):
        if ty!=1 or '-v' in sys.argv: print(types.get(ty),ty,v,s)
    print('n vals per type',{types[t]:sum(1 for k in vals if k[0]==t) for t in types})
