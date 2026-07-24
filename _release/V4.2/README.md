# Prometheus Project V4.2

适用设备：已 ROOT 的 Xiaomi 14 Ultra（aurora）。

## V4.2 更新

- 修复专业模式的多项问题，包括专业镜头、变焦范围、变焦条和 50MP 跨镜头保持与记忆。
- 恢复专业视频模式的音频变焦及对应音频功能链。
- 补全正片、负片滤镜。
- 相机内支持使用系统相册中的多款滤镜，并保留对应本地渲染元数据。

## 文件

- `Prometheus_Cam_V4.2.apk`：相机 APK。
- `Prometheus_Module_V4.2.zip`：配套 KernelSU/Magisk 模块。

## 安装

1. 覆盖安装 `Prometheus_Cam_V4.2.apk`，不要清除相机数据。
2. 通过 KernelSU 或 Magisk 刷入 `Prometheus_Module_V4.2.zip`。
3. 重启设备。

ADB 覆盖安装命令：

```text
adb install -r -d Prometheus_Cam_V4.2.apk
```

## SHA-256

```text
Prometheus_Cam_V4.2.apk
773A8BD0E08D436D1B22A49BD048C4818232CC070ACA4DAE1CB74CD7C4331898

Prometheus_Module_V4.2.zip
B2C93E62FAEC81BFA6DB25BD6A750A73E470A58BB2E8ACAE4A125B931A42DC6E
```
