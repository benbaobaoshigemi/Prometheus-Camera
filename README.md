# Phoenix

Phoenix 1.1.0 是基于小米 17 Ultra OS4 官方相机的移植项目，面向搭载澎湃 OS3 的 LEICA 联名直板机型。工程包含相机补丁、LSPosed 扩展、根模块资产和统一构建工具，可生成 Camera APK、LSP APK 与 All-in-One 安装包。

## 功能与组成

- 相机界面与拍摄功能适配，包括普通视频模式的 Leica Looks 选择器。
- 普通徕卡经典风格管理、自定义 LUT 与滤镜资产同步。
- “小米ASD”开关：普通拍照默认遵循相机原生状态，手动切换后固定开启或关闭并保存选择。
- 徕卡经典暗角着色器：0–400% 强度、高光保护和自定义 GLSL 导入，预览与成片公式同步。
- 本地水印、色卡与签名模板，以及 by Leica、Leitz 机型水印。
- 独立的图片元数据和水印元数据写入开关。
- KernelSU、Magisk、APatch 模块安装与 ODM 资产挂载脚本。

徕卡一瞬不在支持范围内。普通徕卡经典、生动、自定义滤镜和水印是不同功能，不应与徕卡一瞬混同。

暗角着色器的使用与安装说明见 [`vignette-shader.md`](vignette-shader.md)。该功能调整经典后处理中的一个着色器节点，0% 不代表消除传感器及其它处理阶段形成的全部暗角。

## 兼容范围与前置环境

| 项目 | 支持情况与要求 |
| --- | --- |
| 系统 | 完美支持澎湃 OS3；理论上支持澎湃 OS4 |
| 机型 | 理论上支持所有搭载澎湃 OS3 的 LEICA 联名直板机型，不同机型可能存在细微适配问题 |
| 根管理器 | 理论上支持 KernelSU、Magisk、APatch |
| 必备环境 | ROOT、LSPosed（LSP）、核心破解，三者缺一不可 |
| 相册注入 | “小米相册-编辑”必须为 **2.4.0.4.3** 版本 |

澎湃 OS4 用户可尝试自行降级“小米相册-编辑”至 2.4.0.4.3 以兼容相册注入功能；降级不代表 OS4 的全部功能均已验证。

上述兼容范围不代表全部机型、系统和管理器组合均已逐一实测。设备验证以小米 14 Ultra（`aurora`）为基础。KernelSU 已完成实际安装与开机验证；Magisk、APatch 已通过设备隔离测试，实际管理器安装与开机兼容性待验证。具体范围见 [`verification.json`](verification.json)。

## 已知限制

目前已知最大的机型适配问题是：**小米 14 Ultra 之前的机型，“徕卡经典风格切换”功能失效。** 除此之外尚未发现较大的不兼容问题，不同机型仍可能存在细微适配风险。

**开启“图片元数据”会影响人像照片在相册中重新编辑虚拟光圈。** 需要重编辑光圈时，请在拍摄前关闭“图片元数据”。关闭该选项不会自动修复已经拍摄的照片。

“水印元数据”是独立选项，用于记录重建水印所需的机型身份；上述人像问题的处理方式不要求关闭它。

## 从源码构建

### 官方相机底包

官方 APK 由使用者自行提供，不包含在源码中。仅支持以下底包，文件名可以不同，内容须匹配：

| 属性 | 值 |
| --- | --- |
| 包名 | `com.android.camera` |
| 版本名 | `6.6.000510.0` |
| 版本号 | `660005100` |
| 文件大小 | `193895068` 字节 |
| SHA-256 | `6bf98a86a8e6090b86cf41cb178ef44512171503d3edb685e2564954af47b662` |

构建器按 [`supported-camera.json`](supported-camera.json) 校验底包内容。

### 工具环境

- Python 3.11 或更新版本；构建脚本只使用标准库。
- JDK 17，终端中可调用 `java` 和 `keytool`。
- Apktool 2.12.1。
- Android SDK Build-Tools 35.0.0。

构建已在 Windows 11 验证，其他操作系统尚未实测。Android SDK 路径可通过 `ANDROID_HOME`、`ANDROID_SDK_ROOT` 或 `--android-sdk` 指定；Windows 默认路径为 `%LOCALAPPDATA%/Android/Sdk`。

在工程根目录执行：

```powershell
python tools/bootstrap.py
python tools/build_phoenix.py --camera-apk "D:/camera/new.apk"
```

`bootstrap.py` 下载固定版本的 Apktool 到 `tools/vendor/`。也可通过 `--apktool` 指定已有的 2.12.1 JAR。Android SDK Build-Tools 需要通过 SDK Manager 安装：

```powershell
sdkmanager "build-tools;35.0.0"
```

单独构建相机或 LSP：

