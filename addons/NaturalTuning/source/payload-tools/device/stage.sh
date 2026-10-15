#!/system/bin/sh
set -e
mkdir -p /data/adb/natural14u
for f in /data/local/tmp/natural14u/*.bin; do
  cat "$f" > "/data/adb/natural14u/${f##*/}"
done
chcon u:object_r:vendor_file:s0 /data/adb/natural14u/*.bin
chmod 644 /data/adb/natural14u/*.bin
ls -lZ /data/adb/natural14u
sha256sum /data/adb/natural14u/*.bin
