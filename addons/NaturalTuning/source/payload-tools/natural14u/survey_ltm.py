import sys,struct,collections
sys.path.insert(0,r"G:\LEICA\viv-color\scripts")
from symbol_table_probe import parse_entries,toc
from build_vibr_tone_tuning import entry_data
ROOT='G:/LEICA/_work/14u_rootfs/odm/lib64/camera/'
LENS={'wide':'com.qti.tuned.aurora_semco_LYT900_wide.bin','ultra':'com.qti.tuned.aurora_semco_imx858_ultra.bin','tele3x':'com.qti.tuned.aurora_ofilm_imx858_tele3x.bin','tele5x':'com.qti.tuned.aurora_semco_imx858_tele5x.bin'}
def parse_graph(blob,by,data_off,sid):
    e=by[sid]; d=entry_data(blob,data_off,e)
    out=[]
    for o in range(0,len(d),24):
        s,en,cc,cs,rc,rs=struct.unpack_from('<ffIIII',d,o)
        node={'bin':(round(s,3),round(en,3))}
        if cc: node['kids']=parse_graph(blob,by,data_off,cs)
        if rc: node['region']=rs
        out.append(node)
    return out
def sig(tree,depth=0,acc=None):
    acc=acc if acc is not None else collections.defaultdict(set)
    for n in tree:
        acc[depth].add(n['bin'])
        if 'kids' in n: sig(n['kids'],depth+1,acc)
    return acc
if __name__=='__main__':
    for lens,f in LENS.items():
        blob=open(ROOT+f,'rb').read(); ents,by=parse_entries(blob); data_off=toc(blob)[1][0]
        roots=collections.Counter()
        for e in ents:
            if e.name=='ltm202_ipe_v2':
                r=struct.unpack_from('<I',entry_data(blob,data_off,e),0x1C0)[0]; roots[r]+=1
        print(lens,'ltm202 records',sum(roots.values()),'distinct roots',len(roots))
        shapes=collections.Counter()
        for r in roots:
            cv=by[r-1]; cvd=struct.unpack('<%dI'%(len(entry_data(blob,data_off,cv))//4),entry_data(blob,data_off,cv)) if cv.name=='control_var_type' else None
            t=parse_graph(blob,by,data_off,r); s=sig(t)
            shapes[(cvd,tuple(len(s[i]) for i in sorted(s)))]+=1
        for k,v in shapes.items(): print('  ',k,v)
