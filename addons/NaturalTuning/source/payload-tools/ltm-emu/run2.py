from common import *
import csv,struct,numpy as np,sys
LB=HEAP+0x40000
def run2(regionbytes,manual=1,res_ints=None):
    for a,l in ((IN,0x8000),(RG,0x2000),(RS,0x1000),(EN,0x1000),(OUT,0x40000),(LB,0x2000)): mu.mem_write(a,b'\0'*l)
    mu.mem_write(RG,regionbytes)
    res=[0]*0x100
    res[7]=manual; res[1]=1
    if res_ints:
        for k,v in res_ints.items(): res[k]=v
    mu.mem_write(RS,struct.pack('<%dI'%len(res),*res))
    for off,(bo,n,so) in {0x20:(0,0x18,0x28),0x30:(0x60,0x40,0x38),0x50:(0x160,0x40,0x58),0x60:(0x260,0x80,0x68),0x40:(0x460,0x40,0x48),0x70:(0x560,0x10,0x78),0x80:(0x5a0,0x10,0x88)}.items():
        mu.mem_write(OUT+off,struct.pack('<Q',LB+bo)); mu.mem_write(OUT+so,struct.pack('<H',n))
    call(mu,0xf4d830,[IN,RG,RS,EN,OUT])
    return bytes(mu.mem_read(LB,0x600)), bytes(mu.mem_read(OUT,0x2000)), bytes(mu.mem_read(RG,0x42c))
lb,out,rg=run2(region)
print('LUT nonzero bytes',sum(1 for b in lb if b), 'out nonzero',sum(1 for b in out if b))
for bo,n in ((0,0x18),(0x60,0x40),(0x160,0x40),(0x260,0x80),(0x460,0x40),(0x560,0x10),(0x5a0,0x10)):
    v=struct.unpack('<%dh'%(n),lb[bo:bo+2*n]); print(hex(bo),v[:12])
print('---')
v=struct.unpack('<128h',lb[0x260:0x360])
print(v)
S=np.frombuffer(region,np.float32)[:65]  # region as float
print('region strength/dark/bright',np.frombuffer(region,np.float32)[165:169])
exp=S*np.frombuffer(region,np.float32)[165]*0.25
print(np.round(exp[:20],1))
