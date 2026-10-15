from run4 import *
def bufs_for(mod):
    r=bytearray(base); mod(r); return run_region(bytes(r))
b0=bufs_for(lambda r:None)
def lce(s,pos=None,neg=None):
    def m(r):
        if pos is not None: struct.pack_into('<17f',r,130*4,*pos)
        if neg is not None: struct.pack_into('<17f',r,147*4,*neg)
        struct.pack_into('<f',r,168*4,s)
    return m
P=np.array([200,200,200,300,400,500,550,550,550,550,550,550,550,500,400,300,200],np.float32)
base_lce=np.frombuffer(bytes(base),np.float32)[168]
print('base lce strength',base_lce, 'pos curve', np.frombuffer(bytes(base),np.float32)[130:147].tolist())
for nm,mod in (('s=0',lce(0.0)),('s=1.0',lce(1.0)),('s=2.0',lce(2.0)),('pos*2 s=1',lce(1.0,P*2)),('pos+100 s=1',lce(1.0,P+100)),('neg*2,s=1',lce(1.0,None,P*2))):
    b=bufs_for(mod)
    diff={hex(k):int((np.frombuffer(b[k],np.int16)!=np.frombuffer(b0[k],np.int16)).sum()) for k in b}
    print(nm,diff)
print('----decode')
for nm,mod in (('base',lambda r:None),('s=1',lce(1.0)),('s=2',lce(2.0)),('pos*2',lce(1.0,P*2))):
    b=bufs_for(mod); v=np.frombuffer(b[0x70],np.int16)[:48]; print(nm,v.tolist())
