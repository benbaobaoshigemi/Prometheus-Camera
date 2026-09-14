"""Build the offline-verified M3 parameter component (not a flashable module)."""
import argparse
import json
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--ndk', type=Path, required=True)
    parser.add_argument('--component', choices=('parameters', 'aec-parameters', 'aec-runtime', 'monopan', 'grain', 'grain-plugin', 'style-plugin', 'style-renderer', 'aux-relay'), default='parameters')
    parser.add_argument('--monopan-library', type=Path)
    parser.add_argument('--platform-root', type=Path)
    parser.add_argument('--platform-cxx-library', type=Path)
    args = parser.parse_args()
    compiler = args.ndk / 'toolchains/llvm/prebuilt/windows-x86_64/bin/clang++.exe'
    output = ROOT / (f'inputs/com.xiaomi.plugin.m3{args.component.split("-")[0]}.so' if args.component.endswith('-plugin')
                     else f'inputs/libphoenix_m3_{args.component}.so')
    source = ROOT / f'native/m3_{args.component.replace("-", "_")}.cpp'
    if args.component == 'aux-relay':
        output = ROOT / 'inputs/m3_aux_relay'
    sources = [source]
    libraries = []
    if args.component in ('grain', 'grain-plugin'):
        if args.monopan_library is None:
            parser.error('grain components require --monopan-library pointing to the original vendor library')
        sources.append(ROOT / 'native/m3_monopan.cpp')
        libraries.append(args.monopan_library.resolve(strict=True))
    platform_flags = ['-nostdlib', '-fno-builtin', '-fno-stack-protector']
    if args.component == 'aux-relay':
        platform_flags = ['-nostdlib++']
    if args.component == 'style-renderer':
        libraries.extend((ROOT / path).resolve(strict=True) for path in (
            'inputs/reference/system/odm/lib64/libM9PhotoFilter.so',
            'inputs/device-os4/libc++_shared.so'))
        platform_flags = ['-nostdlib++', '-fvisibility=hidden', '-llog',
                          '-Wl,-rpath,$ORIGIN', '-Wl,-soname,libphoenix_m3_style-renderer.so']
    if args.component == 'aec-runtime':
        sources.append(ROOT / 'native/m3_aec_parameters.cpp')
        sources.extend(ROOT / 'native' / name for name in (
            'm3_aec_core.cpp', 'm3_aec_adaptive.cpp', 'm3_aec_tuning.cpp', 'm3_aec_nodes.cpp',
            'm3_ltm.cpp', 'm3_asf.cpp', 'm3_ltm_runtime.cpp'))
        libraries.append((ROOT / 'inputs/aec-hook/libphoenix_m3_shadowhook.so').resolve(strict=True))
        platform_flags = ['-nostdlib++', '-fvisibility=hidden', '-llog', '-ldl',
                          '-I' + str(ROOT / 'inputs/aec-hook'), '-Wl,-rpath,$ORIGIN',
                          '-Wl,-soname,libphoenix_m3_aec-runtime.so']
    if args.component.endswith('-plugin'):
        if args.platform_root is None:
            parser.error('plugin components require --platform-root pointing to the 14U rootfs')
        if args.platform_cxx_library is None:
            parser.error('plugin components require --platform-cxx-library from the camera service namespace')
        libraries.append(args.platform_cxx_library.resolve(strict=True))
        sources.append(ROOT / ('native/m3_grain.cpp' if args.component == 'grain-plugin' else 'native/m3_parameters.cpp'))
        libraries.extend((args.platform_root / path).resolve(strict=True) for path in (
            'odm/lib64/libcom.xiaomi.pluginutils.so',
            'odm/lib64/libcom.xiaomi.metadatautils.so'))
        platform_flags = ['-nostdlib++', '-fvisibility=hidden', '-llog']
        if args.component == 'grain-plugin':
            sources.append(ROOT / 'native/m3_aux.cpp')
            platform_flags.append('-Wl,-rpath,$ORIGIN')
        if args.component == 'style-plugin':
            sources.append(ROOT / 'native/m3_stream_geometry.cpp')
            libraries.append((ROOT / 'inputs/aec-hook/libphoenix_m3_shadowhook.so').resolve(strict=True))
            platform_flags.append('-I' + str(ROOT / 'inputs/aec-hook'))
            libraries.append((ROOT / 'inputs/libphoenix_m3_aec-runtime.so').resolve(strict=True))
            libraries.append((ROOT / 'inputs/libphoenix_m3_style-renderer.so').resolve(strict=True))
            platform_flags.append('-Wl,-rpath,$ORIGIN')
            libraries.extend((args.platform_root / path).resolve(strict=True) for path in (
                'system/system/lib64/libnativewindow.so',))
            platform_flags.append('-lEGL')
    with tempfile.TemporaryDirectory(dir=output.parent, prefix='m3-native-') as temporary:
        built = Path(temporary) / output.name
        command = [str(compiler), '--target=aarch64-linux-android29', '-std=c++17', '-O2', '-fPIC',
                   *(['-pie'] if args.component == 'aux-relay' else ['-shared']), *platform_flags, '-fno-exceptions', '-fno-rtti',
                   '-ffp-contract=off', '-Wl,--no-undefined',
                   '-Wall', '-Wextra', '-Werror', *map(str, sources),
                   *map(str, libraries), '-o', str(built)]
        subprocess.run(command, check=True)
        built.replace(output)
    version = subprocess.run([str(compiler), '--version'], check=True, capture_output=True, text=True).stdout.splitlines()[0]
    source_files = [p for s in sources for p in (s, s.with_suffix('.h')) if p.exists()]
    if args.component.startswith('aec-'):
        source_files.append(ROOT / 'native/m3_aec_tables.h')
    if args.component == 'aec-runtime':
        source_files.append(ROOT / 'native/m3_aec_stock_tuning.h')
        source_files.append(ROOT / 'native/m3_asf_data.inc')
    if args.component.endswith('-plugin'):
        source_files.append(ROOT / 'native/mivi14.h')
        source_files.append(ROOT / 'native/platform_libcpp.h')
        source_files.append(ROOT / 'native/m3_metadata.h')
    manifest = dict(output=str(output), sources=list(map(str, source_files)),
                    libraries=list(map(str, libraries)),
                    compiler=version, target='aarch64-linux-android29',
                    scope=f'M3 {args.component} component; not a camera, LSP or flashable module build')
    output.with_suffix('.build.json').write_text(json.dumps(manifest, indent=2) + '\n', encoding='utf-8')
    print(f'Built {output.name} ({output.stat().st_size} bytes)')


if __name__ == '__main__':
    main()
