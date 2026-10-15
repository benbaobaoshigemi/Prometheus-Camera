from emu14 import *
import csv
rows=[r for r in csv.DictReader(open('G:/LEICA/viv-color/evidence/tone_regions_all_lenses.csv',encoding='utf-8')) if r['module']=='LTM202' and r['lens']=='wide' and r['style']=='VIBR']
raw=open('G:/LEICA/_work/14u_rootfs/odm/lib64/camera/com.qti.tuned.aurora_semco_LYT900_wide.bin','rb').read()
off=int(rows[0]['physical_offset'],16); region=raw[off:off+0x42c]
bufs=run_region(region)
S=np.frombuffer(region,np.float32)[:65]; st=np.frombuffer(region,np.float32)[165]
for off_,b in bufs.items():
    v=np.frombuffer(b,np.int16)
    print(hex(off_),'nonzero',int((v!=0).sum()),v[:24].tolist())
print('----')
v=np.frombuffer(bufs[0x60],np.int16)
vals=[int(v[0])]+[int(v[4*k]) for k in range(1,66)]
exp=np.round(S*st*0.25).astype(int)
print('hw  ',vals[:66])
print('exp ',exp.tolist())
print(np.nonzero(v)[0][-10:])
