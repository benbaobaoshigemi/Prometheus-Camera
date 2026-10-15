import sys
import build_natural_tuned as B
from survey_ltm import *
B.NODES['cv12_ipe_v2']={'root':0x2C,'region':0x38}
B.NODES['tdl11_ipe_v2']={'root':0xFC,'region':0xDEC}
for node in ('cv12_ipe_v2','tdl11_ipe_v2'):
  for lens,f in LENS.items():
    blob=open(ROOT+f,'rb').read(); ents,by=B.parse_entries(blob); data_off=B.toc(blob)[1][0]; tree=B.mode_tree(blob)
    nat,prot=B.plan_node(blob,ents,tree,lens,node)
    seen={}
    for mode,src,ex in nat:
        r=struct.unpack_from('<I',entry_data(blob,data_off,src),B.NODES[node]['root'])[0]
        cv=by[r-1]; cvd=struct.unpack('<%dI'%(len(entry_data(blob,data_off,cv))//4),entry_data(blob,data_off,cv)) if cv.name=='control_var_type' else None
        t=parse_graph(blob,by,data_off,r); s=sig(t)
        key=(cvd,tuple(len(s[i]) for i in sorted(s)))
        seen.setdefault(key,[]).append(r)
    print(node,lens,'natural',len(nat),{k:(len(v),sorted(set(v))[:3]) for k,v in seen.items()})
