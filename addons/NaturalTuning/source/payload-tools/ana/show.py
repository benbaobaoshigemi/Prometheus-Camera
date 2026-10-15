import sys; sys.path.insert(0,'.')
from schema import parse
sys.stdout.reconfigure(encoding='utf-8')
KN={5:'struct',9:'k9',11:'k11',12:'i32',13:'u32',14:'k14',15:'k15',16:'f32',17:'k17',22:'bool',23:'enum',24:'str'}
d=open(sys.argv[1],'rb').read(); dic,mods,tr=parse(d)
for m in mods:
    if m['name']!=sys.argv[2]: continue
    print(m['name'],m['xsd'],'%016x'%m['hash'])
    T={t['ti']:t for t in m['types']}
    for t in m['types']:
        if t['kind']==6: print(' enum',t['ti'],t['name'],[(e[0],e[2],e[3]) for e in t['enums']][:12]); continue
        print(' struct',t['ti'],t['name'])
        for f in t['fields']:
            print('    %-6s a=%d %-40s ti=%-4d %-30s [%s..%s] %s'%(KN.get(f['kind'],f['kind']),f['a'],f['name'],f['ti'],T[f['ti']]['name'] if f['kind'] in(5,23) and f['ti'] in T else '',f['min'],f['max'] if f['max']<2**31 else 'inf',f['default'][:30]))
