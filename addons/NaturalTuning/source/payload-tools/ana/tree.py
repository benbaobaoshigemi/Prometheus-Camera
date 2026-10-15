import sys,json;sys.path.insert(0,'G:/LEICA/rom18pm/ana')
def leaves(obj,ctl,path=()):
    """obj: decoded triggerType list; ctl: list of control var enum ints (one per depth)."""
    out=[]
    for node in obj:
        lab=(round(node['start'],4),round(node['end'],4))
        p=path+(lab,)
        if node['region']: out.append((p,node['region'][0]))
        if node['trigger']: out+=leaves(node['trigger'],ctl,p)
    return out
def core_of(inst):
    ks=[k for k in inst if k.endswith('_core')]
    if not ks: return None
    c=inst[ks[0]]
    tk=[k for k in c if k.endswith('_trigger_data')]
    return c[tk[0]] if tk else None
def ctl_names(t,inst,mod):
    cv=inst['control_variables']['control_var_type']
    # enum names from schema
    for m in t.mods:
        pass
    return cv
def flat(x,pre=''):
    if isinstance(x,dict):
        r={}
        for k,v in x.items(): r.update(flat(v,pre+k+'.'))
        return r
    if isinstance(x,list) and x and isinstance(x[0],dict):
        r={}
        for i,v in enumerate(x): r.update(flat(v,pre+'%d.'%i))
        return r
    return {pre[:-1]:x}
