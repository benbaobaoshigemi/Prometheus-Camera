# PhoenixAddon-NaturalTuning V1.4.0

小米 14 Ultra 上的「原色」成像：相机里仍选“徕卡生动”，拍照的成像节点换成小米 18 Pro Max「原色」的对应数据。由 KernelSU 模块和 LSPosed 设置开关两部分组成，两边版本号必须一致。

## 做了什么

模块把四颗后摄的 CamX tuned bin 单文件 bind mount 成原色版本：
`/odm/lib64/camera/com.qti.tuned.aurora_{semco_LYT900_wide,semco_imx858_ultra,ofilm_imx858_tele3x,semco_imx858_tele5x}.bin`。

改动的节点（只作用于徕卡生动的拍照请求）：

- **Gamma 1.5**：18PM 原色的固定曲线。
- **CC 1.4**：去增艳分支（custom_awb1 [0,0.99] 指向 [1,64] 子树）。
- **LTM 2.0.2**：18PM（原色 − 生动）的静态 LTM 增量，按 CamX 的 drc_gain / lux_idx 区间节点重建，并在区间之间补采样点；触发列表不超过 20 个节点。
- **CV 1.2、2D LUT 1.1**：18PM（原色 − 生动）在同一触发点上的增量。
- **深层节点**：多帧降噪后处理、超分、HDR、RAW HDR、人像、夜景、AIUR、闪光等 14U 特化拍照节点按同一规则改写；主摄 `MMFPostFilter/Face` 使用 18PM 原色的专属 LTM 叶。多帧中间阶段（Gamma 在 0.25 处约 0.43）保持原样，避免色调重复施加。

不受影响：前摄、徕卡经典（NewStyle sensor 模式）、录像、第三方应用、特效。部分传感器模式下会回落到原色的录像/第三方请求，另加了保护记录指回原数据。

## 安装与使用

1. KernelSU 安装 `PhoenixAddon-NaturalTuning-V1.4.0.zip`。安装时校验四个原厂 bin 的 SHA-256 与构建基线一致，不一致（ROM 不同）则拒绝安装。
2. 安装 `PhoenixAddon-NaturalTuning-V1.4.0-LSP.apk`，在 LSPosed 中勾选相机（`com.android.camera`）作用域，重启。
3. 相机设置 → 经典控制里出现“劫持徕卡生动重定向到原色”。首次安装默认关闭。
4. 开关按需挂载：打开时模块挂载原色 bin 并重启相机服务，关闭时卸载；开关状态保存在 `/data/adb/phoenix_natural_tuning/state`，开机按状态挂载。挂载全部成功或全部回滚。

需要 Phoenix 相机（LSP 开关复用 Phoenix 的设置项布局）。

调试（不重启）：

```
su -M -c 'sh /data/adb/modules/phoenix_natural_tuning/hot-apply.sh'
su -M -c 'sh /data/adb/modules/phoenix_natural_tuning/hot-remove.sh'
```

## 源码

- `module/`：KernelSU 模块脚本。`manifest.txt` 记录 `<原厂sha256> <载荷sha256> <文件名>`，载荷不在源码里。
- `lsp/`：LSPosed 设置开关（`NaturalSettings.java`）。开关只通过相机私有目录里的 request/ack 文件与 ROOT 模块通信，挂载由模块负责。
- `payload-tools/`：生成原色 tuned bin 的脚本与验证工具。输入是 14U 原厂 tuned bin 与 18PM 原厂 tuned bin（不随源码提供）；脚本里保留了原工作区的绝对路径，换环境需要改路径。
  - `natural14u/build_natural_tuned.py`：主构建；`ltm_port.py`、`node_port.py`：LTM 与 CV/2D LUT 增量移植；`gen_deep_plan.py`：深层节点计划（产出 `deep_plan.json`）。
  - `natural14u/verify_deep.py`、`verify_ltm.py`、`verify_nodes.py`：请求级穷举、LTM 仿真与节点数值验证。
  - `ana/`、`viv-color/`：tuned bin 解析等通用模块；`ltm-emu/`：在 14U `camera.qcom.sm8650.so` 上用 unicorn 运行 LTM 引擎的仿真脚本（需自备该库）。

## 验证（静态）

- 所有请求、5 个节点逐一核对，与计划一致（CC14 少数没有增艳档的图按规则保持原样）。
- LTM 触发列表均不超过 20 个节点。
- LTM 在 14U 引擎仿真上：触发节点误差不超过 1 个 LUT 单位；节点之间主摄与超广不超过 3，长焦有 3 张图到 36（原厂树在 lux 200–210 之间本身就有很陡的坡）。
- CV12、TDL11：与“原值加增量”的误差不超过 1e-6。

仅限小米 14 Ultra（aurora）使用。
