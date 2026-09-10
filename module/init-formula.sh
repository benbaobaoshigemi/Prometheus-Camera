#!/system/bin/sh
set -eu
MODDIR="${0%/*}"
APP=/data/user/0/com.android.camera/files/phoenix-vignette
VENDOR=/data/vendor/camera/phoenix-vignette
export PHOENIX_APP_OWNER="$(/system/bin/stat -c %u:%g "${APP%/*}")"
export PHOENIX_APP_CONTEXT="$(/system/bin/stat -c %C "${APP%/*}")"
export PHOENIX_VENDOR_OWNER="$(/system/bin/stat -c %u:%g "${VENDOR%/*}")"
export PHOENIX_VENDOR_CONTEXT="$(/system/bin/stat -c %C "${VENDOR%/*}")"
mkdir -p "$APP" "$VENDOR"
chown "$PHOENIX_APP_OWNER" "$APP"
chown "$PHOENIX_VENDOR_OWNER" "$VENDOR"
chmod 0750 "$APP" "$VENDOR"
chcon "$PHOENIX_APP_CONTEXT" "$APP"
chcon "$PHOENIX_VENDOR_CONTEXT" "$VENDOR"

if [ ! -s "$APP/colorDark.glsl" ]; then
  # Keep the settings and imported shader of an existing development install.
  LEGACY=/data/user/0/com.android.camera/files/phoenix-dev1
  if [ -s "$LEGACY/colorDark.glsl" ]; then
    SOURCE="$LEGACY/colorDark.glsl"
    if [ -s "$LEGACY/custom.glsl" ]; then
      cp "$LEGACY/custom.glsl" "$APP/custom.glsl"
      chown "$PHOENIX_APP_OWNER" "$APP/custom.glsl"
      chmod 0640 "$APP/custom.glsl"
      chcon "$PHOENIX_APP_CONTEXT" "$APP/custom.glsl"
    fi
  else
    SOURCE="$MODDIR/formulas/original.glsl"
  fi
else
  SOURCE="$APP/colorDark.glsl"
fi
sh "$MODDIR/sync-formula.sh" "$SOURCE"
echo "Preview and photo shader files initialized"
