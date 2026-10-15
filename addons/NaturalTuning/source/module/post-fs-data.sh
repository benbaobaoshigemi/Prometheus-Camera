#!/system/bin/sh
# Boot: mount the Natural tuning binaries only when the settings switch is on.
MODDIR="${0%/*}"
LOG="$MODDIR/mount.log"
exec >"$LOG" 2>&1
. "$MODDIR/common.sh"
rm -f "$MODDIR/mount_failed"
if [ "$(get_state)" != on ]; then
  echo "Natural redirect is off; stock tuning untouched"
  exit 0
fi
if natural_mount; then
  echo "Phoenix Natural tuning mounted"
else
  touch "$MODDIR/mount_failed"
  echo "mount failed; stock tuning kept"
fi
exit 0
