#!/system/bin/sh
D=/sdcard/DCIM/Camera
am force-stop com.android.camera; am start -n com.android.camera/.Camera >/dev/null; sleep 6
ls $D | grep '^IMG_' | sort > /data/local/tmp/b.txt
input tap 562 2256; sleep 3; input tap 720 2768; sleep 7
ls $D | grep '^IMG_' | sort > /data/local/tmp/a.txt
comm -13 /data/local/tmp/b.txt /data/local/tmp/a.txt | tail -1
