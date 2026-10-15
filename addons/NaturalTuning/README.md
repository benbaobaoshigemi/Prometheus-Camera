# PhoenixAddon-NaturalTuning

当前版本：**V1.4.0**

在小米 14 Ultra 上提供小米 18 Pro Max「原色」成像：相机里仍选“徕卡生动”，拍照的 Gamma、CC、LTM、CV、2D LUT 及多帧/HDR/夜景/人像等深层节点换成原色数据。由 KernelSU 模块（模块 ID `phoenix_natural_tuning`）和 LSPosed 设置开关（包名 `com.phoenix.camera.naturaltuning`）组成，两边版本号必须一致。

## 下载

| 文件 | 内容 |
| --- | --- |
| [`PhoenixAddon-NaturalTuning-V1.4.0.zip`](release/PhoenixAddon-NaturalTuning-V1.4.0.zip) | KernelSU 模块（含四颗后摄的原色 tuned bin） |
| [`PhoenixAddon-NaturalTuning-V1.4.0-LSP.apk`](release/PhoenixAddon-NaturalTuning-V1.4.0-LSP.apk) | LSPosed 设置开关，作用域：相机 |
| [`PhoenixAddon-NaturalTuning-V1.4.0-validation.json`](release/PhoenixAddon-NaturalTuning-V1.4.0-validation.json) | 构建与静态验证清单 |
| [`PhoenixAddon-NaturalTuning-V1.4.0-Source.zip`](release/PhoenixAddon-NaturalTuning-V1.4.0-Source.zip) | 源码归档，与 [`source/`](source/) 内容一致 |

## 安装

1. KernelSU 安装模块 ZIP。安装时校验四个原厂 tuned bin 的 SHA-256，ROM 不同则拒绝安装。
2. 安装 LSP APK，在 LSPosed 中勾选相机，重启。
3. 相机设置 → 经典控制 → “劫持徕卡生动重定向到原色”。首次安装默认关闭；开关按需挂载并重启相机服务。

需要 Phoenix 相机。徕卡经典、前摄、录像、第三方应用不受影响。功能与验证细节见 [`source/README.md`](source/README.md)。

## 校验

| 文件 | SHA-256 |
| --- | --- |
| `PhoenixAddon-NaturalTuning-V1.4.0.zip` | `975D19B93ED9CE0FDD4975B859C7DD223CC27C5CDD41B6F2C83384C8E4980267` |
| `PhoenixAddon-NaturalTuning-V1.4.0-LSP.apk` | `AC6E0ED8023807A93BE69E475A7E8F61375474281113E3565558EFBCA05BF3C2` |
| `PhoenixAddon-NaturalTuning-V1.4.0-validation.json` | `2CE61B7094E326E38EA6E6C19162D36EB999F945CFF4DC636DCA39AD807BDC0D` |
| `PhoenixAddon-NaturalTuning-V1.4.0-Source.zip` | `367B6E6073E2D2B63DE659D073602DCB2E8ADDF1B7D5168BD6725C37C783450E` |

源码带逐文件 `manifest.json`。源码不包含 14U / 18PM 原厂 tuned bin、相机库或签名私钥。

仅限小米 14 Ultra 使用。
