"""Build the independent M3 LSP. The installed Phoenix LSP is not an input."""
from pathlib import Path
import json
import math
import os
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parent
JDK = Path(os.environ.get('JAVA_HOME', 'tools/jdk')) / 'bin'
SDK = Path(os.environ.get('ANDROID_SDK_ROOT', 'tools/android-sdk'))
BUILD_TOOLS = Path(os.environ.get('ANDROID_BUILD_TOOLS', SDK / 'build-tools/35.0.1'))


def run(*arguments, **kwargs):
    return subprocess.run(list(map(str, arguments)), check=True, **kwargs)


def main():
    source = ROOT / 'lsp'
    work = ROOT / 'inputs/lsp-build'
    classes, probe, dex = (work / p for p in ('classes', 'probe', 'dex'))
    for path in (classes, probe, dex, ROOT / 'dist'):
        path.mkdir(parents=True, exist_ok=True)
    java = source / 'java/com/prometheus/camera/m3'
    run(JDK / 'javac.exe', '-encoding', 'UTF-8', '-d', probe,
        java / 'M3Parameters.java', ROOT / 'tools/ParameterProbe.java')
    samples = json.loads((ROOT / 'evidence/native_shading_samples.json').read_text())
    arguments = [str(value) for sample in samples for value in (sample['lux'], sample['zoom'])]
    asset = ROOT / 'inputs/reference/system/odm/etc/camera/leica_filter_param_m3.bin'
    result = run(JDK / 'java.exe', '-cp', probe, 'ParameterProbe', asset, *arguments, capture_output=True)
    values = struct.unpack('>' + 'f' * (len(samples) * 8), result.stdout)
    for index, sample in enumerate(samples):
        actual = values[index * 8:index * 8 + 8]
        assert all(math.isclose(a, b, rel_tol=1e-6, abs_tol=1e-7)
                   for a, b in zip(actual, sample['values'])), (sample, actual)
    print(f'[1/4] Java parameters match {len(samples)} original ARM64 samples.', flush=True)
    android = SDK / 'platforms/android-37.0/android.jar'
    api = ROOT / 'inputs/xposed-api-82.jar'
    run(JDK / 'javac.exe', '-encoding', 'UTF-8', '--release', '8', '-Xlint:-options',
        '-classpath', str(android) + ';' + str(api), '-d', classes, *sorted(java.glob('*.java')))
    jar = work / 'm3-runtime.jar'
    run(JDK / 'jar.exe', '--create', '--file', jar, '-C', classes, '.')
    run(JDK / 'java.exe', '-cp', BUILD_TOOLS / 'lib/d8.jar', 'com.android.tools.r8.D8',
        '--min-api', '31', '--lib', android, '--classpath', api, '--output', dex, jar)
    print('[2/4] Independent entry and preview classes compiled.', flush=True)
    version = json.loads((source / 'version.json').read_text())
    resources = work / 'resources.zip'
    run(BUILD_TOOLS / 'aapt2.exe', 'compile', '--dir', source / 'res', '-o', resources)
    unsigned = work / 'unsigned.apk'
    run(BUILD_TOOLS / 'aapt2.exe', 'link', '-I', android, '--manifest', source / 'AndroidManifest.xml',
        '--min-sdk-version', '31', '--target-sdk-version', '35',
        '--version-code', version['versionCode'], '--version-name', version['versionName'],
        '-o', unsigned, resources)
    with zipfile.ZipFile(unsigned, 'a') as apk:
        apk.write(dex / 'classes.dex', 'classes.dex', compress_type=zipfile.ZIP_STORED)
        apk.write(source / 'assets/xposed_init', 'assets/xposed_init', compress_type=zipfile.ZIP_DEFLATED)
        apk.write(asset, 'assets/phoenix_m3/leica_filter_param_m3.bin', compress_type=zipfile.ZIP_DEFLATED)
    aligned = work / 'aligned.apk'
    run(BUILD_TOOLS / 'zipalign.exe', '-f', '-P', '16', '4', unsigned, aligned)
    key = ROOT / 'inputs/keys/m3-development.keystore'
    if not key.exists():
        key.parent.mkdir(parents=True, exist_ok=True)
        run(JDK / 'keytool.exe', '-genkeypair', '-keystore', key, '-alias', 'm3',
            '-storepass', 'android', '-keypass', 'android', '-keyalg', 'RSA', '-keysize', '2048',
            '-validity', '10000', '-dname', 'CN=Phoenix M3 Development', capture_output=True)
    output = ROOT / 'dist' / (version['versionName'] + '-LSP.apk')
    pending = output.with_suffix('.pending.apk')
    signer = BUILD_TOOLS / 'lib/apksigner.jar'
    run(JDK / 'java.exe', '-jar', signer, 'sign', '--ks', key, '--ks-key-alias', 'm3',
        '--ks-pass', 'pass:android', '--key-pass', 'pass:android', '--out', pending, aligned)
    run(JDK / 'java.exe', '-jar', signer, 'verify', pending)
    badging = run(BUILD_TOOLS / 'aapt2.exe', 'dump', 'badging', pending, capture_output=True, text=True).stdout.splitlines()[0]
    assert "name='com.phoenix.camera.m3'" in badging, badging
    pending.replace(output)
    print('[3/4] ' + badging, flush=True)
    report = dict(version=version, parameter_native_samples=len(samples), float_comparisons=len(values),
                  output=str(output), sources=['lsp/java', 'lsp/AndroidManifest.xml', 'lsp/res',
                      'lsp/assets/xposed_init', 'lsp/version.json', str(asset)],
                  scope='Independent M3 LSP; no Phoenix APK, existing LSP or All-in-One payload',
                  api_source='https://api.xposed.info/de/robv/android/xposed/api/82/api-82.jar')
    output.with_suffix('.build.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(f'[4/4] Built {output} ({output.stat().st_size} bytes)', flush=True)


if __name__ == '__main__':
    main()
