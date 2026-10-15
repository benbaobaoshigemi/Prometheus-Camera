import sys,collections
sys.argv=['x','out5']
src=open('verify_resolution.py').read().split("bad = 0")[0]
exec(src)
for lens,f in LENS.items():
    o=open(ROOT+f,'rb').read(); tree=mode_tree(o); ents,_=parse_entries(o)
    base=toc(o)[1][0]
    recs=[(normalized_chain(tree,e.mode),e) for e in ents if e.name=='gamma15_ipe_v2']
    reqs=set()
    for i in range(len(tree)):
        if tree[i][2]!=4: continue
        d=dict(normalized_chain(tree,i))
        if 1 in d: reqs.add(tuple(d.get(k,0) for k in range(7)))
    c=collections.Counter()
    for req in reqs:
        s,u=req[1],req[2]
        r=tuple(enumerate(req))
        ch,_=max(((cc,e) for cc,e in recs if r[:len(cc)]==cc),key=lambda x:len(x[0]))
        if s in NEWSTYLE[lens]: c['AUTH(NewStyle sensor)']+=1
        elif u in PROTECTED_USECASES: c['video usecase 2/4']+=1
        elif len(ch)>=3: c['deeper mode node (stays Vivid)']+=1
        else: c['Natural']+=1
    print(lens,len(reqs),dict(c))
