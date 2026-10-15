#!/system/bin/sh
MODDIR="${0%/*}"
LOG="$MODDIR/service.log"
while [ ! -d /data/user/0/com.android.camera/files ]; do sleep 2; done
exec sh "$MODDIR/natural-service.sh" >>"$LOG" 2>&1
