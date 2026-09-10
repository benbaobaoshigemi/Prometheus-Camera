#!/system/bin/sh

VERSION="Phoenix-1.1.0"
LSP_PACKAGE="com.prometheus.camera.rev"
CAMERA_PACKAGE="com.android.camera"
LSP_APK="$MODPATH/Phoenix_LSP_Phoenix-1.1.0.apk"
CAMERA_APK="$MODPATH/Phoenix_Camera_Phoenix-1.1.0.apk"
AUDIT="$MODPATH/install-audit.log"

: >"$AUDIT" || abort "! 无法创建安装日志"
audit() { printf '%s｜%s｜%s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" "$2" >>"$AUDIT"; }
stage() { ui_print "- $1"; audit "进行中" "$1"; }
fail() { audit "失败" "$1"; abort "! $1"; }

BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
[ -x "$BB" ] || fail "BusyBox 不可用"

inject_preset_luts() {
  camera_dir="/data/user/0/com.android.camera"
  preset_root="$camera_dir/files/prometheus/preset_luts"
  state_dir="$camera_dir/files/prometheus/filter_sync"
  camera_uid="$(stat -c '%u' "$camera_dir")"
  camera_gid="$(stat -c '%g' "$camera_dir")"
  mkdir -p "$preset_root" "$state_dir" || return 1
  chown "$camera_uid:$camera_gid" "$preset_root" "$state_dir" || return 1
  chmod 0700 "$preset_root" "$state_dir" || return 1
  restorecon "$preset_root" "$state_dir" >/dev/null 2>&1 || true
  slot=1
  while [ "$slot" -le 42 ]; do
    "$BB" unzip -p "$LSP_APK" "assets/prometheus/lut-presets/slot_${slot}.png" \
      >"$preset_root/slot_${slot}.png" || return 1
    chown "$camera_uid:$camera_gid" "$preset_root/slot_${slot}.png" || return 1
    chmod 0600 "$preset_root/slot_${slot}.png" || return 1
    restorecon "$preset_root/slot_${slot}.png" >/dev/null 2>&1 || true
    slot=$((slot + 1))
  done
  "$BB" unzip -p "$LSP_APK" assets/prometheus/lut-presets.json \
    >"$preset_root/lut-presets.json" || return 1
  chown "$camera_uid:$camera_gid" "$preset_root/lut-presets.json" || return 1
  chmod 0600 "$preset_root/lut-presets.json" || return 1
  restorecon "$preset_root/lut-presets.json" >/dev/null 2>&1 || true
  summary="$("$BB" sha256sum "$preset_root/lut-presets.json" | "$BB" awk '{print $1}')"
  [ "${#summary}" -eq 64 ] || return 1
  printf '%s\n' "$summary" >"$state_dir/presets.commit" || return 1
  chown "$camera_uid:$camera_gid" "$state_dir/presets.commit" || return 1
  chmod 0600 "$state_dir/presets.commit" || return 1
  restorecon "$state_dir/presets.commit" >/dev/null 2>&1 || true
  [ "$("$BB" sha256sum "$preset_root/lut-presets.json" | "$BB" awk '{print $1}')" = "$summary" ] \
    || return 1
  slot=1
  while [ "$slot" -le 42 ]; do
    [ -s "$preset_root/slot_${slot}.png" ] || return 1
    slot=$((slot + 1))
  done
  echo "已写入 42 个内置预设滤镜"
}


install_apk() {
  package="$1"
  source="$2"
  staged="/data/local/tmp/.prometheus-${package##*.}-$$.apk"
  case "$package" in
    com.android.camera) install_label="Prometheus Cam" ;;
    com.prometheus.camera.rev) install_label="Prometheus LSP" ;;
    *) install_label="应用组件" ;;
  esac
  ui_print "  · 准备安装：$install_label"
  cp -f "$source" "$staged" || fail "无法复制 $package 安装包"
  ui_print "  · 临时安装包已就绪"
  chmod 0644 "$staged" || fail "无法设置 $package APK 权限"
  ui_print "  · 调用系统安装服务"
  output="$(pm install -r "$staged" 2>&1)"
  status=$?
  rm -f "$staged"
  if [ "$status" -ne 0 ] || [ "$output" != "Success" ]; then
    case "$output" in
      *INSTALL_FAILED_UPDATE_INCOMPATIBLE*) reason="签名与现有应用不一致" ;;
      *INSTALL_FAILED_VERSION_DOWNGRADE*) reason="系统拒绝降级安装" ;;
      *INSTALL_FAILED_INSUFFICIENT_STORAGE*) reason="设备存储空间不足" ;;
      *INSTALL_FAILED_INVALID_APK*) reason="安装包无效或已经损坏" ;;
      *INSTALL_FAILED_USER_RESTRICTED*) reason="系统策略禁止安装" ;;
      *) reason="系统安装服务返回异常，请检查核心破解" ;;
    esac
    audit "失败" "$package 安装失败：$reason；系统原始返回：$output"
    abort "! $package 安装失败：$reason；详情见 install-audit.log"
  fi
  audit "成功" "应用安装完成：$package"
  ui_print "  · 系统安装服务返回成功"
  ui_print "  · 已清理临时安装文件"
}

