# Phoenix 开发上下文

本文是 Phoenix 的工程维护参考，面向需要直接阅读、修改和验证代码的 AI 代码助手。内容涵盖精确底包身份、解包与构建实现、补丁格式、LSP 入口、模块生命周期、资产定位、签名和验证方法。README 面向安装和构建使用者；本文提供开展代码维护所需的实现细节。

文中的相对路径以本仓库根目录为基准。版本和底包数据分别来自 `version.json`、`supported-camera.json`；方法名和数据流对应本版本源码。

## 项目模型

Phoenix 1.0.0 基于小米 17 Ultra 的 OS4 官方相机，面向搭载澎湃 OS3 的 LEICA 联名直板机型；设备验证基于小米 14 Ultra（`aurora`）。底包的 OS4 来源与目标系统的兼容范围是两个独立信息。功能由三个部分协作提供：

| 部分 | 权威输入 | 运行职责 |
| --- | --- | --- |
| Camera | 官方 APK + `camera/patch/` | 相机界面、拍摄流程、资源与基础能力适配 |
| LSP | `lsp/` | 在相机、相册编辑器等目标进程中提供扩展逻辑 |
| 根模块 | `module/` | 安装 APK、挂载 ODM 资产、初始化应用私有文件与后台同步 |

构建入口 `tools/build_phoenix.py` 负责组合这些输入。功能实现位于相机补丁、LSP 或模块目录；`work/` 是生成目录，直接修改其中的文件不会成为稳定的构建输入。

## 运行环境与兼容边界

- 系统兼容定位：完美支持澎湃 OS3，理论上支持澎湃 OS4。
- 机型范围：理论上支持所有搭载澎湃 OS3 的 LEICA 联名直板机型，各机型可能有细微适配风险。该范围不代表已逐机实测。
- 已知主要机型问题：小米 14 Ultra 之前的机型，“徕卡经典风格切换”功能失效；除此之外尚未发现较大的不兼容问题。
- 必备前置环境：ROOT、LSPosed（LSP）、核心破解。
- 相册注入相关功能要求“小米相册-编辑”版本严格为 **2.4.0.4.3**。OS4 可尝试自行降级该应用以兼容，系统整体兼容性仍属理论支持。
- 根管理器理论上支持 KernelSU、Magisk、APatch。实际验证覆盖范围见 `verification.json`，不能由安装器分支存在推导出完整实机兼容。
- 安装生命周期要求：安装前务必清除“相机”和“小米相册-编辑”的应用数据；安装后严禁清除这两个应用的数据。

## 精确底包身份

### 官方输入 APK

| 字段 | 值 |
| --- | --- |
| 来源 | 小米 17 Ultra OS4 官方相机 |
| Android 包名 | `com.android.camera` |
| 官方 versionName | `6.6.000510.0` |
| 官方 versionCode | `660005100` |
| APK 大小 | `193895068` 字节 |
| SHA-256 | `6bf98a86a8e6090b86cf41cb178ef44512171503d3edb685e2564954af47b662` |
| 固定解包工具版本 | Apktool `2.12.1` |
| 身份配置 | `supported-camera.json` |
| 参考验证设备 | 小米 14 Ultra，设备代号 `aurora` |

这是完整 APK 文件的摘要，不是解包目录、DEX 或签名证书摘要。文件名不参与底包匹配，使用者可自行命名。官方完整 APK 不包含在源码仓库和源码 ZIP 中，构建时通过 `--camera-apk` 显式提供。

`build_camera()` 每次构建都会计算输入 APK 的 SHA-256，与 `supported-camera.json.sha256` 比较；不匹配时抛出 `Unsupported camera APK; see supported-camera.json`。包名、版本与大小同时供维护者识别输入，构建中的内容门槛由完整文件摘要实现。

底包是 OS4 相机，不代表目标设备必须运行 OS4。系统兼容口径与底包身份不能互相替代。另一份相机即使同名、显示相同版本，也不自动成为支持的构建输入。适配新底包涉及重新建立补丁、类映射、资源与运行验证，不能仅修改摘要配置来完成。

### Phoenix 输出身份

| 字段 | Camera | LSP | 根模块 |
| --- | --- | --- | --- |
| versionName / version | `Phoenix-1.0.0` | `Phoenix-1.0.0` | `Phoenix-1.0.0` |
| versionCode | `760010000` | `2010000` | `2010000` |
| 包名 / 模块 ID | `com.android.camera` | `com.prometheus.camera.rev` | `legend17u_14u_local` |
| SDK 元数据 | min 29 / target 36 | min 31 / target 35 | 不适用 |

SDK 数值来自各自的 `apktool.yml`，不是设备兼容性实测结论。模块 ID 来自 `module/module.prop`；其中的设备标识与显示名称也不等于全部兼容机型的判据。

## 解包器、框架缓存与工具安装

### 解包入口

仓库自带的相机解包器是 [`tools/unpack.py`](tools/unpack.py)，其职责是调用固定版本的 Apktool。核心 Python 接口：

