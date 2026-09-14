"""Reference scales + real stock assets + original core/adaptive consumer replay."""
import json
import math
import struct
from itertools import product
from stock17_aec_harness import Stock17Meter, ROOT
from stock17_aec_assets import load_asset, records
from iq_native_harness import NativeIQ
from verify_m3_aec_parameters import floats, value
from unicorn.arm64_const import UC_ARM64_REG_X8


def main():
    port = NativeIQ(ROOT/'inputs/libphoenix_m3_aec-nodes.so')
    entry = next(s.value for s in port.binary.dynamic_symbols if s.name == 'm3_aec_histogram_nodes')
    raw, inputs, output = port.alloc(4096), port.alloc(28), port.alloc(368)
    reference = NativeIQ(ROOT/'inputs/reference/system/odm/lib64/libm256aecrelay.so')
    symbols = {s.name:s.value for s in reference.binary.symtab_symbols}
    scales_output = reference.alloc(56)
    cases, maximum = 0, 0
    changed = set()
    for index, record in enumerate(records()):
        original = Stock17Meter()
        load_asset(original, record)
        core, adaptive, common = original.alloc(92), original.alloc(88), original.alloc(48)
        lux_input = original.alloc(4)
        for counts in ([1]*1024, list(range(1024)), list(reversed(range(1024)))):
            _, info = original.histogram(counts)
            port.write(raw, '1024I', *counts)
            for lux in (100, 250, 450):
                for base_target, saturation_scale in product((20, 80, 160), (1, 1.6, 4)):
                    baseline = None
                    for enabled in (0, 1):
                        scale, base_scale = [1]*14, 1
                        if enabled:
                            floats(reference, [lux, *info[:3]])
                            reference.uc.reg_write(UC_ARM64_REG_X8, scales_output)
                            reference.call(symbols['m256_aec_m3_query_style_hist'])
                            scale = struct.unpack('<14f',reference.uc.mem_read(scales_output,56))
                            floats(reference, [lux, info[2]])
                            reference.call(symbols['m256_aec_m3_interp_2d'],
                                           reference.BASE+symbols['kM256M3StyleBaseLuxNode'],9,
                                           reference.BASE+symbols['kM256M3StyleBaseDrNode'],4,
                                           reference.BASE+symbols['kM256M3StyleBaseScale'])
                            base_scale = value(reference)
                        # This order is the stock internal style-scale layout, not labels.
                        original.write(original.obj+0xd560,'13f',scale[1],scale[2],scale[3],scale[4],
                                       scale[6],scale[5],*scale[7:])
                        original.write(original.obj+0xd4f0,'3f',*info[:3])
                        original.write(original.obj+0xcf98,'f',base_target*base_scale)
                        original.write(original.obj+0xcf80,'f',70)
                        original.write(original.obj+0x49,'2f',2,.5)
                        original.write(common+0x24,'f',saturation_scale)
                        original.write(core,'23f',*([0]*23))
                        original.write(adaptive,'22f',*([0]*22))
                        # Diagnostic output includes all interpolated curves, also for
                        # records whose adaptive consumer is disabled.
                        original.write(lux_input,'f',lux)
                        original.call(0x18cad0,original.obj,lux_input,original.obj+0xd4f0,
                                      original.tuning+0x3c88,original.obj+0x92)
                        floats(original,[lux])
                        original.call(0x184838,original.obj,original.processed_hist,common,core)
                        floats(original,[lux])
                        original.call(0x184ed8,original.obj,original.processed_hist,common,core,adaptive)
                        expected = info + struct.unpack('<14f',original.uc.mem_read(original.obj+0x5a,56))
                        expected += struct.unpack('<24f',original.uc.mem_read(original.obj+0x93,96))
                        expected += struct.unpack('<23f',original.uc.mem_read(core,92))
                        expected += struct.unpack('<22f',original.uc.mem_read(adaptive,88))
                        port.write(inputs,'6fI',lux,base_target,70,2,.5,saturation_scale,enabled)
                        port.write(output,'92f',*([0]*92))
                        port.call(entry,index,raw,inputs,output)
                        actual = struct.unpack('<92f',port.uc.mem_read(output,368))
                        for field,(a,e) in enumerate(zip(actual,expected)):
                            assert math.isfinite(a) and math.isclose(a,e,rel_tol=2e-6,abs_tol=1e-5), (index,cases,field,a,e)
                            maximum = max(maximum,abs(a-e))
                        if enabled:
                            if actual[68] != baseline[68]: changed.add('core')
                            if actual[80] != baseline[80]: changed.add('adaptive')
                        else:
                            baseline = actual
                        cases += 1
    assert changed == {'core','adaptive'},changed
    report={'records':len(records()),'cases':cases,'fields_per_case':92,'max_absolute_error':maximum,
            'saturation_scales':[1,1.6,4],
            'reference_changes_consumed':sorted(changed),
            'scope':'Original reference scales, all decoded rear-sensor assets, histogram sampling, core/adaptive consumers; no camera runtime integration claim'}
    (ROOT/'evidence/m3_aec_nodes_verification.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report))


if __name__ == '__main__':
    main()
