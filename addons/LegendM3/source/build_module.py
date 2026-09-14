"""Build the independent KernelSU M3 executors and device-derived Mivi graphs."""
from copy import deepcopy
import json
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parent


def extend_graph(source):
    graph = json.loads(source.read_text(encoding='utf-8'))
    nodes = graph['NodesList']['Node']
    links = graph['PortLinkages']['Link']
    outgoing = [link for link in links if link['SrcPort']['NodeInstance'] == 'FilterInstance0']
    assert len(outgoing) == 1 and outgoing[0]['DstPort']['NodeInstance'] == 'WatermarkInstance0'
    # Default node properties select ordinary, separate-buffer V1 processing.
    for kind in ('Style', 'Grain'):
        nodes.append(dict(NodeName='com.xiaomi.plugin.m3' + kind.lower(), NodeInstance='M3' + kind))
    edge = outgoing[0]
    original_source = deepcopy(edge['SrcPort'])
    edge['SrcPort'] = dict(PortId=0, NodeInstance='M3Grain', PortFormat='YUV420_NV12', BufferType='Gralloc')
    for upstream, downstream in ((original_source, 'M3Style'),
                                 (dict(PortId=0, NodeInstance='M3Style', PortFormat='YUV420_NV12', BufferType='Gralloc'), 'M3Grain')):
        links.append(dict(SrcPort=upstream, DstPort=dict(PortId=0, NodeInstance=downstream,
                          PortFormat='YUV420_NV12', BufferType='Gralloc')))
    return (json.dumps(graph, indent=2) + '\n').encode()


def main():
    version = json.loads((ROOT / 'lsp/version.json').read_text())
    payload = {}
    sources = []
    for name in ('leicasnapshot.json', 'satsnapshot.json', 'normalsnapshot.json'):
        source = ROOT / 'inputs/device-os4/xiaomi' / name
        payload['system/odm/etc/camera/xiaomi/' + name] = extend_graph(source)
        sources.append(str(source))
    for kind in ('style', 'grain'):
        name = 'com.xiaomi.plugin.m3' + kind + '.so'
        source = ROOT / 'inputs' / name
        payload['system/odm/lib64/camera/plugins/' + name] = source.read_bytes()
        sources.append(str(source))
    for relative in ('libphoenix_m3_aec-runtime.so', 'libphoenix_m3_style-renderer.so',
                     'reference/system/odm/lib64/libM9PhotoFilter.so', 'aec-hook/libphoenix_m3_shadowhook.so',
                     'aec-hook/libphoenix_m3_shadowhook_nothing.so'):
        source = ROOT / 'inputs' / relative
        payload['system/odm/lib64/camera/plugins/' + source.name] = source.read_bytes()
        sources.append(str(source))
    reference = ROOT / 'inputs/reference/system/odm'
    for relative, destination in (
        ('lib64/libmialgo_monopan.so', 'lib64/camera/plugins/libmialgo_monopan.so'),
        ('etc/camera/mialgo_monopan_cl.bin', 'etc/camera/xiaomi/phoenix_m3/mialgo_monopan_cl.bin'),
        ('etc/camera/leica_filter_param_m3.bin', 'etc/camera/xiaomi/phoenix_m3/leica_filter_param_m3.bin')):
        source = reference / relative
        payload['system/odm/' + destination] = source.read_bytes()
        sources.append(str(source))
    payload = {name.replace('system/odm/', 'payload/odm/'): value for name, value in payload.items()}
    payload['post-fs-data.sh'] = (ROOT / 'module/post-fs-data.sh').read_bytes()
    payload['service.sh'] = (ROOT / 'module/service.sh').read_bytes()
    payload['refresh-gallery-cache.sh'] = (ROOT / 'module/refresh-gallery-cache.sh').read_bytes()
    payload['bin/m3_aux_relay'] = (ROOT / 'inputs/m3_aux_relay').read_bytes()
    sources.extend(str(ROOT / path) for path in ('module/post-fs-data.sh', 'module/service.sh', 'module/refresh-gallery-cache.sh', 'inputs/m3_aux_relay'))
    license_source = ROOT / 'module/licenses/ShadowHook-MIT.txt'
    payload['licenses/ShadowHook-MIT.txt'] = license_source.read_bytes()
    sources.append(str(license_source))
    payload['module.prop'] = ('id=phoenix_m3\nname=' + version.get('productName', 'PhoenixAddon-LegendM3') +
        '\nversion=' + version.get('releaseVersion', version['versionName']) +
        '\nversionCode=' + str(version['moduleVersionCode']) + '\nauthor=Phoenix\n' +
        'description=M3 metering, Mivi style and Monopan grain for Xiaomi 14 Ultra.\n').encode()
    payload['customize.sh'] = b'''#!/system/bin/sh
ui_print "Phoenix M3: metering and Mivi executors"
set_perm_recursive "$MODPATH/payload" 0 0 0755 0644 || abort "M3 file permissions failed"
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755 || abort "M3 mount script permissions failed"
set_perm "$MODPATH/service.sh" 0 0 0755 || abort "M3 service permissions failed"
set_perm "$MODPATH/refresh-gallery-cache.sh" 0 0 0755 || abort "Gallery refresh permissions failed"
rm -f "$MODPATH/.gallery-cache-refreshed" || abort "Gallery refresh reset failed"
set_perm "$MODPATH/bin/m3_aux_relay" 0 0 0755 || abort "M3 relay permissions failed"
'''
    output = ROOT / 'dist' / (version['versionName'] + '-Module.zip')
    pending = output.with_suffix('.pending.zip')
    with zipfile.ZipFile(pending, 'w', compression=zipfile.ZIP_DEFLATED) as archive:
        for name, data in payload.items():
            archive.writestr(name, data)
    with zipfile.ZipFile(pending) as archive:
        assert archive.testzip() is None
    pending.replace(output)
    output.with_suffix('.build.json').write_text(json.dumps(dict(version=version, sources=sources,
        output=str(output), files=list(payload),
        aec_dependency=json.loads((ROOT / 'inputs/aec-hook/dependency.json').read_text()),
        tuning='AEC includes stock 17U rear metering tables; M3 uses verified LTM/LCE controls and closed M3-minus-ordinary ASF curve deltas with native 14U base regions and per-request isolation.'), indent=2) + '\n')
    print(f'Built {output.name}: {len(payload)} files, {output.stat().st_size} bytes')


if __name__ == '__main__':
    main()
