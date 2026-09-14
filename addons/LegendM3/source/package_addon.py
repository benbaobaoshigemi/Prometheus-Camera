"""Package the validated M3 module and companion LSP without rebuilding them."""
import json
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parent


def main():
    version = json.loads((ROOT / 'lsp/version.json').read_text(encoding='utf-8'))
    release_name = version['productName'] + '-' + version['releaseVersion']
    validation = json.loads((ROOT / 'evidence/release_acceptance_v1.0.0.json').read_text(encoding='utf-8'))
    assert validation['version'] == version
    folder = ROOT / 'dist' / release_name
    folder.mkdir(exist_ok=True)
    payloads = {}
    for suffix, release_suffix in (('-Module.zip', '.zip'), ('-LSP.apk', '-LSP.apk')):
        source = ROOT / 'dist' / (version['versionName'] + suffix)
        data = source.read_bytes()
        with zipfile.ZipFile(source) as archive:
            assert archive.testzip() is None
        payloads[release_name + release_suffix] = data
    readme = f'''# {version['productName']} {version['releaseVersion']}

小米 14 Ultra · OS4 Phoenix · M3 附加插件，第 1 版。

本包使用 {version['versionName']} 构建，内部升级代码 {version['versionCode']}。
包含 M3 预览、测光、成片风格、颗粒处理、照片内嵌的独立干净底图，以及当前相册编辑器的 M3 本地后处理入口解锁。需要现有 OS4 Phoenix 相机、ROOT、KernelSU 和 LSPosed。

## 文件与安装

- 先安装下面的 LSP APK、启用模块并勾选两项作用域，再安装 `{release_name}.zip` KernelSU 模块并重启。
- `{release_name}-LSP.apk`：配套 LSPosed 模块。安装 APK，在 LSPosed 启用 Phoenix M3，并勾选“相机”（com.android.camera）和“小米相册-编辑”（com.miui.mediaeditor）。
- 安装 KernelSU 模块后重启设备，使原生库与资产挂载生效。
- 若仅更新 LSP，结束并重新打开相机、相册和相册编辑器进程即可；LSP 更新本身不要求重启设备。

外层 `-Package.zip` 是文件合集，先解压；不要将外层合集作为 KernelSU 模块刷入。
本版修复 ExifIFD 的回退 InteroperabilityOffset，避免相册在读取 M3 essential tag 前中止解析；同时兼容 MediaEditor 2.4.0.4.x 与 2.4.0.5.x 的能力类名。
本版接入普通 M3 的 LTM/LCE 原生控制，并保留安装后的自动能力缓存刷新。

## 本次验收

- 保留此前已通过四后摄及模式往返验收的测光运行库与原生风格处理器。
- 2:3 下 0.5×、1×、2×、3.2×、5×均生成完整照片，覆盖真正的 5×镜头；实机验收正常。
- 2:3 修正已写入常驻模块，每次创建 M3 会话时自动生效；冷启动装载日志确认。
- 成片采用正确的原生 M3 风格处理器，中心异常亮斑已修正，实机验收观感正常。
- 连续变焦最低可达 0.5×，与超广角快捷按钮一致，保留原生 20×上限。
- 主摄快捷焦段可按 23mm → 28mm → 35mm 循环，分别写入 1.0×、1.2×、1.5×。
- 照片嵌入颗粒处理前的独立底图，并校验主图/底图 SHA、尺寸、方向及 EOF 偏移。
- 默认快门保持原厂行为，未改写用户偏好。

- 条幅、画框水印支持扩展画布，成片保存正常；原有水印撤回数据的 EOF 索引同步维护。
- M3 本地后处理入口已在“小米相册-编辑”2.4.0.5.2、相册 5.4.2.7-0828-cn 上验证，实机验收可用。
- 普通 M3 请求复制原生 LTM202 参数，只替换已确认的 LTM/LCE 强度；普通拍照请求不应用此修改。
- LTM/LCE 的原生输出变化、恢复、模式隔离和服务重建后的自动启动已完成程序化验证。
- ASF 保留 14 Ultra 原有基底，只叠加已闭环的 17 Ultra M3 相对普通分支曲线差分；当前主摄成片、超广角成片与长焦没有已证实的专属差分，保持原生路径。
- ASF 的六组曲线映射、原生输出响应、0.5× 命中、五焦段旁路和普通拍照隔离均已通过程序化验证。

## 旧版升级后的入口缓存

每次安装或升级本模块后，首次启动并解锁手机时自动刷新一次相册功能能力缓存。刷新前结束相册和相册编辑器进程，防止旧缓存被写回；下一次打开相册时会重新查询已解锁的 M3 能力。

只处理 `media_editor_capabilities.xml`，不清除照片、相册数据库或用户设置。后续正常开机不重复刷新。请在重启前启用 LSP 模块及上述两项作用域，避免相册重新缓存尚未解锁的状态。

验收结果见 `validation.json`。兼容性范围限上述确认的设备与相机环境。
'''
    payloads['README.md'] = readme.encode('utf-8')
    payloads['EXIF_Interop兼容修复.md'] = (ROOT / 'docs/EXIF_Interop兼容修复.md').read_bytes()
    payloads['默认拍照_LTM锐化对等控制方案.md'] = (ROOT / 'localtone_sharpen_research/默认拍照_LTM锐化对等控制方案.md').read_bytes()
    payloads['version.json'] = (json.dumps(version, ensure_ascii=False, indent=2) + '\n').encode('utf-8')
    payloads['validation.json'] = (json.dumps(validation, ensure_ascii=False, indent=2) + '\n').encode('utf-8')
    for file_name, data in payloads.items():
        pending = folder / (file_name + '.pending')
        pending.write_bytes(data)
        pending.replace(folder / file_name)
    output = ROOT / 'dist' / (release_name + '-Package.zip')
    pending = output.with_suffix('.pending.zip')
    with zipfile.ZipFile(pending, 'w', compression=zipfile.ZIP_DEFLATED) as archive:
        for file_name, data in payloads.items():
            archive.writestr(release_name + '/' + file_name, data)
    with zipfile.ZipFile(pending) as archive:
        assert archive.testzip() is None
        for file_name, data in payloads.items():
            assert archive.read(release_name + '/' + file_name) == data
    pending.replace(output)
    print(f'Packaged {output} ({output.stat().st_size} bytes)')


if __name__ == '__main__':
    main()
