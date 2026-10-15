# 18PM 原色的静态 LTM 能否移植到 14U（代码级核对版）

证据：18PM `libhwliqinterface2.so`（ltm212setting.cpp，0xf3a968 为 LTM212 CalculateHWSetting，0xf393dc 为 BlendTMC211ADRCCurve，0x404294 为包装函数）；14U `camera.qcom.sm8650.so` 的 `LTM202Setting::CalculateHWSetting`（0x104d830）。反编译在 `rom18pm/ltm_off/`（`f3a.c`、`ltm202_setting.c`、`callers.c`、`iq_blend.c`）。以下"已验证"均指两侧反编译逐行对照。

## 已验证
1. **静态计算引擎两代代码相同。**
   - 18PM `param_3[6]`=reserve 的第 7 个字段 `ltm_scale_manual_curve_enable`（包装函数把 chromatix reserve 的 +0x5c 区域当作 param_3；reserve 字段序 ltm_en,img_process_en,igamma_en,mask_filter_en,face_enable,eam_enable,manual_curve_enable,…，`[0x5b]`=ltm_index，`[0x5c]`=table_sel）。
   - enable=0：用公式合成 scale 表：前 26 点 4352·((25.6−i)/25.6)^3.25，后段 −2048·(…)^3.25，夹在 [−1843.2, 3916.8]，**完全覆盖 tuned 里的静态表**。14U 有同样常数。
   - enable=1（两个机型的两种风格 tuned 里都是 1）：用 tuned 静态表；按"第一个零点之前"乘 `dark_boost`、"最后一段零之后"乘 `bright_suppress`（零点按**精确等于 0.0** 判定）；若表首项<0 且无零点，则**整表只乘 bright_suppress，dark_boost 不起作用**。再整表乘 `ltm_strength`；LCE 曲线乘 `lce_strength`。
   - 最终写硬件：`(int16)(值 × 0.25)`。14U 同样：strength 在 +0x294，dark +0x298，bright +0x29c，最终 ×0.25。
2. **18PM 的动态部分与静态 scale 不是同一张表。** `BlendTMC211ADRCCurve` 把 TMC211 的 ADRC 曲线按 `+0x1984` 权重混入一条 65 点增益比曲线（`local_2c0`），用于另外的硬件表；写入硬件的 `ltm_scale` 只是 `静态表×系数×0.25`，没有被动态曲线逐点相乘。条件：TMC 输出存在，`ltm_index`(=2，两风格相同)与 TMC 掩码相交，且 `isSS3xsdTempFlag`=0。
3. **18PM 生动 `ltm_strength`=0 ⇒ 硬件 ltm_scale 全零**；动态部分仍在（走另一条表）。**原色**：同样的动态部分 + 静态表。
4. **18PM 原色静态表(−394…+199…+5)无精确零点、首项为负** ⇒ 按上述规则，整表只乘 `bright_suppress`，再乘 `ltm_strength`。wide_a 的 15 个叶，(strength, bright) 组合为 (1,1)(0.6,1)(0.8,0)(0.8,0.2)(0.6,0.5)(0.5,1) 等；`bright=0` 的叶静态 LTM 实际为 0。**所以 dark_boost 对原色是死参数，原色的静态 LTM 只在部分叶（bright>0）上存在。**
5. 14U 的 `IPELTM202::Execute` 调 `IPELTM202CalculateSetting` 时传入的 `TMC10InputData` 为 NULL；14U LTM202 没有 18PM 那条 ADRC 曲线混入路径（另有 `LTM202InputData+0x1b0` 指向的 AEC 预置区域 `+0x32a4==1` 旁路，运行期是否触发未证）。
6. 14U VIBR 的 ltm_scale 表与 18PM 生动逐点相同，`ltm_curve`(int32) 14U 为线性 0..4095，与 18PM 原色相同。

