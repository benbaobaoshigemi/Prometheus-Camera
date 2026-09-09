"""Build Phoenix from external camera patches, LSP source and module files."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import struct
import subprocess
import time
import zipfile
from pathlib import Path

from inject_oem_signing_block import central_directory_offset, signing_block
from unpack import decode

ROOT = Path(__file__).resolve().parents[1]


def run(*command):
    subprocess.run([str(value) for value in command], check=True)


def read_json(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')


def write_changed(path, data):
    if not path.exists() or path.read_bytes() != data:
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)


def source_files(root):
    return {p.relative_to(root).as_posix(): p for p in root.rglob('*') if p.is_file()
            and p.name != '.complete'
            and p.relative_to(root).parts[0] not in ('build', 'dist', 'original', '__pycache__')}


def sync_tree(source, target, state_file):
    sync_files(source_files(source), target, state_file)


def sync_files(current, target, state_file):
    previous = read_json(state_file) if state_file.exists() else []
    for name in previous:
        if name not in current:
            (target / name).unlink(missing_ok=True)
    for name, path in current.items():
        write_changed(target / name, path.read_bytes())
    write_json(state_file, sorted(current))


def descriptor(path):
    for line in path.read_text(encoding='utf-8').splitlines():
        if line.startswith('.class '):
            return line.split()[-1]
    raise ValueError(f'No class descriptor: {path}')


def patched_files(base, patch):
    manifest = read_json(patch / 'patch.json')
    current = source_files(base)
    classes = {descriptor(p): name for name, p in current.items() if p.suffix == '.smali'}
    for name in manifest['deletions']:
        if name.endswith('.smali'):
            identity = manifest['deletedClasses'][name]
            victim = classes.pop(identity, None)
            if victim:
                current.pop(victim)
        else:
            current.pop(name, None)
    occupied = {name.casefold() for name in current}
    for entry in manifest['entries']:
        source = patch / entry['path']
        target = entry['targetPath']
        if source.suffix == '.smali':
            identity = descriptor(source)
            if identity in classes:
                target = classes[identity]
            elif target.casefold() in occupied:
                target = str(Path(target).with_suffix('.phoenix.smali')).replace('\\', '/')
            classes[identity] = target
        current[target] = source
        occupied.add(target.casefold())
    current['apktool.yml'] = patch / 'apktool.yml'
    return current


def set_version(stage, version, code):
    path = stage / 'apktool.yml'
    value = path.read_text(encoding='utf-8')
    value = re.sub(r'(?m)^(  versionCode:) .*$', rf'\g<1> {code}', value)
    value = re.sub(r'(?m)^(  versionName:) .*$', rf'\g<1> {version}', value)
    write_changed(path, value.encode('utf-8'))


def assemble(stage, output, apktool, sdk):
    unsigned = stage.parent / (stage.name + '.unsigned.apk')
    run('java', '-jar', apktool, 'b', stage, '-j', '8', '-p', stage.parent / 'framework', '-o', unsigned)
    aligned = stage.parent / (stage.name + '.aligned.apk')
    run(sdk / ('zipalign.exe' if os.name == 'nt' else 'zipalign'),
        '-f', '-P', '16', '4', unsigned, aligned)
    return aligned


def build_camera(args, version, work, output):
    expected = read_json(ROOT / 'supported-camera.json')
    with args.camera_apk.open('rb') as stream:
        actual = hashlib.file_digest(stream, 'sha256').hexdigest()
    if actual != expected['sha256']:
        raise ValueError('Unsupported camera APK; see supported-camera.json')
    base = work / 'camera-base'
    if not (base / '.complete').exists():
        decode(args.camera_apk, base, args.apktool)
        (base / '.complete').write_text(actual, encoding='utf-8')
    stage = work / 'camera'
    # Resolve the final source before writing, so unchanged patches preserve cache mtimes.
    sync_files(patched_files(base, ROOT / 'camera/patch'), stage, work / 'camera-files.json')
    set_version(stage, version['versionName'], version['cameraVersionCode'])
    aligned = assemble(stage, output, args.apktool, args.sdk)
    data = aligned.read_bytes()
    block = signing_block(args.camera_apk.read_bytes())
    eocd, offset = central_directory_offset(data)
    result = bytearray(data[:offset] + block + data[offset:])
    struct.pack_into('<I', result, eocd + len(block) + 16, offset + len(block))
    temporary = output.with_suffix('.pending.apk')
    temporary.write_bytes(result)
    temporary.replace(output)


def build_lsp(args, version, work, output):
    stage = work / 'lsp'
    sync_tree(ROOT / 'lsp', stage, work / 'lsp-files.json')
    set_version(stage, version['versionName'], version['lspVersionCode'])
    aligned = assemble(stage, output, args.apktool, args.sdk)
    key = args.keystore or work / 'keys/development.keystore'
    if args.keystore is None and not key.exists():
        key.parent.mkdir(parents=True, exist_ok=True)
        run('keytool', '-genkeypair', '-keystore', key, '-alias', args.key_alias,
            '-storepass', 'android', '-keypass', 'android', '-keyalg', 'RSA',
            '-keysize', '2048', '-validity', '10000', '-dname', 'CN=Phoenix Development')
    environment = os.environ.copy()
    environment.setdefault('PHOENIX_STORE_PASSWORD', 'android')
    environment.setdefault('PHOENIX_KEY_PASSWORD', 'android')
    temporary = output.with_suffix('.pending.apk')
    signer = args.sdk / 'lib/apksigner.jar'
    subprocess.run(['java', '-jar', str(signer), 'sign', '--ks', str(key),
                    '--ks-key-alias', args.key_alias, '--ks-pass', 'env:PHOENIX_STORE_PASSWORD',
                    '--key-pass', 'env:PHOENIX_KEY_PASSWORD', '--out', str(temporary),
                    str(aligned)], check=True, env=environment)
    run('java', '-jar', signer, 'verify', temporary)
    temporary.replace(output)


def build_module(version, camera, lsp, output):
    temporary = output.with_suffix('.pending.zip')
    with zipfile.ZipFile(temporary, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=6) as archive:
        for name, source in sorted(source_files(ROOT / 'module').items()):
            data = source.read_bytes()
            if name in ('module.prop', 'customize.sh', 'install-self-check.sh'):
                value = data.decode('utf-8')
                value = re.sub(r'Phoenix-\d+\.\d+\.\d+', version['versionName'], value)
                value = re.sub(r'(?m)^versionCode=\d+',
                               f"versionCode={version['moduleVersionCode']}", value)
                data = value.encode('utf-8')
            info = zipfile.ZipInfo(name)
            info.compress_type = zipfile.ZIP_DEFLATED
            info.external_attr = (0o100755 if name.endswith('.sh') else 0o100644) << 16
            archive.writestr(info, data)
        archive.write(camera, camera.name)
        archive.write(lsp, lsp.name)
    temporary.replace(output)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode', choices=('all', 'camera', 'lsp'), default='all')
    parser.add_argument('--camera-apk', type=Path)
    parser.add_argument('--apktool', type=Path, default=ROOT / 'tools/vendor/apktool_2.12.1.jar')
    parser.add_argument('--android-sdk', type=Path, default=Path(os.environ.get('ANDROID_HOME')
                        or os.environ.get('ANDROID_SDK_ROOT')
                        or str(Path(os.environ.get('LOCALAPPDATA', '~')) / 'Android/Sdk')))
    parser.add_argument('--keystore', type=Path)
    parser.add_argument('--key-alias', default='androiddebugkey')
    args = parser.parse_args()
    if args.mode != 'lsp' and args.camera_apk is None:
        parser.error('--camera-apk is required for camera and all builds')
    args.sdk = args.android_sdk / 'build-tools/35.0.0'
    tool_version = subprocess.check_output(['java', '-jar', str(args.apktool), '--version'], text=True).strip()
    if tool_version != '2.12.1':
        raise ValueError(f'Apktool 2.12.1 required, got {tool_version}')
    version = read_json(ROOT / 'version.json')
    major, minor, patch = map(int, version['versionName'].removeprefix('Phoenix-').split('.'))
    offset = major * 10000 + minor * 100 + patch
    if not (0 <= minor < 100 and 0 <= patch < 100):
        raise ValueError('Minor and patch versions must be in 0..99')
    if (version['cameraVersionCode'], version['lspVersionCode'], version['moduleVersionCode']) != (
            760000000 + offset, 2000000 + offset, 2000000 + offset):
        raise ValueError('version.json numeric versions do not match versionName')
    work = ROOT / 'work'
    destination = ROOT / 'dist' / version['versionName']
    destination.mkdir(parents=True, exist_ok=True)
    work.mkdir(parents=True, exist_ok=True)
    camera = destination / f"Phoenix_Camera_{version['versionName']}.apk"
    lsp = destination / f"Phoenix_LSP_{version['versionName']}.apk"
    module = destination / f"Phoenix_{version['versionName']}_AllInOne.zip"
    started = time.time()
    products = []
    if args.mode in ('camera', 'all'):
        print('[1/3] Camera: decode, apply external patch, compile, align', flush=True)
        build_camera(args, version, work, camera)
        products.append(camera)
    if args.mode in ('lsp', 'all'):
        print('[2/3] LSP: compile source, align, sign', flush=True)
        build_lsp(args, version, work, lsp)
        products.append(lsp)
    if args.mode == 'all':
        print('[3/3] All-in-One: package module and APKs', flush=True)
        build_module(version, camera, lsp, module)
        products.append(module)
    revision = subprocess.run(['git', '-C', str(ROOT), 'rev-parse', 'HEAD'],
                              text=True, capture_output=True)
    status = subprocess.run(['git', '-C', str(ROOT), 'status', '--porcelain', '--', '.'],
                            text=True, capture_output=True)
    tracked = subprocess.run(['git', '-C', str(ROOT), 'ls-files', '--error-unmatch', 'version.json'],
                             text=True, capture_output=True)
    for product in products:
        write_json(product.with_suffix(product.suffix + '.build.json'), {
            'version': version, 'mode': args.mode, 'apktool': tool_version,
            'androidBuildTools': '35.0.0', 'supportedCamera': read_json(ROOT / 'supported-camera.json'),
            'gitRevision': revision.stdout.strip() if tracked.returncode == 0 else None,
            'gitStatus': status.stdout.splitlines() if tracked.returncode == 0 else None,
            'sourceArchive': read_json(ROOT / 'source-revision.json')
                             if (ROOT / 'source-revision.json').exists() else None,
            'inputs': ['camera/patch', 'lsp', 'module', 'version.json'],
            'artifact': product.name, 'size': product.stat().st_size,
            'elapsedSeconds': round(time.time() - started, 1)})
    print('Built: ' + ', '.join(p.name for p in products), flush=True)


if __name__ == '__main__':
    main()
