"""Decode original 17U AEC assets using descriptors embedded in its own libraries."""
from pathlib import Path
import json
import struct
import lief
from google.protobuf import descriptor_pb2, descriptor_pool, message_factory, json_format

ROOT = Path(__file__).resolve().parent
ROM = Path('<SOURCE_ROOT>/_work/17u_rootfs/odm')


def read_records(raw, pool):
    """Read the stock container; preserve signed wildcard enum values."""
    position = 0

    def uint32():
        nonlocal position
        value, = struct.unpack_from('<I', raw, position)
        position += 4
        return value

    def block():
        nonlocal position
        size = uint32()
        start = position
        position += size
        assert position <= len(raw), (start, size, len(raw))
        return start, raw[start:position]

    version_type = message_factory.MessageFactory(pool).GetPrototype(
        pool.FindMessageTypeByName('MI_TUNING.Version'))
    versions = []
    for _ in range(uint32()):
        _, data = block()
        versions.append(json_format.MessageToDict(
            version_type.FromString(data), preserving_proto_field_name=True))
    records = []
    while position < len(raw):
        _, label = block()
        cursor = 0

        def varint():
            nonlocal cursor
            value = 0
            for shift in range(0, 70, 7):
                byte = label[cursor]
                cursor += 1
                value |= (byte & 127) << shift
                if byte < 128:
                    return value
            raise ValueError('Invalid label varint')

        condition = {}
        while cursor < len(label):
            key = varint()
            assert key & 7 == 0 and 1 <= key >> 3 <= 8, key
            value = varint() & 0xffffffff
            if value >= 0x80000000:
                value -= 0x100000000
            condition[str(key >> 3)] = value
        offset, payload = block()
        records.append({'condition': condition, 'offset': offset, 'size': len(payload)})
    assert position == len(raw)
    return versions, records


def load_pool(paths=None):
    pool = descriptor_pool.DescriptorPool()
    pending = {}
    if paths is None:
        paths = (ROM/'lib64/libmituning_datacenter.so', ROM/'lib64/camera/components/libmiaec.so')
    for path in paths:
        binary = lief.parse(str(path))
        for symbol in binary.dynamic_symbols:
            if not symbol.name.startswith('descriptor_table_') or symbol.size != 96:
                continue
            table = bytes(binary.get_content_from_virtual_address(symbol.value, 24))
            size = struct.unpack_from('<I', table, 4)[0]
            pointer = struct.unpack_from('<Q', table, 8)[0]
            descriptor = descriptor_pb2.FileDescriptorProto.FromString(
                bytes(binary.get_content_from_virtual_address(pointer, size)))
            pending[descriptor.name] = descriptor
    descriptors = list(pending.values())
    while pending:
        ready = [name for name, descriptor in pending.items()
                 if all(dependency not in pending for dependency in descriptor.dependency)]
        assert ready, list(pending)
        for name in ready:
            pool.Add(pending.pop(name))
    return pool, descriptors


def condition_key(condition):
    return tuple(condition.get(str(field), 0) for field in range(2, 9))


def select_record(query, records, links):
    """Stock GetTuningDataKey: exact data, exact link, then trailing wildcards.

    Source: datacenter_base 0x34da8 / 0x3462c. A link restarts at level 7.
    This is asset selection, not an AEC runtime implementation.
    """
    key, level = tuple(query), 7
    trace = []
    for _ in range(20):
        trace.append(list(key))
        if key in records:
            return records[key], trace
        if key in links:
            key, level = links[key], 7
        else:
            level -= 1
            key = key[:level] + (-1,) + key[level + 1:]
        if level == 0:
            break
    # Original caller uses the all-wildcard key when hierarchical lookup ends.
    return records[(-1,) * 7], trace


def main():
    pool, descriptors = load_pool()
    factory = message_factory.MessageFactory(pool)
    link = factory.GetPrototype(pool.FindMessageTypeByName('MI_TUNING.LinkKey'))
    metering_descriptor = next(d for d in descriptors if d.name == 'AEC_Metering.proto')
    print('Metering root messages:', [(m.name, len(m.field)) for m in metering_descriptor.message_type[-4:]])
    raw = (ROM/'etc/camera/mi_tuning/nezha_ofilm_ovx10500u_wide_ii.bin').read_bytes()
    versions, rows = read_records(raw, pool)
    for name, value in [('stock17_mi_tuning_record_headers', rows),
                        ('stock17_mi_tuning_versions', versions)]:
        (ROOT/f'evidence/{name}.json').write_text(
            json.dumps(value, indent=2)+'\n', encoding='utf-8')
    print('Container records:', len(rows), 'versions:', versions)
    result = []
    all_links = {}
    for row in rows:
        if row['condition'].get('1') == 537:
            value = link.FromString(raw[row['offset']:row['offset'] + row['size']])
            all_links[condition_key(row['condition'])] = (
                value.mode.value, value.scenario, value.feature0, value.function,
                value.sub_function, value.scene, value.filter)
            if row['condition'].get('4') == 8:
                result.append({'source': row['condition'],
                           'target': json_format.MessageToDict(value, preserving_proto_field_name=True)})
    (ROOT/'evidence/stock17_m3_metering_links.json').write_text(json.dumps(result, indent=2)+'\n', encoding='utf-8')
    unique = {json.dumps(row['target'], sort_keys=True) for row in result}
    print('M3 links:', len(result), 'unique targets:', len(unique))
    print('\n'.join(sorted(unique)))
    metering = factory.GetPrototype(pool.FindMessageTypeByName('MI_TUNING_AEC.AEC_Metering'))
    records = []
    for row in rows:
        if row['condition'].get('1') == 536:
            value = metering.FromString(raw[row['offset']:row['offset'] + row['size']])
            records.append({'condition': row['condition'], 'value':
                            json_format.MessageToDict(value, preserving_proto_field_name=True)})
    (ROOT/'evidence/stock17_metering_assets.json').write_text(json.dumps(records, indent=2)+'\n', encoding='utf-8')
    print('Decoded metering records:', len(records), 'fields:', list(records[-1]['value']))
    by_key = {condition_key(row['condition']): row for row in records}
    selections = []
    for mode in (1, 2, 5, 13):
        for scenario in (0, 1, 2):
            for function in (0, 36):
                query = (mode, scenario, 8, function, 0, 0, 0)
                selected, trace = select_record(query, by_key, all_links)
                selections.append({'query': query, 'selected': selected['condition'], 'trace': trace})
    (ROOT/'evidence/stock17_m3_metering_selection.json').write_text(
        json.dumps({'method': 'Original selector decompilation; runtime query not yet captured',
                    'selections': selections}, indent=2)+'\n', encoding='utf-8')
    print('Ordinary M3 query selections:', len(selections), 'unique records:',
          sorted({condition_key(row['selected']) for row in selections}))


if __name__ == '__main__':
    main()
