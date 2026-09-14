"""Re-generate and verify the checked-in M3 ASF table artifact.

This is a host-only static check.  It reads the original 17U tuning assets,
decodes both sides of each closed pair, and requires byte-identical output to
``native/m3_asf_data.inc``.  No device or camera library is involved.
"""

from __future__ import annotations

import json
import tempfile
from pathlib import Path

from generate_m3_asf_data import generate


ROOT = Path(__file__).resolve().parents[1]


def main() -> None:
    checked_in = ROOT / "native" / "m3_asf_data.inc"
    manifest = json.loads(
        (ROOT / "evidence" / "m3_asf_generated_manifest.json").read_text(encoding="utf-8")
    )
    expected = {
        "kUltra": (508, 504, 8, 9),
        "kWidePreview": (5678, 585, 57, 57),
    }
    for route in manifest["routes"]:
        key = route["route"]
        if key not in expected:
            raise AssertionError(f"unexpected generated route: {key}")
        if (
            route["donor_record"],
            route["ordinary_record"],
            route["donor_leaf_count"],
            route["ordinary_leaf_count"],
        ) != expected[key]:
            raise AssertionError(f"route metadata mismatch: {route}")

    with tempfile.TemporaryDirectory(prefix="verify_m3_asf_") as temp:
        temp_root = Path(temp)
        generated = temp_root / "m3_asf_data.inc"
        generated_manifest = temp_root / "manifest.json"
        generate(generated, generated_manifest)
        if generated.read_bytes() != checked_in.read_bytes():
            raise AssertionError(
                "native/m3_asf_data.inc is stale; run tools/generate_m3_asf_data.py"
            )
    print("M3 ASF generated data: PASS (ultra 508-504, wide 5678-585)")


if __name__ == "__main__":
    main()
