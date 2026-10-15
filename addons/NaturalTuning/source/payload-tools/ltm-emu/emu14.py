from common import *
import struct,numpy as np
LB=HEAP+0x100000
SPAN=0x1000
PT=[0x20,0x30,0x50,0x60,0x40,0x70,0x80]
SZ={0x20:(0x28,0x18),0x30:(0x38,0x40),0x50:(0x58,0x40),0x60:(0x68,0x80),0x40:(0x48,0x40),0x70:(0x78,0x10),0x80:(0x88,0x10)}
def run_region(regionbytes,manual=1,res_ints=None):
    mu.mem_write(IN,b'\0'*0x8000); mu.mem_write(RG,b'\0'*0x2000); mu.mem_write(RS,b'\0'*0x1000); mu.mem_write(EN,b'\0'*0x1000); mu.mem_write(OUT,b'\0'*0x40000); mu.mem_write(LB,b'\0'*(SPAN*8))
    mu.mem_write(RG,regionbytes)
    res=[0]*0x100; res[7]=manual; res[1]=1
    for k,v in (res_ints or {}).items(): res[k]=v
    mu.mem_write(RS,struct.pack('<%dI'%len(res),*res))
    for i,off in enumerate(PT):
        so,n=SZ[off]; mu.mem_write(OUT+off,struct.pack('<Q',LB+i*SPAN)); mu.mem_write(OUT+so,struct.pack('<H',n))
    call(mu,0xf4d830,[IN,RG,RS,EN,OUT])
    return {off:bytes(mu.mem_read(LB+i*SPAN,SPAN)) for i,off in enumerate(PT)}
def model14(T,s,d,b):
    """my reading of the 14U static engine (manual_enable=1); returns pre-0.25 table"""
    T=np.array(T,np.float32).copy()
    n=65
    uVar31=0 if T[0]<0 else 65; uVar34=uVar31
    state=0
    # mimic the decompiled state machine
    c=0; i=0
    u44=0
    while True:
        u44=i
        if c==1:
            if T[i]==0: u44=uVar31
            c2=2; uVar31=u44
            if T[i]==0: c2=1
            c=c2
        elif c==0:
            c=1 if T[i]==0 else 0
            if c==0: u44=uVar34
            uVar34=u44
        if not (i<0x40 and c!=2): break
        i+=1
    return uVar34,uVar31
