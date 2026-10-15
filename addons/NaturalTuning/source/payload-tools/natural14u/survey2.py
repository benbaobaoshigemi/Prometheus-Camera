import build_natural_tuned as B, survey_ltm as S
from survey_ltm import *
B.NODES['ltm202_ipe_v2']={'root':0x1C0,'region':0x42C}
for lens,f in LENS.items():
    blob=open(ROOT+f,'rb').read(); ents,by=B.parse_entries(blob); data_off=B.toc(blob)[1][0]; tree=B.mode_tree(blob)
    nat,prot=B.plan_node(blob,ents,tree,lens,'ltm202_ipe_v2')
    print(lens,'natural',len(nat),'protect',len(prot))
    seen={}
    for mode,src,ex in nat:
        r=struct.unpack_from('<I',entry_data(blob,data_off,src),0x1C0)[0]
        cv=by[r-1]; cvd=struct.unpack('<%dI'%(len(entry_data(blob,data_off,cv))//4),entry_data(blob,data_off,cv))
        t=parse_graph(blob,by,data_off,r); s=sig(t)
        key=(cvd,tuple(len(s[i]) for i in sorted(s)))
        seen.setdefault(key,[]).append((B.normalized_chain(tree,mode)[-1],r))
    for k,v in seen.items(): print('  ',k,len(v),v[:3])
