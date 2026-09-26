#!/system/bin/sh

ui_print "========================================"
ui_print " PhoenixAddon-AUTHVignette V1.1.0"
ui_print " 徕卡经典暗角着色器 Addon"
ui_print "========================================"

BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
[ -x "$BB" ] || abort "! BusyBox 不可用"

[ -f /odm/lib64/libMiPhotoFilter.so ] || abort "! 目标 ROM 缺少 /odm/lib64/libMiPhotoFilter.so"
set_perm_recursive "$MODPATH/payload" 0 0 0755 0644 || abort "! 暗角成片库权限设置失败"
for script in post-fs-data.sh service.sh uninstall.sh init-photo-formula.sh init-formula.sh sync-formula.sh formula-service.sh formula-event.sh; do
  set_perm "$MODPATH/$script" 0 0 0755 || abort "! 脚本权限设置失败：$script"
done
set_perm_recursive "$MODPATH/formulas" 0 0 0755 0644 || abort "! 着色器公式权限设置失败"
sh "$MODPATH/init-formula.sh" || abort "! 暗角着色器初始化失败"
ui_print "- Addon 根模块安装完成；重启后启用成片库挂载"