```python
decode(apk, output, apktool, framework=None)
```

对应的实际命令结构：

```text
java -jar <apktool> d -j 8 <apk> -o <output> -p <framework>
```

`-j 8` 指定 8 个工作线程；框架目录由 `framework` 参数指定，未传时为 `output.parent / 'framework'`。函数通过 `subprocess.run(..., check=True)` 传播解包失败。命令行入口只暴露输入、输出及 `--apktool`，没有 `--framework` 参数，也没有自动强制覆盖已有解包目录的参数。

在仓库根目录独立解包官方相机：

```powershell
python tools/bootstrap.py
python tools/unpack.py "D:/camera/new.apk" "work/camera-inspect" --apktool "tools/vendor/apktool_2.12.1.jar"
```

此示例的框架缓存位于 `work/framework/`。如果输出目录已有其他解包结果，改用新的明确目录；是否复用构建缓存由统一构建器管理。

### 依赖来源与版本

| 依赖 | 要求与用途 |
| --- | --- |
| Python | 3.11+；使用标准库，APK 摘要使用 `hashlib.file_digest` |
| JDK | 17；提供 `java` 与 `keytool` |
| Apktool | 2.12.1；解包和编译 Camera / LSP |
| Android SDK Build-Tools | 35.0.0；提供 `zipalign`、`lib/apksigner.jar` 和比较工具使用的 `aapt` |
| Git | 记录构建与源码归档来源；业务源码本身不从历史发布包提取 |

`tools/bootstrap.py` 将 Apktool 下载到 `tools/vendor/apktool_2.12.1.jar`，固定上游地址为：

```text
https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar
```

下载使用 `.download` 临时文件，运行 `--version` 确认版本后替换正式文件。已有 JAR 时直接检查并输出版本；统一构建器另行要求版本输出精确为 `2.12.1`。`bootstrap.py` 不安装 JDK 或 Android SDK。

Android SDK 根目录的解析顺序为：显式 `--android-sdk`、环境变量 `ANDROID_HOME`、环境变量 `ANDROID_SDK_ROOT`、默认 `%LOCALAPPDATA%/Android/Sdk`。构建器在该根目录下使用固定的 `build-tools/35.0.0`，传参应指向 SDK 根目录，而不是 Build-Tools 子目录。

```powershell
sdkmanager "build-tools;35.0.0"
python tools/build_phoenix.py --camera-apk "D:/camera/new.apk" --android-sdk "D:/Android/Sdk" --apktool "tools/vendor/apktool_2.12.1.jar"
```

构建环境已在 Windows 11 验证。代码包含部分非 Windows 工具名处理，但这不代表其他操作系统已完成构建验证。

## 构建输入与数据流

唯一支持的底包由 `supported-camera.json` 描述，使用者通过 `--camera-apk` 提供。工具版本为 JDK 17、Apktool 2.12.1、Android SDK Build-Tools 35.0.0，构建脚本需要 Python 3.11+。

```text
官方相机 APK → work/camera-base → camera/patch → work/camera → Camera APK
lsp/                                         → work/lsp    → LSP APK
module/ + Camera APK + LSP APK                              → All-in-One ZIP
```

- `tools/bootstrap.py`：准备固定版本的 Apktool。
- `tools/unpack.py`：调用 Apktool 解包。
- `tools/build_phoenix.py`：应用外部输入、同步版本、编译、对齐、签名和打包。
- `tools/inject_oem_signing_block.py`：提供相机签名块处理函数。
- `tools/compare_releases.py`：比较指定的两套实际产物；参考产物由调用者提供。
- `tools/package_source.py`：收录源码与文档，生成独立源码 ZIP。

常用命令在工程根目录执行：

```powershell
python tools/build_phoenix.py --mode camera --camera-apk "D:/camera/new.apk"
python tools/build_phoenix.py --mode lsp
python tools/build_phoenix.py --camera-apk "D:/camera/new.apk"
```

工具的完整参数可通过 `--help` 查看。构建输出和 `.build.json` 位于 `dist/<versionName>/`。

### 完整命令行参数

| 参数 | 默认值 | 用途 |
| --- | --- | --- |
| `--mode` | `all` | `all`、`camera`、`lsp` 三种模式 |
| `--camera-apk` | 无 | `all` 和 `camera` 必填；`lsp` 不需要 |
| `--apktool` | `tools/vendor/apktool_2.12.1.jar` | 固定版本 Apktool JAR |
| `--android-sdk` | 按前述环境变量解析 | SDK 根目录 |
| `--keystore` | `work/keys/development.keystore` | LSP 签名密钥；默认密钥首次构建时生成 |
| `--key-alias` | `androiddebugkey` | LSP 签名别名 |

没有 `--module-only`、`--force` 或自定义输出目录参数。修改模块后需要 `--mode all` 生成完整模块包；重复构建会复用相机和 LSP 编译缓存。

### 统一构建器的阶段

