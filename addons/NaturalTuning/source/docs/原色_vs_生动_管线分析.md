# 小米 18 Pro Max「原色」与「徕卡生动」成像管线差异

- ROM：`madrid-ota_full-OS4.0.24.0.XEOCNXM-user-17.0`（payload → vendor/odm erofs）
- 范围：后摄拍照的 ISP tuning 和 vendor 侧后处理资产。相机 APK 不在范围内（APK 只下发风格请求）。
- 证据性质：纯静态分析，没有设备日志。下文"已验证"指已在 ROM 二进制上字节级复核；"推断"和"待验证"会单独标注。
- 修订：第一版报告写了"生动 LTM 基本关闭"，这是错的，已更正（见 3.3）。第一版只比较了 Feature1/Feature2=0 这一条路径，本版覆盖主摄全部 278 条路径，并且按数据内容比较。

## 0. 结论

1. **原色是 CamX tuning 里一整套独立的 Feature0 分支**，不是在生动上叠一张 LUT。
   tuning 的风格维度 `Feature0` 取值为 `None(0)=生动`、`Authentic(1)=经典`、`Natural(12)=原色`、`SecondNatural(13)`。
2. 主摄的 236 个 tuning 模块中，**211 个在全部 278 条路径上与生动数据相同**，25 个在部分路径上不同。差异分两类：
   - **A 类·主动分叉**：原色有自己的 Natural 节点，数据由调校者为原色单独设定。
     - 颜色：CC152（CCM）、CV122、ColorLUT20、CC132_OFE
     - 明暗：Gamma153（IPE）、Gamma153_OFE、LTM212（IPE/OFE）、TMC211
     - 另有两个 AEC 模块，只在天文和超级夜景路径上分叉
   - **B 类·回落不对称**：生动在某些模式下有专属节点，原色没有，CamX 只能回落到上一层的通用节点。
     - 主要发生在 SuperDefinition（高像素）及其闪光灯变体
     - 涉及降噪 anr/asf/hnr/tf/abf/lenr/bnoise、坏点 pdpc/qpdr、CAC、GTM、WB14、demux、UVG
     - 经典在这些路径上的回落方式和原色相同
3. 生动**并没有关闭 LTM**。两种风格的 TMC 都是 `use_ltm=1`，`ltm_percentage` 0.6–0.7，局部色调映射由 TMC 按 DRC 增益动态驱动。原色多出来的是 LTM 模块内的一项静态成分：`ltm_strength` 0.5–1.0，配另一套 `ltm_scale` 和线性 `ltm_curve`，`lce_strength` 上限从 1.2 提到 1.5。这一项在硬件里怎么与 TMC 的动态曲线合成，**待验证**。
4. 在 AISP HDR/SE 这类 AI 后处理路径上，两种风格的 TMC/LTM/GTM 全部关闭，配置一致，明暗交给后端算法。

## 1. tuning 是怎么工作的（白话）

可以把一个 tuned binary 想成一本按"拍摄情境"分章节的参数手册。

1. **模块**：ISP 每个硬件或软件处理块都有一套参数结构，例如 CCM、Gamma、LTM、降噪。V7.1.1 文件内嵌了每个结构的完整定义，包括字段名、类型和默认值。主摄文件里共有 277 种模块定义、10795 份参数实例。
2. **模式树（选哪一份）**：每份实例挂在一棵按 `Sensor 模式 → Usecase(预览/拍照) → Feature0(风格) → Feature1(功能，如高像素/闪光) → Feature2(处理阶段，如多帧融合、AI 后处理) → Scene → Effect` 排列的树上。拍照时 CHI 会给出一组值，例如"sensor0、拍照、原色、无特殊功能、多帧后滤波"。CamX 从根开始逐层往下找完全匹配的子节点，找不到就停下，使用沿途最深处挂着的那份参数。这条规则已经从 CamX 的 `ParameterSetManager::GetModuleInternal / ModeEntry::FindMode` 反编译确认。
3. **触发树（同一份参数里再按场景插值）**：每份实例内部还有一棵"触发树"，按运行时统计量分区间，例如 lux（亮度指数）、CCT（色温）、DRC gain（动态范围压缩量），以及小米自定义的 `custom_awb1/aec*`。叶子才是真正的数值，比如一个 3×3 CCM 或一条 257 点 Gamma。运行时 CamX 根据当前统计量落到对应区间，并在相邻叶子之间插值。
4. **运行时控制器**：部分模块不是直接给最终值，而是交给软件算法再算一次。例如 TMC 根据直方图和 DRC 增益生成色调曲线，再按 `gtm_percentage / ltm_percentage` 把压缩量分给 GTM（全局）和 LTM（局部）硬件。所以 LTM 实际做多少，要把 TMC 和 LTM 两份参数合起来看，只看 LTM 一份会看错。

