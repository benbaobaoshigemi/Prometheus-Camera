#!/system/bin/sh

set -u

MODROOT="${1:-${0%/*}}"
SOURCE="$MODROOT/watermark_cache"
SUFFIX_SOURCE="$MODROOT/watermark_suffix"
LOCAL_MANIFEST="$MODROOT/content/mediaeditor-local-watermarks.tsv"
LOCAL_COMMIT="$MODROOT/content/mediaeditor-local-watermarks.commit"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
CAMERA_DATA=/data/user/0/com.android.camera
MEDIAEDITOR_DATA=/data/user/0/com.miui.mediaeditor

[ -d "$SOURCE" ] || {
  echo "错误：缺少本地水印源目录：$SOURCE"
  exit 1
}

[ -d "$SUFFIX_SOURCE" ] || {
  echo "错误：缺少徕卡后缀目录：$SUFFIX_SOURCE"
  exit 1
}

[ -x "$BB" ] && [ -s "$LOCAL_MANIFEST" ] && [ -s "$LOCAL_COMMIT" ] || {
  echo "错误：缺少本地水印输入文件"
  exit 1
}

sha256_file() {
  "$BB" sha256sum "$1" 2>/dev/null | "$BB" awk '{print $1}'
}

verify_local_source() {
  expected="$(tr -d '\r\n' <"$LOCAL_COMMIT")"
  [ "${#expected}" -eq 64 ] || return 1
  [ "$(sha256_file "$LOCAL_MANIFEST")" = "$expected" ] || return 1
  count=0
  while IFS="$(printf '\t')" read -r kind relative hash extra; do
    [ "$kind" = asset ] || return 1
    case "$relative" in
      signature/*|color_chart/*|leica/88/*|leica/89/*|leica/90/*|\
        leica/91/*|leica/92/*|leica/93/*|leica/94/*|leica/111/*) ;;
      *) return 1 ;;
    esac
    case "$relative" in *../*|/*|*\\*) return 1 ;; esac
    [ -z "$extra" ] && [ "${#hash}" -eq 64 ] || return 1
    [ -f "$SOURCE/$relative" ] || return 1
    [ "$(sha256_file "$SOURCE/$relative")" = "$hash" ] || return 1
    count=$((count + 1))
  done <"$LOCAL_MANIFEST"
  [ "$count" -gt 0 ]
}

atomic_copy() {
  src="$1"
  dst="$2"
  uid="$3"
  gid="$4"
  tmp="${dst}.$$.tmp"
  rm -f "$tmp"
  cp "$src" "$tmp" || return 1
  chown "$uid:$gid" "$tmp" || { rm -f "$tmp"; return 1; }
  chmod 0600 "$tmp" || { rm -f "$tmp"; return 1; }
  mv -f "$tmp" "$dst" || { rm -f "$tmp"; return 1; }
}

# Camera may prune retired cloud-template directories while this installer is
# walking its private watermark tree.  Apply permissions in BusyBox batches and
# retry a bounded number of times when the directory changes during traversal.
# A persistent chmod error remains fatal.
chmod_existing() {
  mode="$1"
  shift
  attempt=0
  while [ "$attempt" -lt 3 ]; do
    if "$BB" find "$@" -print0 \
        | "$BB" xargs -0 -r "$BB" chmod "$mode"; then
      return 0
    fi
    attempt=$((attempt + 1))
  done
  return 1
}

safe_remove_tree() {
  candidate="$1"
  root="$2"
  case "$candidate" in
    "$root"/.nrv-local-watermarks-*|"$root"/watermarks/.nrv-old-*|\
      "$root"/watermarks/*/.nrv-old-*) ;;
    *) return 1 ;;
  esac
  [ ! -e "$candidate" ] || rm -rf "$candidate"
}

