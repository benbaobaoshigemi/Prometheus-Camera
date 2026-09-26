#!/system/bin/sh

MODDIR="${0%/*}"
LOG="$MODDIR/mount.log"
exec >"$LOG" 2>&1
set -u

# This is an Addon-component check, not a device/model restriction.
# packages.list is available before PackageManager starts at post-fs-data.
if ! grep -q '^com.phoenix.camera.authvignette ' /data/system/packages.list; then
  echo "Addon LSP is not installed; leave the ROM photo library untouched"
  exit 0
fi

fail() {
  echo "ERROR: $*"
  touch "$MODDIR/mount_failed"
  exit 1
}

BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
[ -x "$BB" ] || fail "BusyBox 不可用"

rm -f "$MODDIR/mount_failed"
sh "$MODDIR/init-photo-formula.sh" || fail "initialize photo formula before mount"
SHADER_LIBRARY="$MODDIR/payload/libMiPhotoFilter.so"
PHOTO_LIBRARY=/odm/lib64/libMiPhotoFilter.so
[ -s "$SHADER_LIBRARY" ] || fail "missing photo shader library"
[ -f "$PHOTO_LIBRARY" ] || fail "missing target photo library"
PHOTO_CONTEXT="$(/system/bin/stat -c %C "$PHOTO_LIBRARY")" || fail "read photo library context"
chcon "$PHOTO_CONTEXT" "$SHADER_LIBRARY" || fail "label photo shader library"
"$BB" mount -o bind "$SHADER_LIBRARY" "$PHOTO_LIBRARY" || fail "mount photo shader library"
"$BB" cmp "$SHADER_LIBRARY" "$PHOTO_LIBRARY" || fail "verify photo shader library"
echo "Phoenix AUTH Vignette photo shader library mounted successfully"
exit 0
