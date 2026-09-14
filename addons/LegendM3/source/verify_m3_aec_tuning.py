"""Compare all decoded core/adaptive tuning records with original interpolation."""
import json
import math
import random
import struct
from stock17_aec_harness import Stock17Meter, ROOT
from stock17_aec_assets import load_asset, records
from iq_native_harness import NativeIQ
from verify_m3_aec_parameters import floats


def main():
    port = NativeIQ(ROOT/'inputs/libphoenix_m3_aec-tuning.so')
    entry = next(s.value for s in port.binary.dynamic_symbols if s.name == 'm3_aec_stock_tuning')
    info, core_port, adaptive_port = port.alloc(36), port.alloc(56), port.alloc(96)
    rng = random.Random(256)
    maximum, cases = 0, 0
    for index, record in enumerate(records()):
        original = Stock17Meter()
        load_asset(original, record)
        lux_ptr, dynamic_ptr, core, adaptive = [original.alloc(n) for n in (4, 12, 57, 97)]
        samples = [(lux, 3, 7, 21) for lux in (-20, 0, 123, 173, 184, 215, 343, 423, 523, 600)]
        samples += [(rng.uniform(-20, 600), rng.uniform(.5, 10), rng.uniform(.5, 15), rng.uniform(1, 350)) for _ in range(20)]
        for lux, bm, md, bd in samples:
            original.write(lux_ptr, 'f', lux)
            original.write(dynamic_ptr, '3f', bm, md, bd)
            original.call(0x189e70, original.obj, lux_ptr, dynamic_ptr, original.tuning+0x3ad0, core)
            original.call(0x18cad0, original.obj, lux_ptr, dynamic_ptr, original.tuning+0x3c88, adaptive)
            expected = struct.unpack('<14f', original.uc.mem_read(core+1,56)) + struct.unpack('<24f', original.uc.mem_read(adaptive+1,96))
            port.write(info, '3f', bm, md, bd)
            floats(port, [lux])
            port.call(entry, index, info, core_port, adaptive_port)
            actual = struct.unpack('<14f',port.uc.mem_read(core_port,56)) + struct.unpack('<24f',port.uc.mem_read(adaptive_port,96))
            for field,(a,e) in enumerate(zip(actual,expected)):
                assert math.isfinite(a) and math.isclose(a,e,rel_tol=2e-6,abs_tol=1e-5), (index,cases,field,a,e)
                maximum = max(maximum,abs(a-e))
            cases += 1
    report = {'records':len(records()), 'cases':cases, 'fields_per_case':38,
              'max_absolute_error':maximum,
              'scope':'All decoded original 17U main-sensor core/adaptive curves; runtime record selection and reference scales tested separately'}
    (ROOT/'evidence/m3_aec_tuning_verification.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report))


if __name__ == '__main__':
    main()
