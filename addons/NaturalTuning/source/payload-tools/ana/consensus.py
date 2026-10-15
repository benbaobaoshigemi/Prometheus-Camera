import sys,json,numpy as np;sys.path.insert(0,'.')
from scipy.linalg import logm,expm
from tuned import Tuned; from resolve import Res; from tree import core_of
sys.stdout.reconfigure(encoding='utf-8')
def interp(nodes,levels,x,depth,get):
    """CamX-style: inside [start,end] full weight; in gap between consecutive nodes linear blend; outside clamp."""
    name=levels[depth]; v=x.get(name)
    ns=sorted(nodes,key=lambda n:n['start'])
    def val(n):
        if n['region']: return get(n['region'][0])
        return interp(n['trigger'],levels,x,depth+1,get)
    if v is None or len(ns)==1: return val(ns[0])
    if v<=ns[0]['end']: return val(ns[0])
    for a,b in zip(ns,ns[1:]):
        if a['end']<v<b['start']:
            w=(v-a['end'])/(b['start']-a['end']); return (1-w)*val(a)+w*val(b)
        if b['start']<=v<=b['end']: return val(b)
    return val(ns[-1])
def model(fn,mod='cc152_ipe_v2',f2=0):
    t=Tuned('../fs/odm/lib64/camera/com.qti.tuned.%s.bin'%fn); R=Res(t)
    TT=dict((e[0],e[2].replace('trigger_type_','')) for e in [x for x in t.T.values() if x['kind']==6 and x['name']=='trigger_types'][0]['enums'])
    out={}
    for f0 in (0,12):
        sel=R.select({1:0,2:1,3:f0,4:0,5:f2,6:0,7:0})[0]; h=[h for h in sel if t.mname[h]==mod][0]
        I=t.instance(sel[h]); levels=[TT[c] for c in I['control_variables']['control_var_type']]
        out[f0]=(core_of(I),levels)
    return out
LENS=['madrid_wide_a','madrid_ultra_a','madrid_tele_a','madrid_tele_b']
if __name__=='__main__':
    M={fn:model(fn) for fn in LENS}
    getc=lambda r: np.array(r['c_tab']['c']).reshape(3,3)
    ang=np.radians(np.arange(0,180,30)); ring=np.array([[np.cos(a),np.cos(a-2.0944),np.cos(a+2.0944)] for a in ang])*0.09+0.18
    def desc(Rm):
        y=(Rm@ring.T).T
        def ch(r): a=r[:,0]-0.5*(r[:,1]+r[:,2]); b=0.866*(r[:,1]-r[:,2]); return np.hypot(a,b),np.degrees(np.arctan2(b,a))
        c1,h1=ch(y); c0,h0=ch(ring); return np.round(c1/c0,2).tolist(),np.round(((h1-h0+180)%360)-180,1).tolist()
    base={'drc_gain':1.0,'aec_exp_sensitivity_ratio':1.0,'led_idx':0,'led_sensitivity':0,'custom_aec5':1.0}
    res={}
    for awb in (0.5,1.5,10):
      for lux in (150,250,300,350,420,500,700):
        for cct in (2300,2850,4000,5000,6500):
            x=dict(base,custom_awb1=awb,lux_idx=lux,cct=cct); Rs={}
            for fn,m in M.items():
                (cv,lv),(cn,ln)=m[0],m[12]
                Rs[fn]=interp(cn,ln,x,0,getc)@np.linalg.inv(interp(cv,lv,x,0,getc))
            L=[logm(r).real for r in Rs.values()]; S=expm(np.mean(L,0)).real
            disp=float(np.sqrt(np.mean([np.linalg.norm(l-np.mean(L,0))**2 for l in L])))
            res[(awb,lux,cct)]=(S,disp,Rs)
            print('awb1=%-4s lux=%-4d cct=%-5d disp=%.3f S̄: sat%s hue%s'%(awb,lux,cct,disp,*desc(S)))
    np.save('dump/consensus_cc.npy',{str(k):(v[0].tolist(),v[1],{a:b.tolist() for a,b in v[2].items()}) for k,v in res.items()},allow_pickle=True)
