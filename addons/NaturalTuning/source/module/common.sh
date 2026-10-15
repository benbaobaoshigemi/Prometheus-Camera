#!/system/bin/sh
# Shared helpers (sourced). All mount work happens in the init mount namespace.
CAMDIR=/odm/lib64/camera
STATE_DIR=/data/adb/phoenix_natural_tuning
APP=/data/user/0/com.android.camera/files/phoenix-natural
VERSION=V1.4.0

find_bb() {
  for p in /data/adb/ksu/bin/busybox /data/adb/magisk/busybox /data/adb/ap/bin/busybox; do
    [ -x "$p" ] && { echo "$p"; return 0; }
  done
  return 1
}

# manifest.txt: "<stock_sha256> <patched_sha256> <file name>"
is_mounted() { grep -q " $CAMDIR/$1 " /proc/mounts; }

all_mounted() {
  while read -r _ _ name; do
    is_mounted "$name" || return 1
  done <"$MODDIR/manifest.txt"
  return 0
}

get_state() { [ "$(cat "$STATE_DIR/state" 2>/dev/null)" = on ] && echo on || echo off; }
set_state() { mkdir -p "$STATE_DIR"; echo "$1" >"$STATE_DIR/state"; }

restart_provider() {
  pkill -f vendor.qti.camera.provider-service_64 || killall vendor.qti.camera.provider-service_64
}

# All-or-nothing mount of the Natural tuning binaries. Prints one line per step, returns non-zero on failure.
natural_mount() {
  BB="$(find_bb)" || { echo "ERROR BusyBox unavailable"; return 1; }
  while read -r stock patched name; do
    src="$MODDIR/payload/$name"; dst="$CAMDIR/$name"
    [ -f "$dst" ] || { echo "ERROR missing target $name"; return 1; }
    [ -s "$src" ] || { echo "ERROR missing payload $name"; return 1; }
    is_mounted "$name" && continue
    have="$("$BB" sha256sum "$dst" | "$BB" cut -d' ' -f1)"
    [ "$have" = "$stock" ] || { echo "ERROR stock tuning changed (ROM update?) $name"; return 1; }
  done <"$MODDIR/manifest.txt"
  while read -r stock patched name; do
    src="$MODDIR/payload/$name"; dst="$CAMDIR/$name"
    is_mounted "$name" && continue
    ctx="$(/system/bin/stat -c %C "$dst")" || { natural_umount; echo "ERROR read context $name"; return 1; }
    chcon "$ctx" "$src" || { natural_umount; echo "ERROR label $name"; return 1; }
    "$BB" mount -o bind "$src" "$dst" || { natural_umount; echo "ERROR mount $name"; return 1; }
    "$BB" cmp "$src" "$dst" || { natural_umount; echo "ERROR verify mount $name"; return 1; }
    echo "mounted: $name"
  done <"$MODDIR/manifest.txt"
  return 0
}

natural_umount() {
  BB="$(find_bb)" || return 1
  while read -r _ _ name; do
    is_mounted "$name" && "$BB" umount "$CAMDIR/$name" && echo "unmounted: $name"
  done <"$MODDIR/manifest.txt"
  return 0
}

# Prepare the camera-private exchange directory with the app's owner and SELinux context.
init_app_dir() {
  PARENT="${APP%/*}"
  export PHOENIX_APP_OWNER="$(/system/bin/stat -c %u:%g "$PARENT")"
  export PHOENIX_APP_CONTEXT="$(/system/bin/stat -c %C "$PARENT")"
  mkdir -p "$APP"
  chown "$PHOENIX_APP_OWNER" "$APP"
  chmod 0770 "$APP"
  chcon "$PHOENIX_APP_CONTEXT" "$APP"
}

# publish <file> <content>: atomic write owned by the camera app
publish() {
  printf '%s\n' "$2" >"$APP/$1.pending"
  chown "$PHOENIX_APP_OWNER" "$APP/$1.pending"
  chmod 0660 "$APP/$1.pending"
  chcon "$PHOENIX_APP_CONTEXT" "$APP/$1.pending"
  mv -f "$APP/$1.pending" "$APP/$1"
}
