#!/system/bin/sh

# 由相机已提交的内容驱动；本脚本只负责校验与同步。
MODDIR="${0%/*}"
CAMERA_APP_DIR="/data/user/0/com.android.camera"
CAMERA_ROOT="$CAMERA_APP_DIR/files/prometheus"
SRC_LUT_DIR="/data/user/0/com.android.camera/files/prometheus/custom_luts"
SRC_STATE_DIR="/data/user/0/com.android.camera/files/prometheus/filter_sync"
VENDOR_DIR="/data/vendor/camera"
GALLERY_APP_DIR="/data/user/0/com.miui.mediaeditor"
GALLERY_ROOT="$GALLERY_APP_DIR/files/prometheus"
GALLERY_LUT_DIR="$GALLERY_ROOT/custom_luts"
GALLERY_PRESET_DIR="$GALLERY_ROOT/preset_luts"
PRESET_ROOT="/data/user/0/com.android.camera/files/prometheus/preset_luts"
PRESET_COMMIT="$SRC_STATE_DIR/presets.commit"
LOG="$MODDIR/custom-lut-sync.log"
BB="/data/adb/ksu/bin/busybox"
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox

log_line() {
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >>"$LOG"
}

valid_slot() {
  case "$1" in
    ''|*[!0-9]*) return 1 ;;
  esac
  [ "$1" -ge 1 ] 2>/dev/null && [ "$1" -le 66 ] 2>/dev/null
}

sha256_file() {
  "$BB" sha256sum "$1" 2>/dev/null | "$BB" awk '{print $1}'
}

prepare_gallery_dir() {
  [ -d "$GALLERY_APP_DIR" ] || return 1
  uid="$(stat -c '%u' "$GALLERY_APP_DIR" 2>/dev/null)"
  gid="$(stat -c '%g' "$GALLERY_APP_DIR" 2>/dev/null)"
  case "$uid:$gid" in
    *[!0-9:]*|:|*:|:*) return 1 ;;
  esac
  files_root="$GALLERY_APP_DIR/files"
  if [ -e "$files_root" ] && [ ! -d "$files_root" ]; then
    log_line "MediaEditor files path is not a directory"
    return 1
  fi
  [ -d "$files_root" ] || mkdir "$files_root" || return 1
  chown "$uid:$gid" "$files_root" || return 1
  chmod 0771 "$files_root" || return 1
  restorecon "$files_root" >/dev/null 2>&1
  mkdir -p "$GALLERY_LUT_DIR" "$GALLERY_PRESET_DIR" || return 1
  chown "$uid:$gid" "$GALLERY_ROOT" "$GALLERY_LUT_DIR" "$GALLERY_PRESET_DIR" || return 1
  chmod 0700 "$GALLERY_ROOT" "$GALLERY_LUT_DIR" "$GALLERY_PRESET_DIR" || return 1
  restorecon -R "$GALLERY_ROOT" >/dev/null 2>&1
}

prepare_camera_source_dir() {
  [ -d "$CAMERA_APP_DIR" ] || return 1
  uid="$(stat -c '%u' "$CAMERA_APP_DIR" 2>/dev/null)"
  gid="$(stat -c '%g' "$CAMERA_APP_DIR" 2>/dev/null)"
  case "$uid:$gid" in
    *[!0-9:]*|:|*:|:*) return 1 ;;
  esac
  files_root="$CAMERA_APP_DIR/files"
  if [ -e "$files_root" ] && [ ! -d "$files_root" ]; then
    log_line "Camera files path is not a directory"
    return 1
  fi
  [ -d "$files_root" ] || mkdir "$files_root" || return 1
  chown "$uid:$gid" "$files_root" || return 1
  chmod 0771 "$files_root" || return 1
  restorecon "$files_root" >/dev/null 2>&1
  [ -d "$CAMERA_ROOT" ] || mkdir "$CAMERA_ROOT" || return 1
  chown "$uid:$gid" "$CAMERA_ROOT" || return 1
  chmod 0700 "$CAMERA_ROOT" || return 1
  restorecon "$CAMERA_ROOT" >/dev/null 2>&1
  if [ -e "$SRC_LUT_DIR" ] && [ ! -d "$SRC_LUT_DIR" ]; then
    log_line "Camera custom LUT path is not a directory"
    return 1
  fi
  [ -d "$SRC_LUT_DIR" ] || mkdir "$SRC_LUT_DIR" || return 1
  chown "$uid:$gid" "$SRC_LUT_DIR" || return 1
  chmod 0700 "$SRC_LUT_DIR" || return 1
  restorecon "$SRC_LUT_DIR" >/dev/null 2>&1
}

