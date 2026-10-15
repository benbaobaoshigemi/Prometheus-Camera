#!/system/bin/sh
for m in $(grep -o '/odm/lib64/camera/com.qti.tuned[^ ]*' /proc/mounts); do umount "$m" && echo "unmounted $m"; done
grep tuned /proc/mounts || echo "no tuned mounts"
