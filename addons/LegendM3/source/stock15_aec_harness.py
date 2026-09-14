"""Execute the exact 15U AEC ELF required by the nominated reference relay."""
from unicorn import UC_HOOK_CODE
from iq_native_harness import NativeIQ
from stock17_aec_harness import Stock17Meter, ROOT


class Stock15Aggregation(Stock17Meter):
    def __init__(self):
        NativeIQ.__init__(self, ROOT / 'inputs/stock15-aec/libmiaec.so')
        for symbol in self.binary.dynamic_symbols:
            if symbol.value and 'MI_LOG_HELPER' in symbol.name:
                address = self.BASE + symbol.value
                self.uc.hook_add(UC_HOOK_CODE, self._skip_log, begin=address, end=address)
        self.obj = self.alloc(0x10000)
        self.tuning = self.alloc(0x10000)
        self.write(self.obj + 0x488, 'Q', self.tuning)
        # Inputs in the symbol's declared order, followed by its output pointer.
        self.args = [self.obj] + [self.alloc(256) for _ in range(11)]

    def aggregate(self):
        self.write(self.HEAP + 0x3f0000, '4Q', *self.args[8:])
        return self.call(0x142f18, *self.args[:8])