1. 解析参数，确认 Camera 构建所需的 APK 参数存在。
2. 检查 Apktool 的实际版本，并校验 `version.json` 中版本名与数值版本的对应关系。
3. Camera：验证官方 APK 摘要；必要时解包；计算补丁应用后的文件集合；同步编译树；设置版本；编译、对齐、搬运 OEM Signing Block。
4. LSP：将 `lsp/` 输入同步到编译树；设置版本；编译、对齐、标准签名并验证。
5. All-in-One：收录模块文件和两个本次 APK，在指定文本文件中同步版本，生成 ZIP。
6. 为实际生成的产物分别写入 `.build.json` 来源说明。

`all` 会依次执行 Camera、LSP、模块阶段。单独模式只生成相应 APK，不会自动刷新已有 All-in-One。判断模块是否包含代码修改，需要核对模块内 APK，而不能只看目录中某个独立 APK 的更新时间。

### 输入与生成目录

| 路径 | 性质 | 用途 |
| --- | --- | --- |
| `camera/patch/` | 维护输入 | 相机新增、替换和删除描述 |
| `lsp/` | 维护输入 | 完整 LSP 解包源码、资源和资产 |
| `module/` | 维护输入 | 模块脚本、声明和静态资产 |
| `work/camera-base/` | 生成目录 | 官方 APK 解包树 |
| `work/camera-base/.complete` | 完成标记 | 首次解包成功后写入底包摘要 |
| `work/camera/` | 生成目录 | 应用补丁后的相机编译树 |
| `work/lsp/` | 生成目录 | LSP 编译树 |
| `work/framework/` | 工具缓存 | Apktool framework 数据 |
| `work/camera-files.json` | 同步状态 | 上次同步到相机编译树的文件集合 |
| `work/lsp-files.json` | 同步状态 | 上次同步到 LSP 编译树的文件集合 |
| `work/*.unsigned.apk` | 中间产物 | Apktool 编译结果 |
| `work/*.aligned.apk` | 中间产物 | ZIP 对齐结果 |
| `work/keys/` | 本地私有输入 | 默认签名密钥 |
| `dist/Phoenix-1.0.0/` | 发布输出 | APK、All-in-One 与来源说明 |

`source_files()` 排除输入根目录下的 `build`、`dist`、`original`、`__pycache__`，并忽略 `.complete`。`sync_files()` 删除上次同步过但此次已不存在的文件，只改写内容发生变化的文件，以保留未变化文件的时间戳并复用 Apktool 编译缓存。

解包复用以 `.complete` 是否存在为条件；构建器不会重新验证生成目录中所有文件是否曾被手工修改。`work/camera-base/` 应作为官方解包结果保留，功能修改应落入 `camera/patch/`。需要干净重建时可以在新的源码目录构建；覆盖更新 LSP 时仍需沿用原签名密钥。

### 编译、对齐与原子输出

`assemble()` 调用 Apktool `b -j 8`，使用 `work/framework`，然后调用：

```text
zipalign -f -P 16 4 <unsigned.apk> <aligned.apk>
```

Camera 和 LSP 的发布 APK 先写为 `.pending.apk`，完成该阶段后替换目标文件。模块先写为 `.pending.zip`，源码包也使用 `.pending.zip`。因此，已有正式文件不表示刚才失败的构建已成功覆盖它；应同时查看进程退出码和当前构建输出。

## 相机补丁定位

`camera/patch/patch.json` 的 `entries` 将 `path` 指向补丁文件，将 `targetPath` 指向解包树中的目标位置；`deletions` 描述删除项，smali 删除项另有 `deletedClasses` 记录类描述符。新增或删除补丁文件需要同步这些映射。

smali 的身份由 `.class` 声明决定。Windows 对大小写不敏感，解包文件可能带有 `.1` 等后缀，文件名不一定等于类名。构建器按描述符查找已有类，遇到新增类的路径冲突时分配独立文件名。

补丁清单中的大小和摘要是来源元数据；实际构建读取文件内容。相机资源修改通常涉及 `res/`、`assets/` 及相关 smali；资源 ID 的对应关系可从 `res/values/public.xml` 核对。

### 补丁清单的结构与实际语义

`camera/patch/patch.json` 含有 `format`、`baseSha256`、`entries`、`deletions`、`deletedClasses`。本版有 1,077 个应用条目、15 个删除条目；`apktool.yml` 和清单本身使补丁目录总计 1,079 个文件。数量用于理解当前规模，扩展功能时不要求维持这个数量。

一个资源替换条目的结构示例：

```json
{
  "path": "res/values/strings.xml",
  "targetPath": "res/values/strings.xml",
  "size": 123,
  "sha256": "<该补丁文件的摘要>"
}
```

上例只说明字段格式，大小和摘要为示意值。`path` 相对于 `camera/patch/`；`targetPath` 相对于解包根目录。`entries` 才决定哪些补丁文件被应用，单独把新文件放进目录并不够。

`patched_files()` 的顺序是：

