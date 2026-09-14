"""Export decoded original metering curves for the portable numeric consumer."""
from pathlib import Path
from stock17_aec_assets import records

ROOT = Path(__file__).resolve().parent
CORE_FIELDS = [
    ('bright_tone_low_start_pct', None), ('bright_tone_high_start_pct', None),
    ('bright_tone_low_end_pct', None), ('bright_tone_high_end_pct', None),
    ('dark_tone_low_start_pct', None), ('dark_tone_low_end_pct', None),
    ('dark_tone_high_start_pct', None), ('dark_tone_high_end_pct', None),
    ('bright_tone_low_ref_target', 'dr_node'), ('bright_tone_high_ref_target', 'dr_node'),
    ('dark_tone_low_ref_target', 'dr_node'), ('dark_tone_high_ref_target', 'dr_node'),
    ('bright_tone_adj_ratio_cap', 'dr_b2m_node'), ('dark_tone_adj_raito_cap', 'dr_node'),
]
ADAPTIVE_FIELDS = [
    ('bright_tone_start_pct', None), ('bright_tone_end_pct', None),
    ('dark_tone_start_pct', None), ('dark_tone_end_pct', None),
    ('mid_tone_start_pct', None), ('mid_tone_end_pct', None),
    ('bright_tone_ref_target', 'dr_node'), ('mid_tone_ref_target', 'dr_node'),
    ('dark_tone_ref_target', 'dr_node'),
    *[(name, None) for name in ('low_start', 'low_end', 'high_start', 'high_end',
                              'extra_high_start', 'extra_high_end', 'extra_high_ratio',
                              'extra_low_start', 'extra_low_end', 'extra_low_ratio')],
    ('dt_adjust_ratio_normal_cap', 'dr_m2d_node'), ('bt_adjust_ratio_normal_cap', 'dr_b2m_node'),
    ('adjust_weight', 'dr_node'), ('adjust_ratio_high_cap', None), ('adjust_ratio_low_cap', None),
]
SAFE_FIELDS = [('mid_tone_ref_target', 'dr_node'),
               ('dt_adjust_ratio_normal_cap', 'dr_m2d_node'),
               ('bt_adjust_ratio_normal_cap', 'dr_b2m_node')]


def main():
    lines = ['// Generated from original 17U mi_tuning protobuf by export_stock17_aec_tuning.py.']
    assets = records()
    groups = []
    for index, record in enumerate(assets):
        refs = []
        for group, fields in [('core', CORE_FIELDS), ('adaptive', ADAPTIVE_FIELDS), ('safe', SAFE_FIELDS),
                              ('base', [('upper_limit', None), ('lower_limit', None)])]:
            hist = record['value']['hist_target_by_lux']
            asset = (record['value']['base_target_by_lux'] if group == 'base' else
                     hist['safe_hist_adaptive_adjustment' if group == 'safe' else f'hist_{group}_adjustment'])
            prefix = 'base_target_' if group == 'base' else f'hist_{"adaptive" if group == "safe" else group}_'
            arrays = {}
            def array(name):
                if name in arrays:
                    return arrays[name]
                item = asset[prefix + name]
                values = item.get('arr')
                if values is None:
                    values = [v for row in item['arr_2d'] for v in row['arr']]
                symbol = f'kStock17_{index}_{group}_{name}'
                tokens = [format(v, '.9g') for v in values]
                tokens = [t + ('.0f' if '.' not in t and 'e' not in t else 'f') for t in tokens]
                lines.append(f'static constexpr float {symbol}[] = {{{", ".join(tokens)}}};')
                arrays[name] = symbol
                return symbol
            lux = array('lux_node')
            curves = []
            for name, axis in fields:
                values = array(name)
                dynamic = array(axis) if axis else 'nullptr'
                kind = 0 if axis is None else {'dr_node': 3, 'dr_b2m_node': 1, 'dr_m2d_node': 2}[axis]
                nx = len(asset[prefix+'lux_node']['arr'])
                ny = len(asset[prefix+axis]['arr']) if axis else 1
                count = len(asset[prefix+name].get('arr', [])) if axis is None else sum(len(r['arr']) for r in asset[prefix+name]['arr_2d'])
                assert count == nx*ny, (index, group, name, count, nx, ny)
                curves.append(f'{{{lux}, {dynamic}, {values}, {nx}, {ny}, {kind}}}')
            symbol = f'kStock17_{index}_{group}'
            lines.append(f'static constexpr StockCurve {symbol}[] = {{{", ".join(curves)}}};')
            refs.append(symbol)
        enabled = int(hist['hist_adaptive_adjustment']['enable_hist_adaptive_target'].get('value', False))
        safe_enabled = int(hist['safe_hist_adaptive_adjustment']['enable_hist_adaptive_target'].get('value', False))
        logic_short = int(hist['adjust_ratio_aggregation']['using_logic_short_ratio'].get('value', False))
        groups.append('{' + ', '.join(refs) + f', {enabled | safe_enabled << 1 | logic_short << 2}' + '}')
    lines.append('static constexpr StockTuning kStock17Tuning[] = {' + ', '.join(groups) + '};')
    defaults = {}
    for index, record in enumerate(assets):
        if all(record['condition'].get(str(field), 0) == -1 for field in range(2, 9)):
            assert record['sensor'] not in defaults
            defaults[record['sensor']] = index
    for sensor, index in defaults.items():
        lines.append(f'static constexpr unsigned kStock17Default_{sensor} = {index};')
    output = ROOT/'native/m3_aec_stock_tuning.h'
    output.write_text('\n'.join(lines)+'\n', encoding='utf-8')
    print(f'Exported {len(assets)} original records; {output.stat().st_size} bytes')


if __name__ == '__main__':
    main()
