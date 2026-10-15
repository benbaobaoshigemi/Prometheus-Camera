#!/system/bin/sh
OUT=/data/local/tmp/natural_inotify.log
rm -f $OUT
ARGS=""
for f in /data/adb/natural14u/*.bin; do ARGS="$ARGS $f:or"; done
nohup inotifyd - $ARGS > $OUT 2>&1 &
echo $! > /data/local/tmp/natural_inotify.pid
echo watching pid $(cat /data/local/tmp/natural_inotify.pid)
