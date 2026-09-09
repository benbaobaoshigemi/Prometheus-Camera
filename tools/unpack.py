"""Decode an APK with the project's pinned Apktool."""
import argparse
import subprocess
from pathlib import Path


def decode(apk, output, apktool, framework=None):
    subprocess.run(['java', '-jar', str(apktool), 'd', '-j', '8', str(apk),
                    '-o', str(output), '-p', str(framework or output.parent / 'framework')], check=True)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('input', type=Path)
    parser.add_argument('output', type=Path)
    parser.add_argument('--apktool', type=Path, required=True)
    args = parser.parse_args()
    decode(args.input, args.output, args.apktool)
