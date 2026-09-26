#!/usr/bin/env python3
"""Build Phoenix 1.2.0 and the standalone AUTHVignette Addon.

The main package is derived from the verified Phoenix 1.1.15 All-in-One and
the verified Phoenix 1.1.16 LSP.  The vignette entry class is physically
removed from the main LSP, while its native payload and formula services are
physically removed from the main root module.  The same business is built as
an independent LSP and root module.
"""
from __future__ import annotations

import hashlib
import json
import os
import re
import shutil
import struct
import subprocess
import tempfile
import zipfile
from copy import copy
from pathlib import Path

from androguard.core.axml import AXMLPrinter
from lxml import etree
from loguru import logger

logger.remove()


ROOT = Path(__file__).resolve().parents[1]
BASE_PACKAGE = ROOT / "release/Phoenix-1.1.15/Phoenix_Phoenix-1.1.15_AllInOne.zip"
BASE_LSP = ROOT / "release/Phoenix-1.1.16/Phoenix_LSP_Phoenix-1.1.16.apk"
OUT = ROOT / "release/Phoenix-1.2.0"
ADDON = ROOT / "addons/AUTHVignette/source"
ADDON_RELEASE = ROOT / "addons/AUTHVignette/release"
WORK = ROOT / "work/auth-vignette-split-120"
APKTOOL = ROOT.parent.parent / "tools/vendor/apktool_2.12.1.jar"
SDK = Path(os.environ.get("LOCALAPPDATA", Path.home() / "AppData/Local")) / "Android/Sdk"
BUILD_TOOLS = SDK / "build-tools/35.0.0"
ANDROID = SDK / "platforms/android-35/android.jar"
XPOSED = ROOT.parent.parent / "tools/vendor/xposed-api-82.jar"
KEY = Path.home() / ".android/debug.keystore"
MAIN_VERSION = "Phoenix-1.2.0"
CAMERA_CODE = 760010200
LSP_CODE = 2010200
MODULE_CODE = 2010200
SIGNATURE = re.compile(r"^META-INF/(?:[^/]+\.(?:SF|RSA|DSA|EC)|MANIFEST\.MF)$", re.I)


def run(*args: object, capture: bool = False) -> subprocess.CompletedProcess:
    print(">", " ".join(map(str, args)), flush=True)
    return subprocess.run(
        list(map(str, args)), check=True,
        capture_output=capture, text=capture,
    )


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest().upper()


def update_apktool_version(tree: Path, name: str, code: int) -> None:
    path = tree / "apktool.yml"
    text = path.read_text(encoding="utf-8")
    text, names = re.subn(r"(?m)^(\s*versionName:\s*).*$", rf"\g<1>{name}", text, count=1)
    text, codes = re.subn(r"(?m)^(\s*versionCode:\s*).*$", rf"\g<1>{code}", text, count=1)
    if (names, codes) != (1, 1):
        raise RuntimeError(f"version anchors missing in {path}")
    path.write_text(text, encoding="utf-8", newline="\n")


def xml_version(data: bytes) -> tuple[str, int]:
    root = AXMLPrinter(data).get_xml_obj()
    android = "{http://schemas.android.com/apk/res/android}"
    return root.get(android + "versionName"), int(root.get(android + "versionCode"))


def central_directory_offset(data: bytes) -> tuple[int, int]:
    marker = data.rfind(b"PK\x05\x06")
    if marker < 0:
        raise RuntimeError("APK EOCD missing")
    return marker, struct.unpack_from("<I", data, marker + 16)[0]


def signing_block(data: bytes) -> bytes:
    _, central = central_directory_offset(data)
    if central < 24 or data[central - 16:central] != b"APK Sig Block 42":
        raise RuntimeError("APK signing block missing")
    size = struct.unpack_from("<Q", data, central - 24)[0]
    start = central - size - 8
    block = data[start:central]
    if struct.unpack_from("<Q", block, 0)[0] != size:
        raise RuntimeError("APK signing block size mismatch")
    return block


def inject_signing_block(apk: Path, block: bytes, output: Path) -> None:
    data = apk.read_bytes()
    eocd, central = central_directory_offset(data)
    result = bytearray(data[:central] + block + data[central:])
    struct.pack_into("<I", result, eocd + len(block) + 16, central + len(block))
    output.write_bytes(result)


