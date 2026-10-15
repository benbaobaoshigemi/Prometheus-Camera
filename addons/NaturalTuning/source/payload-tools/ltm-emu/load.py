import lief, struct
from unicorn import *
from unicorn.arm64_const import *
SO='G:/LEICA/_work/14u_rootfs/odm/lib64/hw/camera.qcom.sm8650.so'
BASE=0x40000000
def load():
    elf=lief.parse(SO)
    mu=Uc(UC_ARCH_ARM64,UC_MODE_ARM)
    data=open(SO,'rb').read()
    hi=0
    for seg in elf.segments:
        if seg.type.name=='LOAD':
            hi=max(hi,seg.virtual_address+seg.virtual_size)
    size=(hi+0xfff)&~0xfff
    mu.mem_map(BASE,size)
    for seg in elf.segments:
        if seg.type.name=='LOAD':
            c=bytes(seg.content)
            mu.mem_write(BASE+seg.virtual_address,c)
    return elf,mu,data
if __name__=='__main__':
    elf,mu,data=load()
    print(hex(elf.imagebase), len(elf.relocations), [ (s.type.name,hex(s.virtual_address),hex(s.virtual_size)) for s in elf.segments if s.type.name=='LOAD'])
    from capstone import *
    cs=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
    code=bytes(mu.mem_read(BASE+0x104d830,48))
    for i in cs.disasm(code,0x104d830): print(hex(i.address),i.mnemonic,i.op_str)
