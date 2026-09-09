#!/system/bin/sh

set -u

MODROOT="${1:?缺少模块目录}"
VERSION="Phoenix-1.0.0"
CAMERA_APK="${3:?缺少相机 APK 名称}"
LSP_APK="${4:?缺少 LSP APK 名称}"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
MANIFEST="$MODROOT/content/mediaeditor-local-watermarks.tsv"
COMMIT="$MODROOT/content/mediaeditor-local-watermarks.commit"

say() { printf '检查｜%s\n' "$1"; }
fail() { say "失败｜$1"; exit 1; }
sha256_file() { "$BB" sha256sum "$1" 2>/dev/null | "$BB" awk '{print $1}'; }

[ -x "$BB" ] || fail "BusyBox 不可用（root 环境缺少 busybox）"
for file in "$MODROOT/$CAMERA_APK" "$MODROOT/$LSP_APK" \
  "$MODROOT/seed-watermark.sh" "$MODROOT/sync-custom-luts.sh" \
  "$MODROOT/sync-by-leica-assets.sh" "$MODROOT/sync-watermark-suffix.sh" \
  "$MODROOT/sync-local-watermarks.sh" \
  "$MANIFEST" "$COMMIT"; do
  [ -s "$file" ] || fail "缺少或为空：${file##*/}"
  say "通过｜安装文件=${file##*/}｜存在且非空"
done

for data in /data/user/0/com.android.camera /data/user/0/com.miui.mediaeditor; do
  [ -d "$data/files/prometheus/custom_luts" ] \
    || fail "用户滤镜目录缺失：$data"
  case "$data" in
    */com.android.camera) target_label="Prometheus Cam" ;;
    */com.miui.mediaeditor) target_label="相册编辑器" ;;
  esac
  say "通过｜$target_label｜用户滤镜目录已就绪"
done

for script in customize.sh service.sh post-fs-data.sh seed-watermark.sh \
  sync-custom-luts.sh sync-by-leica-assets.sh sync-watermark-suffix.sh \
  sync-local-watermarks.sh install-self-check.sh; do
  [ -x "$MODROOT/$script" ] || fail "脚本不可执行：$script"
  say "通过｜执行脚本=$script｜权限可用"
done

for package in com.android.camera com.prometheus.camera.rev; do
  path="$(pm path "$package" 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
  [ -n "$path" ] || fail "应用安装后不可见：$package"
  installed="$(dumpsys package "$package" 2>/dev/null \
    | sed -n 's/^[[:space:]]*versionName=//p' | head -n 1)"
  case "$package" in
    com.android.camera) expected_version="Phoenix-1.0.0" ;;
    com.prometheus.camera.rev) expected_version="Phoenix-1.0.0" ;;
    *) expected_version="$VERSION" ;;
  esac
  [ "$installed" = "$expected_version" ] \
    || fail "$package 版本不一致：${installed:-未知}，期望 $expected_version"
  case "$package" in
    com.android.camera) package_label="Prometheus Cam" ;;
    com.prometheus.camera.rev) package_label="Prometheus LSP" ;;
  esac
  say "通过｜$package_label｜版本=$installed"
done

expected="$(tr -d '\r\n' <"$COMMIT")"
[ "${#expected}" -eq 64 ] || fail "本地水印摘要格式错误"
[ "$(sha256_file "$MANIFEST")" = "$expected" ] \
  || fail "本地水印清单与摘要不一致"
say "通过｜水印同步｜清单与摘要一致"

asset_count=0
template_ids=""
while IFS="$(printf '\t')" read -r kind relative hash extra; do
  [ "$kind" = asset ] && [ -z "$extra" ] && [ "${#hash}" -eq 64 ] \
    || fail "本地水印清单存在错误记录：$relative"
  source="$MODROOT/watermark_cache/$relative"
  [ -f "$source" ] || fail "模块内缺少水印文件：$relative"
  [ "$(sha256_file "$source")" = "$hash" ] \
    || fail "模块内水印文件校验失败：$relative"
  case "$relative" in
    */config.json)
      pair="${relative%/config.json}"
      case " $template_ids " in *" $pair "*) ;; *) template_ids="$template_ids $pair" ;; esac
      ;;
  esac
  asset_count=$((asset_count + 1))
done <"$MANIFEST"
[ "$asset_count" -gt 0 ] || fail "本地水印为空"

for pair in signature/24 signature/25 signature/26 \
  color_chart/27 color_chart/28 color_chart/29 color_chart/30 \
  leica/88 leica/89 leica/90 leica/91 leica/92 leica/93 leica/94 leica/111; do
  case " $template_ids " in *" $pair "*) ;; *) fail "缺少模板：$pair" ;; esac
  case "$pair" in
    signature/24) template_label="个性签名·样式1" ;;
    signature/25) template_label="个性签名·样式2" ;;
    signature/26) template_label="个性签名·样式3" ;;
    color_chart/27) template_label="色卡·样式1" ;;
    color_chart/28) template_label="色卡·样式2" ;;
    color_chart/29) template_label="色卡·样式3" ;;
    color_chart/30) template_label="色卡·样式4" ;;
    leica/88) template_label="徕卡滤镜签名" ;;
    leica/89) template_label="徕卡滤镜名与签名" ;;
    leica/90) template_label="徕卡限定样式1" ;;
    leica/91) template_label="徕卡限定样式2" ;;
    leica/92) template_label="徕卡限定样式3" ;;
    leica/93) template_label="徕卡限定样式5" ;;
    leica/94) template_label="徕卡限定样式6" ;;
    leica/111) template_label="徕卡限定样式4" ;;
  esac
  say "通过｜水印模板=$template_label｜文件完整"
done
say "通过｜水印汇总｜本地补充与徕卡限定模板全部完整"

for data in /data/user/0/com.android.camera /data/user/0/com.miui.mediaeditor; do
  [ -d "$data" ] || fail "应用数据目录不存在：$data"
  case "$data" in
    */com.android.camera) target_label="Prometheus Cam" ;;
    */com.miui.mediaeditor) target_label="相册编辑器" ;;
  esac
  for pair in signature/24 signature/25 signature/26 \
    color_chart/27 color_chart/28 color_chart/29 color_chart/30 \
    leica/88 leica/89 leica/90 leica/91 leica/92 leica/93 leica/94 leica/111; do
    [ -s "$data/files/watermarks/$pair/config.json" ] \
      || fail "目标水印未写入：$data/files/watermarks/$pair"
  done
  say "通过｜$target_label｜签名、色卡与徕卡签名模板均已写入"
done

[ -d "$MODROOT/odm/etc/camera" ] || [ -d "$MODROOT/system/odm/etc/camera" ] \
  || fail "ODM 相机挂载目录缺失"
say "通过｜ODM 挂载输入存在"
say "完成｜安装阶段全部检查通过；开机后将继续完成滤镜与水印初始化"
exit 0
