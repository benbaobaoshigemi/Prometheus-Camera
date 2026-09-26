#!/system/bin/sh
set -eu
MODDIR="${0%/*}"
PARENT=/data/vendor/camera
TARGET="$PARENT/phoenix-vignette"
OWNER="$(/system/bin/stat -c %u:%g "$PARENT")"
CONTEXT="$(/system/bin/stat -c %C "$PARENT")"
mkdir -p "$TARGET"
chown "$OWNER" "$TARGET"
chmod 0750 "$TARGET"
chcon "$CONTEXT" "$TARGET"
if [ ! -s "$TARGET/colorDark.glsl" ]; then
  cp "$MODDIR/formulas/original.glsl" "$TARGET/colorDark.pending"
  chown "$OWNER" "$TARGET/colorDark.pending"
  chmod 0640 "$TARGET/colorDark.pending"
  chcon "$CONTEXT" "$TARGET/colorDark.pending"
  mv -f "$TARGET/colorDark.pending" "$TARGET/colorDark.glsl"
fi
[ "$(/system/bin/stat -c %s "$TARGET/colorDark.glsl")" -le 16384 ]
echo "Photo formula ready before library mount"
