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

## 研究、取舍与解码

- `docs/`：做这个 Addon 时的分析与设计记录，说明每一步为什么这样取舍。
  - `原色_vs_生动_管线分析.md`：18PM 原色与徕卡生动逐节点对比，风格走 tuning 的 Feature0 维度。
  - `14U原色_LTM移植研究.md`：18PM 原色的静态 LTM 能否移植到 14U：引擎同源的代码级证据、14U 引擎仿真、实施与上机结果，以及仍未证明的部分。
  - `14U原色_剩余节点移植.md`：18PM 原色相对生动的其余差异逐项结论（CV12 / 2D LUT 等）。
  - `14U原色_深层节点静态分析.md`：14U 与 18PM 模式枚举按名字映射、深层记录的分类与处理规则、多帧中间阶段为何保持原样。
  - `14U原色_组合设计.md`：18PM 生动 / 18PM 原色 / 14U 生动三者的组合公式：CCM 分层、相对标定的风格偏离、Gamma、平台代际节点。
- 解码：
  - `payload-tools/ana/tuned.py`、`schema.py`、`dict.py`、`resolve.py`、`tree.py`：18PM Parameter Parser V7.1.1 tuned bin 解码（第 4 段内嵌完整 schema，可全字段解码；`a&1` 表示 int 按 float32 存储）。
  - `payload-tools/ana/cfgdec.py`：小米相机配置 `encrypted_data:` 解密（Base64 后与 32 字节密钥循环异或）。密钥不在脚本里，运行时从自备的 `libcom.xiaomi.camera.configmanager.so` 读取。
- 近似计算：
  - `natural14u/ltm_port.py`：LTM 增量按 CamX 区间节点重建并在区间之间补采样点。原厂在区间之间插值的是 LTM 参数，再经非线性引擎；烘焙后插值的是引擎结果，补采样点是为了缩小两者在陡峭过渡区的差距（误差见下文）。
  - `natural14u/node_port.py`：CV12 / TDL11 在同一触发点上取 18PM（原色 − 生动），连续轴按区间线性插值。
  - `ltm-emu/`：用 unicorn 在 14U 引擎上仿真 LTM，作为近似误差的真值。
  - `ana/*.py` 其余脚本、`natural14u/` 其余脚本：节点差分、覆盖统计、枚举表导出等过程工具；`device/`：上机挂载与 A/B 拍摄脚本。
- 未收录：解密后的小米配置、从 tuned bin 导出的数据、小米相机 APK、CamX 反编译结果。这些属于小米 / 高通的专有内容或由其直接导出。

## 验证（静态）

- 所有请求、5 个节点逐一核对，与计划一致（CC14 少数没有增艳档的图按规则保持原样）。
- LTM 触发列表均不超过 20 个节点。
- LTM 在 14U 引擎仿真上：触发节点误差不超过 1 个 LUT 单位；节点之间主摄与超广不超过 3，长焦有 3 张图到 36（原厂树在 lux 200–210 之间本身就有很陡的坡）。
- CV12、TDL11：与“原值加增量”的误差不超过 1e-6。

仅限小米 14 Ultra（aurora）使用。