1. 读取官方解包树的文件集合，建立 smali 类描述符到文件路径的索引。
2. 处理 `deletions`。smali 使用 `deletedClasses` 中的类描述符找到实际文件，其他资源按路径删除。
3. 处理 `entries`。已有 smali 类按描述符替换原文件；新增 smali 类如果目标路径与已有路径忽略大小写后冲突，使用 `.phoenix.smali` 后缀。非 smali 文件按目标路径放入最终集合。
4. 强制用补丁目录的 `apktool.yml` 作为最终编译配置。

`baseSha256` 和各条目的 `size`、`sha256` 是补丁来源记录；当前 `patched_files()` 不用这些值验证每个文件内容。真正的官方 APK 内容校验来自 `supported-camera.json.sha256`。维护时既要保留正确来源记录，也要以实际输入和构建结果确认修改生效。

### 修改相机类或资源的步骤

- 已有类：从 `work/camera-base/` 确认完整 `.class` 描述符和方法签名，再修改补丁目录中对应的类；若尚无补丁文件，则新增文件和 `entries` 条目。
- 新增类：指定完整类描述符与目标 dex 目录，并在 `entries` 中登记。目录名与 `.class` 身份分别核对。
- 删除类：在 `deletions` 中登记，同时在 `deletedClasses` 中提供类描述符；仅删除补丁文件通常会使官方原类重新出现。
- 修改资源：同时检查调用代码使用的资源 ID、资源名和 `res/values/public.xml`。添加字符串本身不会自动接入偏好页或功能调用。
- 修改 `apktool.yml`：保留框架、压缩配置等编译所需信息；统一构建器会覆盖其中的 versionName 和 versionCode。

定位示例：

```powershell
rg -n --glob '*.smali' '^\.class .*L目标包/目标类;' camera/patch work/camera-base
rg -n --glob '*.smali' '目标方法名|目标资源名' camera/patch
rg -n '目标资源名' camera/patch/res/values
```

反编译 Java 用于辅助理解控制流；方法寄存器、调用签名、dex 目录和资源引用最终由 smali 与资源输入决定。文档未提供等价 Java/Kotlin 工程，也不依赖先取得历史 Phoenix APK 才能恢复源码。

## LSP 入口与功能定位

`lsp/assets/xposed_init` 列出加载入口：

- `com.prometheus.camera.rev.CombinedEntryPoint`
- `com.prometheus.camera.colordev.EntryPoint`
- `com.prometheus.camera.rev.FeatureEntryPoint`

实现分布在 `lsp/smali*` 下，按类描述符或包名定位比依赖单一 dex 目录更可靠。反编译 Java 可辅助阅读，实际编译输入仍是 smali。

| 功能 | 主要定位线索 |
| --- | --- |
| OS4 相机扩展与水印发布 | `CameraV51Bridge` |
| 机型名称消费者和元数据写入 | `CameraWatermarkBridge` 及其内部类 |
| 水印位图与 MIVI JSON 变换 | `WatermarkAssetRouter` |
| 机型选择与元数据开关 | `DeviceNameOverride`、`MetadataSyncPreferenceFragment` |
| 扩展设置界面 | `com.prometheus.camera.settings` 包及 `lsp/res/` |

### 具体源文件与维护入口

| 类 | 源文件 | 首要阅读入口 |
| --- | --- | --- |
| `CombinedEntryPoint` | `lsp/smali_classes4/com/prometheus/camera/rev/CombinedEntryPoint.smali` | `initZygote`、`handleLoadPackage`、`installFilterStateLocalHandler` |
| `FeatureEntryPoint` | `lsp/smali_classes5/com/prometheus/camera/rev/FeatureEntryPoint.smali` | `handleLoadPackage`、`installSettings`、`installPreferenceChange`、`installHdr` |
| `CameraV51Bridge` | `lsp/smali/com/prometheus/camera/rev/CameraV51Bridge.smali` | `republishSelected`、`publishMiviWatermarkModels`、`publishMiviWatermarkCategory`、`syncLeicaPublicationToMediaEditor` |
| `CameraWatermarkBridge` | `lsp/smali/com/prometheus/camera/rev/CameraWatermarkBridge.smali` | `install`、`hookImageMetadata`、`hookSelectedProduct`、`hookDynamicLeicaText` |
| `DeviceNameOverride` | `lsp/smali_classes2/com/prometheus/camera/settings/DeviceNameOverride.smali` | `get`、`set`、`runtime`、两项元数据开关的读写方法 |
| `MetadataSyncPreferenceFragment` | `lsp/smali_classes2/com/prometheus/camera/settings/MetadataSyncPreferenceFragment.smali` | `addCurrentPreferences`、`onPreferenceChange` |
| `WatermarkAssetRouter` | `lsp/smali_classes2/com/prometheus/camera/settings/WatermarkAssetRouter.smali` | `renderDynamic`、`postProcessMivi`、`transformNode`、`resolveSuffixAsset`、`resolveLeitzAsset` |

