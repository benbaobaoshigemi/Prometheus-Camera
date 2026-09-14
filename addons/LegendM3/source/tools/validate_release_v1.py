from __future__ import annotations

import hashlib
import json
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[1]
version = json.loads((ROOT / "lsp/version.json").read_text(encoding="utf-8"))
stem = version["versionName"]
apk = ROOT / "dist" / f"{stem}-LSP.apk"
module = ROOT / "dist" / f"{stem}-Module.zip"


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


with zipfile.ZipFile(apk) as archive:
    assert archive.testzip() is None
    dex = archive.read("classes.dex")
    assert b"mb.a$i" in dex and b"lb.a$i" in dex

with zipfile.ZipFile(module) as archive:
    assert archive.testzip() is None
    prop = archive.read("module.prop").decode("utf-8")
    assert "name=PhoenixAddon-LegendM3\n" in prop
    assert "version=V1.0.0\n" in prop
    assert "versionCode=2011000\n" in prop
    module_files = archive.namelist()

sys_path = ROOT / "_verification_scripts"
import sys
sys.path.insert(0, str(sys_path))
import verify_exif_interop as exif

samples = ROOT / "_debug/exif_samples"
exif_cases = [
    exif.inspect(samples / "IMG_20260914_004630.jpg"),
    exif.inspect(samples / "IMG_20260914_004630_fixed2.jpg"),
    exif.inspect(samples / "IMG_20260914_004617_fixed2.jpg"),
    exif.inspect(samples / "IMG_20260914_005006_fixed2.jpg"),
]
assert exif_cases[0]["backward_interop"] and exif_cases[0]["essential"] == 2
assert all(not item["backward_interop"] and item["essential"] == 2 for item in exif_cases[1:])
assert exif_cases[1]["interop_ifd"] is None
assert exif_cases[2]["interop_ifd"] is None
assert exif_cases[3]["interop_ifd"] is not None

jpeg_regression = json.loads((ROOT / "evidence/m3_jpeg_verification.json").read_text())
assert len(jpeg_regression) == 3
assert all(item["container_verified"] and item["pixels_preserved"] and
           item["payload_preserved"] for item in jpeg_regression)

report = {
    "product": "PhoenixAddon-LegendM3",
    "release": "V1.0.0",
    "version": version,
    "artifacts": {
        "lsp": {"file": apk.name, "bytes": apk.stat().st_size, "sha256": digest(apk)},
        "module": {"file": module.name, "bytes": module.stat().st_size,
                   "sha256": digest(module), "files": len(module_files)},
    },
    "exif": {
        "failure_oracle": "ExifIFD tag 0xA005 target is before the current ExifIFD",
        "original_failure_reproduced": True,
        "backward_source_removed": True,
        "relocation_created_backward_removed": True,
        "remaining_forward_pointer_preserved": True,
        "essential_tag_0x88b0": 2,
    },
    "media_editor_gate_candidates": ["mb.a$i", "lb.a$i"],
    "jpeg_regression_cases": len(jpeg_regression),
    "jpeg_pixels_preserved": True,
    "jpeg_payload_preserved": True,
}
(ROOT / "evidence/release_acceptance_v1.0.0.json").write_text(
    json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps(report, ensure_ascii=False, indent=2))
