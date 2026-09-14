"""Compare the ported ARM64 AEC selectors with the original reference instructions."""
import json
import math
import random
import struct
from pathlib import Path
from unicorn.arm64_const import (UC_ARM64_REG_S0, UC_ARM64_REG_S1,
                                UC_ARM64_REG_S2, UC_ARM64_REG_S3, UC_ARM64_REG_X8)
from iq_native_harness import NativeIQ

ROOT = Path(__file__).resolve().parent


def floats(harness, values):
    for reg, value in zip((UC_ARM64_REG_S0, UC_ARM64_REG_S1,
                           UC_ARM64_REG_S2, UC_ARM64_REG_S3), values):
        harness.uc.reg_write(reg, struct.unpack('<I', struct.pack('<f', value))[0])


def value(harness):
    return struct.unpack('<f', struct.pack('<I', harness.uc.reg_read(UC_ARM64_REG_S0)))[0]


def main():
    original = NativeIQ(ROOT / 'inputs/reference/system/odm/lib64/libm256aecrelay.so')
    port = NativeIQ(ROOT / 'inputs/libphoenix_m3_aec-parameters.so')
    out_original, out_port = original.alloc(56), port.alloc(56)
    symbols = {s.name: s.value for s in original.binary.symtab_symbols}
    exports = {s.name: s.value for s in port.binary.dynamic_symbols}
    rng = random.Random(256)
    cases = [(lux, *ratios) for lux in (-20, 0, 50, 123, 173, 215, 265, 285, 310, 343, 423, 470, 523, 600)
             for ratios in ((0.5, 0.5, 0.25), (2, 2, 4), (4, 4, 16), (8, 8, 64), (128, 128, 16384))]
    cases += [(rng.uniform(-50, 650), rng.uniform(0.5, 128), rng.uniform(0.5, 128),
               rng.uniform(0.25, 16384)) for _ in range(200)]
    max_error = 0.0
    for args in cases:
        floats(original, args)
        original.uc.reg_write(UC_ARM64_REG_X8, out_original)
        original.call(symbols['m256_aec_m3_query_style_hist'])
        floats(port, args)
        port.call(exports['m3_aec_histogram_scale'], out_port)
        expected = struct.unpack('<14f', original.uc.mem_read(out_original, 56))
        actual = struct.unpack('<14f', port.uc.mem_read(out_port, 56))
        for i, (a, b) in enumerate(zip(expected, actual)):
            assert math.isfinite(b) and math.isclose(a, b, rel_tol=2e-7, abs_tol=1e-7), (args, i, a, b)
            max_error = max(max_error, abs(a - b))
    scalar_cases = 0
    for output, node_x, nx, node_y, ny, table in (
            ('m3_aec_base_scale', 'kM256M3StyleBaseLuxNode', 9, 'kM256M3StyleBaseDrNode', 4,
             'kM256M3StyleBaseScale'),
            ('m3_aec_dynamic_weight', 'kM256M3DynamicLuxNode', 9, 'kM256M3DynamicCenterNode', 8,
             'kM256M3DynamicWeight')):
        for lux, ratio, _, _ in cases:
            floats(original, (lux, ratio))
            original.call(symbols['m256_aec_m3_interp_2d'], original.BASE + symbols[node_x], nx,
                          original.BASE + symbols[node_y], ny, original.BASE + symbols[table])
            expected = value(original)
            floats(port, (lux, ratio))
            port.call(exports[output])
            actual = value(port)
            assert math.isfinite(actual) and math.isclose(expected, actual, rel_tol=2e-7, abs_tol=1e-7), (
                output, lux, ratio, expected, actual)
            max_error = max(max_error, abs(expected - actual))
            scalar_cases += 1
    assert not original.calls and not port.calls, (original.calls, port.calls)
    result = {'histogram_cases': len(cases), 'scalar_cases': scalar_cases,
              'max_absolute_error': max_error,
              'scope': 'ARM64 numeric selectors only; does not establish device ABI, gating or live AEC application.'}
    (ROOT / 'evidence/m3_aec_parameters_verification.json').write_text(
        json.dumps(result, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(result))


if __name__ == '__main__':
    main()
