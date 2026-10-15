#!/system/bin/sh
#   su -M -c 'sh /data/adb/modules/phoenix_natural_tuning/hot-remove.sh'
MODDIR="${0%/*}"
. "$MODDIR/common.sh"
natural_umount
set_state off
restart_provider
echo "redirect off; camera provider restarted"