def reversion_camera(source: Path, output: Path, replacements: dict[str, bytes] | None = None) -> dict:
    replacements = replacements or {}
    tree = WORK / "camera-version-tree"
    if tree.exists():
        shutil.rmtree(tree)
    run("java", "-jar", APKTOOL, "d", "-f", source, "-o", tree)
    update_apktool_version(tree, MAIN_VERSION, CAMERA_CODE)
    rebuilt = WORK / "camera-version-rebuilt.apk"
    run("java", "-jar", APKTOOL, "b", tree, "-o", rebuilt)
    with zipfile.ZipFile(rebuilt) as archive:
        manifest = archive.read("AndroidManifest.xml")
    before_manifest = zipfile.ZipFile(source).read("AndroidManifest.xml")
    before_xml = AXMLPrinter(before_manifest).get_xml_obj()
    after_xml = AXMLPrinter(manifest).get_xml_obj()
    android = "{http://schemas.android.com/apk/res/android}"
    before_xml.set(android + "versionName", MAIN_VERSION)
    before_xml.set(android + "versionCode", str(CAMERA_CODE))
    if etree.tostring(before_xml) != etree.tostring(after_xml):
        raise RuntimeError("camera manifest changed outside version fields")
    unsigned = WORK / "camera-version-unsigned.apk"
    with zipfile.ZipFile(source) as old, zipfile.ZipFile(unsigned, "w", allowZip64=True) as new:
        for info in old.infolist():
            if SIGNATURE.fullmatch(info.filename):
                continue
            new.writestr(info, manifest if info.filename == "AndroidManifest.xml"
                         else replacements.get(info.filename, old.read(info)))
    aligned = WORK / "camera-version-aligned.apk"
    run(BUILD_TOOLS / "zipalign.exe", "-f", "-P", "16", "4", unsigned, aligned)
    block = signing_block(source.read_bytes())
    pending = output.with_suffix(".pending.apk")
    inject_signing_block(aligned, block, pending)
    if signing_block(pending.read_bytes()) != block:
        raise RuntimeError("camera OEM signing block not preserved")
    pending.replace(output)
    with zipfile.ZipFile(source) as old, zipfile.ZipFile(output) as new:
        changed = [n for n in old.namelist() if not SIGNATURE.fullmatch(n)
                   and old.read(n) != new.read(n)]
    if set(changed) != {"AndroidManifest.xml", *replacements}:
        raise RuntimeError(f"unexpected Camera payload changes: {changed}")
    return {"source": str(source), "changedEntries": changed,
            "oemSigningBlockPreserved": True}


def build_main_lsp(source: Path, output: Path) -> dict:
    tree = WORK / "main-lsp-tree"
    if tree.exists():
        shutil.rmtree(tree)
    run("java", "-jar", APKTOOL, "d", "-f", source, "-o", tree)
    update_apktool_version(tree, MAIN_VERSION, LSP_CODE)
    init = tree / "assets/xposed_init"
    lines = [line for line in init.read_text(encoding="utf-8").splitlines()
             if line.strip() != "com.prometheus.camera.rev.VignetteSettings"]
    init.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8", newline="\n")
    removed = []
    for smali_root in tree.glob("smali*"):
        package = smali_root / "com/prometheus/camera/rev"
        if package.is_dir():
            for path in package.glob("VignetteSettings*.smali"):
                removed.append(path.relative_to(tree).as_posix())
                path.unlink()
        fragments = smali_root / "com/prometheus/camera/filters"
        for class_name in ("VignettePreferenceFragment.smali",
                           "VignetteExperimentalFragment.smali"):
            path = fragments / class_name
            if path.is_file():
                removed.append(path.relative_to(tree).as_posix())
                path.unlink()
    if not removed:
        raise RuntimeError("VignetteSettings classes missing from 1.1.16 LSP")
    rebuilt = WORK / "main-lsp-rebuilt.apk"
    run("java", "-jar", APKTOOL, "b", tree, "-o", rebuilt)
    aligned = WORK / "main-lsp-aligned.apk"
    run(BUILD_TOOLS / "zipalign.exe", "-f", "-P", "16", "4", rebuilt, aligned)
    pending = output.with_suffix(".pending.apk")
    pending.with_suffix(pending.suffix + ".idsig").unlink(missing_ok=True)
    run(BUILD_TOOLS / "apksigner.bat", "sign", "--ks", KEY,
        "--ks-key-alias", "androiddebugkey", "--ks-pass", "pass:android",
        "--key-pass", "pass:android", "--v4-signing-enabled", "false",
        "--out", pending, aligned)
    run(BUILD_TOOLS / "apksigner.bat", "verify", pending)
    pending.replace(output)
    with zipfile.ZipFile(output) as archive:
        xposed = archive.read("assets/xposed_init").decode("utf-8")
        dex = b"".join(archive.read(n) for n in archive.namelist()
                       if re.fullmatch(r"classes\d*\.dex", n))
    forbidden = [b"Lcom/prometheus/camera/rev/VignetteSettings;",
                 b"Lcom/prometheus/camera/filters/VignettePreferenceFragment;",
                 b"Lcom/prometheus/camera/filters/VignetteExperimentalFragment;",
                 b"PhoenixVignette", b"phoenix_vignette_settings"]
    if any(item in dex for item in forbidden):
        raise RuntimeError("main LSP still contains vignette hook implementation")
    if "VignetteSettings" in xposed:
        raise RuntimeError("main LSP still registers vignette hook")
    return {"source": str(source), "removedSmali": removed,
            "xposedEntryRemoved": True, "physicalDexRemoval": True}


