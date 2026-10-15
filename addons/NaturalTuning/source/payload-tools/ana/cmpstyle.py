import sys,json,hashlib;sys.path.insert(0,'G:/LEICA/rom18pm/ana')
from tuned import Tuned; from resolve import Res
def canon(t,e):
    try: return json.dumps(t.instance(e),sort_keys=True)
    except Exception as x: return 'RAW:'+hashlib.md5(t.d[t.D+e[5]:t.D+e[5]+e[6]]).hexdigest()
def compare(path,req,styles=(0,1,12)):
    t=Tuned(path); R=Res(t); sels={}
    for f0 in styles:
        r=dict(req); r[3]=f0; sels[f0]=R.select(r)[0]
    rows=[]
    for h in sorted(set().union(*[s.keys() for s in sels.values()]),key=lambda h:t.mname[h]):
        es={f:sels[f].get(h) for f in styles}
        c={f:(canon(t,e) if e else None) for f,e in es.items()}
        rows.append((t.mname[h],{f:(es[f][7] if es[f] else None) for f in styles},c))
    return t,R,rows
if __name__=='__main__':
    sys.stdout.reconfigure(encoding='utf-8')
    req={1:int(sys.argv[2]),2:1,4:0,5:0,6:0,7:0}
    t,R,rows=compare(sys.argv[1],req)
    for name,idx,c in rows:
        tag=('V=A' if c[0]==c[1] else 'V!A')+' '+('V=N' if c[0]==c[12] else 'V!N')+' '+('A=N' if c[1]==c[12] else 'A!N')
        if c[0]!=c[12] or c[0]!=c[1]: print('%-34s %s  sym %s'%(name,tag,idx))
