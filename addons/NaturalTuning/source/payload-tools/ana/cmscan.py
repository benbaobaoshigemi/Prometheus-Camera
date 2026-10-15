import sys,glob,os,numpy as np
m=np.load('dump/14u_wide_cm.npy',allow_pickle=True).item()
targets={'CM1':m['cm1'].ravel(),'CM2':m['cm2'].ravel(),'CM1T':m['cm1'].T.ravel(),'CM2T':m['cm2'].T.ravel()}
tol=float(sys.argv[2]) if len(sys.argv)>2 else 0.006
for p in glob.glob(sys.argv[1]+'/**/*',recursive=True):
    if not os.path.isfile(p) or os.path.getsize(p)>300e6 or os.path.getsize(p)<64: continue
    if not any(s in p.lower() for s in ('camera','sensor','tuned','eeprom','chi','camx')): continue
    d=open(p,'rb').read()
    for dt,sz in (('<f4',4),('<f8',8)):
        for al in range(sz):
            n=(len(d)-al)//sz
            a=np.frombuffer(d[al:al+n*sz],dt).astype(np.float64)
            a=np.nan_to_num(a,nan=99,posinf=99,neginf=99)
            for nm,t in targets.items():
                c=np.nonzero(np.abs(a[:-9]-t[0])<tol)[0]
                for i in c:
                    if np.all(np.abs(a[i:i+9]-t)<tol):
                        print(nm,dt,p,hex(al+i*sz),np.round(a[i:i+9],4).tolist())
