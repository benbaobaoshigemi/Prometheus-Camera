#!/system/bin/sh
set -eu
SOURCE="$1"
[ -s "$SOURCE" ]
[ "$(/system/bin/stat -c %s "$SOURCE")" -le 16384 ]
for PARENT in /data/user/0/com.android.camera/files /data/vendor/camera; do
  TARGET="$PARENT/phoenix-vignette"
  if [ "$PARENT" = /data/user/0/com.android.camera/files ]; then
    OWNER="$PHOENIX_APP_OWNER"
    CONTEXT="$PHOENIX_APP_CONTEXT"
  else
    OWNER="$PHOENIX_VENDOR_OWNER"
    CONTEXT="$PHOENIX_VENDOR_CONTEXT"
  fi
  cp "$SOURCE" "$TARGET/colorDark.pending"
  chown "$OWNER" "$TARGET/colorDark.pending"
  chmod 0640 "$TARGET/colorDark.pending"
  chcon "$CONTEXT" "$TARGET/colorDark.pending"
done
for PARENT in /data/user/0/com.android.camera/files /data/vendor/camera; do
  mv -f "$PARENT/phoenix-vignette/colorDark.pending" "$PARENT/phoenix-vignette/colorDark.glsl"
done
cmp /data/user/0/com.android.camera/files/phoenix-vignette/colorDark.glsl /data/vendor/camera/phoenix-vignette/colorDark.glsl