`CameraV51Bridge` 是源码中的类名，不能从其名称推断当前底包为旧相机版本。类内的 `access$...` 是内部类调用桥接，业务逻辑需沿对应私有方法与 `$N.smali` 内部类继续追踪。

定位 hook 时需要同时核对：加载的目标包名、目标进程、使用的 ClassLoader、反射目标类、完整方法参数、before/after hook 时点，以及内部类中的实际改写。只找到设置页开关或 `install()` 调用还不足以证明目标行为已执行。

LSP 的 Manifest 包名是 `com.prometheus.camera.rev`，声明 `xposedmodule=true`、`xposedminversion=82`。`ProviderBootstrapActivity` 是无显示的引导 Activity，不是相机启动入口。相机应用与相册编辑器分别为 `com.android.camera`、`com.miui.mediaeditor`。

设置类 `DeviceNameOverride` 使用 `prometheus_camera_settings` 偏好文件，机型键为 `watermark_device_name`。开关读写通过该类的 `imageMetadataEnabled` / `setImageMetadataEnabled` 和 `watermarkMetadataEnabled` / `setWatermarkMetadataEnabled` 进行。排查时应确认偏好所属的应用 Context，不能从同名 XML 推断不同应用进程读到的是同一份数据。

### 新增或修改 LSP 功能

1. 从 `xposed_init` 和 `handleLoadPackage` 确认目标包加载路径。
2. 在实际 smali 输入中修改 hook、设置或资源；新增完整文件会由 `source_files()` 收录，LSP 不使用 Camera 的 `patch.json`。
3. 检查调用者和内部类引用是否同步，资源 ID 是否匹配当前 LSP / 目标相机资源。
4. 通过 `--mode lsp` 编译，并使用同一签名覆盖更新。
5. 创建新的目标进程，用 hook 日志和具体功能结果验证。
6. 如果还改了相机、模块或共享资产，分别完成对应构建，并重新生成 All-in-One。

### 两项元数据功能

“图片元数据”与“水印元数据”具有独立开关和不同的数据职责：

| 功能 | 写入位置 | 语义 |
| --- | --- | --- |
| 图片元数据 | EXIF `Model`、`XiaomiProduct` | 将所选机型写入图片信息 |
| 水印元数据 | `XiaomiAuxiliaryInfo` JSON 的 `waterName` | 保存重建水印所需的机型身份 |

`CameraWatermarkBridge$4` 在相机机型信息写入后处理图片元数据；`CameraWatermarkBridge$5` 更新 `waterName` 并保留 JSON 其他字段。屏幕上的水印名称、图片信息与重建水印所需的数据并非同一个消费者。修改这一链路时，三处表现需要分别核对。

已知兼容限制：开启图片元数据会影响人像照片的虚拟光圈重编辑。可在拍摄前关闭图片元数据；具体触发字段尚未单独确认。水印元数据仍承担重建机型识别职责。

## 模块与资产路径

- `customize.sh`：安装阶段、管理器识别、权限处理和自检调用。
- `post-fs-data.sh`：合并并挂载 ODM 相机资产。
- `service.sh`：等待服务就绪、配置 LSPosed 作用域、初始化水印并启动同步。
- `seed-watermark.sh`：准备相机和相册编辑器的本地水印。
- `sync-custom-luts.sh`：同步自定义 LUT。
- `sync-by-leica-assets.sh`：同步动态机型位图。
- `sync-local-watermarks.sh`、`sync-watermark-suffix.sh`：处理本地模板及后续生成目录中的资产。

相机预览可读取应用私有文件，成片相关消费者还可能读取 `/data/vendor/camera` 下的对应资产。文件存在于模块目录并不等于已经对消费者可见；定位资产问题时需同时确认挂载、应用目录、vendor 目录和实际读取路径。

水印发布采用先准备资产、UID/GID、访问模式和 SELinux 标签，再写入目标目录的顺序。安装器的 BusyBox 环境与系统 shell 的工具行为可能不同；完整 SELinux 标签由 `/system/bin/stat -c %C` 获取。

普通 AUTH/VIBR 色彩、自定义 LUT、水印与相册编辑是不同链路。徕卡一瞬不属于项目支持范围；判断资产用途以实际调用关系为依据。

### 安装、挂载与开机初始化的分工

`customize.sh` 在模块安装阶段执行，识别已有“小米相册-编辑”、安装 LSP 和 Camera、记录管理器类型、布置 ODM 资产、设置权限、初始化 LUT 与水印，并调用 `install-self-check.sh`。APK 安装使用 `pm install -r`。脚本中的相册检查确认应用存在；2.4.0.4.3 的兼容要求仍应按 README 核对，不能把安装器未报错视为版本已兼容。

安装器将管理器类型记录在模块内 `.phoenix-root-family`，值为 `ksu`、`apatch` 或 `magisk`。`post-fs-data.sh` 读取这一记录，而不是假定三种管理器在开机阶段提供相同的环境变量。

ODM 资产从模块目录构建合并视图，再挂载到目标子树：