atomic_copy() {
  src="$1"
  dst="$2"
  owner="$3"
  group="$4"
  mode="$5"
  tmp="${dst}.$$.tmp"
  rm -f "$tmp"
  cp "$src" "$tmp" || return 1
  chown "$owner:$group" "$tmp" || { rm -f "$tmp"; return 1; }
  chmod "$mode" "$tmp" || { rm -f "$tmp"; return 1; }
  restorecon "$tmp" >/dev/null 2>&1
  mv -f "$tmp" "$dst" || { rm -f "$tmp"; return 1; }
  restorecon "$dst" >/dev/null 2>&1
}

atomic_commit() {
  value="$1"
  dst="$2"
  owner="$3"
  group="$4"
  tmp="${dst}.$$.tmp"
  rm -f "$tmp"
  printf '%s\n' "$value" >"$tmp" || return 1
  chown "$owner:$group" "$tmp" || { rm -f "$tmp"; return 1; }
  chmod 0600 "$tmp" || { rm -f "$tmp"; return 1; }
  restorecon "$tmp" >/dev/null 2>&1
  mv -f "$tmp" "$dst" || { rm -f "$tmp"; return 1; }
  restorecon "$dst" >/dev/null 2>&1
}

bootstrap_custom_slot() {
  slot="$1"
  valid_slot "$slot" || return 1
  commit="$SRC_LUT_DIR/slot_${slot}.commit"
  [ ! -e "$commit" ] || return 0
  camera_lut="$SRC_LUT_DIR/slot_${slot}.png"
  camera_name="$SRC_LUT_DIR/slot_${slot}.name"
  gallery_lut="$GALLERY_LUT_DIR/slot_${slot}.png"
  gallery_name="$GALLERY_LUT_DIR/slot_${slot}.name"
  camera_uid="$(stat -c '%u' "$CAMERA_APP_DIR")"
  camera_gid="$(stat -c '%g' "$CAMERA_APP_DIR")"

  if [ -s "$camera_lut" ]; then
    source_lut="$camera_lut"
    source_kind="Camera 旧数据"
  elif [ -s "$gallery_lut" ]; then
    atomic_copy "$gallery_lut" "$camera_lut" \
      "$camera_uid" "$camera_gid" 0600 || return 1
    if [ -s "$gallery_name" ]; then
      atomic_copy "$gallery_name" "$camera_name" \
        "$camera_uid" "$camera_gid" 0600 || return 1
    fi
    source_lut="$camera_lut"
    source_kind="相册遗留数据"
  else
    return 0
  fi

  state="$(sha256_file "$source_lut")"
  [ "${#state}" -eq 64 ] || return 1
  atomic_commit "$state" "$commit" "$camera_uid" "$camera_gid" || return 1
  log_line "用户滤镜槽位：slot=$slot source=$source_kind"
}

bootstrap_gallery_catalog() {
  camera_commit="$SRC_STATE_DIR/catalog.commit"
  camera_catalog="$SRC_STATE_DIR/catalog.json"
  gallery_commit="$GALLERY_ROOT/catalog.commit"
  gallery_catalog="$GALLERY_ROOT/catalog.json"
  [ ! -e "$camera_commit" ] || return 0
  [ -d "$SRC_STATE_DIR" ] || return 0
  [ -s "$gallery_commit" ] && [ -s "$gallery_catalog" ] || return 0
  expected="$(tr -d '\r\n' <"$gallery_commit")"
  [ "${#expected}" -eq 64 ] || return 1
  [ "$(sha256_file "$gallery_catalog")" = "$expected" ] || return 1
  camera_uid="$(stat -c '%u' "$CAMERA_APP_DIR")"
  camera_gid="$(stat -c '%g' "$CAMERA_APP_DIR")"
  atomic_copy "$gallery_catalog" "$camera_catalog" \
    "$camera_uid" "$camera_gid" 0600 || return 1
  atomic_copy "$gallery_commit" "$camera_commit" \
    "$camera_uid" "$camera_gid" 0600 || return 1
  log_line "已从相册旧数据恢复滤镜目录清单"
}

bootstrap_custom_luts() {
  prepare_camera_source_dir || return 1
  prepare_gallery_dir || return 1
  slot=1
  while [ "$slot" -le 66 ]; do
    bootstrap_custom_slot "$slot" || return 1
    slot=$((slot + 1))
  done
  bootstrap_gallery_catalog || return 1
  log_line "用户滤镜目录准备完成"
}

