#!/system/bin/sh

ui_print "========================================"
ui_print " PhoenixAddon-NaturalTuning V1.4.0"
ui_print " 14U 原色成像（替换徕卡生动的成像节点）"
ui_print "========================================"

. "$MODPATH/common.sh"
BB="$(find_bb)" || abort "! BusyBox 不可用"

[ -f "$MODPATH/manifest.txt" ] || abort "! 缺少 manifest.txt"
while read -r stock patched name; do
  [ -f "$CAMDIR/$name" ] || abort "! 目标 ROM 缺少 $CAMDIR/$name"
  have="$("$BB" sha256sum "$CAMDIR/$name" | "$BB" cut -d' ' -f1)"
  if [ "$have" != "$stock" ]; then
    # already mounted by a previous install of this module is fine
    is_mounted "$name" || abort "! $name 与构建基线不一致（ROM 版本不同？）：$have"
  fi
  pay="$("$BB" sha256sum "$MODPATH/payload/$name" | "$BB" cut -d' ' -f1)"
  [ "$pay" = "$patched" ] || abort "! 载荷校验失败：$name"
  ui_print "- 校验通过：$name"
done <"$MODPATH/manifest.txt"

set_perm_recursive "$MODPATH/payload" 0 0 0755 0644 || abort "! 载荷权限设置失败"
for s in post-fs-data.sh service.sh natural-service.sh natural-event.sh hot-apply.sh hot-remove.sh uninstall.sh common.sh; do
  set_perm "$MODPATH/$s" 0 0 0755 || abort "! 脚本权限设置失败：$s"
done
mkdir -p /data/adb/phoenix_natural_tuning
[ -f /data/adb/phoenix_natural_tuning/state ] || echo off >/data/adb/phoenix_natural_tuning/state
ui_print "- 安装完成。开关状态保留（首次安装为关闭）。"
ui_print "- 在 LSPosed 中为本模块勾选 相机(com.android.camera) 作用域，重启后在相机设置中使用开关。"
ui_print "- 不重启调试：su -M -c 'sh /data/adb/modules/phoenix_natural_tuning/hot-apply.sh'"
