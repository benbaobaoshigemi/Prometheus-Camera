#!/system/bin/sh

# Prometheus Cam 链检查：核对相机/相册编辑器/滤镜/水印文件的完整性与注入。
# 报告保留逐项命令输出、原始审计输出和执行状态。
MODDIR="${0%/*}"
REPORT="$MODDIR/链检查报告-$(date '+%Y%m%d-%H%M%S').txt"
RAW="$REPORT.raw"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox

: >"$REPORT" || { echo "无法创建报告文件：$REPORT"; exit 1; }
echo "Prometheus Cam 链检查 $(date '+%Y-%m-%d %H:%M:%S')" | tee -a "$REPORT"
echo "报告类型：详细诊断" >>"$REPORT"
echo "模块目录：$MODDIR" >>"$REPORT"
echo "设备：$(getprop ro.product.device 2>/dev/null)" >>"$REPORT"
echo "系统：$(getprop ro.build.version.incremental 2>/dev/null)" >>"$REPORT"
echo "用户：$(id 2>/dev/null)" >>"$REPORT"

LSP_PATH="$(pm path com.prometheus.camera.rev 2>/dev/null | sed -n 's/^package://p' | head -n 1)"
if [ -z "$LSP_PATH" ]; then
  echo "未找到 Prometheus LSP，请先刷入模块并重启" | tee -a "$REPORT"
  exit 1
fi

# 先执行一次完整同步，再逐项检查；同步输出只进报告，不打扰前台。
if [ -x "$MODDIR/sync-custom-luts.sh" ] && [ -x "$BB" ]; then
  echo "== 滤镜同步 ==" >>"$REPORT"
  echo "命令：sh $MODDIR/sync-custom-luts.sh $MODDIR --force-once" >>"$REPORT"
  sh "$MODDIR/sync-custom-luts.sh" "$MODDIR" --force-once >>"$REPORT" 2>&1
  sync_status=$?
  echo "退出码：$sync_status" >>"$REPORT"
  [ "$sync_status" -eq 0 ] || echo "滤镜同步未通过（详见报告）" | tee -a "$REPORT"
fi

echo "== 逐项检查 ==" >>"$REPORT"
echo "命令：CLASSPATH=$LSP_PATH app_process /system/bin com.prometheus.camera.rev.install.ChainAudit" >>"$REPORT"
CLASSPATH="$LSP_PATH" app_process /system/bin \
  com.prometheus.camera.rev.install.ChainAudit >"$RAW" 2>&1
audit_status=$?
echo "退出码：$audit_status" >>"$REPORT"
echo "--- ChainAudit 原始输出开始 ---" >>"$REPORT"
cat "$RAW" >>"$REPORT"
echo "--- ChainAudit 原始输出结束 ---" >>"$REPORT"
echo "原始输出文件：$RAW" >>"$REPORT"

fail_lines="$(grep '^FAIL|' "$REPORT")"
fail_count=0
if [ -n "$fail_lines" ]; then
  fail_count="$(printf '%s\n' "$fail_lines" | grep -c '^FAIL|')"
fi

if [ "$fail_count" -eq 0 ] && [ "$audit_status" -eq 0 ]; then
  echo "链检查通过：相机、相册编辑器、滤镜与水印全部就绪" | tee -a "$REPORT"
else
  echo "链检查未通过：$fail_count 项异常" | tee -a "$REPORT"
  printf '%s\n' "$fail_lines" | while IFS='|' read -r status name detail; do
    echo "  - $name：$detail"
  done | tee -a "$REPORT"
fi
echo "完整报告：$REPORT"
echo "原始诊断：$RAW"
exit "$audit_status"