sync_slot() {
  slot="$1"
  valid_slot "$slot" || return 1
  commit="$SRC_LUT_DIR/slot_${slot}.commit"
  [ -f "$commit" ] || return 0
  state="$(tr -d '\r\n' <"$commit")"
  suffix="$(printf '%02d' "$((slot + 42))")"
  vendor="$VENDOR_DIR/prometheus_gallery_filter_91${suffix}.png"
  gallery="$GALLERY_LUT_DIR/slot_${slot}.png"
  gallery_name="$GALLERY_LUT_DIR/slot_${slot}.name"

  if [ "$state" = "deleted" ]; then
    rm -f "$vendor" "$gallery" "$gallery_name"
    log_line "deleted slot $slot"
    return 0
  fi
  case "$state" in
    [0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]*) ;;
    *) log_line "rejected malformed commit for slot $slot"; return 1 ;;
  esac
  [ "${#state}" -eq 64 ] || { log_line "rejected commit length for slot $slot"; return 1; }
  src="$SRC_LUT_DIR/slot_${slot}.png"
  [ -f "$src" ] || { log_line "missing LUT for committed slot $slot"; return 1; }
  actual="$(sha256_file "$src")"
  [ "$actual" = "$state" ] || { log_line "hash mismatch for slot $slot"; return 1; }
  [ -d "$VENDOR_DIR" ] || { log_line "vendor camera directory unavailable"; return 1; }
  atomic_copy "$src" "$vendor" system camera 0644 || return 1

  if prepare_gallery_dir; then
    uid="$(stat -c '%u' "$GALLERY_APP_DIR")"
    gid="$(stat -c '%g' "$GALLERY_APP_DIR")"
    atomic_copy "$src" "$gallery" "$uid" "$gid" 0600 || return 1
    if [ -s "$SRC_LUT_DIR/slot_${slot}.name" ]; then
      atomic_copy "$SRC_LUT_DIR/slot_${slot}.name" \
        "$gallery_name" "$uid" "$gid" 0600 || return 1
    else
      rm -f "$gallery_name"
    fi
  fi
  log_line "synced slot $slot"
}

sync_catalog() {
  commit="$SRC_STATE_DIR/catalog.commit"
  catalog="$SRC_STATE_DIR/catalog.json"
  [ -f "$commit" ] && [ -f "$catalog" ] || return 0
  expected="$(tr -d '\r\n' <"$commit")"
  [ "${#expected}" -eq 64 ] || { log_line "rejected catalog commit"; return 1; }
  [ "$(sha256_file "$catalog")" = "$expected" ] \
    || { log_line "catalog hash mismatch"; return 1; }
  prepare_gallery_dir || { log_line "MediaEditor data directory unavailable"; return 1; }
  uid="$(stat -c '%u' "$GALLERY_APP_DIR")"
  gid="$(stat -c '%g' "$GALLERY_APP_DIR")"
  atomic_copy "$catalog" "$GALLERY_ROOT/catalog.json" "$uid" "$gid" 0600 || return 1
  atomic_copy "$commit" "$GALLERY_ROOT/catalog.commit" "$uid" "$gid" 0600 || return 1
  log_line "synced catalog $expected"
}

