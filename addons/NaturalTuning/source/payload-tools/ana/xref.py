import sys, numpy as np
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

f = sys.argv[1]; pats = sys.argv[2:]
raw = open(f, 'rb').read(); e = ELFFile(open(f, 'rb'))
segs = [(s['p_vaddr'], s['p_offset'], s['p_filesz']) for s in e.iter_segments() if s['p_type'] == 'PT_LOAD']
NUL = bytes(1)


def o2v(o):
    for va, of, sz in segs:
        if of <= o < of + sz:
            return va + o - of


targets = {}
for p in pats:
    i = -1
    while True:
        i = raw.find(p.encode(), i + 1)
        if i < 0:
            break
        st = i
        while st > 0 and raw[st - 1] != 0:
            st -= 1
        en = raw.index(NUL, i)
        v = o2v(st)
        if v is not None:
            targets[v] = raw[st:en].decode('latin1')
            targets.setdefault(o2v(i), raw[i:en].decode('latin1'))
print({hex(k): v for k, v in targets.items()})

for s in e.iter_sections():
    if isinstance(s, RelocationSection):
        for r in s.iter_relocations():
            a = r.entry.get('r_addend', None)
            if a in targets:
                print('reloc ptr at', hex(r['r_offset']), '->', targets[a])

text = e.get_section_by_name('.text'); base = text['sh_addr']
c = raw[text['sh_offset']:text['sh_offset'] + text['sh_size']]
w = np.frombuffer(c[:len(c) // 4 * 4], '<u4')
for i in np.nonzero((w & 0x9F000000) == 0x90000000)[0]:
    ins = int(w[i]); rd = ins & 31
    imm = ((((ins >> 5) & 0x7FFFF) << 2) | ((ins >> 29) & 3))
    if imm & (1 << 20):
        imm -= 1 << 21
    pc = base + int(i) * 4; page = (pc & ~0xFFF) + (imm << 12)
    for j in range(i + 1, min(i + 40, len(w))):
        a = int(w[j])
        if (a & 0xFFC00000) == 0x91000000 and ((a >> 5) & 31) == rd:
            v = page + ((a >> 10) & 0xFFF)
            if v in targets:
                print('code ref at', hex(pc), '->', targets[v])
            break
