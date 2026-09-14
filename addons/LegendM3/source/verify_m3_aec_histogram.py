"""Compare full Y histogram preprocessing and tone ratios against stock 17U ARM64."""
import json
import math
import random
import struct
from pathlib import Path
from iq_native_harness import NativeIQ
from stock17_aec_harness import Stock17Meter, STOCK
from verify_m3_aec_parameters import floats, value

ROOT=Path(__file__).resolve().parent


def main():
    original=Stock17Meter()
    port=NativeIQ(ROOT/'inputs/libphoenix_m3_aec-parameters.so')
    function=next(s.value for s in port.binary.dynamic_symbols if s.name=='m3_aec_histogram_info')
    raw=port.alloc(4096)
    output=port.alloc(36)
    range_function=next(s.value for s in port.binary.dynamic_symbols if s.name=='m3_aec_histogram_tones')
    range_input, range_output=port.alloc(80), port.alloc(40)
    rng=random.Random(256)
    cases=[[0]*1024,[1]*1024,list(range(1024)),list(reversed(range(1024))) ]
    for index in (0,1,2,511,512,1022,1023):
        counts=[0]*1024; counts[index]=3145728; cases.append(counts)
    cases += [[rng.randrange(10000) for _ in range(1024)] for _ in range(20)]
    trace=json.loads((ROOT/'evidence/device_xcore_hist.json').read_text())
    cases += [x['payload']['counts'] for x in trace if x.get('payload',{}).get('event')=='hist']
    max_error=0
    range_cases=0
    for index,counts in enumerate(cases):
        expected_status,expected=original.histogram(counts)
        port.write(raw,'1024I',*counts)
        status=port.call(function,raw,output)
        actual=struct.unpack('<9f',port.uc.mem_read(output,36))
        assert status==expected_status,(index,status,expected_status)
        for field,(a,e) in enumerate(zip(actual,expected)):
            assert math.isfinite(a) and math.isclose(a,e,rel_tol=2e-6,abs_tol=1e-5),(index,field,a,e)
            max_error=max(max_error,abs(a-e))
        ranges=[(0,1),(.0001,.9999),(.01,.02),(.98,.99),(.4999,.5001)]
        ranges += [tuple(sorted((rng.random(),rng.random()))) for _ in range(5)]
        port.write(range_input,'20f',*(x for pair in ranges for x in pair))
        port.call(range_function,raw,range_input,len(ranges),range_output)
        samples=struct.unpack('<10f',port.uc.mem_read(range_output,40))
        for pair,a in zip(ranges,samples):
            floats(original,pair)
            original.call(0x181b3c,original.obj,original.processed_hist,original.white_balance)
            e=value(original)
            assert math.isfinite(a) and math.isclose(a,e,rel_tol=2e-6,abs_tol=1e-5),(index,pair,a,e)
            max_error=max(max_error,abs(a-e))
            range_cases+=1
    report={'cases':len(cases),'max_absolute_error':max_error,'executor':str(STOCK),
            'arbitrary_percentile_range_cases':range_cases,
            'functions':['0x196f0c','0x172dc4','0x181b3c','0x1986e0'],
            'scope':'Original histogram preprocessing, six tone means and three ratios; Y channel, 1024 bins',
            'original_imports':sorted(set(original.calls)), 'port_imports':sorted(set(port.calls))}
    (ROOT/'evidence/m3_aec_histogram_verification.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(report))


if __name__=='__main__':
    main()
