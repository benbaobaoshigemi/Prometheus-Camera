"""Generate the static M3-minus-ordinary ASF delta tables.

The source is the decoded 17U ASF353 tuning.  This generator deliberately
does not copy a complete donor table: it emits only the six 64-float windows
that differ between the M3 record and its feature0=7 ordinary comparator.
The runtime can therefore add the M3 delta to the current 14U ASF351 result
and retain all 14U generic tuning.
"""

from __future__ import annotations

import argparse
import json
import struct
from pathlib import Path
from tempfile import TemporaryDirectory

from decode_asf353_regions import decode_records


ROOT = Path(__file__).resolve().parents[1]
INVENTORY = ROOT / "evidence" / "asf_sensor_inventory.json"
DEFAULT_OUT = ROOT / "native" / "m3_asf_data.inc"
DEFAULT_MANIFEST = ROOT / "evidence" / "m3_asf_generated_manifest.json"
WINDOWS = (0x50, 0x150, 0x250, 0x490, 0x590, 0x690)

# The target ASF351 object has the same six logical 64-float windows at these
# offsets.  The values are deltas, never absolute donor data.
TARGET_WINDOWS = (0x350, 0x450, 0x550, 0xAA0, 0xBA0, 0xCA0)

ROUTES = (
    ("kUltra", "ofilm_s5kjn5_ultra_i", 508, 504),
    ("kWidePreview", "ofilm_ovx10500u_wide_ii", 5678, 585),
)


def _float_hex(value: float) -> str:
    """Emit an exact C++ hexadecimal float literal."""

    return value.hex() + "f"


def _inventory_rows(inventory: dict, sensor: str, record_ids: set[int]) -> list[dict]:
    for row in inventory["sensors"]:
        if row["sensor"] != sensor:
            continue
        result = []
        for record in row["records"]:
            if int(record["record"]) in record_ids:
                result.append(
                    {
                        "record": int(record["record"]),
                        "name": "asf353_ipe_v2",
                        "data_start": hex(int(record["module_descriptor"]["module_descriptor_offset"])),
                        "size": int(record["module_descriptor"]["module_descriptor_size"]),
                    }
                )
        if len(result) != len(record_ids):
            raise ValueError(
                f"{sensor}: expected records {sorted(record_ids)}, got "
                f"{sorted(int(x['record']) for x in result)}"
            )
        return result
    raise ValueError(f"sensor is absent from inventory: {sensor}")


def _read_leaves(manifest: dict, out_dir: Path) -> dict[tuple, list[float]]:
    leaves = {}
    for record in manifest["records"]:
        for leaf in record["leaves"]:
            path = tuple(tuple(float(x) for x in axis) for axis in leaf["path"])
            if path in leaves:
                raise ValueError(f"duplicate trigger path in record {record['record']}: {path}")
            raw = (out_dir / leaf["numeric_region_file"]).read_bytes()
            leaves[path] = [
                value
                for offset in WINDOWS
                for value in struct.unpack_from("<64f", raw, offset)
            ]
    return leaves


def _emit_array(values: list[float], indent: str = "            ") -> str:
    rows = []
    for start in range(0, len(values), 8):
        rows.append(indent + ", ".join(_float_hex(x) for x in values[start : start + 8]))
    return ",\n".join(rows)


