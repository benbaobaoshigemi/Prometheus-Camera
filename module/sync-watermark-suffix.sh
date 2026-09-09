#!/system/bin/sh

set -u

MODROOT="${1:-${0%/*}}"
SUFFIX_SOURCE="$MODROOT/watermark_suffix"
CAMERA_DATA=/data/user/0/com.android.camera
MEDIAEDITOR_DATA=/data/user/0/com.miui.mediaeditor
MARKER=prometheus_leica_suffix_black.webp
MIVI_VENDOR_ROOT=/data/vendor/camera/watermarks
LEICA_111_BRAND=watermark_cache/leica/111/xiaomi_E6A54F.webp

[ -d "$SUFFIX_SOURCE" ] || {
  echo "ERROR: Leica suffix source is missing: $SUFFIX_SOURCE"
  exit 1
}

inject_target() {
  app_data="$1"
  target="$app_data/files/watermarks"
  [ -d "$target" ] || return 0
  app_uid="$(stat -c %u "$app_data")" || return 1
  app_gid="$(stat -c %g "$app_data")" || return 1
  find "$target" -type f -name config.json | while IFS= read -r config; do
    template_dir="${config%/*}"
    [ -f "$template_dir/$MARKER" ] && continue
    cp -af "$SUFFIX_SOURCE/." "$template_dir/" || exit 1
    chown -R "$app_uid:$app_gid" "$template_dir" || exit 1
    find "$template_dir" -type d -exec chmod 0700 {} + || exit 1
    find "$template_dir" -type f -exec chmod 0600 {} + || exit 1
    if command -v restorecon >/dev/null 2>&1; then
      restorecon -RF "$template_dir" || exit 1
    fi
    echo "Injected Leica suffix assets into $template_dir"
  done
}

inject_target "$CAMERA_DATA" || exit 1
inject_target "$MEDIAEDITOR_DATA" || exit 1

# Camera edits the app-private template, while MIVI consumes another copy from
# /data/vendor/camera.  MIVI refreshes generated JSON but can retain an older
# image under the same token, so synchronize this NRV-owned brand layer by
# content identity without clearing unrelated watermark data.
sync_mivi_111_brand() {
  source="$MODROOT/$LEICA_111_BRAND"
  target_dir="$MIVI_VENDOR_ROOT/leica/111"
  target="$target_dir/xiaomi_E6A54F.webp"
  [ -f "$source" ] || {
    echo "ERROR: Leica 111 brand source is missing: $source"
    return 1
  }
  [ -d "$target_dir" ] || return 0
  if [ -f "$target" ] && cmp -s "$source" "$target"; then
    return 0
  fi
  cp -af "$source" "$target" || return 1
  chown system:system "$target" || return 1
  chmod 0644 "$target" || return 1
  if command -v restorecon >/dev/null 2>&1; then
    restorecon "$target" || return 1
  fi
  echo "Synchronized Leica 111 brand asset into MIVI vendor cache"
}

sync_mivi_111_brand || exit 1
