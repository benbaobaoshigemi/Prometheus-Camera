#!/system/bin/sh
# Late-start service: publish readiness to the camera app and serve switch requests.
MODDIR="${0%/*}"
. "$MODDIR/common.sh"
BB="$(find_bb)" || exit 1
init_app_dir
all_mounted && STATUS=on || STATUS=off
publish status "$STATUS"
publish addon-ready "$VERSION $(cat /proc/sys/kernel/random/boot_id)"
trap 'rm -f "$APP/addon-ready"' EXIT
trap 'exit 1' HUP INT TERM
echo "serving requests; status=$STATUS"
exec "$BB" inotifyd "$MODDIR/natural-event.sh" "$APP:y"
