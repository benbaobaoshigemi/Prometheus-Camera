import sys,base64
from elftools.elf.elffile import ELFFile
from Crypto.Cipher import AES
f='G:/LEICA/rom18pm/fs/vendor/lib64/libcom.xiaomi.camera.configmanager.so'
e=ELFFile(open(f,'rb')); raw=open(f,'rb').read()
def rd(v,n):
    for s in e.iter_segments():
        if s['p_type']=='PT_LOAD' and s['p_vaddr']<=v<s['p_vaddr']+s['p_filesz']: o=v-s['p_vaddr']+s['p_offset']; return raw[o:o+n]
KEY=rd(0x8e13,32)
def dec(path):
    t=open(path,'rb').read(); assert t.startswith(b'encrypted_data: ')
    b=base64.b64decode(t[16:].strip()); iv,ct=b[:16],b[16:]
    return bytes(c^KEY[i%len(KEY)] for i,c in enumerate(b))
if __name__=='__main__':
    print(KEY)
    sys.stdout.buffer.write(dec(sys.argv[1])[:3000])