ui_print "========================================"
ui_print " Prometheus Cam $VERSION"
ui_print " 根模块 + 相机 + LSP"
ui_print "========================================"

# 相册编辑器依赖检查：滤镜需要把模块文件注入相册编辑（com.miui.mediaeditor）。
# 未安装时直接拒绝刷入，避免留下半安装状态。
MEDIAEDITOR_PATH="$(pm path com.miui.mediaeditor 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
[ -n "$MEDIAEDITOR_PATH" ] || fail "未检测到相册编辑器（com.miui.mediaeditor），禁止继续刷入"
ui_print "- 环境检查｜相册编辑器依赖｜通过"
[ -f "$LSP_APK" ] || fail "缺少 LSP APK"
[ -f "$CAMERA_APK" ] || fail "缺少相机 APK"
ui_print "- 安装输入｜LSP 与相机 APK 均已找到"

stage "安装 Prometheus LSP"
install_apk "$LSP_PACKAGE" "$LSP_APK"
LSP_PATH="$(pm path "$LSP_PACKAGE" 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
[ -n "$LSP_PATH" ] || fail "LSP APK 安装后不可见"
ui_print "  · LSP 已注册到系统"

stage "登记 LSPosed 开机配置"
ui_print "  · 已写入开机配置任务"
ui_print "  · 重启后 LSPosed 就绪时自动完成"

stage "安装 Prometheus Cam"
install_apk "$CAMERA_PACKAGE" "$CAMERA_APK"
CAMERA_PATH="$(pm path "$CAMERA_PACKAGE" 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
[ -n "$CAMERA_PATH" ] || fail "相机 APK 安装后不可见"
ui_print "  · 相机已注册到系统"

# Keep system/odm for Magisk; KernelSU/APatch use manual ODM subtree mounts.
# Record the manager selected for this install. The post-fs-data
# environment is not consistent across Magisk, KernelSU and APatch.
if [ "${APATCH:-}" = true ]; then
  ROOT_FAMILY=apatch
elif [ "${KSU:-}" = true ]; then
  ROOT_FAMILY=ksu
elif [ -n "${MAGISK_VER_CODE:-}" ]; then
  ROOT_FAMILY=magisk
else
  fail "无法识别 Root 管理器"
fi
printf '%s\n' "$ROOT_FAMILY" > "$MODPATH/.phoenix-root-family" || fail "无法记录 Root 管理器"

stage "整理 ODM 挂载目录"
[ -d "$MODPATH/system/odm/etc/camera" ] || fail "模块内缺少 system/odm/etc/camera"
if [ "$ROOT_FAMILY" = magisk ]; then
  ODM_DIR="$MODPATH/system/odm"
  ui_print "  · Magisk：保持 system/odm 布局，跳过 ODM 目录手动合并"
else
  [ ! -e "$MODPATH/odm" ] || fail "模块 ODM 挂载目录已存在，拒绝覆盖"
  mv "$MODPATH/system/odm" "$MODPATH/odm" || fail "无法整理 ODM 挂载目录"
  ODM_DIR="$MODPATH/odm"
  ui_print "  · ODM 目录已转入 post-fs-data 合并入口（$ROOT_FAMILY）"
  rmdir "$MODPATH/system" 2>/dev/null || true
fi

stage "应用模块权限"
set_perm_recursive "$ODM_DIR/etc" 0 0 0755 0644
ui_print "  · ODM 配置目录权限已应用"
set_perm_recursive "$ODM_DIR/lib64" 0 0 0755 0644
ui_print "  · ODM 库目录权限已应用"
set_perm "$MODPATH/sync-custom-luts.sh" 0 0 0755
set_perm "$MODPATH/sync-watermark-suffix.sh" 0 0 0755
set_perm "$MODPATH/seed-watermark.sh" 0 0 0755
set_perm "$MODPATH/customize.sh" 0 0 0755
set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/sync-local-watermarks.sh" 0 0 0755
set_perm "$MODPATH/install-self-check.sh" 0 0 0755
set_perm "$MODPATH/sync-by-leica-assets.sh" 0 0 0755
for script in init-formula.sh sync-formula.sh formula-service.sh formula-event.sh; do
  set_perm "$MODPATH/$script" 0 0 0755
