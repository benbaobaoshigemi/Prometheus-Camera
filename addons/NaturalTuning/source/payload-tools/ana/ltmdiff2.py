from ltmdiff import *
name=sys.argv[1]
t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%name);R=Res(t);V=t.dic['vals']
Lv=getL(t,R,V,0);Ln=getL(t,R,V,12)
def leafs(L): return leaves(core_of(L),None)
for nm,L in (('V',Lv),('N',Ln)):
    print('=====',nm)
    seen={}
    for p,x in leafs(L):
        for k in ('lce_scale_pos_tab','lce_scale_neg_tab','blend_weight_tab','blend_weight_knee_tab','edge_control_tab'):
            v=tuple(round(a,2) for a in [vv for vv in x[k].values()][0]) 
            seen.setdefault((k,v),0); seen[(k,v)]+=1
    for (k,v),c in seen.items(): print(k,c,v)
