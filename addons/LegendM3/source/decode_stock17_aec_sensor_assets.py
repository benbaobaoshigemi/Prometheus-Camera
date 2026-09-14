"""Decode the original rear-camera metering assets and numeric link keys."""
import json
from decode_stock17_aec_assets import ROOT, ROM, load_pool, read_records
from google.protobuf import message_factory, json_format

SENSORS = [
    ('wide', 'nezha_ofilm_ovx10500u_wide_ii.bin'),
    ('ultra', 'nezha_ofilm_s5kjn5_ultra_i.bin'),
    ('tele', 'nezha_semco_s5khpe_tele_i.bin'),
]


def main():
    pool, _ = load_pool()
    factory = message_factory.MessageFactory(pool)
    metering = factory.GetPrototype(pool.FindMessageTypeByName('MI_TUNING_AEC.AEC_Metering'))
    link = factory.GetPrototype(pool.FindMessageTypeByName('MI_TUNING.LinkKey'))
    profiles, combined = [], []
    for sensor, filename in SENSORS:
        raw = (ROM/'etc/camera/mi_tuning'/filename).read_bytes()
        versions, rows = read_records(raw, pool)
        records, links = [], []
        for row in rows:
            module = row['condition'].get('1')
            if module not in (536, 537):
                continue
            payload = raw[row['offset']:row['offset']+row['size']]
            if module == 536:
                record = {'sensor':sensor, 'source':filename, 'condition':row['condition'],
                          'value':json_format.MessageToDict(metering.FromString(payload), preserving_proto_field_name=True)}
                records.append(len(combined))
                combined.append(record)
            else:
                value = link.FromString(payload)
                links.append({'condition':row['condition'],
                              'target':[value.mode.value,value.scenario,value.feature0,value.function,
                                        value.sub_function,value.scene,value.filter]})
        profiles.append({'sensor':sensor,'source':filename,'versions':versions,'records':records,'links':links})
    original = json.loads((ROOT/'evidence/stock17_metering_assets.json').read_text())
    assert [{k:r[k] for k in ('condition','value')} for r in combined[:len(original)]] == original
    result = {'profiles':profiles,'records':combined}
    (ROOT/'evidence/stock17_rear_metering_assets.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({p['sensor']:{'records':len(p['records']),'links':len(p['links'])} for p in profiles}))


if __name__ == '__main__':
    main()
