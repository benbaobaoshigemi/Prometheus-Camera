"""Decode the matching 15U assets with their own embedded protobuf schema."""
import json
from google.protobuf import message_factory, json_format
from decode_stock17_aec_assets import ROOT, load_pool, read_records


def main():
    source = ROOT / 'inputs/stock15-aec'
    pool, descriptors = load_pool([source / 'libmituning_datacenter.so', source / 'libmiaec.so'])
    labels = [v.number for d in descriptors for e in d.enum_type for v in e.value
              if v.name == 'EnumTuningDataLable_Module_AEC_Metering']
    assert len(labels) == 1, labels
    factory = message_factory.MessageFactory(pool)
    metering = factory.GetPrototype(pool.FindMessageTypeByName('MI_TUNING_AEC.AEC_Metering'))
    output = []
    for path in sorted(source.glob('xuanyuan_*.bin')):
        raw = path.read_bytes()
        versions, rows = read_records(raw, pool)
        records = []
        for row in rows:
            if row['condition'].get('1') != labels[0]:
                continue
            value = metering.FromString(raw[row['offset']:row['offset'] + row['size']])
            data = json_format.MessageToDict(value, preserving_proto_field_name=True)
            records.append(dict(condition=row['condition'], aggregation=data['hist_target_by_lux']['adjust_ratio_aggregation']))
        assert records, path
        output.append(dict(source=path.name, versions=versions, records=records))
    (ROOT / 'evidence/stock15_aec_aggregation_assets.json').write_text(
        json.dumps(output, indent=2) + '\n', encoding='utf-8')
    print(json.dumps([{ 'source': row['source'], 'records':len(row['records']),
        'logic_short_values': list({json.dumps(r['aggregation'].get('using_logic_short_ratio')) for r in row['records']})}
        for row in output]))


if __name__ == '__main__':
    main()
