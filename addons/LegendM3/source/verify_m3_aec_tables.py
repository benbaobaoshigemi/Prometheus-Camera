"""Extract M3-only AEC tables and execute their original ARM64 selector."""
from pathlib import Path
import json,struct,math
from elftools.elf.elffile import ELFFile
from unicorn.arm64_const import UC_ARM64_REG_X8,UC_ARM64_REG_S0,UC_ARM64_REG_S1,UC_ARM64_REG_S2,UC_ARM64_REG_S3
from iq_native_harness import NativeIQ
R=Path(__file__).resolve().parent
SOURCE=R/'inputs/reference/system/odm/lib64/libm256aecrelay.so'

def main():
 tables={}
 with SOURCE.open('rb') as f:
  e=ELFFile(f)
  for symbol in e.get_section_by_name('.symtab').iter_symbols():
   name=symbol.name
   if not name.startswith(('kM256M3','kM256TeleM3','kM256UltraM3')): continue
   at,size=symbol['st_value'],symbol['st_size']
   section=e.get_section(symbol['st_shndx']);raw=section.data()[at-section['sh_addr']:at-section['sh_addr']+size]
   assert len(raw)==size and size%4==0
   values=struct.unpack('<'+'f'*(size//4),raw)
   assert all(math.isfinite(v) for v in values),name
   tables[name]={'address':hex(at),'bytes':size,'values':values}
 (R/'evidence/m3_aec_tables.json').write_text(json.dumps(tables,indent=2),encoding='utf-8')
 h=NativeIQ(SOURCE); out=h.alloc(56);cases=[]
 for lux in [0,50,123,173,215,265,285,310,423,523,600]:
  for ratios in [(2,2,4),(4,4,16),(8,8,64)]:
   for reg,value in zip([UC_ARM64_REG_S0,UC_ARM64_REG_S1,UC_ARM64_REG_S2,UC_ARM64_REG_S3],(lux,*ratios)):
    h.uc.reg_write(reg,struct.unpack('<I',struct.pack('<f',value))[0])
   h.uc.reg_write(UC_ARM64_REG_X8,out)
   h.call(0x16598)
   values=struct.unpack('<14f',h.uc.mem_read(out,56))
   assert all(math.isfinite(v) and v>0 for v in values),(lux,ratios,values)
   valid=h.call(0x16a54,out)
   assert valid&1,(lux,ratios,values)
   cases.append({'lux':lux,'ratios':ratios,'scales':values,'original_validation':True})
 assert any(any(abs(v-1)>1e-5 for v in x['scales']) for x in cases)
 assert not h.calls,h.calls
 result={'source':str(SOURCE),'tables':len(tables),'float_values':sum(len(x['values']) for x in tables.values()),'cases':cases,'scope':'Original M3 AEC table selection and validation only; no live exposure or target ABI equivalence claim.'}
 (R/'evidence/m3_aec_execution.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
 print('M3 AEC tables:',result['tables'],'float values:',result['float_values'],'original ARM64 cases:',len(cases))
 print('Example:',cases[16])
if __name__=='__main__':main()
