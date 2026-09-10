#!/system/bin/sh
set -eu
MODDIR="${0%/*}"
APP=/data/user/0/com.android.camera/files/phoenix-vignette
VENDOR=/data/vendor/camera/phoenix-vignette
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
[ -x "$BB" ]
sh "$MODDIR/init-formula.sh"
export PHOENIX_APP_OWNER="$(/system/bin/stat -c %u:%g "${APP%/*}")"
export PHOENIX_APP_CONTEXT="$(/system/bin/stat -c %C "${APP%/*}")"
export PHOENIX_VENDOR_OWNER="$(/system/bin/stat -c %u:%g "${VENDOR%/*}")"
export PHOENIX_VENDOR_CONTEXT="$(/system/bin/stat -c %C "${VENDOR%/*}")"
echo "Starting shader file synchronization"
exec "$BB" inotifyd "$MODDIR/formula-event.sh" "$APP:y"
