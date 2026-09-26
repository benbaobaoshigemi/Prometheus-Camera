#!/system/bin/sh

# Recreate module-owned application assets without reinstalling either APK.
set -eu
MODDIR="$(cd "${0%/*}" && pwd)"
CAMERA=/data/user/0/com.android.camera
EDITOR=/data/user/0/com.miui.mediaeditor
LOG="$MODDIR/data-recovery.log"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
say() { printf '%s\n' "$*"; printf '%s %s\n' "$(date '+%F %T')" "$*" >>"$LOG"; }
fail() { say "恢复失败：$*"; exit 1; }
[ -x "$BB" ] || fail "BusyBox 不可用"
[ -d "$CAMERA" ] && [ -d "$EDITOR" ] || fail "相机或相册编辑器数据目录不存在"
LSP_APK="$(pm path com.prometheus.camera.rev | sed -n 's/^package://p' | head -n 1)"
[ -s "$LSP_APK" ] || fail "未找到已安装的 Phoenix LSP"
for source in seed-watermark.sh sync-custom-luts.sh sync-local-watermarks.sh sync-by-leica-assets.sh; do
  [ -f "$MODDIR/$source" ] || fail "缺少 $source"
done
[ -d "$MODDIR/watermark_cache" ] && [ -d "$MODDIR/watermark_suffix" ] || fail "模块水印源缺失"
LOCK="$MODDIR/.data-recovery.lock"
mkdir "$LOCK" 2>/dev/null || fail "已有重建任务正在执行"
trap 'rmdir "$LOCK"' EXIT
say "开始重建相机和相册编辑器的模块资产"
am force-stop com.android.camera || fail "无法停止相机"
am force-stop com.miui.mediaeditor || fail "无法停止相册编辑器"

# Clearing application data replaces watched inodes. Stop only this module's
# asset listeners and callbacks; service.sh and other modules remain untouched.
listener_pids() {
  ps -A -o PID,ARGS | "$BB" awk -v root="$MODDIR/" '
    NR > 1 {
      for (i=2; i<=NF; i++) {
        if ($i == root "sync-custom-luts.sh" ||
            $i == root "sync-by-leica-assets.sh" ||
            $i == root "sync-local-watermarks.sh") { print $1; break }
      }
    }'
}
pids="$(listener_pids)"
if [ -n "$pids" ]; then
  for pid in $pids; do kill "$pid" 2>/dev/null || [ ! -d "/proc/$pid" ] || fail "无法停止同步进程 $pid"; done
fi
waited=0
while [ -n "$(listener_pids)" ]; do
  [ "$waited" -lt 50 ] || fail "同步进程收到终止信号后仍未退出"
  sleep 0.1
  waited=$((waited + 1))
done
if [ -d "$MODDIR/.local-watermark-sync.lock" ]; then
  rmdir "$MODDIR/.local-watermark-sync.lock" || fail "水印锁目录非空"
fi

say "写入内置预设滤镜"
uid="$(stat -c %u "$CAMERA")"
gid="$(stat -c %g "$CAMERA")"
mkdir -p "$CAMERA/files/prometheus/preset_luts" "$CAMERA/files/prometheus/filter_sync"
chown "$uid:$gid" "$CAMERA/files" "$CAMERA/files/prometheus" "$CAMERA/files/prometheus/preset_luts" "$CAMERA/files/prometheus/filter_sync"
chmod 0771 "$CAMERA/files"
chmod 0700 "$CAMERA/files/prometheus" "$CAMERA/files/prometheus/preset_luts" "$CAMERA/files/prometheus/filter_sync"
PRESETS="$CAMERA/files/prometheus/preset_luts"
for slot in $(seq 1 42); do
  target="$PRESETS/slot_${slot}.png"
  "$BB" unzip -p "$LSP_APK" "assets/prometheus/lut-presets/slot_${slot}.png" >"$target.tmp" || fail "预设槽位 $slot 提取失败"
  [ -s "$target.tmp" ] || fail "预设槽位 $slot 为空"
  chown "$uid:$gid" "$target.tmp"
  chmod 0600 "$target.tmp"
  mv -f "$target.tmp" "$target"
done
"$BB" unzip -p "$LSP_APK" assets/prometheus/lut-presets.json >"$PRESETS/lut-presets.json.tmp" || fail "预设清单提取失败"
[ -s "$PRESETS/lut-presets.json.tmp" ] || fail "预设清单为空"
chown "$uid:$gid" "$PRESETS/lut-presets.json.tmp"
chmod 0600 "$PRESETS/lut-presets.json.tmp"
mv -f "$PRESETS/lut-presets.json.tmp" "$PRESETS/lut-presets.json"
COMMIT="$CAMERA/files/prometheus/filter_sync/presets.commit"
"$BB" sha256sum "$PRESETS/lut-presets.json" | "$BB" awk '{print $1}' >"$COMMIT.tmp"
chown "$uid:$gid" "$COMMIT.tmp"
chmod 0600 "$COMMIT.tmp"
mv -f "$COMMIT.tmp" "$COMMIT"
restorecon "$CAMERA/files" "$CAMERA/files/prometheus"
restorecon -RF "$PRESETS" "$CAMERA/files/prometheus/filter_sync"

run_step() {
  say "$1"
  shift
  if "$@" >>"$LOG" 2>&1; then return 0; fi
  fail "步骤未完成，详情见 $LOG"
}
run_step "同步两端滤镜及现有用户滤镜目录" sh "$MODDIR/sync-custom-luts.sh" "$MODDIR" --force-once
run_step "重建两端本地水印与附属资产" sh "$MODDIR/seed-watermark.sh" "$MODDIR"
run_step "同步现有动态机型水印" sh "$MODDIR/sync-by-leica-assets.sh" recovery "$CAMERA/files/prometheus/by_leica"
for app in "$CAMERA" "$EDITOR"; do
  # Root-created files need the application's MCS categories, not only the
  # generic app_data_file type left by a non-forced restorecon.
  app_context="$(/system/bin/stat -c %C "$app")"
  chcon -R "$app_context" "$app/files/prometheus"
done

say "重新建立滤镜和水印目录监听"
for script in sync-custom-luts.sh sync-by-leica-assets.sh sync-local-watermarks.sh; do
  "$BB" nohup sh "$MODDIR/$script" >"$MODDIR/recovery-$script.log" 2>&1 </dev/null &
  say "已启动 $script，进程=$!"
done
say "重建完成。可重新打开相机和相册编辑器，无需重启。"
say "仅恢复模块内置资产；已清除的个人滤镜、签名和设置不在恢复范围。"
say "日志：$LOG"
