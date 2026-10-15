import sys,numpy as np,collections;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
def cc_leaves(fn,f0,sensor=0):
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%fn); R=Res(t)
    TT=dict((e[0],e[2].replace('trigger_type_','')) for e in [x for x in t.T.values() if x['kind']==6 and x['name']=='trigger_types'][0]['enums'])
    sel=R.select({1:sensor,2:1,3:f0,4:0,5:0,6:0,7:0})[0]; h=[h for h in sel if t.mname[h]=='cc152_ipe_v2'][0]
    I=t.instance(sel[h]); lv=[TT[c] for c in I['control_variables']['control_var_type']]
    out=[]
    for p,r in leaves(core_of(I),None):
        d={n:p[i] for i,n in enumerate(lv)}; out.append((d,np.array(r['c_tab']['c']).reshape(3,3)))
    return out
if __name__=='__main__':
    for fn in ['madrid_wide_a','madrid_ultra_a','madrid_tele_a','madrid_tele_b']:
        L=cc_leaves(fn,0)
        cnt=collections.Counter(tuple(np.round(M,4).ravel()) for d,M in L)
        print('==',fn,'vivid leaves',len(L))
        for d,M in L:
            print('   lux',d['lux_idx'],'cct',d['cct'],'awb1',d.get('custom_awb1'),'reuse',cnt[tuple(np.round(M,4).ravel())],np.round(M,3).ravel().tolist()[:3])
