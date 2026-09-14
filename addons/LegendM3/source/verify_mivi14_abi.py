"""Verify only the OS4 14U Mivi ABI facts encoded in native/mivi14.h."""
from pathlib import Path
import argparse
from capstone import CS_ARCH_ARM64, CS_MODE_ARM, Cs
from elftools.elf.elffile import ELFFile

ROOT = Path(__file__).resolve().parent
ENGINE = ROOT / "inputs/device-os4/libmialgoengine.so"
FILTER = ROOT / "inputs/device-os4/com.xiaomi.plugin.filter.so"


def text_instructions(path: Path, start: int, end: int):
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        section = elf.get_section_by_name(".text")
        if section is None:
            raise AssertionError(f"{path}: .text missing")
        base = section["sh_addr"]
        if start < base or end > base + section["sh_size"]:
            raise AssertionError(f"{path}: range {start:#x}..{end:#x} outside .text")
        code = bytes(section.data())[start - base : end - base]
    cs = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    return list(cs.disasm(code, start))


def has_sequence(insns, predicates):
    for i in range(len(insns) - len(predicates) + 1):
        if all(predicates[j](insns[i + j]) for j in range(len(predicates))):
            return insns[i].address
    return None


def op(mnemonic, text=None):
    return lambda ins: ins.mnemonic == mnemonic and (text is None or ins.op_str == text)


def verify_provider_calls():
    ins = text_instructions(ENGINE, 0x827F8, 0x82810)
    assert has_sequence(ins, [op("ldr", "x20, [x24]"), op("ldr", "x8, [x20]"), op("mov", "x0, x20"), op("ldr", "x9, [x8, #0x28]"), op("add", "x8, sp, #0x10"), op("blr", "x9")]) == 0x827F8
    ins = text_instructions(ENGINE, 0x82AFC, 0x82B0C)
    assert has_sequence(ins, [op("ldr", "x8, [x20]"), op("mov", "x0, x20"), op("ldr", "x8, [x8, #0x20]"), op("blr", "x8")]) == 0x82AFC


def verify_plugin_slots():
    checks = {
        "initialize": (0x43C20, 0x43C40, ""),
        "destroy": (0x45750, 0x45778, "0x38"),
        "post_process": (0x457D4, 0x457E8, "0x28"),
        "is_enabled": (0x46454, 0x46468, "0x40"),
        "process_v2": (0x4D994, 0x4DA08, "0x18"),
    }
    found = {}
    for name, (start, end, slot) in checks.items():
        ins = text_instructions(ENGINE, start, end)
        if name == "initialize":
            pos = has_sequence(ins, [op("ldr", "x8, [x0]"), op("ldr", "x8, [x8]")])
            assert pos is not None and any(x.mnemonic == "blr" and x.op_str == "x8" for x in ins if pos < x.address <= pos + 0x20), "PluginWraper initialize missing"
        else:
            # The exact source register varies between dispatches; verify the
            # distinctive second vptr load and an indirect branch nearby.
            pos = next((x.address for x in ins if x.mnemonic == "ldr" and x.op_str.endswith(f"[x8, #{slot}]")), None)
            assert pos is not None and any(x.mnemonic == "blr" and x.op_str == "x8" for x in ins if pos < x.address <= pos + 0x20), f"PluginWraper {name} slot {slot!r} missing"
        found[name] = hex(pos)
    return found


def verify_filter():
    v1 = text_instructions(FILTER, 0xC218, 0xC2B0)
    assert any(x.mnemonic == "ldr" and x.op_str == "x23, [x1]" for x in v1)
    assert any(x.mnemonic == "ldr" and x.op_str == "x24, [x1, #0x18]" for x in v1)

    # V2 export is an intentional stock stub: bti; mov w0,#0; ret.
    ins = text_instructions(FILTER, 0xD4D0, 0xD4DC)
    assert [x.mnemonic for x in ins] == ["bti", "mov", "ret"]
    assert ins[1].op_str == "w0, wzr"

    # convertImageParams reads the proven 14U source offsets and writes the
    # MiImageBuffer prefix.  Check the exact load offsets at the entrypoint.
    ins = text_instructions(FILTER, 0xD4F0, 0xD570)
    loads = {(x.mnemonic, x.op_str) for x in ins if x.mnemonic in ("ldr", "ldur")}
    for off in ("[x1]", "[x1, #4]", "[x1, #8]", "[x1, #0x1c]", "[x1, #0x20]", "[x1, #0x48]"):
        assert any(off in text for _, text in loads), f"converter source {off} missing"
    assert any("#0x4c" in text for _, text in loads), "converter fd source +0x4c missing"
    assert any("x1, #0x58" in x.op_str for x in ins if x.mnemonic == "add")

    # The engine invokes the V2 slot with a temporary request object at
    # sp+0xc8; this is the only complete host-side location proven for V2.
    call = text_instructions(ENGINE, 0x4D994, 0x4DA08)
    assert any(x.mnemonic == "ldr" and x.op_str == "x8, [x8, #0x18]" for x in call)
    assert any(x.mnemonic == "add" and x.op_str == "x1, sp, #0xc8" for x in call)


def verify_imageparams_stride():
    ins = text_instructions(ENGINE, 0x5B5E0, 0x5C560)
    # Both vector append and vector copy materialize the element size as an
    # immediate and increment iterators by that exact amount.
    assert any(x.mnemonic == "mov" and x.op_str in ("w9, #0x98", "w8, #0x98") for x in ins)
    assert any(x.mnemonic == "add" and x.op_str.endswith("#0x98") for x in ins)
    # The copy paths retain the qword at +0x88, +0x78, +0x68 and +0x58.
    for off in ("#0x88", "#0x78", "#0x68", "#0x58"):
        assert any(x.mnemonic in ("ldur", "stur") and off in x.op_str for x in ins), f"ImageParams block {off} missing"


def main():
    global ENGINE, FILTER
    ap = argparse.ArgumentParser()
    ap.add_argument("--engine", type=Path, default=ENGINE)
    ap.add_argument("--filter", dest="filter_elf", type=Path, default=FILTER)
    args = ap.parse_args()
    ENGINE, FILTER = args.engine, args.filter_elf
    verify_provider_calls()
    slots = verify_plugin_slots()
    verify_filter()
    verify_imageparams_stride()
    print("Passed mivi14 ABI verification:")
    print("  provider create +0x20, getName +0x28")
    print(f"  PluginWraper dispatches: {slots}")
    print("  filter V2 stub and convertImageParams source offsets")
    print("  ImageParams vector element stride 0x98 and copied qword blocks")


if __name__ == "__main__":
    main()
