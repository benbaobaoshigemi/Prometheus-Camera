#!/system/bin/sh
MODDIR=${0%/*}
exec >"$MODDIR/aux-relay.log" 2>&1
set -e
/system/bin/sh "$MODDIR/refresh-gallery-cache.sh" &
APP=/data/user/0/com.android.camera/files
while [ ! -d "$APP" ]; do sleep 1; done
DEST=$APP/phoenix_m3_aux
mkdir -p "$DEST"
chown "$(/system/bin/stat -c %u:%g "$APP")" "$DEST"
chmod 0700 "$DEST"
chcon "$(/system/bin/stat -c %C "$APP")" "$DEST"
for DIR in /data/vendor/camera/offlinelog/phoenix_m3_aux "$DEST"; do
    find "$DIR" -maxdepth 1 -type f \( -name '*.aux' -o -name '*.tmp' \) -mmin +15 -delete
done
exec "$MODDIR/bin/m3_aux_relay"
