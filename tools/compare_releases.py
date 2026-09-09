"""Optional maintainer comparison; a reference release is not a build dependency."""
import argparse
import json
import os
import re
import subprocess
import tempfile
import zipfile
from pathlib import Path

from build_phoenix import descriptor, read_json, write_json
from inject_oem_signing_block import signing_block
from unpack import decode

ROOT = Path(__file__).resolve().parents[1]
SIGNATURES = {'META-INF/ANDROIDD.RSA', 'META-INF/ANDROIDD.SF', 'META-INF/MANIFEST.MF'}


def one(directory, pattern):
    matches = list(directory.glob(pattern))
    if len(matches) != 1:
        raise ValueError(f'Expected one {pattern} in {directory}, got {len(matches)}')
    return matches[0]


def zip_diff(first, second):
    with zipfile.ZipFile(first) as a, zipfile.ZipFile(second) as b:
        names_a = {n for n in a.namelist() if not n.endswith('/')}
        names_b = {n for n in b.namelist() if not n.endswith('/')}
        changed = [n for n in sorted(names_a & names_b) if a.read(n) != b.read(n)]
        return {'referenceEntries': len(names_a), 'candidateEntries': len(names_b),
                'added': sorted(names_b - names_a), 'removed': sorted(names_a - names_b),
                'changed': changed}


def xml_manifest(apk, aapt):
    value = subprocess.check_output([str(aapt), 'dump', 'xmltree', str(apk),
                                     'AndroidManifest.xml'], text=True, encoding='utf-8')
    version_lines = [line for line in value.splitlines()
                     if re.search(r'A: android:version(?:Code|Name)\(', line)]
    normalized = '\n'.join(line for line in value.splitlines() if line not in version_lines)
    return normalized, version_lines


def smali_index(tree):
    result = {}
    for path in tree.glob('smali*/**/*.smali'):
        name = descriptor(path)
        if name in result:
            raise ValueError(f'Duplicate class: {name}')
        result[name] = path.read_text(encoding='utf-8')
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference-dir', type=Path, required=True)
    parser.add_argument('--candidate-dir', type=Path, required=True)
    parser.add_argument('--apktool', type=Path, default=ROOT / 'tools/vendor/apktool_2.12.1.jar')
    parser.add_argument('--android-sdk', type=Path, required=True)
    parser.add_argument('--output', type=Path, default=ROOT / 'verification.json')
    args = parser.parse_args()
    aapt = args.android_sdk / 'build-tools/35.0.0' / ('aapt.exe' if os.name == 'nt' else 'aapt')
    result = {'candidateVersion': read_json(ROOT / 'version.json'), 'apk': {},
              'deviceValidation': 'not-performed-for-1.0.0',
              'scope': 'Offline content comparison; no assertion of device runtime acceptance'}
    passed = True
    (ROOT / 'work').mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='comparison-', dir=ROOT / 'work'))
    for kind in ('Camera', 'LSP'):
        old = one(args.reference_dir, f'Phoenix_{kind}_*.apk')
        new = one(args.candidate_dir, f'Phoenix_{kind}_*.apk')
        report = zip_diff(old, new)
        old_manifest, old_version = xml_manifest(old, aapt)
        new_manifest, new_version = xml_manifest(new, aapt)
        report.update({'reference': old.name, 'candidate': new.name,
                       'referenceManifestVersion': old_version, 'candidateManifestVersion': new_version,
                       'manifestEqualExceptVersion': old_manifest == new_manifest})
        expected = result['candidateVersion']
        code = expected['cameraVersionCode' if kind == 'Camera' else 'lspVersionCode']
        report['candidateVersionMatches'] = (any(hex(code) in line for line in new_version)
                                             and any(expected['versionName'] in line for line in new_version))
        dex_changes = [n for n in report['changed'] if re.fullmatch(r'classes\d*\.dex', n)]
        allowed = {'AndroidManifest.xml'} | (SIGNATURES if kind == 'LSP' else set()) | set(dex_changes)
        report['unexpectedChanges'] = sorted(set(report['changed']) - allowed)
        report['dexByteChanges'] = dex_changes
        report['smaliEqual'] = True
        if dex_changes:
            # Decode both actual release APKs, never compare against assumed source state.
            trees = [work / f'{kind}-{label}' for label in ('reference', 'candidate')]
            for apk, tree in zip((old, new), trees):
                decode(apk, tree, args.apktool)
            first, second = map(smali_index, trees)
            report['referenceClassCount'] = len(first)
            report['candidateClassCount'] = len(second)
            report['smaliEqual'] = first == second
            report['changedClasses'] = [name for name in sorted(first.keys() | second.keys())
                                        if first.get(name) != second.get(name)]
        if kind == 'Camera':
            report['oemSigningBlockEqual'] = signing_block(old.read_bytes()) == signing_block(new.read_bytes())
        else:
            signer = args.android_sdk / 'build-tools/35.0.0/lib/apksigner.jar'
            certificates = []
            for apk in (old, new):
                verified = subprocess.check_output(['java', '-jar', str(signer), 'verify',
                                                    '--print-certs', str(apk)], text=True)
                certificates.append(re.search(r'Signer #1 certificate SHA-256 digest: (\w+)', verified).group(1))
            report['standardSignaturesVerified'] = True
            report['signingCertificates'] = certificates
            report['signingCertificateEqual'] = certificates[0] == certificates[1]
        report['passed'] = not (report['added'] or report['removed'] or report['unexpectedChanges']) and all(
            report.get(k, True) for k in ('manifestEqualExceptVersion', 'candidateVersionMatches',
                                          'smaliEqual', 'oemSigningBlockEqual'))
        passed &= report['passed']
        result['apk'][kind] = report
        print(kind, 'PASS' if report['passed'] else 'FAIL', flush=True)
    old_module = one(args.reference_dir, '*_AllInOne.zip')
    new_module = one(args.candidate_dir, '*_AllInOne.zip')
    with zipfile.ZipFile(old_module) as old, zipfile.ZipFile(new_module) as new:
        static_old = {n for n in old.namelist() if not n.endswith(('/', '.apk'))}
        static_new = {n for n in new.namelist() if not n.endswith(('/', '.apk'))}
        differences, versions = [], []
        for name in sorted(static_old & static_new):
            first, second = old.read(name), new.read(name)
            if first == second:
                continue
            if name in ('module.prop', 'customize.sh', 'install-self-check.sh'):
                normalize = lambda b: re.sub(rb'(?m)^versionCode=\d+', b'versionCode=VERSION',
                                             re.sub(rb'Phoenix-\d+\.\d+\.\d+', b'Phoenix-VERSION', b))
                if normalize(first) == normalize(second):
                    versions.append(name)
                    continue
            differences.append(name)
        payloads = {}
        for kind in ('Camera', 'LSP'):
            apk = one(args.candidate_dir, f'Phoenix_{kind}_*.apk')
            payloads[kind] = new.read(apk.name) == apk.read_bytes()
        result['module'] = {'staticEntries': len(static_new), 'staticNamesEqual': static_old == static_new,
                            'versionOnlyChanges': versions, 'unexpectedChanges': differences,
                            'payloadsMatch': payloads}
        passed &= static_old == static_new and not differences and all(payloads.values())
    result['passed'] = bool(passed)
    write_json(args.output, result)
    print('Overall', 'PASS' if passed else 'FAIL', flush=True)
    if not passed:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