"风格"在这套体系里就是模式树上的一层：选原色等于走进 Natural 这棵子树。子树里调校者写了新数据的模块就换掉；没写的模块，CamX 停在上一层，用不分风格的通用参数。

## 2. 解码等级与工具链

### 2.1 tuned binary（Parameter Parser V7.1.1）——已验证

- 段表：0 = 符号表，3 = BLOB 表，2 = 模式树，1 = DATA，4 = **内嵌 schema（V7 新增）**。
- schema 段包括：模式名字典、ISP 块表、277 个模块定义、2556 个结构体、401 个枚举，解析器对整段逐字节消费。
- 类型码：5 = struct，12 = i32，13 = u32，16 = f32，22 = bool，23 = enum，24 = string。
- 标志位：`a&4` 表示定长内联数组；`a&2` 表示可选 region；`a&1` 表示"整型语义、按 float32 存储"（165 个字段、150 万个值全部是合法 float32）。
- 实例编码：结构体 = `u32 byteLen` + 字段；不定长字段 = `[count][blobRef]`；字符串 = `[len][blobRef]`。
- 覆盖率：主摄 10795 个实例中 10646 个（98.6%）长度严格一致。剩余 149 个是 3A 模块，按原始字节比较。
- SYM 表的 `idx` 是**数据实例编号**，同一份数据可以挂在多个模式节点上。确定来源时必须用条目自己的模式节点，不能按 idx 反查。
- 模式树：各层严格按 S→U→F0→F1→F2→Sc→Ef 下降，**没有任何跳层的边**（已统计全部节点的父子类型）。

### 2.2 小米加密配置——已验证

`encrypted_data:` 开头的 JSON = Base64 + 32 字节循环 XOR，密钥取自 `libcom.xiaomi.camera.configmanager.so` 中的 JsonCryptoTool。共解出 51 个文件。ROM 没有覆写 `NewStyleConfig`；`StylizationTypeMask=12`。

## 3. 主摄 A 类节点（主动分叉）

### 3.1 CCM（cc152）

- 按 `custom_awb1` 分成 [1,2) 和 [2,64] 两套，灰轴保持不变。
- awb1≥2 时大多数格点收饱和（0.81–0.99），红到橙方向色相 +3° 到 +13°，青到蓝方向 −6° 到 −21°；awb1<2 时饱和度比为 0.94–1.25。
- lux 540–999、CCT ≥5800K 这一格写的是单位矩阵。
- 全部后摄的饱和度比中位数：wide_a/b 1.00，wide_c/d 1.23，ultra 1.14，tele 1.29。
- `custom_awb1` 的语义待验证。

### 3.2 Gamma（gamma153 IPE / OFE）

生动 10–15 条曲线随 AEC/DRC/lux 切换，原色 1 条固定曲线。

| 输入 | 0.0625 | 0.125 | 0.25 | 0.5 | 0.75 |
|---|---|---|---|---|---|
| 原色 | 0.206 | 0.331 | 0.489 | 0.704 | 0.868 |
| 生动（范围） | 0.154–0.208 | 0.291–0.366 | 0.519–0.576 | 0.769–0.802 | 0.902–0.923 |

OFE 侧的 Gamma153 在 24 条路径上也有原色专属节点，数值待逐叶展开。

### 3.3 LTM 与 TMC（更正）

