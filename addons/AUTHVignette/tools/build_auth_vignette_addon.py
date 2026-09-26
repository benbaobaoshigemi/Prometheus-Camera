"""Build the Addon alone; never rebuild or mutate main Phoenix artifacts."""
import io
import json
import zipfile

import build_auth_vignette_split as build


def main():
    version = json.loads((build.ADDON / "lsp/version.json").read_text(encoding="utf-8"))
    build.WORK = build.ROOT / "work" / version["versionName"]
    build.WORK.mkdir(parents=True, exist_ok=True)
    build.ADDON_RELEASE.mkdir(parents=True, exist_ok=True)
    member = "lib/arm64-v8a/libMiFilterSDK.so"
    with zipfile.ZipFile(build.BASE_PACKAGE) as module:
        with zipfile.ZipFile(io.BytesIO(module.read("Phoenix_Camera_Phoenix-1.1.15.apk"))) as camera:
            preview = camera.read(member)
    if b"/data/user/0/com.android.camera/files/phoenix-vignette/colorDark.glsl" not in preview:
        raise RuntimeError("Addon preview input does not contain its external formula reader")
    native = build.WORK / "libMiFilterSDK.so"
    native.write_bytes(preview)
    apk = build.ADDON_RELEASE / (version["versionName"] + "-LSP.apk")
    module = build.ADDON_RELEASE / (version["versionName"] + ".zip")
    report = {"version": version,
              "lsp": build.build_addon_lsp(apk, {member: native}),
              "module": build.build_addon_module(build.BASE_PACKAGE, module),
              "previewNativeSource": str(build.BASE_PACKAGE) + " / Camera / " + member,
              "mainArtifactsChanged": False, "deviceValidation": "pending"}
    build.package_addon(apk, module, report)
    (build.ADDON_RELEASE / (version["versionName"] + "-validation.json")).write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


if __name__ == "__main__":
    main()