| 目标 | 内容 | 模块运行行为 |
| --- | --- | --- |
| `/odm/etc/camera/videofilter` | 视频滤镜资产 | 将 ROM 原有项与模块项合并，覆盖同名模块项 |
| `/odm/etc/camera/xiaomi/watermark` | 水印资产 | 同样构建合并子树并执行递归 bind mount |
| 模块 `.merge/` | 临时合并目录 | 每次挂载阶段重新建立 |
| 模块 `mount_failed` | 失败标记 | 挂载失败时产生，细节写入 `mount.log` |

`post-fs-data.sh` 为上述 ODM 内容设置 `u:object_r:vendor_configs_file:s0`。判断某项资产在设备上是否可用，应检查实际挂载目标与消费者路径；源码中存在文件、模块安装成功和挂载生效是三个不同事实。

`service.sh` 的执行顺序：

1. 最多约 120 秒等待 `lspd`、LSP 包路径与 LSPosed 数据库。
2. 通过 `CLASSPATH=<LSP APK> app_process` 调用 `com.prometheus.camera.rev.install.ScopeInstaller`，配置相机、相册编辑器和系统框架作用域。
3. 等待相机和相册编辑器的应用数据目录建立，调用 `seed-watermark.sh`。
4. 启动 `sync-custom-luts.sh`、`sync-by-leica-assets.sh`、`sync-local-watermarks.sh`。
5. 每 30 秒调用 `sync-watermark-suffix.sh`，覆盖开机后才出现的水印目录。

`service.sh` 不负责重新安装 APK，也不会通过清除应用数据初始化业务。安装前清除数据、安装后严禁清除数据的使用要求见 README。

### 资产集合与具体位置

| 输入位置 | 内容与定位用途 |
| --- | --- |
| `lsp/assets/content/` | LSP 内容描述与打包输入 |
| `lsp/assets/profiles/` | 配置资产 |
| `lsp/assets/prometheus/` | Phoenix 扩展使用的资产 |
| `module/content/mediaeditor-local-watermarks.tsv` | 本地水印清单 |
| `module/content/mediaeditor-local-watermarks.commit` | 与水印内容集合关联的版本记录 |
| `module/watermark_cache/` | 相机和编辑器初始化所需的水印模板集合 |
| `module/watermark_suffix/` | 37 个 by Leica 后缀位图，包含原生颜色、透明度与阴影变体 |
| `module/system/` | 模块静态挂载输入；ODM 在安装时进一步布置 |
| `camera/patch/assets/` | 必须随相机 APK 分发的补丁资产 |

`watermark_cache/` 包含 `classic`、`color_chart`、`film`、`leica`、`signature`、`standard` 等分类，以及 `ranges.json` 和 `version` 等索引。修改一个模板时，需要同时理解分类索引、模板 JSON、引用位图和发布目录的关系。

运行时路径：

| 路径 | 作用 |
| --- | --- |
| `/data/user/0/com.android.camera/` | 相机应用数据根目录 |
| `/data/user/0/com.android.camera/files/watermarks/` | 相机本地水印 |
| `/data/user/0/com.android.camera/files/prometheus/` | 扩展资产目录，LUT 同步入口之一 |
| `/data/user/0/com.miui.mediaeditor/` | “小米相册-编辑”数据根目录 |
| `/data/user/0/com.miui.mediaeditor/files/watermarks/` | 编辑器本地水印目标 |
| `/data/vendor/camera/` | 相关成片消费者读取的资产目录 |
| `/data/adb/modules/legend17u_14u_local/` | 已安装模块位置，实际以管理器安装状态为准 |

这些脚本路径明确使用 Android 用户 0；其他用户或工作资料空间的支持不能从用户 0 的验证结果推导。

`seed-watermark.sh` 包含 `verify_local_source`、`atomic_copy`、`publish_local_categories`、`verify_target_local` 和 `seed_target`。读取源清单、准备访问权限、复制资产和核对目标构成完整初始化过程。修改水印集合时，清单与实际文件应保持一致。

应用私有目录的 UID/GID 和 SELinux 标签取决于真实应用安装环境。模块使用 `/system/bin/stat -c %C` 获取完整标签；安装器 BusyBox 的同名命令可能有不同语义。权限排查需要核对路径各级目录的访问条件，而不是只看最终文件的 `chmod` 数值。

### 日志与故障定位入口

| 文件 / 现象 | 首先核对 |
| --- | --- |
| `install-audit.log` | 安装阶段、APK 安装返回、初始化与自检结果 |
| `mount.log` / `mount_failed` | 管理器记录、ODM 源目录和目标目录、bind mount 结果 |
| `开机日志.txt` | LSPosed 等待、作用域配置、水印初始化、同步进程启动 |
| `LSPosed作用域详情.txt` | `ScopeInstaller` 执行与数据库配置结果 |
| `watermark-cache.log` | 初始化和后续水印同步 |
| APK 已安装但 hook 无效果 | 目标新进程是否实际加载 LSP，包作用域、ClassLoader 与目标方法是否匹配 |
| 水印预览与保存结果不同 | 相机私有目录、相关 vendor 路径、模板 JSON 引用与实际位图分别核对 |
| 相册重建水印不一致 | 编辑器版本、编辑器资产、`waterName` 与模型选择逻辑 |

