import csv,struct,numpy as np,sys
from harness import *
elf,mu,stubs=setup(); hook_stubs(mu,stubs)
mapped=[]
def unm(mu,acc,addr,size,val,ud):
    pg=addr&~0xfff
    try: mu.mem_map(pg,0x1000); mapped.append(hex(pg)); return True
    except Exception as e: return False
mu.hook_add(UC_HOOK_MEM_READ_UNMAPPED|UC_HOOK_MEM_WRITE_UNMAPPED|UC_HOOK_MEM_FETCH_UNMAPPED,unm)
rows=[r for r in csv.DictReader(open('G:/LEICA/viv-color/evidence/tone_regions_all_lenses.csv',encoding='utf-8')) if r['module']=='LTM202' and r['lens']=='wide' and r['style']=='VIBR']
leaf=np.array([float(x) for x in rows[0]['f32_values'].split(',')],np.float32)
raw=open('G:/LEICA/_work/14u_rootfs/odm/lib64/camera/com.qti.tuned.aurora_semco_LYT900_wide.bin','rb').read()
off=int(rows[0]['physical_offset'],16); region=raw[off:off+0x42c]
IN=HEAP; RG=HEAP+0x10000; RS=HEAP+0x20000; EN=HEAP+0x21000; OUT=HEAP+0x30000
def run(regionbytes,manual=1):
    for a,l in ((IN,0x8000),(RG,0x2000),(RS,0x1000),(EN,0x1000),(OUT,0x40000)): mu.mem_write(a,b'\0'*l)
    mu.mem_write(RG,regionbytes)
    mu.mem_write(RS+0x1c,struct.pack('<I',manual))
    call(mu,0xf4d830,[IN,RG,RS,EN,OUT])
    return bytes(mu.mem_read(OUT,0x40000)), bytes(mu.mem_read(RG,0x42c))
try:
    out,rg=run(region)
    print('ok; mapped pages',len(mapped),mapped[:10])
    print('nonzero out bytes',sum(1 for b in out if b))
except Exception as e:
    print('ERR',e,'pc',hex(mu.reg_read(UC_ARM64_REG_PC)-BASE),'mapped',mapped[:10])
pcs=[]
def tr(mu,a,s,u): pcs.append(a-BASE)
h=mu.hook_add(UC_HOOK_CODE,tr,begin=BASE+0xf4d830,end=BASE+0xf4d830+21796)
out,rg=run(region)
print('instr in fn',len(pcs),'last',[hex(x) for x in pcs[-12:]])
print('out nonzero offsets',[hex(i) for i,b in enumerate(out) if b][:20])