def patch_main_script(name: str, data: bytes) -> bytes:
    text = data.decode("utf-8")
    if name == "module.prop":
        text = re.sub(r"(?m)^version=.*$", f"version={MAIN_VERSION}", text, count=1)
        text = re.sub(r"(?m)^versionCode=.*$", f"versionCode={MODULE_CODE}", text, count=1)
    elif name == "customize.sh":
        text = re.sub(r'(?m)^VERSION="[^"]+"$', f'VERSION="{MAIN_VERSION}"', text, count=1)
        text = re.sub(r'(?m)^LSP_APK="\$MODPATH/[^"]+"$',
                      f'LSP_APK="$MODPATH/Phoenix_LSP_{MAIN_VERSION}.apk"', text, count=1)
        text = re.sub(r'(?m)^CAMERA_APK="\$MODPATH/[^"]+"$',
                      f'CAMERA_APK="$MODPATH/Phoenix_Camera_{MAIN_VERSION}.apk"', text, count=1)
        permissions = re.compile(
            r'for script in init-formula\.sh sync-formula\.sh formula-service\.sh formula-event\.sh; do\n'
            r'  set_perm "\$MODPATH/\$script" 0 0 0755\n'
            r'done\nset_perm_recursive "\$MODPATH/formulas" 0 0 0755 0644\n')
        text, count = permissions.subn("", text, count=1)
        if count != 1:
            raise RuntimeError("customize vignette permission block missing")
        text, count = re.subn(
            r'\nstage "初始化暗角着色器"\nsh "\$MODPATH/init-formula\.sh" \|\| fail "暗角着色器初始化失败"\n',
            "\n", text, count=1)
        if count != 1:
            raise RuntimeError("customize vignette initialization block missing")
        anchor = ('else\n'
                  '  [ ! -e "$MODPATH/payload/odm" ] || fail "模块私有 ODM 载荷目录已存在，拒绝覆盖"\n')
        replacement = ('else\n'
                       '  mkdir -p "$MODPATH/payload" || fail "无法创建模块私有载荷目录"\n'
                       '  [ ! -e "$MODPATH/payload/odm" ] || fail "模块私有 ODM 载荷目录已存在，拒绝覆盖"\n')
        if anchor not in text:
            raise RuntimeError("customize private payload directory anchor missing")
        text = text.replace(anchor, replacement, 1)
    elif name == "post-fs-data.sh":
        text = text.replace(
            "# KernelSU/APatch merge ODM assets manually. Magisk keeps its system tree.\n"
            "# The photo shader library is mounted independently for every manager.\n",
            "# KernelSU/APatch merge ODM assets manually. Magisk keeps its system tree.\n")
        block = re.compile(
            r'\nSHADER_LIBRARY="\$MODDIR/payload/libMiPhotoFilter\.so"\n.*?'
            r'echo "Phoenix photo shader library mounted successfully"\n', re.S)
        text, count = block.subn("\n", text, count=1)
        if count != 1:
            raise RuntimeError("post-fs-data vignette library block missing")
    elif name == "service.sh":
        text, count = re.subn(
            r'\n# Camera preview can read the app-private LUT directly, while MIVI still\n'
            r'# resolves the same token under /data/vendor/camera\. Keep both copies in sync\n'
            r'# after the camera resource extractor has populated its built-in placeholders\.\n'
            r'sh "\$MODDIR/formula-service\.sh" >"\$MODDIR/formula-service\.log" 2>&1 &\n'
            r'log_startup "已启动暗角着色器同步，进程=\$!"\n', "\n", text, count=1)
        if count != 1:
            raise RuntimeError("service vignette launch block missing")
    elif name == "install-self-check.sh":
        text = re.sub(r'(?m)^VERSION="[^"]+"$', f'VERSION="{MAIN_VERSION}"', text, count=1)
        text = re.sub(r'(?m)^CAMERA_CODE=\d+$', f'CAMERA_CODE={CAMERA_CODE}', text, count=1)
        text = re.sub(r'(?m)^LSP_CODE=\d+$', f'LSP_CODE={LSP_CODE}', text, count=1)
        text = text.replace(
            '  "$MODROOT/init-formula.sh" "$MODROOT/sync-formula.sh" \\\n'
            '  "$MODROOT/formula-service.sh" "$MODROOT/formula-event.sh" \\\n', "")
        text = text.replace(
            '  "$MODROOT/payload/libMiPhotoFilter.so" "$MODROOT/formulas/original.glsl" \\\n', "")
        text = text.replace(
            '  verify-mount-owner.sh \\\n'
            '  init-formula.sh sync-formula.sh formula-service.sh formula-event.sh; do\n',
            '  verify-mount-owner.sh; do\n')
        text, count = re.subn(
            r'\nAPP_FORMULA=/data/user/0/com\.android\.camera/files/phoenix-vignette/colorDark\.glsl\n.*?'
            r'say "通过｜暗角着色器｜预览与成片公式一致"\n', "\n", text, count=1, flags=re.S)
        if count != 1:
            raise RuntimeError("install self-check vignette block missing")
    return text.encode("utf-8")


