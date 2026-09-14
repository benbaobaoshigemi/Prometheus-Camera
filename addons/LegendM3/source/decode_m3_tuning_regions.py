"""Read length-delimited V6 trigger/region records for M3 color/tone nodes."""
from pathlib import Path
import json
import struct

ROOT = Path(__file__).resolve().parent
INPUT = Path('<SOURCE_ROOT>/_work/17u_rootfs/odm/lib64/camera/com.qti.tuned.nezha_ofilm_ovx10500u_wide_ii.bin')
NAMES = {'cc15_ipe_v2', 'cv122_ipe_v2', 'gamma152_ipe_v2', 'ltm21_ipe_v2', 'tdl13_ipe_v2'}


class V6Regions:
    def __init__(self, path=INPUT):
        self.data = path.read_bytes()
        count, = struct.unpack_from('<I', self.data, 0xa4)
        self.sections = {kind: (offset, size) for kind, offset, size in struct.iter_unpack('<3I', self.data[0xa8:0xa8+12*count])}
        offset, size = self.sections[3]
        self.symbols = list(struct.iter_unpack('<3I', self.data[offset:offset+size]))

    def block(self, sid):
        offset, size, canonical = self.symbols[sid]
        start = self.sections[1][0] + offset
        raw = self.data[start:start+size]
        if len(raw) != size:
            raise ValueError(f'Symbol {sid} exceeds file')
        return raw, start

    def walk(self, sid, count, path=(), seen=frozenset()):
        if sid in seen:
            raise ValueError(f'Trigger cycle {sid}')
        raw, start = self.block(sid)
        if len(raw) != count * 28:
            raise ValueError(f'Trigger {sid}: {len(raw)} != {count} * 28')
        result = []
        for index in range(count):
            length, low, high, children, child_sid, regions, region_sid = struct.unpack_from('<Iff4I', raw, index*28)
            if length != 24:
                raise ValueError(f'Trigger {sid}/{index}: length {length}')
            branch = path + ((low, high, index),)
            if children:
                result.extend(self.walk(child_sid, children, branch, seen | {sid}))
            if regions:
                payload, absolute = self.block(region_sid)
                cursor = 0
                for region_index in range(regions):
                    size, = struct.unpack_from('<I', payload, cursor)
                    content = payload[cursor+4:cursor+4+size]
                    if len(content) != size:
                        raise ValueError(f'Region {region_sid}/{region_index}: incomplete payload')
                    result.append(dict(path=branch, sid=region_sid, region_index=region_index,
                                       address=hex(absolute+cursor+4), size=size, data=content.hex()))
                    cursor += 4 + size
                if cursor != len(payload):
                    raise ValueError(f'Region {region_sid}: trailing bytes')
        return result


def main():
    source = V6Regions()
    records = json.loads((ROOT / 'evidence/m3_tuning_records.json').read_text(encoding='utf-8'))['records']
    selected = []
    for row in records:
        if row['name'] not in NAMES:
            continue
        start = int(row['data_start'], 16)
        size = row['size']
        root_size, count, sid = struct.unpack_from('<3I', source.data, start+size-12)
        if root_size != 8:
            raise ValueError(f'Unexpected root descriptor in record {row["record"]}')
        selected.append(dict(**row, root_sid=sid, leaves=source.walk(sid, count)))
    output = dict(input=str(INPUT), records=selected,
                  scope='Serialized trigger and region boundaries; nested region schema and runtime interpolation still need verification.')
    (ROOT / 'evidence/m3_tuning_regions.json').write_text(json.dumps(output, indent=2) + '\n', encoding='utf-8')
    print(f'Decoded {len(selected)} M3 color/tone records and {sum(len(r["leaves"]) for r in selected)} region instances.')
    for name in sorted(NAMES):
        leaves = [leaf for row in selected if row['name'] == name for leaf in row['leaves']]
        print(name, 'region_sizes=', sorted({x['size'] for x in leaves}), 'unique_payloads=', len({x['data'] for x in leaves}))
    example = next(r for r in selected if r['record'] == 1773)
    print('M3 base CV122:', [struct.unpack('<14f', bytes.fromhex(x)) for x in sorted({v['data'] for v in example['leaves']})])


if __name__ == '__main__':
    main()
