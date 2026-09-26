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
"$BB" cmp "$MODDIR/payload/libMiPhotoFilter.so" /odm/lib64/libMiPhotoFilter.so
grep -F ' /odm/lib64/libMiPhotoFilter.so ' /proc/1/mountinfo | grep -F '/adb/modules/phoenix_auth_vignette/payload/libMiPhotoFilter.so ' >/dev/null
export PHOENIX_APP_OWNER="$(/system/bin/stat -c %u:%g "${APP%/*}")"
export PHOENIX_APP_CONTEXT="$(/system/bin/stat -c %C "${APP%/*}")"
export PHOENIX_VENDOR_OWNER="$(/system/bin/stat -c %u:%g "${VENDOR%/*}")"
export PHOENIX_VENDOR_CONTEXT="$(/system/bin/stat -c %C "${VENDOR%/*}")"
echo "Starting shader file synchronization"
READY="$APP/addon-ready"
trap 'rm -f "$READY"' EXIT
trap 'exit 1' HUP INT TERM
printf 'V1.1.0 %s photo-mounted\n' "$(cat /proc/sys/kernel/random/boot_id)" > "$READY.pending"
chown "$PHOENIX_APP_OWNER" "$READY.pending"
chmod 0640 "$READY.pending"
chcon "$PHOENIX_APP_CONTEXT" "$READY.pending"
mv -f "$READY.pending" "$READY"
"$BB" inotifyd "$MODDIR/formula-event.sh" "$APP:y"
