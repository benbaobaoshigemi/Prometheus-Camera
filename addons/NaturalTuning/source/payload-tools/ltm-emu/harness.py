import struct, math, numpy as np, lief
from unicorn import *
from unicorn.arm64_const import *
from load import load, BASE
STUB=0x70000000; SENT=0x71000000
STACK=0x20000000; STACKSZ=0x400000
HEAP=0x30000000
def setup():
    elf,mu,data=load()
    syms={}
    # relocations
    stubs={}
    def stub(name):
        if name not in stubs: stubs[name]=STUB+16*len(stubs)
        return stubs[name]
    mu.mem_map(STUB,0x10000)
    mu.mem_write(STUB,b'\xc0\x03\x5f\xd6'*0x4000)  # ret
    for r in elf.relocations:
        t=r.type.name if hasattr(r.type,'name') else str(r.type)
        a=BASE+r.address
        if t.endswith('RELATIVE'):
            mu.mem_write(a,struct.pack('<Q',BASE+r.addend))
        else:
            sym=r.symbol
            if sym is not None and sym.value!=0 and sym.shndx!=0:
                v=BASE+sym.value+r.addend
            else:
                v=stub(sym.name if sym is not None else 'null')+0
            mu.mem_write(a,struct.pack('<Q',v))
    mu.mem_map(STACK,STACKSZ); mu.mem_map(HEAP,0x2000000); mu.mem_map(SENT,0x1000)
    mu.mem_write(SENT,b'\xc0\x03\x5f\xd6')
    # tls
    mu.mem_map(0x10000000,0x10000)
    mu.reg_write(UC_ARM64_REG_TPIDR_EL0,0x10008000)
    mu.mem_write(0x10008000+0x28,struct.pack('<Q',0x1122334455667788))
    return elf,mu,stubs
def hook_stubs(mu,stubs):
    byaddr={v:k for k,v in stubs.items()}
    def f(mu,addr,size,ud):
        n=byaddr.get(addr)
        if n is None: return
        lr=mu.reg_read(UC_ARM64_REG_X30)
        def s(i): return struct.unpack('<f',struct.pack('<I',mu.reg_read(UC_ARM64_REG_Q0+i)&0xffffffff))[0]
        def setf(v,i=0): mu.reg_write(UC_ARM64_REG_Q0+i,struct.unpack('<I',struct.pack('<f',v))[0])
        if n=='powf': setf(math.pow(s(0),s(1)) if not(s(0)<0 and s(1)!=int(s(1))) else float('nan'))
        elif n in('expf',): setf(math.exp(s(0)))
        elif n=='logf': setf(math.log(s(0)))
        elif n=='sqrtf': setf(math.sqrt(s(0)))
        elif n=='floorf': setf(math.floor(s(0)))
        elif n=='ceilf': setf(math.ceil(s(0)))
        elif n=='roundf': setf(float(round(s(0))))
        elif n=='fabsf': setf(abs(s(0)))
        elif n in('memset',):
            p,c,l=[mu.reg_read(x) for x in (UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2)]; mu.mem_write(p,bytes([c&255])*l)
        elif n in('memcpy','memmove'):
            p,q,l=[mu.reg_read(x) for x in (UC_ARM64_REG_X0,UC_ARM64_REG_X1,UC_ARM64_REG_X2)]; mu.mem_write(p,bytes(mu.mem_read(q,l)))
        elif n=='__stack_chk_fail': raise RuntimeError('stack_chk_fail')
        else:
            mu.reg_write(UC_ARM64_REG_X0,0)
        mu.reg_write(UC_ARM64_REG_PC,lr)   # return immediately (stub also ret)
    mu.hook_add(UC_HOOK_CODE,f,begin=STUB,end=STUB+0x10000)
def call(mu,fn,args,maxins=50_000_000):
    mu.reg_write(UC_ARM64_REG_SP,STACK+STACKSZ-0x1000)
    for i,a in enumerate(args): mu.reg_write(UC_ARM64_REG_X0+i,a)
    mu.reg_write(UC_ARM64_REG_X30,SENT)
    mu.emu_start(BASE+fn,SENT,count=maxins)
