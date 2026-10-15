#!/system/bin/sh
# Turn the redirect on without reboot (root shell, init mount namespace):
#   su -M -c 'sh /data/adb/modules/phoenix_natural_tuning/hot-apply.sh'
MODDIR="${0%/*}"
. "$MODDIR/common.sh"
natural_mount || exit 1
set_state on
restart_provider
echo "redirect on; camera provider restarted"
