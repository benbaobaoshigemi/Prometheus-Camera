"""Build official ShadowHook 2.0.1 with private library and symbol names."""
import argparse
import json
import re
import shutil
import subprocess
import tempfile
from pathlib import Path

import lief

ROOT = Path(__file__).resolve().parent
PREFIX = 'phoenix_m3_shadowhook_'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--ndk', type=Path, required=True)
    args = parser.parse_args()
    source = ROOT / 'inputs/shadowhook-2.0.1-source/shadowhook/src/main/cpp'
    output = ROOT / 'inputs/aec-hook'
    clang = args.ndk / 'toolchains/llvm/prebuilt/windows-x86_64/bin/clang.exe'
    original_header = (source / 'include/shadowhook.h').read_text()
    assert '#define SHADOWHOOK_VERSION "2.0.1"' in original_header
    with tempfile.TemporaryDirectory(dir=ROOT / 'inputs', prefix='m3-hook-build-') as temp:
        build = Path(temp)
        tree = build / 'src'
        shutil.copytree(source, tree)
        for path in tree.rglob('*'):
            if path.is_file() and path.suffix in ('.c', '.h', '.S', '.txt'):
                data = path.read_text(encoding='utf-8')
                data = re.sub(r'\bshadowhook_([A-Za-z0-9_]+)', PREFIX + r'\1', data)
                data = data.replace('libshadowhook.so', 'libphoenix_m3_shadowhook.so')
                data = data.replace('libshadowhook_nothing.so', 'libphoenix_m3_shadowhook_nothing.so')
                if path.name == 'shadowhook.map.txt':
                    # The official map spans both ABIs; these two entry points
                    # exist only in arch/arm/sh_glue.S, not the ARM64 build.
                    data = re.sub(r'^\s*phoenix_m3_shadowhook_interceptor_glue_vfpv3d(?:16|32);\s*$',
                                  '', data, flags=re.MULTILINE)
                path.write_text(data, encoding='utf-8')
        sources = sorted([*tree.glob('*.c'), *tree.glob('arch/arm64/*.c'),
                          *tree.glob('arch/arm64/*.S'), *tree.glob('common/*.c'),
                          *tree.glob('third_party/*/*.c')])
        includes = ['.', 'include', 'arch/arm64', 'common',
                    'third_party/xdl', 'third_party/bsd', 'third_party/lss']
        library = build / 'libphoenix_m3_shadowhook.so'
        command = [str(clang), '--target=aarch64-linux-android29', '-shared', '-fPIC',
                   '-std=c11', '-Os', '-ffunction-sections', '-fdata-sections',
                   '-Wl,--exclude-libs,ALL', '-Wl,--gc-sections', '-Wl,--no-undefined',
                   '-Wl,-z,max-page-size=16384', '-Wl,-rpath,$ORIGIN',
                   '-Wl,-soname,' + library.name,
                   '-Wl,--version-script=' + str(tree / 'shadowhook.map.txt'),
                   *['-I' + str(tree / p) for p in includes], *map(str, sources),
                   '-llog', '-ldl', '-o', str(library)]
        subprocess.run(command, check=True)
        nothing = build / 'libphoenix_m3_shadowhook_nothing.so'
        subprocess.run([str(clang), '--target=aarch64-linux-android29', '-shared', '-fPIC',
                        '-Oz', '-fno-ident', '-fno-unwind-tables', '-fno-asynchronous-unwind-tables',
                        '-nostdlib', '-Wl,--strip-all', '-Wl,--as-needed', '-Wl,--hash-style=sysv',
                        '-Wl,--build-id=none', '-Wl,-z,max-page-size=16384',
                        '-Wl,-soname,' + nothing.name, str(tree / 'nothing/sh_nothing.c'),
                        '-o', str(nothing)], check=True)
        binary = lief.parse(str(library))
        exports = {s.name for s in binary.exported_symbols}
        assert PREFIX + 'register_dl_init_callback' in exports
        assert PREFIX + 'unregister_dl_init_callback' in exports
        assert not any(s.startswith('shadowhook_') for s in exports)
        assert b'libshadowhook.so' not in library.read_bytes()
        assert b'libshadowhook_nothing.so' not in library.read_bytes()
        for built in (library, nothing):
            built.replace(output / built.name)
        # Preserve the existing native caller API while binding it exclusively
        # to private symbols. The official definitions and implementation agree.
        names = sorted(set(re.findall(r'\bshadowhook_[A-Za-z0-9_]+', original_header)))
        aliases = ''.join('#define ' + n + ' ' + n.replace('shadowhook_', PREFIX, 1) + '\n' for n in names)
        (output / 'shadowhook.h').write_text(aliases + original_header, encoding='utf-8')
    manifest = dict(name='shadowhook', version='2.0.1',
                    source='https://github.com/bytedance/android-inline-hook/tree/v2.0.1',
                    commit='854c775c2c3676e57a0f383597ebf420b5204161', license='MIT',
                    change='Private library basenames and shadowhook_* symbol prefix; official ARM64 implementation unchanged',
                    libraries=['libphoenix_m3_shadowhook.so', 'libphoenix_m3_shadowhook_nothing.so'])
    (output / 'dependency.json').write_text(json.dumps(manifest, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(manifest))


if __name__ == '__main__':
    main()
