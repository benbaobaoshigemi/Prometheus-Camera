#!/system/bin/sh

MODDIR="${0%/*}"
LOG="$MODDIR/formula-service.log"

grep -q '^com.phoenix.camera.authvignette ' /data/system/packages.list || exit 0

while [ ! -d /data/user/0/com.android.camera/files ]; do
  sleep 2
done

[ ! -e "$MODDIR/mount_failed" ] || exit 1
cmp "$MODDIR/payload/libMiPhotoFilter.so" /odm/lib64/libMiPhotoFilter.so || exit 1
exec sh "$MODDIR/formula-service.sh" >>"$LOG" 2>&1
