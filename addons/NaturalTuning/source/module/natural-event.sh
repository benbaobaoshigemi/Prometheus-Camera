#!/system/bin/sh
# inotifyd handler: the camera settings switch drops "<token> on|off" into $APP/request.
[ "${3:-}" = request ] || exit 0
MODDIR="${0%/*}"
. "$MODDIR/common.sh"
init_app_dir
read -r TOKEN ACTION <"$APP/request"
case "$TOKEN" in ''|*[!0-9]*) exit 1;; esac
ack() { publish ack "$TOKEN $1"; }
case "$ACTION" in
  on)
    if out="$(natural_mount 2>&1)"; then
      set_state on; publish status on; restart_provider; ack OK
    else
      natural_umount >/dev/null 2>&1
      publish status off; ack "ERROR $(echo "$out" | tail -1)"
    fi
    ;;
  off)
    natural_umount >/dev/null 2>&1
    set_state off; publish status off; restart_provider; ack OK
    ;;
  *) ack "ERROR unknown action";;
esac
