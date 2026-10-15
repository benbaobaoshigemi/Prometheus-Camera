import sys,collections
ARGS=[]
exec(open('deep_final.py').read().split('out = {}')[0])
for lens,f in LENS.items():
    o=open(ROOT+f,'rb').read(); tree=mode_tree(o); ents,_=parse_entries(o)
    reqs=set()
    for i in range(len(tree)):
        if tree[i][2]!=4: continue
        d=dict(normalized_chain(tree,i))
        if 1 in d: reqs.add(tuple(d.get(k,0) for k in range(7)))
    recs=[(normalized_chain(tree,e.mode),e) for e in ents if e.name=='gamma15_ipe_v2']
    c=collections.Counter()
    for req in reqs:
        if req[1] in NEWSTYLE[lens] or req[2] in PROTECTED_USECASES: continue
        r=tuple(enumerate(req)); ch,_=max(((cc,e) for cc,e in recs if r[:len(cc)]==cc),key=lambda x:len(x[0]))
        names={k:NAMES14[k][v] for k,v in enumerate(req) if k>=2}
        if len(ch)<3 and klass(names,'')=='V_video_or_thirdparty': c['/'.join(names[k] for k in (2,3,4))]+=1
    print(lens,sum(c.values()),c.most_common(8))
