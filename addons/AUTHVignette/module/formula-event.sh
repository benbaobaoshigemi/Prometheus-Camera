#!/system/bin/sh
set -eu
[ "${3:-}" = request ] || exit 0
MODDIR="${0%/*}"
APP=/data/user/0/com.android.camera/files/phoenix-vignette
read -r TOKEN ACTION < "$APP/request"
case "$TOKEN" in ''|*[!0-9]*) exit 1;; esac
ack() {
  printf '%s %s\n' "$TOKEN" "$1" > "$APP/ack.pending"
  chown "$PHOENIX_APP_OWNER" "$APP/ack.pending"
  chmod 0640 "$APP/ack.pending"
  chcon "$PHOENIX_APP_CONTEXT" "$APP/ack.pending"
  mv -f "$APP/ack.pending" "$APP/ack"
}
case "$ACTION" in
  apply)
    if sh "$MODDIR/sync-formula.sh" "$APP/request.glsl"; then
      ack OK
    else
      ack 'ERROR formula synchronization failed'
    fi
    ;;
  *) ack 'ERROR unknown action';;
esac
