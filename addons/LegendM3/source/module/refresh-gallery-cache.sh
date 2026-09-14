#!/system/bin/sh
MODDIR=${0%/*}
exec >"$MODDIR/gallery-cache.log" 2>&1
set -e
DONE="$MODDIR/.gallery-cache-refreshed"
[ ! -f "$DONE" ] || exit 0
while [ "$(getprop sys.boot_completed)" != "1" ]; do sleep 2; done
while [ "$(am get-started-user-state 0)" != "RUNNING_UNLOCKED" ]; do sleep 2; done
CACHE=/data/user/0/com.miui.gallery/shared_prefs/media_editor_capabilities.xml
if [ -f "$CACHE" ]; then
    am force-stop --user 0 com.miui.gallery
    am force-stop --user 0 com.miui.mediaeditor
    rm -f "$CACHE"
fi
: >"$DONE"
echo "Gallery capability cache refreshed for this module installation"
