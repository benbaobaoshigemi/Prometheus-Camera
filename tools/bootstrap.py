"""Download the pinned Apktool to a project-local, ignored directory."""
import subprocess
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
VERSION = '2.12.1'
URL = f'https://github.com/iBotPeaches/Apktool/releases/download/v{VERSION}/apktool_{VERSION}.jar'


def main():
    target = ROOT / f'tools/vendor/apktool_{VERSION}.jar'
    target.parent.mkdir(parents=True, exist_ok=True)
    if not target.exists():
        temporary = target.with_suffix('.download')
        print(f'Downloading {URL}', flush=True)
        urllib.request.urlretrieve(URL, temporary)
        actual = subprocess.check_output(['java', '-jar', str(temporary), '--version'], text=True).strip()
        if actual != VERSION:
            raise ValueError(f'Expected Apktool {VERSION}, got {actual}')
        temporary.replace(target)
    subprocess.run(['java', '-jar', str(target), '--version'], check=True)
    print(f'Apktool: {target}')
    print('Also install Android SDK Build-Tools 35.0.0 using the Android SDK Manager.')


if __name__ == '__main__':
    main()