```powershell
python tools/build_phoenix.py --mode camera --camera-apk "D:/camera/new.apk"
python tools/build_phoenix.py --mode lsp
```

LSP 单独构建不需要官方相机 APK。

### 输出与缓存

产物位于 `dist/Phoenix-1.1.0/`：

| 文件 | 内容 |
| --- | --- |
| `Phoenix_Camera_Phoenix-1.1.0.apk` | 移植相机 |
| `Phoenix_LSP_Phoenix-1.1.0.apk` | LSPosed 扩展 |
| `Phoenix_Phoenix-1.1.0_AllInOne.zip` | 两个 APK、模块脚本与资产 |
| `*.build.json` | 构建输入、工具版本和产物来源信息 |

`work/` 保存解包树、编译缓存和本地开发密钥。重复构建会复用缓存，产物通过临时文件完成后替换。需要重新建立缓存时，应先备份 `work/keys/` 中需要保留的签名密钥。

### 签名

Camera APK 使用官方底包的 OEM Signing Block。搬运签名块不等于重新获得有效的小米签名，修改后的 APK 不能据此通过标准官方签名验证。

LSP 使用 `apksigner` 签名并验证。默认开发密钥在首次构建时生成于 `work/keys/development.keystore`，别名为 `androiddebugkey`，开发密码为 `android`。持续更新已安装 LSP 需要使用同一签名密钥。

使用自有密钥：

```powershell
$env:PHOENIX_STORE_PASSWORD = "your-store-password"
$env:PHOENIX_KEY_PASSWORD = "your-key-password"
python tools/build_phoenix.py --camera-apk "D:/camera/new.apk" --keystore "D:/keys/phoenix.keystore" --key-alias "phoenix"
```

密码通过环境变量传给签名工具，源码归档不包含密钥。

## 安装

**从 Phoenix 1.0.x 升级时保留应用数据。** ASD 旧设置会自动迁移：旧版明确关闭 ASD 的选择继续保持关闭；未禁用时默认遵循原生状态。

首次从原厂相机安装 Phoenix，按下列初始化步骤操作；升级已有 Phoenix 时跳过清除数据步骤。安装后保留应用数据。

安装顺序：

1. 准备 ROOT、LSP 和核心破解环境，并将“小米相册-编辑”调整为 2.4.0.4.3。
2. 清除“相机”和“小米相册-编辑”的应用数据。
3. 安装 Phoenix，按安装器提示启用模块并重启。
4. 安装完成后保留两个应用的数据，严禁再次清除。

All-in-One 可通过所用根管理器安装。KernelSU 命令行示例：

```powershell
adb push "dist/Phoenix-1.1.0/Phoenix_Phoenix-1.1.0_AllInOne.zip" /data/local/tmp/Phoenix-1.1.0.zip
adb shell su -c "ksud module install /data/local/tmp/Phoenix-1.1.0.zip"
```

按安装器提示启用模块并重启。安装脚本写入 APK 和资产；开机脚本配置 LSPosed 作用域并启动资产同步。模块目录内的 `开机日志.txt`、`mount.log` 和 `watermark-cache.log` 可用于检查初始化结果。

单独更新 LSP 后，新建的目标应用进程即可加载新版本。结束旧进程、显式启动目标应用并检查 hook 日志，可确认更新是否生效。

## 工程导航

| 路径 | 用途 |
| --- | --- |
| `camera/patch/` | 相机补丁文件与应用清单 |
| `lsp/` | LSP 的 smali、资源和资产 |
| `module/` | 安装、挂载、同步脚本及模块资产 |
| `tools/` | 解包、构建、签名、比较和源码打包工具 |
| `version.json` | Camera、LSP 和模块的版本配置 |
| [`AI_CONTEXT.md`](AI_CONTEXT.md) | 工程结构、代码定位与维护入口 |
| [`third-party.json`](third-party.json) | 组件来源与许可信息 |

LSP 的完整可编译输入是 smali 与资源。新增 ASD 控制同时提供 `lsp/java/com/prometheus/camera/colordev/XiaomiAsd.java` 作为可读源码；正常构建使用对应的 smali，不要求额外的 Java 项目环境。

1.1.0 的累计变更见 [`CHANGELOG.md`](CHANGELOG.md)。

生成源码归档：

```powershell
python tools/package_source.py
```

输出为 `dist/Phoenix-1.1.0-source.zip`，包含构建输入和文档，不包含 APK、下载工具、编译缓存或签名密钥。

## 许可

Phoenix 自有代码及有权授权的修改采用 [GNU GPL v3.0](LICENSE)（`GPL-3.0-only`）。相机补丁、LSP 和模块资产包含第三方内容，它们保留各自的许可证与权利，不因本项目的 GPL 声明而统一改授。组件来源及尚未明确的授权范围见 [`third-party.json`](third-party.json)。
