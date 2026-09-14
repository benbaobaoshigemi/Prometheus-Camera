"""Decode the actual ParamUtil binary layout; never infer enabled effects from payloads.

Layout checked against leicam3filter ParamUtil::initialize/readAiScenes at
ELF VA 0x17a84/0x19928. Offsets are relative to the unmodified input file.
"""
from pathlib import Path
import json
import struct

ROOT = Path(__file__).resolve().parent


def decode(path):
    data = Path(path).read_bytes()

    def read(fmt, offset):
        return struct.unpack_from('<' + fmt, data, offset)

    count, = read('H', 0)
    scene_sizes = read(f'{count}H', 2)
    table_offset, lut_offset, cube_size, zoom_count = read('4H', 2 + count * 2)
    zoom_sizes = read(f'{zoom_count}H', 10 + count * 2)
    text_offset = 10 + (count + zoom_count) * 2
    names = ('trigger_axes', 'declared_type', 'declared_range', 'version')
    info = {key: data[text_offset + start:text_offset + start + size].split(b'\0')[0].decode('ascii')
            for key, start, size in zip(names, (0, 256, 512, 768), (256, 256, 256, 64))}
    flags = read('4H', text_offset + 832)
    info['enabled'] = dict(zip(('lut_preview', 'lut_snapshot', 'shading_preview', 'shading_snapshot'), flags))
    info['offsets'] = dict(trigger_table=table_offset, lut=lut_offset, text=text_offset)
    info['cube_size'] = cube_size

    def rows(offset):
        n, = read('H', offset)
        offset += 2
        result = []
        for _ in range(n):
            low, high, cct_count = read('3H', offset)
            offset += 6
            ccts = []
            for _ in range(cct_count):
                a, b, index = read('3H', offset)
                offset += 6
                ccts.append(dict(low=a, high=b, index=index))
            result.append(dict(low=low, high=high, cct=ccts))
        return result, offset

    scenes, zooms = [], []
    cursor = table_offset
    for size in scene_sizes:
        name = data[cursor:cursor + 64].split(b'\0')[0].decode('ascii')
        table, end = rows(cursor + 64)
        assert end == cursor + size, (name, end, cursor + size)
        scenes.append(dict(name=name, rows=table))
        cursor = end
    for size in zoom_sizes:
        zoom, = read('f', cursor)
        table, end = rows(cursor + 4)
        assert end == cursor + size, (zoom, end, cursor + size)
        zooms.append(dict(zoom=zoom, rows=table))
        cursor = end
    lut_count = max(c['index'] for s in scenes for r in s['rows'] for c in r['cct']) + 1
    shading_count = max(c['index'] for s in zooms for r in s['rows'] for c in r['cct']) + 1
    assert cube_size == 17
    shading_offset = lut_offset + lut_count * (17 ** 3 * 3)
    assert shading_offset + shading_count * 32 == len(data)
    info.update(scenes=scenes, zooms=zooms, lut_count=lut_count, shading_count=shading_count)
    info['offsets']['shading'] = shading_offset
    fields = ('SmoothStartValue', 'SmoothEndValue', 'SmoothCoordScale', 'SmoothValueScale',
              'LightDarkPreserveK', 'LightDarkPreserveB', 'LightDarkPreserveV', 'LightDarkPreserveT')
    info['shading'] = [dict(zip(fields, read('8f', shading_offset + i * 32))) for i in range(shading_count)]
    return info


if __name__ == '__main__':
    source = ROOT / 'inputs/reference/system/odm/etc/camera/leica_filter_param_m3.bin'
    result = decode(source)
    target = ROOT / 'evidence/m3_parameters.json'
    target.write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: result[k] for k in ('version', 'enabled', 'lut_count', 'shading_count', 'offsets')}))
