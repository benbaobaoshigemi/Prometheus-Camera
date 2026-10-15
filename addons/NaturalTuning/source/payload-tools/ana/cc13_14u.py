import sys,csv,struct,collections
sys.path.insert(0,'G:/LEICA/viv-color/scripts')
import numpy as np
from extract_color_regions_all_lenses import LENSES,ROOT,WORK,selected_row
from resolve_tuned_mode import mode_tree
from symbol_table_probe import parse_entries, toc
sys.stdout.reconfigure(encoding='utf-8')
def walk(blob,by_id,base,sid,path=()):
    e=by_id[sid]; ch=blob[base+e.data_offset:base+e.data_offset+e.data_size]; out=[]
    for i in range(len(ch)//24):
        s,en,cc,cs,rc,rs=struct.unpack_from('<ffIIII',ch,i*24); p=path+((round(s,2),round(en,2)),)
        if cc: out+=walk(blob,by_id,base,cs,p)
        if rc:
            r=by_id[rs]; out.append((p,blob[base+r.data_offset:base+r.data_offset+r.data_size]))
    return out
def module_leaves(lens,node,style='vibr'):
    cfg=LENSES[lens]; blob=(ROOT/cfg['bin']).read_bytes(); tree=mode_tree(blob); ents,by_id=parse_entries(blob); base=toc(blob)[1][0]
    rows=list(csv.DictReader(open(WORK/'evidence'/cfg['csv'],encoding='utf-8')))
    d,i,chn,row=selected_row(rows,tree,node,cfg[style])
    p=int(row['data_start'],0); hdr=[struct.unpack_from('<I',blob,p+4*k)[0] for k in range(32)]
    names={}
    for s in hdr:
        e=by_id.get(s)
        if e: names[e.name]=s
    root=[s for n,s in names.items() if 'trigger' in n]
    cv=None
    if 'control_var_type' in names:
        e=by_id[names['control_var_type']]; cv=struct.unpack_from('<%dI'%(e.data_size//4),blob,base+e.data_offset)
    return chn,cv,names,(walk(blob,by_id,base,root[0]) if root else [])
if __name__=='__main__':
    for lens in ('wide','ultra'):
        for node in ('cc13_bps_v2','cc13_ife_v2','cc14_ipe_v2'):
            try: chn,cv,names,L=module_leaves(lens,node)
            except Exception as ex: print(lens,node,'ERR',ex); continue
            print('==',lens,node,'chain',chn,'ctl',cv,'syms',list(names)[:6],'leaves',len(L))
            for pth,b in L[:4]:
                f=np.frombuffer(b[:36],'<f4'); print('    ',pth,np.round(f,3).tolist())
