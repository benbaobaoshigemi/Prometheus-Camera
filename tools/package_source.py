"""Package only the public build inputs, without APKs, caches or signing keys."""
import argparse
import json
import subprocess
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DIRECTORIES = ('camera', 'lsp', 'module', 'tools')
FILES = ('.gitignore', '.gitattributes', 'README.md', 'AI_CONTEXT.md', 'LICENSE', 'version.json', 'supported-camera.json',
         'third-party.json', 'verification.json')
EXCLUDED = {'lsp/original', 'lsp/build', 'lsp/dist', 'tools/vendor', 'tools/__pycache__'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    version = json.loads((ROOT / 'version.json').read_text(encoding='utf-8'))['versionName']
    output = args.output or ROOT / 'dist' / f'{version}-source.zip'
    output.parent.mkdir(parents=True, exist_ok=True)
    files = [ROOT / name for name in FILES if (ROOT / name).is_file()]
    for directory in DIRECTORIES:
        files.extend(p for p in (ROOT / directory).rglob('*') if p.is_file()
                     and not any(p.relative_to(ROOT).as_posix().startswith(prefix + '/') for prefix in EXCLUDED)
                     and p.suffix.lower() not in ('.apk', '.keystore', '.jks', '.pyc', '.idsig'))
    temporary = output.with_suffix('.pending.zip')
    with zipfile.ZipFile(temporary, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path in sorted(files):
            archive.write(path, path.relative_to(ROOT).as_posix())
        revision = subprocess.run(['git', '-C', str(ROOT), 'rev-parse', 'HEAD'], capture_output=True, text=True)
        status = subprocess.run(['git', '-C', str(ROOT), 'status', '--porcelain', '--', '.'], capture_output=True, text=True)
        archive.writestr('source-revision.json', json.dumps({
            'gitRevision': revision.stdout.strip() if revision.returncode == 0 else None,
            'gitStatus': status.stdout.splitlines() if status.returncode == 0 else None,
            'versionName': version}, indent=2) + '\n')
    temporary.replace(output)
    print(f'{output}: {len(files)} files, {output.stat().st_size} bytes')


if __name__ == '__main__':
    main()