## 因此可以确定的结论
- 静态引擎等价 ⇒ 把 18PM 原色的静态 scale 以"数值"形式带到 14U 是**数学上自洽**的：14U 硬件 scale = ×0.25 取整的 `engine14(T14,s14,dark14,bright14)`；要叠加原色分量，目标是 `engine14(T') = engine14(T14,…) + engine18(N, s_N, bright_N)`。烘焙法：对每个 14U 叶先按 14U 引擎算出 `A`，再算 18PM 的 `B = N·bright_N·s_N`，令 `T' = A + B`，把该叶 `strength=dark=bright=1`（避免零点判定被求和后失效）。
- **不能做的**：不要直接改 14U 的 strength/dark 去"近似"；原色整表只受 bright 控制，直接复制 dark 无意义。

## 仍未证明（不能当结论）
1. 18PM 动态 ADRC 曲线所进入的那张硬件表，在 14U 上有没有等价的表/来源（14U 传入 TMC 为 NULL）。因此"18PM 生动的动态 LTM 与 14U 生动的静态 LTM 是否对等"仍无证据；原色在 18PM 上是"动态+静态小表"，在 14U 上只有"静态大表+小表"，两侧**总体 LTM 量**不可比。
2. 18PM 与 14U 叶触发轴（drc/lux 等）的含义与刻度是否一致，决定 `s_N, bright_N` 怎样映射到 14U 的 12 个叶。需要先解出两侧的 control variable 名称。
3. LCE 部分（lce_strength 原色 0.5–1.5 vs 生动 0–1.2；14U 0–1.4）同理未映射。
4. 对"偏灰"的贡献量：本次只证明了机制，未量化成片影响（需要设备 A/B 或 14U 引擎仿真）。

## B：14U 引擎仿真（已完成，用于验证上面的"引擎等价"，不是旁证）
- 工具：`rom18pm/ltm_off/emu/`（`load.py` 装载 `camera.qcom.sm8650.so`，`harness.py` unicorn 环境与 libc/日志桩，`emu14.py` 构造输入并调用真实的 `LTM202Setting::CalculateHWSetting`@vaddr 0xf4d830，`run4.py` 对照测试，`run4_result.txt` 输出）。
- 仿真输出的硬件 scale 表（输出结构 +0x60 指针所指缓冲，每点 4 个 int16：值、(下一点-本点)×2、3、0）= `round(表 × 强度 × 0.25)`，对真实 wide VIBR 首叶（强度 1.65）完全吻合（844,844,796,684,…,-485）。
- 用 7 组输入对照"来自 18PM 反编译的零点/瓣模型"：VIBR 表（带零段）× 不同 dark/bright/strength；18PM 原色表（首项<0、无零点）；14U 表与原色表的烘焙和（无零点）。除末点（硬件只存 64 点）和 ±1 舍入外**全部一致**。具体事实：
  - 带零段的表：dark 乘零点之前、bright 乘零点之后。
  - 首项<0 且无零点（原色表）：整表只乘 bright，dark 无效（仿真 d=2,.5,.3 与模型一致）。
  - 首项≥0 且无零点（14U 表 + 原色表烘焙和）：整表只乘 dark，bright 无效；烘焙时令 strength=dark=bright=1 得到的硬件值恰为 `round(和×0.25)`，可用来精确合成。
- 结论：18PM 与 14U 的静态 scale 引擎在这些输入上行为一致，"A 表 + B 表烘焙"可以精确实现；该仿真可用于对任意候选表做上机前的硬件值核对。
- 仍未解：叶触发轴映射、LCE、动态曲线对应物、成片观感贡献（见上节）。