seed_presets() {
  [ -d "$PRESET_ROOT" ] || { log_line "内置滤镜目录尚未生成"; return 1; }
  [ -s "$PRESET_COMMIT" ] || { log_line "内置滤镜尚未生成"; return 1; }
  expected="$(tr -d '\r\n' <"$PRESET_COMMIT")"
  [ "${#expected}" -eq 64 ] || { log_line "内置滤镜摘要无效"; return 1; }
  manifest="$PRESET_ROOT/lut-presets.json"
  [ -s "$manifest" ] || { log_line "预设滤镜清单缺失"; return 1; }
  [ "$(sha256_file "$manifest")" = "$expected" ] \
    || { log_line "内置滤镜清单校验失败"; return 1; }
  prepare_gallery_dir || { log_line "MediaEditor data directory unavailable"; return 1; }
  uid="$(stat -c '%u' "$GALLERY_APP_DIR")"
  gid="$(stat -c '%g' "$GALLERY_APP_DIR")"
  slot=1
  while [ "$slot" -le 42 ]; do
    src="$PRESET_ROOT/slot_${slot}.png"
    [ -s "$src" ] || { log_line "预设滤镜槽位缺失：$slot"; return 1; }
    suffix="$(printf '%02d' "$slot")"
    atomic_copy "$src" \
      "$VENDOR_DIR/prometheus_gallery_filter_91${suffix}.png" \
      system camera 0644 || return 1
    atomic_copy "$src" "$GALLERY_PRESET_DIR/slot_${slot}.png" \
      "$uid" "$gid" 0600 || return 1
    source_hash="$(sha256_file "$src")"
    vendor_hash="$(sha256_file "$VENDOR_DIR/prometheus_gallery_filter_91${suffix}.png")"
    gallery_hash="$(sha256_file "$GALLERY_PRESET_DIR/slot_${slot}.png")"
    [ "$vendor_hash" = "$source_hash" ] && [ "$gallery_hash" = "$source_hash" ] \
      || { log_line "内置滤镜槽位校验失败：$slot"; return 1; }
    log_line "预设滤镜槽位已同步：slot=$slot source=$source_hash vendor=$vendor_hash mediaeditor=$gallery_hash"
    slot=$((slot + 1))
  done
  log_line "内置滤镜同步完成：槽位=42 摘要=$expected"
}

reconcile_committed() {
  seed_presets || return 1
  [ -d "$SRC_LUT_DIR" ] && for commit in "$SRC_LUT_DIR"/slot_*.commit; do
    [ -f "$commit" ] || continue
    name="${commit##*/}"
    slot="${name#slot_}"
    slot="${slot%.commit}"
    sync_slot "$slot" || return 1
  done
  sync_catalog || return 1
}

# Installer bootstrap mode runs while Camera and MediaEditor are frozen.
if [ "${2:-}" = "--bootstrap-only" ]; then
  MODDIR="${1:-$MODDIR}"
  LOG="$MODDIR/custom-lut-sync.log"
  bootstrap_custom_luts || exit 1
  echo "用户滤镜目录已就绪"
  echo "现有用户滤镜已同步"
  exit 0
fi

# 手动触发（action.sh 使用）：完整执行一次同步后退出，不进入监听。
if [ "${2:-}" = "--force-once" ]; then
  MODDIR="${1:-$MODDIR}"
  LOG="$MODDIR/custom-lut-sync.log"
  prepare_camera_source_dir || exit 1
  prepare_gallery_dir || exit 1
  bootstrap_custom_luts || exit 1
  reconcile_committed || exit 1
  echo "滤镜同步完成"
  exit 0
fi

# BusyBox inotifyd callback: <events> <watched-path> [changed-name]
if [ "$#" -ge 2 ] && [ -d "$2" ]; then
  changed="$3"
  case "$2/$changed" in
    "$SRC_LUT_DIR"/slot_*.commit)
      slot="${changed#slot_}"
      sync_slot "${slot%.commit}"
      ;;
    "$SRC_STATE_DIR/catalog.commit") sync_catalog ;;
    "$SRC_STATE_DIR/presets.commit") seed_presets ;;
  esac
  exit $?
fi

MODDIR="${1:-$MODDIR}"
LOG="$MODDIR/custom-lut-sync.log"
[ -x "$BB" ] || { log_line "BusyBox 不可用"; exit 1; }

# Wait for Camera to publish its application-owned transaction roots, then
# reconcile durable commits once before blocking on transaction events.
while [ ! -d "$SRC_STATE_DIR" ]; do
  sleep 1
done
prepare_camera_source_dir \
  || { log_line "无法准备相机用户滤镜目录"; exit 1; }
prepare_gallery_dir \
  || { log_line "无法准备相册编辑器用户滤镜目录"; exit 1; }
bootstrap_custom_luts \
  || { log_line "无法同步相机与相册编辑器用户滤镜"; exit 1; }
log_line "相机用户滤镜目录就绪：路径=$SRC_LUT_DIR uid=$(stat -c '%u' "$SRC_LUT_DIR") gid=$(stat -c '%g' "$SRC_LUT_DIR") mode=$(stat -c '%a' "$SRC_LUT_DIR")"
log_line "开始同步已完成的滤镜内容：目录=$SRC_STATE_DIR 内置滤镜=$PRESET_ROOT"
reconcile_committed \
  || { log_line "首次滤镜同步失败"; exit 1; }
log_line "首次滤镜同步完成，开始监听更新"
exec "$BB" inotifyd "$0" \
  "$SRC_LUT_DIR:cwenydm" "$SRC_STATE_DIR:cwenydm"
