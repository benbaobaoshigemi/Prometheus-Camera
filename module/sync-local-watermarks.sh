#!/system/bin/sh

MODDIR="${0%/*}"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
TARGET=/data/user/0/com.miui.mediaeditor/files/watermarks
LOG="$MODDIR/local-watermark-sync.log"
LOCK="$MODDIR/.local-watermark-sync.lock"
RESTART_MARKER="$MODDIR/.local-watermark-listener-restart"
MANIFEST="$MODDIR/content/mediaeditor-local-watermarks.tsv"
SUFFIX_SOURCE="$MODDIR/watermark_suffix"

log_line() {
  printf '%s｜%s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >>"$LOG"
}

reconcile_locked() {
  if output="$(sh "$MODDIR/seed-watermark.sh" \
      "$MODDIR" --repair-mediaeditor-local 2>&1)"; then
    [ -z "$output" ] \
      || printf '%s\n' "$output" | while IFS= read -r line; do
        log_line "恢复｜$line"
      done
    log_line "通过｜MediaEditor 本地水印事务完整"
    return 0
  fi
  status=$?
  [ -z "$output" ] || log_line "失败｜$output"
  return "$status"
}

reconcile() {
  if ! mkdir "$LOCK" 2>/dev/null; then
    log_line "跳过｜已有水印事务正在复核"
    return 0
  fi
  reconcile_locked
  status=$?
  rmdir "$LOCK"
  return "$status"
}

manifest_hash() {
  relative="$1"
  "$BB" awk -F '\t' -v wanted="$relative" \
    '$1 == "asset" && $2 == wanted { print $3; exit }' "$MANIFEST" 2>/dev/null
}

manifest_assets_intact_under() {
  prefix="$1"
  found=0
  while IFS="$(printf '\t')" read -r kind relative expected extra; do
    [ "$kind" = asset ] || continue
    case "$relative" in
      "$prefix"|"$prefix"/*) ;;
      *) continue ;;
    esac
    found=1
    current="$TARGET/$relative"
    [ -f "$current" ] || return 1
    [ "$("$BB" sha256sum "$current" 2>/dev/null | "$BB" awk '{print $1}')" = "$expected" ] \
      || return 1
  done <"$MANIFEST"
  [ "$found" -eq 1 ]
}

# A successful atomic publish moves the watched directories and naturally
# produces its own inotify events.  Classify each queued event against the
# committed assets before deciding to run another full transaction.
event_already_committed() {
  watched="$1"
  changed="${2:-}"
  watched_relative="${watched#"$TARGET"}"
  watched_relative="${watched_relative#/}"
  if [ -n "$changed" ]; then
    case "$changed" in .nrv-old-*) return 0 ;; esac
    [ -n "$watched_relative" ] \
      && relative="$watched_relative/$changed" \
      || relative="$changed"
  else
    relative="$watched_relative"
  fi
  current="$TARGET/$relative"
  if [ -f "$current" ]; then
    expected="$(manifest_hash "$relative")"
    if [ -z "$expected" ] && [ -f "$SUFFIX_SOURCE/${current##*/}" ]; then
      expected="$("$BB" sha256sum "$SUFFIX_SOURCE/${current##*/}" 2>/dev/null \
        | "$BB" awk '{print $1}')"
    fi
    [ -n "$expected" ] || return 1
    [ "$("$BB" sha256sum "$current" 2>/dev/null | "$BB" awk '{print $1}')" = "$expected" ]
    return $?
  fi
  [ -d "$current" ] || return 1
  manifest_assets_intact_under "$relative"
}

# BusyBox inotifyd callback: <events> <watched-path> [changed-name]
if [ "$#" -ge 2 ]; then
  log_line "事件｜类型=$1｜目录=$2｜变更项=${3:-目录本身}"
  event_path="$2"
  [ -z "${3:-}" ] || event_path="$2/$3"
  case "$event_path" in
    "$TARGET"/*/*/userData|"$TARGET"/*/*/userData/*)
      log_line "跳过｜用户签名与模板设置由相册管理"
      exit 0
      ;;
  esac
  if event_already_committed "$2" "${3:-}"; then
    log_line "跳过｜事件对应内容已经处于已提交状态"
    exit 0
  fi
  if ! mkdir "$LOCK" 2>/dev/null; then
    log_line "跳过｜已有水印事务正在复核"
    exit 0
  fi
  : >"$RESTART_MARKER" || {
    rmdir "$LOCK"
    log_line "失败｜无法登记监听事务重建"
    exit 1
  }
  # PPID is the exact inotifyd process that launched this callback.  Stop it
  # before publishing so the transaction cannot enqueue events for its own
  # atomic directory replacement.  The supervisor below restarts it only
  # after this lock is released.
  kill "$PPID" 2>/dev/null || true
  log_line "暂停｜检测到真实缺失或内容变化，关闭当前监听事务"
  reconcile_locked
  status=$?
  rmdir "$LOCK"
  exit "$status"
fi

[ -x "$BB" ] || { log_line "失败｜BusyBox 不可用"; exit 1; }
rm -f "$RESTART_MARKER"
skip_reconcile=0
while true; do
  while [ ! -d "$TARGET" ]; do sleep 1; done
  if [ "$skip_reconcile" -eq 0 ]; then
    reconcile || log_line "失败｜启动时水印事务复核未通过"
  fi
  skip_reconcile=0
  log_line "监听｜根目录、本地补充与徕卡限定模板目录｜事件=create,write,move,delete"
  "$BB" inotifyd "$0" \
    "$TARGET:cwenydm" \
    "$TARGET/signature:cwenydm" \
    "$TARGET/signature/24:cwenydm" \
    "$TARGET/signature/25:cwenydm" \
    "$TARGET/signature/26:cwenydm" \
    "$TARGET/color_chart:cwenydm" \
    "$TARGET/color_chart/27:cwenydm" \
    "$TARGET/color_chart/28:cwenydm" \
    "$TARGET/color_chart/29:cwenydm" \
    "$TARGET/color_chart/30:cwenydm" \
    "$TARGET/leica:cwenydm" \
    "$TARGET/leica/88:cwenydm" \
    "$TARGET/leica/89:cwenydm" \
    "$TARGET/leica/90:cwenydm" \
    "$TARGET/leica/91:cwenydm" \
    "$TARGET/leica/92:cwenydm" \
    "$TARGET/leica/93:cwenydm" \
    "$TARGET/leica/94:cwenydm" \
    "$TARGET/leica/111:cwenydm"
  if [ -f "$RESTART_MARKER" ]; then
    log_line "等待｜水印恢复事务完成后重新建立监听"
    while [ -d "$LOCK" ]; do sleep 1; done
    rm -f "$RESTART_MARKER"
    skip_reconcile=1
    log_line "重建｜恢复事务已提交，重新建立监听"
  elif [ -d "$LOCK" ]; then
    log_line "等待｜水印复核完成后重新建立监听"
    while [ -d "$LOCK" ]; do sleep 1; done
    skip_reconcile=1
  else
    log_line "重建｜监听目录被外部替换，重新复核并建立监听"
  fi
done
