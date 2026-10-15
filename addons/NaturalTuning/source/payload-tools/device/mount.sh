#!/system/bin/sh
SRC=/data/adb/natural14u
DST=/odm/lib64/camera
for f in $SRC/*.bin; do
  n=${f##*/}
  [ -f "$DST/$n" ] || { echo "missing target $n"; exit 1; }
  grep -q " $DST/$n " /proc/mounts && { echo "already mounted $n"; continue; }
  mount -o bind "$f" "$DST/$n" || { echo "mount failed $n"; exit 1; }
  cmp "$f" "$DST/$n" && echo "mounted $n"
done
grep tuned /proc/mounts
