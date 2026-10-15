import sys,collections
ARGS=sys.argv[1:]
exec(open('deep_map.py').read().split('# ---- request-weighted')[0])
exec('def category'+open('deep_map.py').read().split('def category')[1].split('summary = {}')[0])
lens='wide'; f=LENS[lens]
o=open(ROOT+f,'rb').read(); tree=mode_tree(o); ents,_=parse_entries(o)
reqs=set()
for i in range(len(tree)):
    if tree[i][2]!=4: continue
    d=dict(normalized_chain(tree,i))
    if 1 in d: reqs.add(tuple(d.get(k,0) for k in range(7)))
for node in ARGS:
    recs=[(normalized_chain(tree,e.mode),e) for e in ents if e.name==node]
    c=collections.Counter()
    for req in reqs:
        if req[1] in NEWSTYLE[lens] or req[2] in PROTECTED_USECASES: continue
        r=tuple(enumerate(req)); ch,_=max(((cc,e) for cc,e in recs if r[:len(cc)]==cc),key=lambda x:len(x[0]))
        if len(ch)<3: continue
        names={k:NAMES14[k][v] for k,v in ch if k>=2}
        c[(CAT[(lens,node,tuple(sorted(names.items())))][:1],'/'.join(names[k] for k in sorted(names)))]+=1
    print('==',node)
    for (cat,n),k in sorted(c.items(),key=lambda x:(x[0][0],-x[1])): print(cat,k,n)
