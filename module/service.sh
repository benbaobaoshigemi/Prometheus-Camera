#!/system/bin/sh

MODDIR="${0%/*}"
START_LOG="$MODDIR/开机日志.txt"
SCOPE_DETAIL="$MODDIR/LSPosed作用域详情.txt"

: >"$START_LOG"
log_startup() {
  printf '%s｜%s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" >>"$START_LOG"
}

configure_scope() {
  log_startup "开始等待 LSPosed 和应用安装服务就绪"
  attempt=0
  while [ "$attempt" -lt 120 ]; do
    lsp_path="$(pm path com.prometheus.camera.rev 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
    lspd_db=""
    for candidate in \
      /data/adb/lspd/config/modules_config.db \
      /data/adb/lspd/config/modules.db \
      /data/adb/lsposed/config/modules_config.db; do
      [ -f "$candidate" ] && { lspd_db="$candidate"; break; }
    done
    if pidof lspd >/dev/null 2>&1 \
      && [ -n "$lsp_path" ] \
      && [ -n "$lspd_db" ]; then
      break
    fi
    sleep 1
    attempt=$((attempt + 1))
  done

  if [ -z "$lsp_path" ]; then
    log_startup "失败：没有找到 Prometheus LSP 应用"
    return 1
  fi
  if [ -z "$lspd_db" ]; then
    log_startup "失败：没有找到 LSPosed 配置数据库"
    return 1
  fi
  if ! pidof lspd >/dev/null 2>&1; then
    log_startup "失败：等待两分钟后 LSPosed 仍未启动"
    return 1
  fi

  log_startup "LSPosed 已启动，开始配置作用域"
  if CLASSPATH="$lsp_path" app_process /system/bin \
      com.prometheus.camera.rev.install.ScopeInstaller \
      "$lspd_db" "$lsp_path" >"$SCOPE_DETAIL" 2>&1; then
    log_startup "成功：相机、相册编辑器和系统框架作用域已启用"
    am force-stop com.android.camera 2>/dev/null || true
    am force-stop com.miui.mediaeditor 2>/dev/null || true
    return 0
  fi

  log_startup "失败：LSPosed 作用域未完成，请查看 LSPosed作用域详情.txt"
  return 1
}

# 每次开机只执行一次。这里不安装 APK、不比较版本、不清数据，也不在
# 后台循环重写 LSPosed 私有数据库。
configure_scope

WATERMARK_LOG="$MODDIR/watermark-cache.log"
exec >>"$WATERMARK_LOG" 2>&1

attempt=0
while { [ ! -d /data/user/0/com.android.camera ] \
  || [ ! -d /data/user/0/com.miui.mediaeditor ]; } \
  && [ "$attempt" -lt 60 ]; do
  sleep 2
  attempt=$((attempt + 1))
done

if sh "$MODDIR/seed-watermark.sh" "$MODDIR"; then
  log_startup "成功：相机与相册本地水印已初始化"
else
  log_startup "失败：本地水印初始化失败"
  exit 1
fi

# Camera preview can read the app-private LUT directly, while MIVI still
# resolves the same token under /data/vendor/camera. Keep both copies in sync
# after the camera resource extractor has populated its built-in placeholders.
sh "$MODDIR/sync-custom-luts.sh" "$MODDIR" &
log_startup "已启动滤镜同步，进程=$!"
sh "$MODDIR/sync-by-leica-assets.sh" "$MODDIR" &
log_startup "已启动动态机型整图同步，进程=$!"
sh "$MODDIR/sync-local-watermarks.sh" &
log_startup "已启动相册本地水印监听，进程=$!"

# Cloud watermark packages can be downloaded after boot. The initial seed only
# sees directories that already exist, so keep late-created templates in sync.
while true; do
  sleep 30
  sh "$MODDIR/sync-watermark-suffix.sh" "$MODDIR"
done
