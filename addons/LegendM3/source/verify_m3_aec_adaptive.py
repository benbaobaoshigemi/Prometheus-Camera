"""Execute stock histogram/adaptive consumer with explicit interpolated tuning."""
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
    address = stock.BASE + 0x18cad0
    stock.uc.hook_add(UC_HOOK_CODE, stock._skip_log, begin=address, end=address)
    common, core, result = stock.alloc(48), stock.alloc(92), stock.alloc(88)
    stock.write(common + 0x24, 'f', 1)
    stock.write(stock.obj + 0x93, '4f', .8, 1, 0, .2)
    for offset in (0x4f38, 0x4f20, 0x5130, 0x5118):
        stock.set_vector(stock.tuning + offset, [0, 1000])
    port = NativeIQ(ROOT/'inputs/libphoenix_m3_aec-adaptive.so')
    entry = next(s.value for s in port.binary.dynamic_symbols if s.name == 'm3_aec_adaptive_adjustment')
    inputs, actual_result = port.alloc(88), port.alloc(88)
    rng = random.Random(256)
    histograms = [[0]*1024, [1]*1024, list(range(1024)), list(reversed(range(1024)))]
    histograms += [[rng.randrange(10000) for _ in range(1024)] for _ in range(6)]
    cases, maximum = 0, 0
    branches = set()
    for counts in histograms:
        _, info = stock.histogram(counts)
        tones = [info[7], info[3]]
        for index in range(80):
            targets = [rng.uniform(.1, 255), rng.uniform(.1, 255)]
            bright_cap, dark_cap = rng.uniform(.1, 1), rng.uniform(.1, 1)
            base = rng.uniform(.3, 4)
            high, low, weight = rng.uniform(.5, 4), rng.uniform(.1, 1.5), rng.random()
            thresholds = [.4, .8, 1.2, 1.6, 2, 3, rng.uniform(.8, 2)]
            limit, high_scale, low_scale = rng.uniform(1, 4), rng.uniform(.7, 1.5), rng.uniform(.7, 1.5)
            enabled, extra = int(index != 0), index % 2
            stock.write(stock.tuning + 0x3c88, 'B', enabled)
            stock.write(stock.tuning + 0x4f18, 'B', extra)
            stock.write(stock.obj + 0xab, 'f', targets[0])
            stock.write(stock.obj + 0xb3, 'f', targets[1])
            stock.write(stock.obj + 0xb7, '7f', *thresholds)
            stock.write(stock.obj + 0xdf, '5f', dark_cap, bright_cap, weight, high, low)
            stock.write(stock.obj + 0xce10, 'f', base)
            for offset, number in ((0x4ff8, limit), (0x5148, high_scale), (0x5160, low_scale)):
                # Original 0x17ecf8 consumes vector<vector<float>>, not a flat grid.
                rows = stock.alloc(48)
                stock.set_vector(rows, [number]*2)
                stock.set_vector(rows + 24, [number]*2)
                stock.write(stock.tuning + offset, '3Q', rows, rows + 48, rows + 48)
            stock.write(result, '22f', *([-77.0]*22))
            port.write(actual_result, '22f', *([-77.0]*22))
            floats(stock, [184])
            stock.call(0x184ed8, stock.obj, stock.processed_hist, common, core, result)
            port.write(inputs, '20f2I', *tones, *targets, bright_cap, dark_cap, base,
                       high, low, weight, *thresholds, limit, high_scale, low_scale, enabled, extra)
            port.call(entry, inputs, actual_result)
            expected = struct.unpack('<22f', stock.uc.mem_read(result, 88))
            actual = struct.unpack('<22f', port.uc.mem_read(actual_result, 88))
            for field, (a, e) in enumerate(zip(actual, expected)):
                assert math.isfinite(a) and math.isclose(a, e, rel_tol=2e-6, abs_tol=1e-5), (
                    cases, field, a, e)
                maximum = max(maximum, abs(a-e))
            branches.add('increase' if actual[12] > 1 else 'decrease' if actual[12] < 1 else 'neutral')
            cases += 1
    assert branches == {'increase', 'decrease', 'neutral'}, branches
    report = {'cases': cases, 'max_absolute_error': maximum, 'adjustment_branches': sorted(branches),
              'stock_library': str(STOCK), 'stock_consumer': '0x184ed8',
              'scope': 'Adaptive consumer with explicit tuning; original histogram sampling and 2D interpolation; no device integration claim'}
    (ROOT/'evidence/m3_aec_adaptive_verification.json').write_text(json.dumps(report, indent=2)+'\n', encoding='utf-8')
    print(json.dumps(report))


if __name__ == '__main__':
    main()
