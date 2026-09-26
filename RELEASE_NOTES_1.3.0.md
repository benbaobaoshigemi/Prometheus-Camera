# Phoenix V1.3.0

基于小米 17 Ultra OS4 官方相机底包的 Phoenix 移植版本，主要面向小米 14 Ultra（`aurora`）。

本版整合此前已确认可用的徕卡经典/生动入口、专业视频滤镜注入、电影画幅与快门抽动修复、备份/恢复适配，以及经典暗角 Addon 所依赖的主线接口。徕卡一瞬不在支持范围内。

发布文件：

- `Phoenix_Phoenix-1.3.0_AllInOne.zip`：Camera、LSP 与根模块整合包。
- `Phoenix-1.3.0-source.zip`：可重建的源码和构建工具；不含官方底包与签名私钥。
- `PhoenixAddon-AUTHVignette-V1.1.0-Package.zip` 与 `PhoenixAddon-AUTHVignette-V1.1.0-Source.zip`：独立暗角 Addon 及其源码，版本独立于主 Phoenix，不在主整合包内。

升级时保留相机和相册编辑器的数据。首次安装及环境要求见 [README](README.md)。版本号：Camera `760010300`，LSP/模块 `2010300`。

已知边界：除小米 14 Ultra 外的机型及 ROM 组合未逐一验证；LSP 用新密钥重建时，安装到已有同包名应用上可能需要原签名密钥。源码归档中含第三方派生文件，其授权范围见 [third-party.json](third-party.json)。