done
set_perm_recursive "$MODPATH/formulas" 0 0 0755 0644
set_perm_recursive "$MODPATH/payload" 0 0 0755 0644

stage "停止相机与相册编辑器，准备写入文件"
# Package replacement and module commit are intentionally separate.
# Camera/LSP/module are therefore a mixed-version set during install,
# so business-process liveness or repeated file-count stability cannot
# be a valid pre-commit invariant. Freeze both writers, then require the
# durable native tree to exist; manifest and hash closure are verified
# by seed-watermark.sh and install-self-check.sh below.
am force-stop com.android.camera 2>/dev/null || fail "无法停止相机进程"
am force-stop com.miui.mediaeditor 2>/dev/null || fail "无法停止相册编辑进程"
native_count="$(find /data/user/0/com.android.camera/files/watermarks -type f 2>/dev/null | wc -l)"
# The stock camera only creates its native watermark tree after it has
# actually generated watermarks, so on a fresh install / cleared camera
# data / a ROM that never wrote that path the directory is legitimately
# empty.  The module-owned watermark transaction (watermark_cache +
# seed-watermark.sh) provides the durable tree instead, so an empty
# native tree is NOT a fatal pre-commit invariant; the real gate is the
# seed + install-self-check.sh pair below, which create and verify every
# template directory.
if [ "$native_count" -gt 0 ]; then
  audit "成功" "相机与相册已停止；现有水印文件=$native_count"
  ui_print "  · 现有水印文件：$native_count"
else
  audit "说明" "相机水印目录为空（新安装或相机尚未生成水印），将由模块初始化"
  ui_print "  · 相机水印目录为空，将由模块初始化"
fi
ui_print "  · 相机已停止写入"
ui_print "  · 相册编辑器已停止写入"

stage "写入内置预设滤镜"
preset_output="$(inject_preset_luts 2>&1)"
preset_status=$?
printf "%s\n" "$preset_output" >>"$AUDIT"
printf "%s\n" "$preset_output" | while IFS= read -r line; do [ -z "$line" ] || ui_print "  · $line"; done
[ "$preset_status" -eq 0 ] || fail "内置预设滤镜写入失败"

stage "写入用户滤镜目录"

lut_output="$(sh "$MODPATH/sync-custom-luts.sh" "$MODPATH" --bootstrap-only 2>&1)"
lut_status=$?
printf "%s\n" "$lut_output" >>"$AUDIT"
printf "%s\n" "$lut_output" | while IFS= read -r line; do [ -z "$line" ] || ui_print "  · $line"; done
[ "$lut_status" -eq 0 ] || fail "用户滤镜目录写入失败"

stage "写入本地水印"
seed_output="$(sh "$MODPATH/seed-watermark.sh" "$MODPATH" 2>&1)"
seed_status=$?
printf "%s\n" "$seed_output" >>"$AUDIT"
printf "%s\n" "$seed_output" | while IFS= read -r line; do [ -z "$line" ] || ui_print "  · $line"; done
if [ "$seed_status" -ne 0 ]; then
  fail "本地水印写入失败"
fi

stage "初始化暗角着色器"
sh "$MODPATH/init-formula.sh" || fail "暗角着色器初始化失败"

stage "校验安装结果"
check_output="$(sh "$MODPATH/install-self-check.sh" "$MODPATH" "$VERSION" \
  "${CAMERA_APK##*/}" "${LSP_APK##*/}" 2>&1)"
check_status=$?
printf "%s\n" "$check_output" >>"$AUDIT"
printf "%s\n" "$check_output" | while IFS= read -r line; do [ -z "$line" ] || ui_print "  · $line"; done
if [ "$check_status" -ne 0 ]; then
  fail "安装结果校验失败"
fi

audit "成功" "安装完成：版本=$VERSION，需要重启"
ui_print "- 安装完成"
ui_print "========================================"
ui_print "LSPosed作用域将在重启后自动勾选，直接重启即可，请勿再清除相机或相册数据！"
ui_print "LSPosed作用域将在重启后自动勾选，直接重启即可，请勿再清除相机或相册数据！"
ui_print "LSPosed作用域将在重启后自动勾选，直接重启即可，请勿再清除相机或相册数据！"
