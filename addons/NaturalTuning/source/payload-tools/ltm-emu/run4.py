from emu14 import *
import csv
rows=[r for r in csv.DictReader(open('G:/LEICA/viv-color/evidence/tone_regions_all_lenses.csv',encoding='utf-8')) if r['module']=='LTM202' and r['lens']=='wide' and r['style']=='VIBR']
raw=open('G:/LEICA/_work/14u_rootfs/odm/lib64/camera/com.qti.tuned.aurora_semco_LYT900_wide.bin','rb').read()
off=int(rows[0]['physical_offset'],16); base=bytearray(raw[off:off+0x42c])
VT=np.frombuffer(bytes(base),np.float32)[:65].copy()
NAT=np.array([-394,-391,-387,-382,-376,-367,-358,-345,-332,-318,-302,-289,-274,-259,-244,-228,-216,-197,-183,-168,-151,-136,-121,-101,-83,-63,-46,-26,-6,15,35,60,83,103,121,141,159,177,187,194,199,202,205,206,206,205,202,196,189,180,171,162,152,143,133,120,106,91,77,65,51,37,24,15,5],np.float32)
def hw(table,s,d,b,lce=0.0):
    r=bytearray(base)
    struct.pack_into('<65f',r,0,*table)
    struct.pack_into('<4f',r,165*4,s,d,b,lce)
    bufs=run_region(bytes(r))
    v=np.frombuffer(bufs[0x60],np.int16)
    return np.array([int(v[0])]+[int(v[4*k]) for k in range(1,65)])
def model18(T,s,d,b):
    T=np.array(T,np.float32); u46=0 if T[0]<0 else 65; u57=u46; st=0
    for i in range(65):
        if st==0:
            if T[i]==0: st=1; u57=i
        else:
            if st!=1: break
            if T[i]==0: st=1
            else: st=2; u46=i
    out=T.copy()
    for i in range(65):
        if i<u57: out[i]*=d
        elif u46<=i: out[i]*=b
    return np.round(out*s*0.25).astype(int)
tests=[('VIBR s1.2 d.6 b.5',VT,1.2,.6,.5),('VIBR s1 d1 b1',VT,1,1,1),('NAT s.8 d2 b.5',NAT,.8,2,.5),('NAT s1 d1 b1',NAT,1,1,1),('NAT s.6 d.3 b1',NAT,.6,.3,1.0),('sum',VT*1.3+NAT*.8,1,1,1),('sum d2 b.5',VT*1.3+NAT*.8,1,2,.5)]
for nm,T,s,d,b in tests:
    h=hw(T,s,d,b); m=model18(T,s,d,b)
    ok=np.abs(h[:-1]-m[:-1]).max()
    print(nm,'maxdiff vs 18PM-style model',ok, 'hw[0:3]',h[:3].tolist(),'hw[-3:]',h[-3:].tolist(),'model[0:3]',m[:3].tolist(),'model[-3:]',m[-3:].tolist())