publish_local_categories() {
  files_root="$1"
  target="$2"
  uid="$3"
  gid="$4"
  stage="$files_root/.nrv-local-watermarks-$$"
  transaction="$files_root/prometheus/local_watermarks"
  echo "步骤：准备本地水印临时目录"
  safe_remove_tree "$stage" "$files_root" || return 1
  mkdir -p "$stage" "$transaction" || return 1
  cp -af "$SOURCE/signature" "$stage/" || return 1
  cp -af "$SOURCE/color_chart" "$stage/" || return 1
  mkdir -p "$stage/leica" || return 1
  cp -af "$SOURCE/leica/88" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/89" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/90" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/91" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/92" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/93" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/94" "$stage/leica/" || return 1
  cp -af "$SOURCE/leica/111" "$stage/leica/" || return 1
  # Template program assets are immutable, but userData is application-owned.
  # Preserve signatures and per-template choices across every atomic publish.
  preserved_user_data=0
  for pair in signature/24 signature/25 signature/26 \
    color_chart/27 color_chart/28 color_chart/29 color_chart/30 \
    leica/88 leica/89 leica/90 leica/91 leica/92 leica/93 leica/94 leica/111; do
    case "$pair" in
      signature/24|signature/25|signature/26|\
        color_chart/27|color_chart/28|color_chart/29|color_chart/30|\
        leica/88|leica/89|leica/90|leica/91|leica/92|leica/93|leica/94|leica/111) ;;
      *) return 1 ;;
    esac
    existing_user_data="$target/$pair/userData"
    staged_user_data="$stage/$pair/userData"
    [ -d "$existing_user_data" ] || continue
    case "$staged_user_data" in "$stage"/*/userData) ;; *) return 1 ;; esac
    rm -rf "$staged_user_data" || return 1
    mkdir -p "${staged_user_data%/*}" || return 1
    cp -af "$existing_user_data" "$staged_user_data" || return 1
    preserved_user_data=1
  done
  [ "$preserved_user_data" -eq 0 ] \
    || echo "步骤：保留现有用户签名与模板设置"
  find "$stage" -type f -name config.json | while IFS= read -r config; do
    cp -af "$SUFFIX_SOURCE/." "${config%/*}/" || exit 1
  done || return 1
  chown -R "$uid:$gid" "$stage" "$transaction" || return 1
  chmod_existing 0700 "$stage" "$transaction" -type d || return 1
  chmod_existing 0600 "$stage" "$transaction" -type f || return 1
  # A renamed staging directory can retain a restorecon digest. Use the real
  # application's label, including its MCS categories, before publication.
  app_context="$(/system/bin/stat -c %C "$files_root")" || return 1
  chcon -R "$app_context" "$stage" "$transaction" || return 1

  # Invalidate the consumer transaction before replacing either category.
  echo "步骤：替换签名、色卡与徕卡限定模板"
  rm -f "$transaction/manifest.commit" || return 1
  for group in color_chart signature; do
    backup="$target/.nrv-old-$group-$$"
    safe_remove_tree "$backup" "$files_root" || return 1
    [ ! -e "$target/$group" ] || mv "$target/$group" "$backup" || return 1
    if ! mv "$stage/$group" "$target/$group"; then
      [ ! -e "$backup" ] || mv "$backup" "$target/$group"
      return 1
    fi
    safe_remove_tree "$backup" "$files_root" || return 1
  done
  mkdir -p "$target/leica" || return 1
  for watermark_id in 88 89 90 91 92 93 94 111; do
    backup="$target/leica/.nrv-old-$watermark_id-$$"
    safe_remove_tree "$backup" "$files_root" || return 1
    [ ! -e "$target/leica/$watermark_id" ] \
      || mv "$target/leica/$watermark_id" "$backup" || return 1
    if ! mv "$stage/leica/$watermark_id" "$target/leica/$watermark_id"; then
      [ ! -e "$backup" ] || mv "$backup" "$target/leica/$watermark_id"
      return 1
    fi
    safe_remove_tree "$backup" "$files_root" || return 1
  done
  rmdir "$stage/leica" 2>/dev/null || true
  rmdir "$stage" 2>/dev/null || true
  atomic_copy "$LOCAL_MANIFEST" "$transaction/manifest.tsv" "$uid" "$gid" \
    || return 1
  atomic_copy "$LOCAL_COMMIT" "$transaction/manifest.commit" "$uid" "$gid" \
    || return 1
  echo "本地补充水印已写入"
  return 0
}

verify_target_local() {
  files_root="$1"
  transaction="$files_root/prometheus/local_watermarks"
  target="$files_root/watermarks"
  expected="$(tr -d '\r\n' <"$LOCAL_COMMIT")"
  [ -s "$transaction/manifest.tsv" ] \
    && [ -s "$transaction/manifest.commit" ] || return 1
  [ "$(tr -d '\r\n' <"$transaction/manifest.commit")" = "$expected" ] \
    || return 1
  [ "$(sha256_file "$transaction/manifest.tsv")" = "$expected" ] || return 1
  count=0
  while IFS="$(printf '\t')" read -r kind relative hash extra; do
    [ "$kind" = asset ] && [ -z "$extra" ] || return 1
    [ -f "$target/$relative" ] || return 1
    [ "$(sha256_file "$target/$relative")" = "$hash" ] || return 1
    count=$((count + 1))
  done <"$LOCAL_MANIFEST"
  [ "$count" -gt 0 ]
}

seed_target() {
  app_data="$1"
  label="$2"
  local_only="${3:-0}"
  if [ ! -d "$app_data" ]; then
    echo "$label 数据目录尚未就绪，开机后将重试"
    return 0
  fi
  app_uid="$(stat -c %u "$app_data")" || return 1
  app_gid="$(stat -c %g "$app_data")" || return 1
  files_root="$app_data/files"
  target="$files_root/watermarks"
  if [ -e "$files_root" ] && [ ! -d "$files_root" ]; then
    echo "错误：$label 数据目录不是文件夹：$files_root"
    return 1
  fi
  if [ ! -d "$files_root" ]; then
    mkdir "$files_root" || return 1
  fi
  # This script runs as root before the app's first launch.  Keep the Android
  # app-private parent owned by the app, including recovery from NRV-1.0.12.
  chown "$app_uid:$app_gid" "$files_root" || return 1
  chmod 0771 "$files_root" || return 1
  # Other Prometheus transactions (notably LUT sync) may atomically rename
  # temporary files below this parent while installation is running.  Never
  # recurse across sibling transactions: own only the stable parent here;
  # publish_local_categories owns its local_watermarks subtree explicitly.
  mkdir -p "$files_root/prometheus" || return 1
  chown "$app_uid:$app_gid" "$files_root/prometheus" || return 1
  chmod 0700 "$files_root/prometheus" || return 1
  mkdir -p "$target" || return 1
  chown "$app_uid:$app_gid" "$target" || return 1
  chmod 0700 "$target" || return 1
  if [ "$local_only" != 1 ]; then
    # Prepare immutable module assets before touching the application's tree.
    # cp -a must never publish root-owned directories and defer ownership until
    # after a walk of directories that Camera can concurrently remove.
    prepared="$files_root/.nrv-local-watermarks-base-$$"
    safe_remove_tree "$prepared" "$files_root" || return 1
    mkdir -p "$prepared" || return 1
    for source_group in "$SOURCE"/*; do
      [ -e "$source_group" ] || continue
      case "${source_group##*/}" in signature|color_chart) continue ;; esac
      cp -af "$source_group" "$prepared/" || return 1
    done
    find "$prepared" -type f -name config.json | while IFS= read -r config; do
      cp -af "$SUFFIX_SOURCE/." "${config%/*}/" || exit 1
    done || return 1
    chown -R "$app_uid:$app_gid" "$prepared" || return 1
    chmod_existing 0700 "$prepared" -type d || return 1
    chmod_existing 0600 "$prepared" -type f || return 1
    app_context="$(/system/bin/stat -c %C "$files_root")" || return 1
    chcon -R "$app_context" "$prepared" || return 1
    echo "$label 步骤：写入已补齐资产和权限的内置水印"
    cp -af "$prepared/." "$target/" || return 1
    safe_remove_tree "$prepared" "$files_root" || return 1
  fi
  echo "$label 步骤：写入本地补充与徕卡限定模板"
  publish_local_categories "$files_root" "$target" "$app_uid" "$app_gid" \
    || return 1
  if command -v restorecon >/dev/null 2>&1; then
    echo "$label 步骤：恢复 SELinux 文件上下文"
    restorecon "$files_root" >/dev/null 2>&1 || return 1
    restorecon "$files_root/prometheus" >/dev/null 2>&1 || return 1
    restorecon -RF "$files_root/prometheus/local_watermarks" \
      >/dev/null 2>&1 || return 1
    restorecon -RF "$target" >/dev/null 2>&1 || return 1
    echo "$label 步骤：SELinux 文件上下文已恢复"
  fi
  echo "$label 本地水印已同步"
  for pair in signature/24 signature/25 signature/26 \
    color_chart/27 color_chart/28 color_chart/29 color_chart/30 \
    leica/88 leica/89 leica/90 leica/91 leica/92 leica/93 leica/94 leica/111; do
    [ -s "$target/$pair/config.json" ] || return 1
    case "$pair" in
      signature/24) template_label="个性签名·样式1" ;;
      signature/25) template_label="个性签名·样式2" ;;
      signature/26) template_label="个性签名·样式3" ;;
      color_chart/27) template_label="色卡·样式1" ;;
      color_chart/28) template_label="色卡·样式2" ;;
      color_chart/29) template_label="色卡·样式3" ;;
      color_chart/30) template_label="色卡·样式4" ;;
      leica/88) template_label="徕卡滤镜签名" ;;
      leica/89) template_label="徕卡滤镜名与签名" ;;
      leica/90) template_label="徕卡限定样式1" ;;
      leica/91) template_label="徕卡限定样式2" ;;
      leica/92) template_label="徕卡限定样式3" ;;
      leica/93) template_label="徕卡限定样式5" ;;
      leica/94) template_label="徕卡限定样式6" ;;
      leica/111) template_label="徕卡限定样式4" ;;
    esac
    echo "$label 水印模板已写入：$template_label"
  done
}

verify_local_source || {
  echo "错误：本地水印校验失败"
  exit 1
}
echo "校验通过：本地水印源文件与摘要一致"
if [ "${2:-}" = "--repair-mediaeditor-local" ]; then
  if verify_target_local "$MEDIAEDITOR_DATA/files"; then
    exit 0
  fi
  seed_target "$MEDIAEDITOR_DATA" MediaEditor 1 || exit 1
  echo "相册编辑器本地水印已恢复"
  exit 0
fi
seed_target "$CAMERA_DATA" Camera \
  || { echo "错误：相机本地水印写入失败"; exit 1; }
seed_target "$MEDIAEDITOR_DATA" MediaEditor \
  || { echo "错误：相册编辑器本地水印写入失败"; exit 1; }
exit 0
