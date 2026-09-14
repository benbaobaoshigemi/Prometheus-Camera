"""Execute the stock 17 Ultra grid meter with the nominated M3 reference tables.

Only diagnostic logging is suppressed; grid metering executes original ARM64.
No algorithm object or library from this harness is installed on the device.
"""
import json
import struct
from pathlib import Path
from unicorn import UC_HOOK_CODE
from unicorn.arm64_const import UC_ARM64_REG_S0, UC_ARM64_REG_PC, UC_ARM64_REG_LR, UC_ARM64_REG_X0
from iq_native_harness import NativeIQ

ROOT = Path(__file__).resolve().parent
STOCK = Path('<SOURCE_ROOT>/_work/17u_rootfs/odm/lib64/camera/components/libmiaec.so')


class Stock17Meter(NativeIQ):
    def __init__(self):
        super().__init__(STOCK)
        for symbol in self.binary.dynamic_symbols:
            if symbol.value and 'MI_LOG_HELPER' in symbol.name:
                address = self.BASE + symbol.value
                self.uc.hook_add(UC_HOOK_CODE, self._skip_log, begin=address, end=address)
        self.tables = json.loads((ROOT / 'evidence/m3_aec_tables.json').read_text())
        self.obj = self.alloc(0xd800)
        self.tuning = self.alloc(0x6700)
        self.grid = self.alloc(256 * 28)
        self.output = self.alloc(4)
        self.center = self.alloc(24)
        self.write(self.obj + 0x488, 'Q', self.tuning)
        # Reference relay: enable weighted adjustment and bright adjustment;
        # disable dark adjustment, clamp = 220, semantic contribution disabled.
        self.write(self.tuning + 0x64b8, 'BBB', 1, 1, 0)
        self.write(self.tuning + 0x64bc, 'f', 220)
        for offset, name in ((0x64c0, 'WeightLuxNode'), (0x64d8, 'DarkStart'),
                             (0x64f0, 'DarkEnd'), (0x6508, 'BrightStart'),
                             (0x6520, 'BrightEnd'), (0x6538, 'DarkWeight'),
                             (0x6550, 'BrightWeight'), (0x6568, 'CenterTable'),
                             (0x6580, 'SpotTable')):
            self.set_vector(self.tuning + offset, self.tables['kM256M3' + name]['values'])
        self.set_vector(self.center, self.tables['kM256M3CenterTable']['values'])
        self.raw_hist = self.alloc(0x60)
        self.hist_counts = self.alloc(4096)
        self.processed_hist = self.alloc(0x558)
        self.hist_info = self.alloc(0x30)
        self.white_balance = self.alloc(0x40)
        self.write(self.raw_hist, 'IIQ', 1, 1024, self.hist_counts)
        self.write(self.raw_hist + 0x28, 'I', 5)  # Y channel
        self.set_vector(self.processed_hist + 8, [0] * 1024)
        self.set_vector(self.processed_hist + 0x50, [0] * 1024)

    @staticmethod
    def _skip_log(uc, address, size, data):
        uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_LR))

    def _external(self, uc, address, size, data):
        if self.imports.get(address) == '__strrchr_chk':
            pointer = uc.reg_read(UC_ARM64_REG_X0)
            raw = bytes(uc.mem_read(pointer, 42)).split(b'\0', 1)[0]
            uc.reg_write(UC_ARM64_REG_X0, pointer + raw.rindex(b'/'))
            uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_LR))
            return
        super()._external(uc, address, size, data)

    def set_vector(self, address, values):
        data = struct.pack('<' + 'f' * len(values), *values)
        pointer = self.alloc(len(data), data)
        self.write(address, 'QQQ', pointer, pointer + len(data), pointer + len(data))

    def weighted(self, grid, lux, scale=1.0):
        assert len(grid) == 256
        for index, luma in enumerate(grid):
            self.write(self.grid + index * 28, '7f', luma, 0, 0, 0, 0, 0, 0)
        self.write(self.obj + 0xcf88, 'f', lux)
        self.uc.reg_write(UC_ARM64_REG_S0, struct.unpack('<I', struct.pack('<f', scale))[0])
        self.call(0x175adc, self.obj, self.grid, self.output, 1, 0, 0, 0, self.center)
        return struct.unpack('<f', struct.pack('<I', self.uc.reg_read(UC_ARM64_REG_S0)))[0]

    def histogram(self, counts):
        assert len(counts) == 1024
        self.write(self.hist_counts, '1024I', *counts)
        # Execute both stock preprocessing and its complete dynamic-range routine.
        status = self.call(0x196f0c, self.obj + 0x10, self.raw_hist, self.processed_hist)
        assert status == 1, status
        status = self.call(0x172dc4, self.obj, 0, self.processed_hist, self.white_balance, self.hist_info)
        values = struct.unpack('<12f', self.uc.mem_read(self.hist_info, 48))
        return status, values[:3] + values[6:]


if __name__ == '__main__':
    meter = Stock17Meter()
    print({'constant_grid_luma': meter.weighted([50.0] * 256, 184), 'imports': meter.calls})