def build_main_module(base: Path, camera: Path, lsp: Path, output: Path) -> dict:
    remove = {
        "formula-event.sh", "formula-service.sh", "init-formula.sh", "sync-formula.sh",
        "formulas/chromatic.glsl", "formulas/cinestill-800t-halation.glsl",
        "formulas/identity.glsl", "formulas/original.glsl", "payload/libMiPhotoFilter.so",
    }
    old_apks = re.compile(r"^Phoenix_(?:Camera|LSP)_Phoenix-1\.1\.15\.apk$")
    pending = output.with_suffix(".pending.zip")
    with zipfile.ZipFile(base) as old, zipfile.ZipFile(pending, "w", allowZip64=True) as new:
        camera_info = copy(old.getinfo("Phoenix_Camera_Phoenix-1.1.15.apk"))
        lsp_info = copy(old.getinfo("Phoenix_LSP_Phoenix-1.1.15.apk"))
        for info in old.infolist():
            if info.filename in remove or old_apks.fullmatch(info.filename):
                continue
            data = old.read(info)
            if info.filename in {"module.prop", "customize.sh", "post-fs-data.sh",
                                 "service.sh", "install-self-check.sh"}:
                data = patch_main_script(info.filename, data)
            new.writestr(info, data)
        camera_info.filename = camera.name
        lsp_info.filename = lsp.name
        new.writestr(camera_info, camera.read_bytes())
        new.writestr(lsp_info, lsp.read_bytes())
    with zipfile.ZipFile(pending) as archive:
        if archive.testzip() is not None:
            raise RuntimeError("main All-in-One ZIP failed CRC validation")
        names = set(archive.namelist())
        if names & remove:
            raise RuntimeError(f"main module still contains vignette entries: {names & remove}")
        for script in ("customize.sh", "post-fs-data.sh", "service.sh", "install-self-check.sh"):
            body = archive.read(script)
            for marker in (b"formula-service", b"init-formula", b"libMiPhotoFilter", b"phoenix-vignette"):
                if marker in body:
                    raise RuntimeError(f"{script} still contains {marker!r}")
        if archive.read(camera.name) != camera.read_bytes() or archive.read(lsp.name) != lsp.read_bytes():
            raise RuntimeError("embedded APK payload mismatch")
    pending.replace(output)
    return {"source": str(base), "removedEntries": sorted(remove),
            "embeddedApksMatch": True, "zipCrcVerified": True}


