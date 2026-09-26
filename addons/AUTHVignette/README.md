# PhoenixAddon-AUTHVignette

从 Phoenix 主 All-in-One 拆出的“徕卡经典暗角着色器”功能。Addon 由独立 LSPosed APK 和独立 ROOT 模块组成；主 Phoenix 未安装本 Addon 时不显示暗角着色器入口，也不挂载照片处理库或启动公式同步服务。

Addon 不绑定具体 Phoenix 版本；只要 Phoenix 继续使用相同的 OS4 官方相机底包即可兼容。LSP 包名固定为 `com.phoenix.camera.authvignette`，ROOT 模块 ID 固定为 `phoenix_auth_vignette`，后续版本可原位升级。

V1.1.0 的预览库打包在 Addon APK 内，主 Camera 继续使用官方原件。根模块负责成片库和公式服务：先准备成片公式再挂载，应用私有公式同步完成后发布本次开机的就绪状态。LSP 在检查就绪状态、实际挂载和公式有效性之后才注册业务 Hook。

独立构建脚本位于本目录 `tools/`；其所需原生二进制输入、Android 构建环境和参数应按脚本说明准备。本仓库的主线 `tools/build_phoenix.py` 不构建此 Addon，也不修改主 Phoenix 产物。

原生二进制输入来自工程的 `release/Phoenix-1.1.15/Phoenix_Phoenix-1.1.15_AllInOne.zip`：Camera 内的 `libMiFilterSDK.so` 和根模块的 `payload/libMiPhotoFilter.so`。该路径仅记录原生输入来源，不构成 Phoenix 版本要求；源码包不重复分发整个历史相机底包。

唯一 Java 加载点为 `com.xiaomi.milab.filtersdk.CandySDK.<clinit>` 的 `System.loadLibrary("MiFilterSDK")`。Addon 只改写 `BaseDexClassLoader.findLibrary` 中相机 ClassLoader 对该库名的查询结果，返回 Addon APK 内未压缩且对齐的原生库路径。保持原调用者及 JNI 所属 ClassLoader，不额外预加载第二份库。

禁用 LSP 并结束相机进程只恢复官方预览；完整停用须同时禁用根模块并重启，以解除成片库挂载。不要删除公式文件来停用功能。

卸载 LSP 后，根模块下次开机也会跳过成片库挂载；卸载根模块后，遗留 LSP 会因根模块未就绪而不注册业务 Hook。恢复不需要重刷主 Camera、清数据或修改 ROM 库。导入公式与设置保留为不再被主相机读取的用户数据。

小米 15 Ultra 不应安装此 Addon。此说明不通过机型门控实现，代码和安装脚本均不检测设备型号。
