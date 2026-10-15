import sys,struct,numpy as np
sys.argv=['x','out4']
exec(open('verify_ltm.py').read().split("worst = {}")[0])
lens='tele3x'; f=LENS[lens]
o=open(ROOT+f,'rb').read(); n=open('out4/'+f,'rb').read()
oe,ob=B.parse_entries(o); ne,nb=B.parse_entries(n); od,nd=B.toc(o)[1][0],B.toc(n)[1][0]
old_root=98846
told=P.parse14(o,ob,od,old_root)
tree=B.mode_tree(o); B.NODES['ltm202_ipe_v2']={'root':0x1C0,'region':0x42C}
nat,_=B.plan_node(o,oe,tree,lens,'ltm202_ipe_v2')
for mode,src,ex in nat:
    if struct.unpack_from('<I',B.entry_data(o,od,src),0x1C0)[0]==old_root:
        cand=sorted([e for e in ne if e.name=='ltm202_ipe_v2' and e.mode==mode],key=lambda e:e.sid)[-1]
        new_root=struct.unpack_from('<I',B.entry_data(n,nd,cand),0x1C0)[0]; break
tnew=P.parse14(n,nb,nd,new_root)
d_=len(struct.unpack('<%dI'%(ob[old_root-1].data_size//4),B.entry_data(o,od,ob[old_root-1])))
sets=P.level_sets(told,d_); print([sorted(s) for s in sets])
ex=sorted(sets[1])[0][0]
worst=[]
for d in DRC:
  for x in LUX:
    c=[d,ex,x]
    r_old=P.eval14(told,c); r_new=P.eval14(tnew,c); dl=P.delta18(lens,d,x)
    f_old=r_old.view(np.float32).astype(np.float64)
    A=P.engine(f_old[P.S_SCALE],f_old[P.S_STR],f_old[P.S_DARK],f_old[P.S_BRIGHT])
    want=np.round((A+dl['scale'])*0.25); got=hw_scale(r_new)
    worst.append((int(np.abs(got[:-1]-want[:-1]).max()),d,x,float(f_old[P.S_STR]),float(f_old[P.S_DARK]),float(f_old[P.S_BRIGHT])))
worst.sort(reverse=True); print(worst[:8])
