import sys,collections;sys.path.insert(0,'.')
from cmpstyle import compare
from tuned import Tuned; from resolve import Res
sys.stdout.reconfigure(encoding='utf-8')
import glob,json
for f in sorted(glob.glob('../fs/odm/lib64/camera/com.qti.tuned.madrid_*.bin')):
    t=Tuned(f); R=Res(t)
    sensors=sorted({R.tv(k)[1] for k in R.structural(0) if R.tv(k)[0]==1})
    agg=collections.defaultdict(set)
    for uc in (0,1):
        for s in sensors:
            sels={}
            for f0 in (0,1,12): sels[f0]=R.select({1:s,2:uc,3:f0,4:0,5:0,6:0,7:0})[0]
            for h in set(sels[0])|set(sels[12]):
                a,b,c=sels[0].get(h),sels[1].get(h),sels[12].get(h)
                if a!=c: agg[('N!V',uc)].add(t.mname[h])
                if a!=b: agg[('A!V',uc)].add(t.mname[h])
    print('==',f.split('tuned.')[1],'sensors',len(sensors))
    for k in sorted(agg): print('  ',k,sorted(agg[k]))
