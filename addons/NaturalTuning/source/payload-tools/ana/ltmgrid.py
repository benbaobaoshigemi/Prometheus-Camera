from ltmdiff import *
import json,hashlib
def grid(name,f0,f1='None',f2='None'):
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%name);R=Res(t);V=t.dic['vals']
    L=getL(t,R,V,f0,f1,f2); out=[]
    for p,x in leaves(core_of(L),None):
        g=lambda k:[round(float(a),4) for a in [vv for vv in x[k].values()][0]]
        out.append((p[-3:],g('ltm_scale_tab'),g('lce_scale_pos_tab'),g('lce_scale_neg_tab'),round(x['ltm_strength'],4),round(x['dark_boost'],4),round(x['bright_suppress'],4),round(x['lce_strength'],4),round(x['y_ratio_max'],1)))
    return out,[len(p) for p,_ in leaves(core_of(L),None)][:1],L['control_variables']
if __name__=='__main__':
    for name in sys.argv[1:]:
        for f0,nm in ((0,'V'),(12,'N')):
            try:
                g,d,cv=grid(name,f0)
                print(name,nm,len(g),'depth',d,cv,hashlib.md5(json.dumps(g).encode()).hexdigest()[:8])
            except Exception as e: print(name,nm,'ERR',e)