def build_addon_lsp(output: Path, native_libraries: dict[str, Path] | None = None) -> dict:
    source = ADDON / "lsp"
    build = WORK / "addon-lsp"
    classes, dex, stub_classes = build / "classes", build / "dex", build / "stub-classes"
    shutil.rmtree(build, ignore_errors=True)
    classes.mkdir(parents=True)
    dex.mkdir()
    stub_classes.mkdir()
    stubs = sorted((source / "compile_stubs").rglob("*.java"))
    run("javac", "-encoding", "UTF-8", "-source", "8", "-target", "8",
        "-classpath", ANDROID, "-d", stub_classes, *stubs)
    java = sorted((source / "java").rglob("*.java"))
    run("javac", "-encoding", "UTF-8", "-source", "8", "-target", "8",
        "-classpath", f"{ANDROID};{XPOSED};{stub_classes}", "-d", classes, *java)
    jar = build / "auth-vignette.jar"
    run("jar", "--create", "--file", jar, "-C", classes, ".")
    run(BUILD_TOOLS / "d8.bat", "--release", "--min-api", "31", "--lib", ANDROID,
        "--classpath", XPOSED, "--output", dex, jar)
    resources = build / "resources.zip"
    run(BUILD_TOOLS / "aapt2.exe", "compile", "--dir", source / "res", "-o", resources)
    version = json.loads((source / "version.json").read_text(encoding="utf-8"))
    unsigned = build / "unsigned.apk"
    run(BUILD_TOOLS / "aapt2.exe", "link", "-I", ANDROID,
        "--manifest", source / "AndroidManifest.xml", "--min-sdk-version", "31",
        "--target-sdk-version", "35", "--version-code", version["versionCode"],
        "--version-name", version["versionName"], "-o", unsigned, resources)
    with zipfile.ZipFile(unsigned, "a") as apk:
        apk.write(dex / "classes.dex", "classes.dex", compress_type=zipfile.ZIP_STORED)
        apk.write(source / "assets/xposed_init", "assets/xposed_init",
                  compress_type=zipfile.ZIP_DEFLATED)
        for name, path in (native_libraries or {}).items():
            apk.write(path, name, compress_type=zipfile.ZIP_STORED)
    aligned = build / "aligned.apk"
    run(BUILD_TOOLS / "zipalign.exe", "-f", "-P", "16", "4", unsigned, aligned)
    pending = output.with_suffix(".pending.apk")
    pending.with_suffix(pending.suffix + ".idsig").unlink(missing_ok=True)
    run(BUILD_TOOLS / "apksigner.bat", "sign", "--ks", KEY,
        "--ks-key-alias", "androiddebugkey", "--ks-pass", "pass:android",
        "--key-pass", "pass:android", "--v4-signing-enabled", "false",
        "--out", pending, aligned)
    run(BUILD_TOOLS / "apksigner.bat", "verify", pending)
    badging = run(BUILD_TOOLS / "aapt2.exe", "dump", "badging", pending,
                  capture=True).stdout.splitlines()[0]
    if "name='com.phoenix.camera.authvignette'" not in badging:
        raise RuntimeError(badging)
    pending.replace(output)
    with zipfile.ZipFile(output) as archive:
        dex_data = archive.read("classes.dex")
        init = archive.read("assets/xposed_init").decode("utf-8").splitlines()
    required_classes = [b"Lcom/prometheus/camera/rev/VignetteSettings;",
                        b"Lcom/prometheus/camera/filters/VignettePreferenceFragment;",
                        b"Lcom/prometheus/camera/filters/VignetteExperimentalFragment;"]
    if any(item not in dex_data for item in required_classes):
        raise RuntimeError("Addon LSP is missing its vignette class closure")
    if init != ["com.prometheus.camera.rev.VignetteSettings"]:
        raise RuntimeError(f"unexpected Addon xposed_init: {init}")
    return {"badging": badging, "singleEntryPoint": True,
            "sources": [str(path) for path in java], "sha256": sha256(output.read_bytes())}