日志中的旧类名、模块 ID 或品牌文本可能来自稳定内部标识。版本身份以 APK / `version.json` / 模块属性为准，不能仅凭一行日志的命名判断安装了哪一个版本。

## 版本、签名与产物验证

版本集中在 `version.json`。`Phoenix-M.m.p` 的偏移为 `M*10000 + m*100 + p`，其中 `m`、`p` 小于 100；Camera 加 `760000000`，LSP 和模块加 `2000000`。构建器同步 APK 版本、模块属性、载荷名称和自检版本。

Camera 搬运官方 OEM Signing Block，不具备重新签发小米签名的能力。LSP 使用标准签名，覆盖已安装版本需要同一密钥。开发密钥位于 `work/keys/`，自有密钥可通过 `--keystore` 与环境变量配置，详见 README。

验证应对应发生变化的层次：

| 修改范围 | 可观察结果 |
| --- | --- |
| 相机代码或资源 | 目标类、资源 ID、交互路径与实际拍摄结果 |
| LSP hook | 新建目标进程中的 hook 成功日志、功能结果及异常 |
| 模块安装或资产 | 安装结果、挂载日志、文件权限与消费者读取结果 |
| 构建与打包 | APK 包名/版本/签名、ZIP 内容、模块载荷与单独 APK 的一致性 |
| 文档与源码归档 | 文件集合、引用路径与归档内容一致性 |

LSP 热更新针对后续新建的目标进程生效。显式启动 Activity 并检查目标 hook，可区分“APK 安装成功”和“功能加载成功”。模块开机结果可查看 `开机日志.txt`、`mount.log`、`watermark-cache.log`。

`verification.json` 记录验证结果与覆盖范围；它不代替针对具体修改的验证。组件来源与许可信息在 `third-party.json`。

### Camera 签名块的具体处理

`tools/inject_oem_signing_block.py` 提供 `central_directory_offset()` 和 `signing_block()`。Camera 构建先取得对齐 APK，再从官方底包读取 APK Signing Block，将其插入新 APK 的 ZIP central directory 前，并更新 EOCD 中 central directory 的偏移。

该过程保留官方签名块内容，但没有官方私钥，不能为修改后的 APK 内容生成有效官方签名。因此，Camera 不以标准 `apksigner verify` 成功作为这一移植签名方式的验收条件；设备需要核心破解环境。签名块结构一致也不等价于应用可运行，运行兼容仍需独立验证。

LSP 与此不同：使用 `apksigner sign` 正常签名，随后执行 `apksigner verify`，验证成功后才替换正式 APK。默认开发密钥为 RSA 2048，别名 `androiddebugkey`；默认密码 `android` 只适用于构建器生成的开发密钥。

使用自有密钥的完整示例：

```powershell
$env:PHOENIX_STORE_PASSWORD = "your-store-password"
$env:PHOENIX_KEY_PASSWORD = "your-key-password"
python tools/build_phoenix.py --mode lsp --keystore "D:/keys/phoenix.keystore" --key-alias "phoenix"
```

环境变量由构建器传入签名子进程。默认密钥文件不会进入源码包；丢失用于已安装 LSP 的签名密钥，会影响后续覆盖更新。相机签名策略与 LSP 签名策略不能混用。

### 版本同步与模块 ZIP

对版本 `Phoenix-M.m.p`，数值偏移为 `M*10000 + m*100 + p`，`m`、`p` 必须在 0..99。Camera versionCode 为 `760000000 + offset`，LSP 和模块为 `2000000 + offset`。三项数值必须与版本名同时满足公式。

`set_version()` 改写 Camera、LSP 编译树的 `apktool.yml`。`build_module()` 在 `module.prop`、`customize.sh`、`install-self-check.sh` 中替换 Phoenix 版本字符串，并替换 `versionCode=` 行。APK 文件名由构建器统一生成：

```text
dist/Phoenix-1.0.0/
  Phoenix_Camera_Phoenix-1.0.0.apk
  Phoenix_Camera_Phoenix-1.0.0.apk.build.json
  Phoenix_LSP_Phoenix-1.0.0.apk
  Phoenix_LSP_Phoenix-1.0.0.apk.build.json
  Phoenix_Phoenix-1.0.0_AllInOne.zip
  Phoenix_Phoenix-1.0.0_AllInOne.zip.build.json
```

模块中 `.sh` 文件的 ZIP Unix mode 为 `0755`，其他模块文件为 `0644`。静态模块条目由 `ZipInfo(name)` 创建，默认 ZIP 日期可能显示为 1980 年；它不是源文件修改时间，也不能用来判断代码是否最新。内容应以实际条目字节与目标源码核对。

