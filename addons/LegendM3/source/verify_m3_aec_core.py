"""Compare core histogram adjustment with the original 17U consumer.

Only GetFrameSATuningData is bypassed to supply explicit interpolated tuning.
Histogram preprocessing, tone sampling and the consumer execute stock ARM64.
This does not verify selection of runtime tuning or device integration.
"""
import json
import math
import random
import struct
from unicorn import UC_HOOK_CODE
from stock17_aec_harness import Stock17Meter, ROOT, STOCK
from iq_native_harness import NativeIQ
from verify_m3_aec_parameters import floats


def main():
    stock = Stock17Meter()
    address = stock.BASE + 0x189e70
    stock.uc.hook_add(UC_HOOK_CODE, stock._skip_log, begin=address, end=address)
    result = stock.alloc(92)
    common = stock.alloc(48)
    stock.write(common + 0x24, 'f', 1)
    # Four original percentile ranges: BL 80–100%, BH 60–80%, DL 0–20%, DH 20–40%.
    for offset, v in ((0x5a, .8), (0x62, 1), (0x5e, .6), (0x66, .8),
                      (0x6a, 0), (0x6e, .2), (0x72, .2), (0x76, .4)):
        stock.write(stock.obj + offset, 'f', v)
    port = NativeIQ(ROOT/'inputs/libphoenix_m3_aec-core.so')
    entry = next(s.value for s in port.binary.dynamic_symbols if s.name == 'm3_aec_core_adjustment')
    inputs, actual_result = port.alloc(56), port.alloc(92)
    rng = random.Random(256)
    histograms = [[0]*1024, [1]*1024, list(range(1024)), list(reversed(range(1024)))]
    histograms += [[rng.randrange(10000) for _ in range(1024)] for _ in range(6)]
    cases = 0
    maximum = 0
    branches = set()
    for counts in histograms:
        _, info = stock.histogram(counts)
        tones = [info[7], info[6], info[3], info[4]]
        for _ in range(40):
            targets = [rng.uniform(.1, 255) for _ in range(4)]
            caps = [rng.uniform(.2, 3), rng.uniform(.1, 2)]
            base_target, luma = rng.uniform(1, 180), rng.uniform(1, 180)
            high, low = rng.uniform(.5, 4), rng.uniform(.1, 1.5)
            stock.write(stock.obj + 0x7a, '6f', *targets, *caps)
            stock.write(stock.obj + 0xcf98, 'f', base_target)
            stock.write(stock.obj + 0xcf80, 'f', luma)
            stock.write(stock.obj + 0x49, '2f', high, low)
            floats(stock, [184])
            expected_status = stock.call(0x184838, stock.obj, stock.processed_hist, common, result)
            port.write(inputs, '14f', *tones, *targets, *caps, base_target, luma, high, low)
            actual_status = port.call(entry, inputs, actual_result)
            assert actual_status == expected_status, (cases, actual_status, expected_status)
            if actual_status:
                expected = struct.unpack('<23f', stock.uc.mem_read(result, 92))
                actual = struct.unpack('<23f', port.uc.mem_read(actual_result, 92))
                for field, (a, e) in enumerate(zip(actual, expected)):
                    assert math.isfinite(a) and math.isclose(a, e, rel_tol=2e-6, abs_tol=1e-5), (
                        cases, field, a, e)
                    maximum = max(maximum, abs(a-e))
                branches.add('increase' if actual[21] > 1 else 'decrease' if actual[21] < 1 else 'neutral')
            cases += 1
    assert branches == {'increase', 'decrease', 'neutral'}, branches
    report = {'cases': cases, 'max_absolute_error': maximum, 'adjustment_branches': sorted(branches),
              'stock_library': str(STOCK), 'stock_consumer': '0x184838',
              'scope': 'Core consumer with explicit interpolated tuning and actual stock histogram sampling; no runtime integration claim'}
    (ROOT/'evidence/m3_aec_core_verification.json').write_text(json.dumps(report, indent=2)+'\n', encoding='utf-8')
    print(json.dumps(report))


if __name__ == '__main__':
    main()
