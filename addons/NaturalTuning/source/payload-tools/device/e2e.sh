#!/system/bin/sh
D=/sdcard/DCIM/Camera
ls $D | grep '^IMG_' | sort > /data/local/tmp/before.txt
PP=$(pidof vendor.qti.camera.provider-service_64)
echo provider $PP
for z in "419 2256 0.5" "562 2256 1x" "718 2256 2x" "864 2256 3.2" "1018 2256 5x"; do
  set -- $z
  input tap $1 $2; sleep 3
  input tap 720 2768; sleep 5
  ls $D | grep '^IMG_' | sort > /data/local/tmp/after.txt
  N=$(comm -13 /data/local/tmp/before.txt /data/local/tmp/after.txt | tail -1)
  echo "zoom $3 -> $N $(ls -l $D/$N 2>/dev/null | awk '{print $5}')"
  cp /data/local/tmp/after.txt /data/local/tmp/before.txt
  dumpsys media.camera > /data/local/tmp/mc.txt 2>/dev/null
  grep -A3 -F 'tuning.mode.TuningMode (80210000)' /data/local/tmp/mc.txt | head -4 | tr '\n' ' '; echo
done
echo provider after $(pidof vendor.qti.camera.provider-service_64)
ls /data/tombstones 2>/dev/null | tail -3