`.build.json` 记录版本、构建模式、工具版本、支持底包、Git revision / status、源码归档来源（若存在）、输入目录、产物大小与耗时。它是来源说明，不是设备验收报告。

### 静态验证与实际运行的边界

`tools/compare_releases.py` 是两套指定产物的比较工具：

```powershell
python tools/compare_releases.py --reference-dir "D:/comparison/reference" --candidate-dir "dist/Phoenix-1.0.0" --android-sdk "D:/Android/Sdk" --output "work/comparison.json"
```

比较内容包括 ZIP 条目、Manifest 版本、变化 DEX 的 smali 类、Camera OEM Signing Block、LSP 标准签名和模块内嵌 APK。发生 DEX 变化时，工具实际解包两边的 APK 后比较，不依赖先验解包目录。

该工具主要用于预期业务内容等价的构建对照；正常功能修改也可能导致它报告不等价。它不能单独判断某次功能修改是否正确。默认输出为 `verification.json`，进行临时比较时可以像示例一样显式写入 `work/`，避免覆盖发布验证说明。

运行验证以具体功能为单位：

- LSP：标准签名验证与安装成功之后，仍需在新建的目标进程确认目标 hook 加载和功能结果。更新后不需要等待重启才重新加载 LSP。
- Camera：确认包版本、能启动和目标拍摄功能。显式 Activity 启动优于把启动工具自身报错误判为相机崩溃。
- 模块：区分安装阶段自检、重启后的挂载、作用域配置、资产发布和实际消费者读取。
- 元数据：分别观察图片 EXIF、`XiaomiAuxiliaryInfo`、屏幕水印和相册重建结果。
- 文档与源码包：核对实际文件集合、相对链接、版本数据与归档条目一致性，不要求为纯文档变化重建 APK。

当前 `verification.json` 中列出的设备观测、隔离测试和静态比较有各自覆盖范围。尤其是三大管理器的理论支持，不等于三种管理器均完成实际安装和开机测试；OS4 理论支持也不等于已完成全部设备验证。

## 源码打包与发布文件边界

`tools/package_source.py` 从明确根文件清单和 `camera`、`lsp`、`module`、`tools` 四个目录收集输入。默认输出为 `dist/Phoenix-1.0.0-source.zip`，可用 `--output` 指定位置。

排除项包括 LSP 的 `original`、`build`、`dist`，下载工具目录 `tools/vendor`、Python 缓存，以及 `.apk`、`.keystore`、`.jks`、`.pyc`、`.idsig`。`work/` 和发布 APK 不属于源码归档输入。归档另附 `source-revision.json`，记录 Git revision、对应目录状态与版本。

```powershell
python tools/package_source.py
python tools/package_source.py --output "D:/releases/Phoenix-1.0.0-source.zip"
```

新增根目录文档时需要同步 `package_source.py` 的 `FILES`；新增功能输入目录则需要明确其构建与打包入口。Git 跟踪、构建器收录和源码 ZIP 收录是不同集合，应分别确认。

`AI_CONTEXT.md`、README 和 LICENSE 均作为源码交付的一部分。Phoenix 自有代码及有权授权的修改使用 `GPL-3.0-only`；第三方代码和资产的权利说明见 `third-party.json`，不能从项目根许可证推导出全部第三方资产均已改授 GPL。

## 按任务选择阅读入口

| 维护任务 | 推荐阅读顺序 | 关键交付检查 |
| --- | --- | --- |
| 更换或适配相机底包 | `supported-camera.json` → `unpack.py` → 官方解包树 → `patch.json` → `patched_files()` | 底包身份、类映射、资源和目标设备行为 |
| 修改相机 UI / 视频入口 | 补丁资源 → 相关 smali 调用者 → 目标协议或路由 → LSP 是否参与 | 目标模式与其他模式分开验证 |
| 修改设置或机型选择 | `DeviceNameOverride` → 对应 PreferenceFragment → hook 消费者 | 值写入、读出与消费者表现一致 |
| 修改图片 / 水印元数据 | `CameraWatermarkBridge` → `$4` / `$5` → 目标写入方法 | 两项开关、EXIF 字段、JSON 和相册行为 |
| 修改水印模板 / 颜色 | `WatermarkAssetRouter` → `CameraV51Bridge` 发布方法 → 模块资产与清单 → 同步脚本 | 不同分类、颜色、阴影、保存及重建 |
| 排查模块兼容 | `customize.sh` → `.phoenix-root-family` → `post-fs-data.sh` → `service.sh` | 安装、挂载、标签、作用域与应用读取 |
| 修改构建 | `build_phoenix.py` 对应阶段 → 相关辅助工具 → 输出来源说明 | 输入收录、版本、签名策略、缓存与模块载荷 |
| 更新公开说明 | README → 本文 → 配置 / 验证说明 → `package_source.py` | 文档一致、链接有效、归档同步 |

以上入口用于定位实现；功能存在与否、兼容结论和资产用途最终由实际源码、打包内容和运行结果确定。