def generate(out_path: Path, manifest_path: Path) -> dict:
    inventory = json.loads(INVENTORY.read_text(encoding="utf-8"))
    generated: list[dict] = []
    cpp_routes: list[str] = []

    with TemporaryDirectory(prefix="m3_asf_decode_") as temp:
        temp_root = Path(temp)
        for route_name, sensor, donor_id, ordinary_id in ROUTES:
            source = next(
                Path(row["physical_sensor_file"])
                for row in inventory["sensors"]
                if row["sensor"] == sensor
            )
            out_dir = temp_root / route_name
            index_path = out_dir / "index.json"
            out_dir.mkdir(parents=True)
            rows = _inventory_rows(inventory, sensor, {donor_id, ordinary_id})
            index_path.write_text(json.dumps({"records": rows}), encoding="utf-8")
            decoded = decode_records(source, index_path, [donor_id, ordinary_id], out_dir)
            records = {int(row["record"]): row for row in decoded["records"]}

            donor = _read_leaves({"records": [records[donor_id]]}, out_dir)
            ordinary = _read_leaves({"records": [records[ordinary_id]]}, out_dir)
            leaves = []
            nonzero = 0
            # The two tuning trees need not have identical trigger partitions
            # (the ultra comparator has one extra branch).  Keep both curves
            # and evaluate donor-minus-comparator at runtime; this is the
            # same interpolation order as CamX and remains valid at gaps.
            for path, values in donor.items():
                leaves.append({"path": path, "values": values, "kind": "donor"})
            for path, values in ordinary.items():
                leaves.append({"path": path, "values": values, "kind": "ordinary"})
            common = donor.keys() & ordinary.keys()
            for path in common:
                if any(a != b for a, b in zip(donor[path], ordinary[path])):
                    nonzero += 1

            generated.append(
                {
                    "route": route_name,
                    "sensor": sensor,
                    "donor_record": donor_id,
                    "ordinary_record": ordinary_id,
                    "donor_leaf_count": len(donor),
                    "ordinary_leaf_count": len(ordinary),
                    "nonzero_leaf_count": nonzero,
                    "source": str(source),
                    "windows": [hex(x) for x in WINDOWS],
                    "target_windows": [hex(x) for x in TARGET_WINDOWS],
                }
            )

            leaf_cpp = []
            for item in leaves:
                path = item["path"]
                values = item["values"]
                bounds = ", ".join(
                    "{" + _float_hex(float(axis[0])) + ", " + _float_hex(float(axis[1])) + "}"
                    for axis in path
                )
                indices = ", ".join(str(int(axis[2])) for axis in path)
                arrays = []
                for window in range(len(WINDOWS)):
                    window_values = values[window * 64 : (window + 1) * 64]
                    arrays.append("{\n" + _emit_array(window_values) + "\n        }")
                leaf_cpp.append(
                    "        {\n"
                    f"            {{{bounds}}},\n"
                    f"            {{{indices}}},\n"
                    "            {\n"
                    + ",\n".join("                " + x for x in arrays)
                    + "\n            },\n"
                    f"            {'true' if item['kind'] == 'donor' else 'false'}\n"
                    "        }"
                )
            cpp_routes.append(
                f"static const AsfCurveLeaf {route_name}Leaves[] = {{\n"
                + ",\n".join(leaf_cpp)
                + "\n};\n"
            )

    header = "// Generated by tools/generate_m3_asf_data.py. Do not edit by hand.\n"
    text = (
        header
        + "#include \"m3_asf.h\"\n\n"
        + "namespace phoenix::m3::asf_data {\n\n"
        + "using phoenix::m3::AsfCurveLeaf;\n\n"
        + ""
        + "\n".join(cpp_routes)
        + "\nconst AsfCurveTable kUltra = {kUltraLeaves, sizeof(kUltraLeaves) / sizeof(kUltraLeaves[0])};\n"
        + "const AsfCurveTable kWidePreview = {kWidePreviewLeaves, sizeof(kWidePreviewLeaves) / sizeof(kWidePreviewLeaves[0])};\n\n"
        + "} // namespace phoenix::m3::asf_data\n"
    )
    out_path.write_text(text, encoding="utf-8")
    manifest_path.write_text(
        json.dumps(
            {
                "generator": "tools/generate_m3_asf_data.py",
                "windows": [hex(x) for x in WINDOWS],
                "target_windows": [hex(x) for x in TARGET_WINDOWS],
                "routes": generated,
                "unsupported": ["wide_snapshot", "tele", "unmatched_feature0_routes"],
            },
            indent=2,
        )
        + "\n",
        encoding="utf-8",
    )
    return {"routes": generated, "output": str(out_path)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--out", type=Path, default=DEFAULT_OUT)
    parser.add_argument("--manifest", type=Path, default=DEFAULT_MANIFEST)
    args = parser.parse_args()
    result = generate(args.out, args.manifest)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