## 实施结果（V4 构建，out4）
- 轴对应已定：14U ltm202 控制量 = (2 drc_gain, 5 aec_exp_sensitivity_ratio, 0 lux_idx[, 1016 custom_aec5])，由 14U `IQSettingUtils::GetTriggerTypeName` 反编译得到；18PM ltm212 = (1052, 1016 custom_aec5, 2 drc_gain, 0 lux_idx, 1000 custom_aec1)。两侧都有 drc_gain 与 lux_idx，直接按同名触发量对应；18PM 的 1052 层取 0（常规拍照），custom 层取区间内值。
- 增量定义：对 18PM 对应镜头（wide→wide_a，ultra→ultra_a，tele3x/5x→tele_a）在 (drc, lux) 处按 CamX 同样的插值规则求 Natural 与 Vivid 的静态引擎输出之差：scale（经 lobe/strength）、LCE 正负曲线×lce_strength、blend_weight_tab（14U slot 169..180，同为 12 个浮点）。`ltm_curve` 14U 已是线性，与 Natural 相同，无增量。
- 14U 叶 = 14U 引擎值（对原树在该点插值后经零点分瓣与 strength）+ 增量，烘焙为 strength=dark=bright=lce_strength=1。drc 与 lux 两轴按两侧全部区间边沿重建为点节点（其余轴保持原样），使分段线性插值精确复现“基线 + 增量”。
- 代码：`natural14u/ltm_port.py`，`build_natural_tuned.py` 新增节点 `ltm202_ipe_v2`（root 0x1C0，region 0x42C）。
- 验证：
  - `verify_resolution.py out4`：BAD 0（三个节点的穷举模式解析；仅非 NewStyle、非 usecase 2/4 请求命中 Natural）。
  - `verify_ltm.py out4`：真实 14U `LTM202Setting::CalculateHWSetting`（unicorn）对新树在 15×23 个 (drc,lux) 点的输出，与 `round(0.25×(原树引擎值+增量))` 比较：节点处最大误差 ≤1 个 LUT 单位；节点之间最大 17（原树自带的重叠区间 lux 390–410 的跳变，tele 两个图），其余图 ≤7；增量本身最大 98（wide）/78（其他）单位。
  - 构建器结构检查：原符号与模式树逐字节不变、SID 连续、CRC 正确。
- 交付：`addons/NaturalTuning/release/PhoenixAddon-NaturalTuning-V1.1.0.zip`（已提交）。

## 上机结果（2026-10-13，KernelSU 官方命令安装 + 热挂载，未重启）
- V1.1.0（out4）：provider 在 `LTM202Interpolation::SearchLTM202AnyOtherNode` 中 abort（tombstone）。反编译显示该函数把一个触发列表的区间边沿拷进栈上 20 项数组，列表超过 20 个节点即走失败分支。我的 lux 点节点最多 22 个。
- 修复（V1.1.1，out5）：对 lux、drc 两轴在"线性插值可复现"的前提下合并节点（阈值 0.05 浮点单位），且每个列表 ≤20；`ltm_port.py` 里 `MAX_NODES=20`。硬件级误差与 V1.1.0 相同量级（节点处≤1，节点间≤17 LUT 单位）。
- V1.1.1 实测：`ksud module install` 通过（四个 bin 的原厂 sha256 与基线一致）→ `hot-apply.sh` 四个挂载成功 → provider 重启后稳定（同一 pid），无新 tombstone；0.5/1x/2x/3.2x/5x 五档各拍一张，全部出图（5.8–7.5MB JPEG，4096×3072）；dumpsys 的 TuningMode 随变焦切换；LEICA VIBR 标识保持。
- 同场景 A/B（ISO800，1/33s，曝光完全一致；N1↔N2 重复性 1.55）：
  - 原色(V1.1.1) vs 原厂：平均逐像素差 15.1，亮度中位 129 vs 146（该暗光场景下原色整体偏暗，主要来自 Gamma/CCM）。
  - 原色(V1.1.1) vs 仅 Gamma+CCM(V3，out3)：平均逐像素差 3.0，局部对比度（高通标准差）16.2 vs 14.6（+10%），暗部(40–90) −1.4，亮部(>150) +1.0。即 LTM 增量的实际作用为小幅提升局部对比，方向与设计一致。
