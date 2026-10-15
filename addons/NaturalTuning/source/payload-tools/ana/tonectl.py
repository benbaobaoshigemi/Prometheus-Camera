import sys,collections,numpy as np;sys.path.insert(0,'.')
from tuned import Tuned; from resolve import Res; from tree import *
sys.stdout.reconfigure(encoding='utf-8')
t=Tuned(sys.argv[1]); R=Res(t); V=t.dic['vals']
def code(ty,name): return [k for (tt,k),v in V.items() if tt==ty and v==name][0]
def get(sel,m):
    h=[h for h in sel if t.mname[h]==m]; return t.instance(sel[h[0]]) if h else None
PATHS=[('None','None'),('None','MMFPostFilter'),('None','AISPRGBPostProcessForAINRDaylight'),('None','AISPRGBPostProcessForHDR'),('None','AISPRGBPostProcessForSE'),('SuperDefinition','AISPRGBPostProcessForAINRDaylight')]
for f1,f2 in PATHS:
    print('==== F1=%s F2=%s'%(f1,f2))
    for f0,nm in ((0,'V'),(12,'N')):
        sel=R.select({1:0,2:1,3:f0,4:code(4,f1),5:code(5,f2),6:0,7:0})[0]
        T=get(sel,'tmc211_sw_v2'); L=get(sel,'ltm212_ipe_v2'); G=get(sel,'gtm133_ofe_v2')
        r=T['chromatix_tmc211_reserve']
        lv=leaves(core_of(T),None)
        lp=sorted({tuple(np.round(x['ltm_percentage_tab']['ltm_percentage'],2)) for p,x in lv})
        gp=sorted({tuple(np.round(x['gtm_percentage_tab']['gtm_percentage'],2)) for p,x in lv})
        ls=sorted({round(x['ltm_strength'],2) for p,x in leaves(core_of(L),None)}) if L else None
        lc=sorted({round(x['lce_strength'],2) for p,x in leaves(core_of(L),None)}) if L else None
        print(' %s TMC use_gtm/sub/ltm=%d/%d/%d curve_model=%d ltm_bypass=%d | ltm%%=%s | gtm%%=%s'%(nm,r['use_gtm'],r['use_sub_gtm'],r['use_ltm'],r['curve_model'],r['ltm_bypass'],lp[:4],gp[:3]))
        print('   LTM ipe enable=%s ltm_strength=%s lce=%s | GTM enable=%s'%(L and L['enable_section']['ltm_enable'],ls,lc,G and G['enable_section']))
