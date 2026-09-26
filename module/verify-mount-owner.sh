#!/system/bin/sh

# Verify after Android boot that a third-party metamodule did not claim the
# Phoenix module tree. KernelSU/APatch still manage lifecycle and scripts;
# Phoenix alone mounts its private ODM payload from post-fs-data.sh.
MODDIR="${1:-${0%/*}}"
LOG="$MODDIR/metamodule-check.log"
FAILED="$MODDIR/metamodule_mount_failed"
MODULE_ID="$(sed -n 's/^id=//p' "$MODDIR/module.prop" | head -n 1)"

exec >"$LOG" 2>&1
rm -f "$FAILED"

attempt=0
while [ "$(getprop sys.boot_completed)" != 1 ] && [ "$attempt" -lt 180 ]; do
  sleep 1
  attempt=$((attempt + 1))
done

if [ "$(getprop sys.boot_completed)" != 1 ]; then
  echo "FAIL: Android did not report boot completion within 180 seconds"
  touch "$FAILED"
  exit 1
fi

ROOT_FAMILY="$(cat "$MODDIR/.phoenix-root-family" 2>/dev/null)"
case "$ROOT_FAMILY" in
  magisk)
    echo "PASS: Magisk owns its standard module mount; third-party metamodule check is not applicable"
    exit 0
    ;;
  ksu|apatch) ;;
  *)
    echo "FAIL: invalid root manager record: ${ROOT_FAMILY:-missing}"
    touch "$FAILED"
    exit 1
    ;;
esac

if [ -e "$MODDIR/odm" ] || [ -e "$MODDIR/system" ]; then
  echo "FAIL: Phoenix exposes a standard mount tree to the metamodule scanner"
  touch "$FAILED"
  exit 1
fi

SUSPECT="$(awk -v id="$MODULE_ID" '
  index($0, id) && ($0 ~ /\/mnt\/hm/ || $0 ~ /\/metamodule/ || $0 ~ /\/magic_mount/ || $0 ~ /\/meta-overlay/) { print }
' /proc/self/mountinfo)"
if [ -n "$SUSPECT" ]; then
  echo "FAIL: third-party metamodule mount references Phoenix"
  printf '%s\n' "$SUSPECT"
  touch "$FAILED"
  exit 1
fi

if [ -e "$MODDIR/mount_failed" ]; then
  echo "FAIL: Phoenix post-fs-data mount reported an error"
  touch "$FAILED"
  exit 1
fi

for target in \
  /odm/etc/camera/videofilter \
  /odm/etc/camera/xiaomi/watermark \
  /odm/lib64/libMiPhotoFilter.so; do
  if ! awk -v target="$target" '$5 == target { found=1 } END { exit !found }' /proc/self/mountinfo; then
    echo "FAIL: Phoenix target is not mounted: $target"
    touch "$FAILED"
    exit 1
  fi
done

echo "PASS: no third-party metamodule mount references Phoenix ($MODULE_ID)"
echo "PASS: Phoenix private ODM targets are mounted by its own post-fs-data flow"
exit 0