| | 生动 | 原色 |
|---|---|---|
| TMC `use_gtm/use_ltm` | 1/1 | 1/1 |
| TMC `ltm_percentage` | 0.6–0.7 | 相同 |
| LTM `ltm_enable / ltm_en` | 1/1 | 1/1 |
| LTM `ltm_strength` | 0 | 0.5–1.0 |
| LTM `ltm_scale` | 2047…−1176 | −394…189…5 |
| LTM `ltm_curve` | 0→291→5（默认鼓包） | 线性 0→4095 |
| LTM `lce_strength` 上限 | 1.2 | 1.5 |
| TMC 叶 | 46 份曲线 | 同一组 46 份，DRC/lux 触发边界移动；部分路径的 `ltm_percentage`、`tone_anchors` 不同 |

- 在 AISP HDR/SE 路径上，两种风格的 TMC 都是 `use_*=0`，`curve_model=2`，GTM 关闭，LTM 强度为 0，完全一致。
- 待验证：`ltm_strength / ltm_scale / ltm_curve` 与 TMC 动态曲线的合成方式，需要逆向 `camera.qcom.sm8975.so` 中 IPE LTM 的设置计算代码。

### 3.4 其余 A 类

- CV122：少数格点 ap/am/cm ±0.03–0.04。
- ColorLUT20：色相表最大 4–8°，饱和度表 ≤0.08，均值接近 0。
- CC132_OFE：31 条路径（Snapshot）有原色节点。
- AEC（aecxdbarbitrationtable / aecxextension）：只在天文、星轨、超级夜景路径分叉。

## 4. B 类节点（回落不对称）

- 生动在 `F0=None / F1=SuperDefinition*`（含 200M、FLASH、tripod）下挂有专属的降噪、坏点、CAC、WB14、GTM 实例。
- 原色请求在 F0 层找不到对应节点，停在 `Sensor/Usecase` 层，使用通用实例。经典的行为相同。
- 字段级差异举例：
  - ANR 的 `lnr_elliptic_a`（中位差 1676）、`lnr_luma_filter_lut_thr`（229）
  - TF 混合的 `anr_final_blender_luma_min_strength_*`（104–128）
  - WB14 / ABF / PDPC / GTM 的 `*_enable` 开关在两边不同
  - HNR 多个子开关不同
- 含义：在高像素模式下，原色和经典走的是通用降噪/WB/GTM，而不是生动那套专门为高像素调过的参数。这是否会带来可见的画质差异，**待设备对照**。

## 5. NV12 之后

- `miai_hdr_raw_natural_config.json` 与 vivid 逐字节相同，`miai_hdsr_raw_*` 同样如此；只有 classic 是独立的一份。
- `smartae_Classic*`、`sceneDetectionClassic.xml` 只有经典版。
- `videofilter/*_Natural.cube` 属于视频链路。

## 6. 未闭合项

1. stylizationType → Feature0=12 的代码路径（推断为 + `OffsetForNewStyleTuningParam`）。
2. 普通拍照实际下发的 Feature1/Feature2 取值，需要设备日志 `OEM fill tuning mode` / `Tuning mode : … feature0`。
3. LTM 静态成分与 TMC 的合成方式。
4. `custom_awb1`、`custom_aec*` 的语义。
5. 3A 模块剩余 1.4% 的字段宽度。
6. 其余 8 颗镜头尚未做全路径数据级复核（第 0 节的结论来自主摄）。

## 7. 复现

脚本在 `G:\LEICA\rom18pm\ana\`：

- `schema.py` / `tuned.py`：schema 与实例解码
- `resolve.py`：CamX 同款逐层匹配
- `fullcmp.py`：全路径数据级比较
- `prov.py`：差异来源分类
- `fieldsum.py`：字段级统计
- `tonectl.py`：TMC/LTM/GTM 控制量
- `ccm_rel.py`：CCM 相对变换
- `lenssum.py`：多镜头汇总
- `cfgdec.py`：配置解密
- `xref.py` / `armdis.py`：交叉引用与反汇编

Ghidra 输出在 `G:\LEICA\rom18pm\gh\`（`modetree.c` 为 CamX 模式匹配代码）。
