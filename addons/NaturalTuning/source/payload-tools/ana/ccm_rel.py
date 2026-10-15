import sys,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *; from dumpmod import get
sys.stdout.reconfigure(encoding='utf-8')
path=sys.argv[1]; sensor=int(sys.argv[2]); mod=sys.argv[3] if len(sys.argv)>3 else 'cc152_ipe_v2'
t=Tuned(path); R=Res(t); req={1:sensor,2:1,4:0,5:0,6:0,7:0}
_,V=get(t,R,req,0,mod); _,N=get(t,R,req,12,mod)
LV={p:np.array(r['c_tab']['c']).reshape(3,3) for p,r in leaves(core_of(V),None)}
LN={p:np.array(r['c_tab']['c']).reshape(3,3) for p,r in leaves(core_of(N),None)}
# hue ring of saturated linear colors (unit chroma around grey) in the CCM output space
ang=np.radians(np.arange(0,360,30))
def ring():
    # linear RGB colours of moderate saturation via opponent axes
    g=0.18; out=[]
    for a in ang:
        c=np.array([np.cos(a),np.cos(a-2*np.pi/3),np.cos(a+2*np.pi/3)])*0.09+g; out.append(c)
    return np.array(out)
def chroma_hue(rgb):
    # opponent: a=(2R-G-B)/2, b=sqrt3/2(G-B)
    a=rgb[:,0]-0.5*(rgb[:,1]+rgb[:,2]); b=np.sqrt(3)/2*(rgb[:,1]-rgb[:,2]); y=rgb.mean(1)
    return np.hypot(a,b)/y, np.degrees(np.arctan2(b,a))
print('lux/cct leaf | awb1 | row-sums N | sat N/V mean | per-hue sat ratio (0..330 step30) | hue shift deg')
for p,mn in LN.items():
    key=[q for q in LV if q[4:]==p[4:] and q[:1]==p[:1]]
    if not key: continue
    mv=LV[key[0]]
    if np.allclose(mv,mn): tag='same'
    else: tag=''
    # the same camera-RGB input that vivid maps to the ring
    x=np.linalg.solve(mv,ring().T).T
    yv=ring(); yn=(mn@x.T).T
    cv,hv=chroma_hue(yv); cn,hn=chroma_hue(yn)
    dh=((hn-hv+180)%360)-180
    print(p[1],p[4],p[5],tag,np.round(mn.sum(1),3),'sat %.3f'%(cn/cv).mean(),np.round(cn/cv,2),np.round(dh,1))
