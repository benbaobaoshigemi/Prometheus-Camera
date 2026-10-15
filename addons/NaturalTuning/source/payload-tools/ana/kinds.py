import sys,collections; sys.path.insert(0,'.')
from schema import parse
sys.stdout.reconfigure(encoding='utf-8')
d=open(sys.argv[1],'rb').read(); dic,mods,tr=parse(d)
ex=collections.defaultdict(list)
for m in mods:
    tn={t['ti']:t['name'] for t in m['types']}
    for t in m['types']:
        if t['kind']!=5: continue
        for f in t['fields']:
            key=(f['kind'],f['a'])
            if len(ex[key])<7: ex[key].append((m['name'],t['name'],f['name'],f['ti'],tn.get(f['ti']) if f['kind'] in(5,22,23) else '',f['min'],f['max'],f['default'][:50]))
for k in sorted(ex):
    print('== kind',k)
    for e in ex[k]: print('   ',e)
