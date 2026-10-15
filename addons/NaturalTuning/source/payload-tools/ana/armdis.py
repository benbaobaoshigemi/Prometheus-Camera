import sys,capstone
from elftools.elf.elffile import ELFFile
f=sys.argv[1]; va=int(sys.argv[2],16); nb=int(sys.argv[3]); na=int(sys.argv[4])
raw=open(f,'rb').read(); e=ELFFile(open(f,'rb'))
segs=[(s['p_vaddr'],s['p_offset'],s['p_filesz']) for s in e.iter_segments() if s['p_type']=='PT_LOAD']
def v2o(v):
    for a,o,sz in segs:
        if a<=v<a+sz: return o+v-a
def cstr(v):
    o=v2o(v)
    if o is None: return None
    s=raw[o:o+100].split(bytes(1))[0]
    return s.decode('latin1') if len(s)>=3 and all(32<=c<127 for c in s) else None
md=capstone.Cs(capstone.CS_ARCH_ARM64,capstone.CS_MODE_ARM)
st=va-nb*4; o=v2o(st); regs={}
for ins in md.disasm(raw[o:o+(nb+na)*4],st):
    c=''
    if ins.mnemonic=='adrp': regs[ins.op_str.split(',')[0]]=int(ins.op_str.split('#')[1],16)
    elif ins.mnemonic=='add' and '#' in ins.op_str:
        ops=[x.strip() for x in ins.op_str.split(',')]
        if ops[1] in regs:
            s=cstr(regs[ops[1]]+int(ops[2].lstrip('#'),16)); c='   ; "%s"'%s if s else ''
    print('%x: %-8s %s%s'%(ins.address,ins.mnemonic,ins.op_str,c))