def build_addon_module(base: Path, output: Path) -> dict:
    source = ADDON / "module"
    version = json.loads((ADDON / "lsp/version.json").read_text(encoding="utf-8"))
    payload = {
        "module.prop": (
            "id=phoenix_auth_vignette\n"
            f"name={version['productName']}\n"
            f"version={version['releaseVersion']}\n"
            f"versionCode={version['moduleVersionCode']}\n"
            "author=Phoenix\n"
            "description=Leica Classic vignette shader Addon for Phoenix OS4 camera base.\n"
        ).encode("utf-8")
    }
    for path in source.rglob("*"):
        if path.is_file():
            payload[path.relative_to(source).as_posix()] = path.read_bytes()
    with zipfile.ZipFile(base) as archive:
        payload["payload/libMiPhotoFilter.so"] = archive.read("payload/libMiPhotoFilter.so")
    pending = output.with_suffix(".pending.zip")
    with zipfile.ZipFile(pending, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for name, data in sorted(payload.items()):
            archive.writestr(name, data)
    with zipfile.ZipFile(pending) as archive:
        if archive.testzip() is not None:
            raise RuntimeError("Addon root module CRC failure")
        names = set(archive.namelist())
        required = {"module.prop", "customize.sh", "post-fs-data.sh", "service.sh",
                    "init-formula.sh", "sync-formula.sh", "formula-service.sh",
                    "formula-event.sh", "formulas/original.glsl", "payload/libMiPhotoFilter.so"}
        if not required <= names:
            raise RuntimeError(f"Addon module missing entries: {required - names}")
    pending.replace(output)
    return {"source": str(base) + " vignette subset", "files": sorted(payload),
            "singleFileMountTarget": "/odm/lib64/libMiPhotoFilter.so",
            "sha256": sha256(output.read_bytes())}


def package_addon(lsp: Path, module: Path, validation: dict) -> list[Path]:
    ADDON_RELEASE.mkdir(parents=True, exist_ok=True)
    addon_version = json.loads((ADDON / "lsp/version.json").read_text(encoding="utf-8"))
    product = addon_version["versionName"]
    readme = f"""# {product}

Phoenix OS4 相机底包的徕卡经典暗角着色器 Addon。兼容性不绑定具体 Phoenix 版本；
只要 Phoenix 使用的 OS4 官方相机底包未变化即可使用。

## 安装

1. 解压外层 Package ZIP；不要把外层文件合集直接刷入 KernelSU。
2. 安装 `{product}-LSP.apk`，在 LSPosed 启用并勾选“相机”作用域。
3. 使用 KernelSU 官方模块安装命令安装 `{product}.zip`，然后重启。

仅更新 LSP 时无需重启；结束并重新打开相机进程即可。更新 ROOT 模块后必须重启，
以激活 `/odm/lib64/libMiPhotoFilter.so` 的单文件挂载。主 Phoenix 未安装本 Addon 时
不会注册 `VignetteSettings`，也不会安装任何暗角设置 Hook。

V1.1.0 起，预览库由 Addon 自己携带和定向加载，不修改主 Camera APK。
根模块先初始化成片公式再挂载成片库；LSP 仅在本次开机的根模块就绪状态、挂载和
预览公式均有效时注册业务 Hook。禁用 LSP 后重开相机可恢复官方预览；完整停用还需
禁用根模块并重启，以解除成片库挂载。不要通过删除公式文件停用 Addon。
本包以 aurora 的现有成片库为基础，小米 15 Ultra 不应安装此 Addon；不添加任何机型门控。
卸载 LSP 后，根模块下次开机跳过成片库挂载；卸载根模块后，遗留 LSP 不注册业务 Hook。
完整卸载后重启即可解除已加载原生库与挂载的影响，不需要重刷主 Camera 或清除相机数据。
"""
    version = (ADDON / "lsp/version.json").read_bytes()
    contents = {
        f"{product}.zip": module.read_bytes(),
        f"{product}-LSP.apk": lsp.read_bytes(),
        "README.md": readme.encode("utf-8"),
        "version.json": version,
        "validation.json": (json.dumps(validation, ensure_ascii=False, indent=2) + "\n").encode("utf-8"),
    }
    package = ADDON_RELEASE / f"{product}-Package.zip"
    with zipfile.ZipFile(package.with_suffix(".pending.zip"), "w",
                         compression=zipfile.ZIP_DEFLATED) as archive:
        for name, data in contents.items():
            archive.writestr(f"{product}/{name}", data)
    package.with_suffix(".pending.zip").replace(package)
    source_zip = ADDON_RELEASE / f"{product}-Source.zip"
    with zipfile.ZipFile(source_zip.with_suffix(".pending.zip"), "w",
                         compression=zipfile.ZIP_DEFLATED) as archive:
        for path in sorted(ADDON.rglob("*")):
            if path.is_file():
                archive.write(path, f"{product}-Source/{path.relative_to(ADDON).as_posix()}")
        archive.write(Path(__file__), f"{product}-Source/tools/{Path(__file__).name}")
        archive.write(ROOT / "tools/build_auth_vignette_addon.py",
                      f"{product}-Source/tools/build_auth_vignette_addon.py")
    source_zip.with_suffix(".pending.zip").replace(source_zip)
    reference = ADDON_RELEASE / f"{product}-Reference.zip"
    with zipfile.ZipFile(reference.with_suffix(".pending.zip"), "w",
                         compression=zipfile.ZIP_DEFLATED) as archive:
        archive.writestr(f"{product}-Reference/README.md", readme.encode("utf-8"))
        archive.writestr(f"{product}-Reference/validation.json", contents["validation.json"])
    reference.with_suffix(".pending.zip").replace(reference)
    for path in (package, source_zip, reference):
        with zipfile.ZipFile(path) as archive:
            if archive.testzip() is not None:
                raise RuntimeError(f"package CRC failure: {path}")
    return [package, source_zip, reference]


def main() -> None:
    for path in (BASE_PACKAGE, BASE_LSP, APKTOOL, ANDROID, XPOSED, KEY):
        if not path.exists():
            raise FileNotFoundError(path)
    WORK.mkdir(parents=True, exist_ok=True)
    OUT.mkdir(parents=True, exist_ok=True)
    ADDON_RELEASE.mkdir(parents=True, exist_ok=True)
    for stale in (OUT / "Phoenix_LSP_Phoenix-1.2.0.pending.apk.idsig",
                  ADDON_RELEASE / "PhoenixAddon-AUTHVignette-V1.0.0-LSP.pending.apk.idsig"):
        stale.unlink(missing_ok=True)
    with zipfile.ZipFile(BASE_PACKAGE) as archive:
        base_camera_name = "Phoenix_Camera_Phoenix-1.1.15.apk"
        base_camera = WORK / base_camera_name
        base_camera.write_bytes(archive.read(base_camera_name))
    camera = OUT / f"Phoenix_Camera_{MAIN_VERSION}.apk"
    lsp = OUT / f"Phoenix_LSP_{MAIN_VERSION}.apk"
    package = OUT / f"Phoenix_{MAIN_VERSION}_AllInOne.zip"
    report = {
        "version": {"versionName": MAIN_VERSION, "cameraVersionCode": CAMERA_CODE,
                    "lspVersionCode": LSP_CODE, "moduleVersionCode": MODULE_CODE,
                    "package": "com.android.camera", "targetDevice": "aurora"},
        "camera": reversion_camera(base_camera, camera),
        "mainLsp": build_main_lsp(BASE_LSP, lsp),
    }
    report["mainModule"] = build_main_module(BASE_PACKAGE, camera, lsp, package)
    addon_lsp = ADDON_RELEASE / "PhoenixAddon-AUTHVignette-V1.0.0-LSP.apk"
    addon_module = ADDON_RELEASE / "PhoenixAddon-AUTHVignette-V1.0.0.zip"
    addon_report = {
        "version": json.loads((ADDON / "lsp/version.json").read_text(encoding="utf-8")),
        "lsp": build_addon_lsp(addon_lsp),
        "module": build_addon_module(BASE_PACKAGE, addon_module),
        "separation": {
            "mainLspRegistersVignette": False,
            "mainLspContainsVignetteClass": False,
            "mainRootContainsVignettePayload": False,
            "addonOwnsVignetteHookAndRootPayload": True,
        },
        "deviceValidation": "not installed",
    }
    addon_archives = package_addon(addon_lsp, addon_module, addon_report)
    report["addon"] = {"artifacts": [str(path) for path in [addon_lsp, addon_module, *addon_archives]],
                       "validation": addon_report}
    report["deviceValidation"] = "not installed"
    report_path = OUT / "verification.json"
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    for artifact in (camera, lsp, package):
        metadata = {"version": report["version"], "artifact": artifact.name,
                    "size": artifact.stat().st_size, "sha256": sha256(artifact.read_bytes()),
                    "baselineMainModule": str(BASE_PACKAGE), "baselineLsp": str(BASE_LSP),
                    "verification": str(report_path)}
        artifact.with_suffix(artifact.suffix + ".build.json").write_text(
            json.dumps(metadata, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"main": str(package), "addon": [str(p) for p in addon_archives]},
                     ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
