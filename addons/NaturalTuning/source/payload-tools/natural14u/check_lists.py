import sys,struct
from survey_ltm import *
mx=0
for lens,f in LENS.items():
    for d in (sys.argv[1] if len(sys.argv)>1 else 'out5',):
        blob=open(f'{d}/{f}','rb').read(); ents,by=parse_entries(blob); off=toc(blob)[1][0]
        m=0
        for e in ents:
            if e.name in ('trigger','mod_ltm202_trigger_data') and e.sid>0:
                n=e.data_size//24
                if e.name=='mod_ltm202_trigger_data' or (e.mode and True): m=max(m,n)
        # restrict to ltm202 graphs: walk from ltm202 roots
        roots={struct.unpack_from('<I',entry_data(blob,off,e),0x1C0)[0] for e in ents if e.name=='ltm202_ipe_v2'}
        worst=0
        def walk(sid):
            global worst
            dd=entry_data(blob,off,by[sid]); worst=max(worst,len(dd)//24)
            for o in range(0,len(dd),24):
                s,en,cc,cs,rc,rs=struct.unpack_from('<ffIIII',dd,o)
                if cc: walk(cs)
        for r in roots: walk(r)
        print(lens,'max list length over all ltm202 graphs',worst)
