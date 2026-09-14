"""Execute compiled Mivi provider/vtable and request marshalling on ARM64.

External host registration, metadata and Monopan boundaries are recorded; this
test does not claim to execute Monopan or the real camera host.
"""
from pathlib import Path
import json
import struct
from iq_native_harness import NativeIQ
from unicorn.arm64_const import UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2, UC_ARM64_REG_X8, UC_ARM64_REG_LR, UC_ARM64_REG_PC

ROOT = Path(__file__).resolve().parent


class Host(NativeIQ):
    def __init__(self):
        super().__init__(ROOT / 'inputs/com.xiaomi.plugin.m3grain.so')
        self.provider = 0
        self.mode = 256
        self.handle = self.alloc(16)
        self.closed = 0
        self.algorithm_result = 0
        self.processes = []

    def q(self, p):
        return struct.unpack('<Q', self.uc.mem_read(p, 8))[0]

    def invoke(self, obj, offset, *args):
        vtable = self.q(obj)
        return self.call(self.q(vtable + offset) - self.BASE, obj, *args)

    def _external(self, uc, address, size, data):
        name = self.imports[address]
        a = [uc.reg_read(r) for r in (UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2)]
        if name == '_Znwm':
            uc.reg_write(UC_ARM64_REG_X0, self.alloc(a[0]))
        elif name == '_ZdlPv':
            pass  # Host allocator bookkeeping has no C++ destructor side effect.
        elif name == '_ZN7mialgo215ProviderManager3addEPNS_8ProviderE':
            self.provider = a[1]
            uc.reg_write(UC_ARM64_REG_X0, 1)
        elif name == '_ZNK10MiMetadata4findEPKc':
            value = self.alloc(4, struct.pack('<i', self.mode))
            # Device MiMetadata::find return bytes: tag +0, int32 type +8,
            # count +16, pointer +24 (m3_110_gate.jsonl and b63c..b664).
            self.write(uc.reg_read(UC_ARM64_REG_X8), 'IIIIQQ', 0x81df0000, 0, 1, 0, 1, value)
        elif name == 'MonopanInit':
            self.config = bytes(uc.mem_read(a[0], 168))
            uc.reg_write(UC_ARM64_REG_X0, self.handle)
        elif name == 'MonopanProcess':
            if a[0] != self.handle:
                raise AssertionError('Monopan received wrong handle')
            self.processes.append([bytes(uc.mem_read(p, 112)) for p in a[1:]])
            uc.reg_write(UC_ARM64_REG_X0, self.algorithm_result & 0xffffffff)
        elif name == 'MonopanDeinit':
            if self.q(a[0]) != self.handle:
                raise AssertionError('Deinit did not receive pointer to owned handle')
            self.write(a[0], 'Q', 0)
            self.closed += 1
        elif name == '__android_log_print':
            uc.reg_write(UC_ARM64_REG_X0, 0)
        else:
            return super()._external(uc, address, size, data)
        uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_LR))

    def string(self, obj, slot):
        out = self.alloc(24)
        self.uc.reg_write(UC_ARM64_REG_X8, out)
        self.invoke(obj, slot)
        raw = bytes(self.uc.mem_read(out, 24))
        if raw[0] & 1:
            size, pointer = struct.unpack_from('<QQ', raw, 8)
            return bytes(self.uc.mem_read(pointer, size)).decode()
        return raw[1:1 + (raw[0] >> 1)].decode()

    def image(self):
        image = self.alloc(0x98)
        y, uv = self.alloc(128, bytes([80]) * 128), self.alloc(128, bytes([33]) * 128)
        self.write(image, '3I', 0x23, 8, 4)
        self.write(image + 0x1c, '2I', 16, 8)
        self.write(image + 0x48, '4I', 2, 11, 12, 0)
        self.write(image + 0x58, '2Q', y, uv)
        return image, y, uv

    def map(self, address, image):
        node = self.alloc(0x40)
        self.write(address, '3Q', node, node, 1)
        self.write(node, '3QB', 0, 0, address + 8, 1)
        self.write(node + 0x20, 'I', 0)
        self.write(node + 0x28, '3Q', image, image + 0x98, image + 0x98)


def main():
    host = Host()
    connect = host.binary.get_dynamic_symbol('connect')
    assert host.call(connect.value, host.alloc(64)) == 1
    provider = host.provider
    assert host.invoke(provider, 0x10) == 1
    assert host.string(provider, 0x18) == 'PluginWraper'
    assert host.string(provider, 0x28) == 'com.xiaomi.plugin.m3grain'
    plugin = host.invoke(provider, 0x20)
    params = host.alloc(0x48)
    host.write(params, 'Q', host.alloc(8))
    for mode in (163, 167, 256, 0):
        host.mode = mode
        assert host.invoke(plugin, 0x40, params) == (mode == 256)
    assert host.invoke(plugin, 0, host.alloc(0x80), host.alloc(0x40)) == 0
    assert struct.unpack_from('<I', host.config)[0] == 20
    assert struct.unpack_from('<f', host.config, 152)[0] == 1.
    request = host.alloc(0x80)
    input_image, input_y, input_uv = host.image()
    output_image, output_y, output_uv = host.image()
    host.map(request, input_image)
    host.map(request + 0x18, output_image)
    assert host.invoke(plugin, 0x10, request) == 0
    a, b = host.processes[-1]
    assert struct.unpack_from('<4I', a) == (2000, 8, 4, 2)
    assert struct.unpack_from('<2Q', a, 64) == (input_y, input_uv)
    assert struct.unpack_from('<2Q', b, 64) == (output_y, output_uv)
    uv = bytes(host.uc.mem_read(output_uv, 128))
    assert uv[:8] == bytes([128]) * 8 and uv[8:16] == bytes([33]) * 8
    assert uv[16:24] == bytes([128]) * 8 and uv[24:] == bytes([33]) * 104
    host.uc.mem_write(output_uv, bytes([33]) * 128)
    host.algorithm_result = -7
    assert host.invoke(plugin, 0x10, request) & 0xffffffff == 0xfffffff9
    assert bytes(host.uc.mem_read(output_uv, 128)) == bytes([33]) * 128
    assert host.invoke(plugin, 0x18, request) & 0xffffffff == (-(95)) & 0xffffffff
    host.invoke(plugin, 0x38)
    host.invoke(plugin, 0x58)
    assert host.closed == 1
    result = dict(provider_abi=True, module_256_gate=True, request_v1_vectors=True,
                  original_config=True, error_preserved=-7, uv_padding_preserved=True,
                  v2_rejected=True, released_once=True,
                  scope='Compiled plugin ARM64 at recorded external boundaries; real host and GPU not executed')
    (ROOT / 'evidence/grain_plugin_abi.json').write_text(json.dumps(result, indent=2) + '\n')
    print('Compiled grain plugin: provider, Mivi V1, mode gate, failure propagation and ownership passed')


if __name__ == '__main__':
    main()
