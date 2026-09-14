"""Execute the original ARM64 shading trigger offline using real M3 parameters.

The harness supplies the documented in-memory parameter tables and disabled
logging globals. No rendering/algorithm call is stubbed or replaced.
"""
from pathlib import Path
import json
import math
import struct
import lief
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2, UC_ARM64_REG_X3, UC_ARM64_REG_LR, UC_ARM64_REG_SP, UC_ARM64_REG_TPIDR_EL0, UC_ARM64_REG_PC
from decode_m3_parameters import ROOT, decode

LIB = ROOT / 'inputs/reference/system/odm/lib64/camera/plugins/com.xiaomi.plugin.leicam3filter.so'
PARAM = ROOT / 'inputs/reference/system/odm/etc/camera/leica_filter_param_m3.bin'
BASE = 0x100000
HEAP = 0x400000
STOP = 0x800000


def execute(lux, zoom, cct=5000):
    parsed = decode(PARAM)
    binary = lief.parse(str(LIB))
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    uc.mem_map(BASE, 0x40000)
    uc.mem_map(HEAP, 0x40000)
    uc.mem_map(STOP, 0x1000)
    for seg in binary.segments:
        if seg.type == lief.ELF.Segment.TYPE.LOAD:
            uc.mem_write(BASE + seg.virtual_address, bytes(seg.content))
    alloc_next = HEAP + 0x1000

    def allocate(size):
        nonlocal alloc_next
        start = alloc_next
        alloc_next += (size + 15) & ~15
        assert alloc_next < HEAP + 0x20000
        return start

    def write(addr, fmt, *args):
        uc.mem_write(addr, struct.pack('<' + fmt, *args))

    for reloc in binary.relocations:
        if reloc.type == lief.ELF.Relocation.TYPE.AARCH64_RELATIVE:
            old, = struct.unpack('<Q', uc.mem_read(BASE + reloc.address, 8))
            write(BASE + reloc.address, 'Q', BASE + (reloc.addend or old))
        elif reloc.has_symbol and 'gMiCam' in reloc.symbol.name:
            ptr = allocate(8)
            write(ptr, 'Q', 100 if 'LogLevel' in reloc.symbol.name else 0)
            write(BASE + reloc.address, 'Q', ptr)
        elif reloc.has_symbol and reloc.symbol.value:
            write(BASE + reloc.address, 'Q', BASE + reloc.symbol.value + reloc.addend)

    trigger = HEAP
    shading = allocate(parsed['shading_count'] * 32)
    uc.mem_write(shading, PARAM.read_bytes()[parsed['offsets']['shading']:])
    write(trigger + 0x48, 'Q', shading)
    # Force first trigger as in constructor's invalid cached index values.
    write(trigger + 8, '4H', 65535, 65535, 65535, 65535)
    nodes = [allocate(0x38) for _ in parsed['zooms']]
    sentinel = trigger + 0x70
    write(trigger + 0x68, '3Q', nodes[0], nodes[0], len(nodes))
    for i, (node, table) in enumerate(zip(nodes, parsed['zooms'])):
        rows = table['rows']
        row_ptr = allocate(len(rows) * 24)
        write(node, '3Q', 0, nodes[i + 1] if i + 1 < len(nodes) else 0, nodes[i - 1] if i else sentinel)
        write(node + 0x20, 'f', table['zoom'])
        write(node + 0x28, 'QH', row_ptr, len(rows))
        for j, row in enumerate(rows):
            cct_ptr = allocate(len(row['cct']) * 6)
            write(row_ptr + j * 24, '2H', row['low'], row['high'])
            write(row_ptr + j * 24 + 8, 'QH', cct_ptr, len(row['cct']))
            for k, entry in enumerate(row['cct']):
                write(cct_ptr + k * 6, '3H', entry['low'], entry['high'], entry['index'])
    arguments, output, changed = allocate(32), allocate(32), allocate(8)
    write(arguments, 'HHf', lux, cct, zoom)
    for reg, value in ((UC_ARM64_REG_X0, trigger), (UC_ARM64_REG_X1, arguments),
                       (UC_ARM64_REG_X2, output), (UC_ARM64_REG_X3, changed),
                       (UC_ARM64_REG_LR, STOP), (UC_ARM64_REG_SP, HEAP + 0x3f000),
                       (UC_ARM64_REG_TPIDR_EL0, HEAP + 0x3f800)):
        uc.reg_write(reg, value)
    def check_pc(uc, addr, size, user):
        if not BASE <= addr < BASE + 0x40000:
            raise RuntimeError(f'Unexpected execution outside original ELF: {addr:#x}')
    uc.hook_add(UC_HOOK_CODE, check_pc)
    try:
        uc.emu_start(BASE + 0x14a0c, STOP, count=100000)
    except Exception as error:
        raise RuntimeError(f'Native execution failed at {uc.reg_read(UC_ARM64_REG_PC):#x}') from error
    assert uc.reg_read(UC_ARM64_REG_PC) == STOP, 'Native function did not return'
    values = struct.unpack('<8f', uc.mem_read(output, 32))
    return dict(lux=lux, zoom=zoom, cct=cct, values=values, changed=uc.mem_read(changed, 1)[0])


if __name__ == '__main__':
    results = [execute(lux, zoom) for zoom in (0.6, 1, 2, 3, 4.3, 5, 10) for lux in (0, 210, 225, 240, 280, 330, 400, 999)]
    param = decode(PARAM)
    for sample in results:
        # Independent table interpretation: floor zoom bucket, hold within each
        # lux interval, interpolate only in the gaps. All M3 CCT rows cover 1..10000.
        zoom = struct.unpack('<f', struct.pack('<f', sample['zoom']))[0]
        bucket = max((z for z in param['zooms'] if z['zoom'] <= zoom), key=lambda z: z['zoom'])
        rows = bucket['rows']
        lux = sample['lux']
        low = next((r for r in rows if lux <= r['high']), rows[-1])
        high = low
        weight = 0.0
        if lux < low['low']:
            high = low
            low = rows[rows.index(high) - 1]
            weight = (lux - low['high']) / (high['low'] - low['high'])
        a = list(param['shading'][low['cct'][0]['index']].values())
        b = list(param['shading'][high['cct'][0]['index']].values())
        expected = [x * (1 - weight) + y * weight for x, y in zip(a, b)]
        assert all(math.isfinite(x) and math.isclose(x, y, rel_tol=1e-6, abs_tol=1e-7)
                   for x, y in zip(sample['values'], expected)), (sample, expected)
    (ROOT / 'evidence/native_shading_samples.json').write_text(json.dumps(results, indent=2) + '\n', encoding='utf-8')
    print(f'Executed original ARM64 shading trigger for {len(results)} samples; all match decoded table interpolation.')
