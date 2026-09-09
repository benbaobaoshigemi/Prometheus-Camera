#!/system/bin/sh

# Merge the module into the target ROM's standalone ODM partition on all
# supported managers. Magisk does not map system/odm to this partition.

MODDIR="${0%/*}"
LOG="$MODDIR/mount.log"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox
exec >"$LOG" 2>&1
set -u

[ -x "$BB" ] || exit 1

# Keep the payload outside system/ so manager mounts cannot compete with
# the two controlled ODM subtree mounts below.
fail() {
  echo "ERROR: $*"
  touch "$MODDIR/mount_failed"
  exit 1
}
ROOT_FAMILY_FILE="$MODDIR/.phoenix-root-family"
ROOT_FAMILY=""
if [ -r "$ROOT_FAMILY_FILE" ]; then
  IFS= read -r ROOT_FAMILY < "$ROOT_FAMILY_FILE" || true
fi
case "$ROOT_FAMILY" in
  ksu|apatch|magisk)
    echo "${ROOT_FAMILY}：执行受控 ODM 子树合并"
    ;;
  *)
    fail "缺少或无效的 Root 管理器记录：${ROOT_FAMILY:-未知}"
    ;;
esac

fail() {
  echo "ERROR: $*"
  touch "$MODDIR/mount_failed"
  exit 1
}

bind_entry() {
  local source_path="$1"
  local destination_path="$2"
  if [ -L "$source_path" ]; then
    cp -a "$source_path" "$destination_path" || fail "copy symlink: $source_path"
  elif [ -d "$source_path" ]; then
    mkdir -p "$destination_path" || fail "create directory mount point: $destination_path"
    "$BB" mount -o bind "$source_path" "$destination_path" || fail "bind directory: $source_path"
  else
    : >"$destination_path" || fail "create file mount point: $destination_path"
    "$BB" mount -o bind "$source_path" "$destination_path" || fail "bind file: $source_path"
  fi
}

build_merge_tree() {
  local source_dir="$1"
  local lower_dir="$2"
  local merge_dir="$3"
  local lower_entry source_entry merge_entry name
  mkdir -p "$merge_dir" || fail "create merge directory: $merge_dir"
  chcon "$MERGE_CONTEXT" "$merge_dir" || fail "label merge directory: $merge_dir"

  for lower_entry in "$lower_dir"/*; do
    [ -e "$lower_entry" ] || [ -L "$lower_entry" ] || continue
    name="${lower_entry##*/}"
    source_entry="$source_dir/$name"
    merge_entry="$merge_dir/$name"
    if [ -e "$source_entry" ] || [ -L "$source_entry" ]; then
      if [ -d "$lower_entry" ] && [ ! -L "$lower_entry" ] && [ -d "$source_entry" ] && [ ! -L "$source_entry" ]; then
        build_merge_tree "$source_entry" "$lower_entry" "$merge_entry"
      else
        bind_entry "$source_entry" "$merge_entry"
      fi
    else
      bind_entry "$lower_entry" "$merge_entry"
    fi
  done

  for source_entry in "$source_dir"/*; do
    [ -e "$source_entry" ] || [ -L "$source_entry" ] || continue
    name="${source_entry##*/}"
    lower_entry="$lower_dir/$name"
    merge_entry="$merge_dir/$name"
    if [ ! -e "$lower_entry" ] && [ ! -L "$lower_entry" ]; then
      bind_entry "$source_entry" "$merge_entry"
    fi
  done
}

rm -f "$MODDIR/mount_failed"
rm -rf "$MODDIR/.merge"
mkdir -p "$MODDIR/.merge/camera" || fail "create camera merge root"

MODULE_ODM="$MODDIR/odm"
if [ ! -d "$MODULE_ODM/etc/camera/videofilter" ] && [ -d "$MODDIR/system/odm/etc/camera/videofilter" ]; then
  MODULE_ODM="$MODDIR/system/odm"
fi
[ -d "$MODULE_ODM/etc/camera/videofilter" ] || fail "installer did not stage video filter directory"
[ -d /odm/etc/camera/videofilter ] || fail "target video filter directory is missing"

MERGE_CONTEXT=u:object_r:vendor_configs_file:s0
chcon -R u:object_r:vendor_configs_file:s0 "$MODULE_ODM/etc/camera/videofilter" || fail "label video filter assets"
build_merge_tree "$MODULE_ODM/etc/camera/videofilter" /odm/etc/camera/videofilter "$MODDIR/.merge/camera/videofilter"
"$BB" mount -o rbind "$MODDIR/.merge/camera/videofilter" /odm/etc/camera/videofilter || fail "activate video filter directory"

[ -d "$MODULE_ODM/etc/camera/xiaomi/watermark" ] || fail "installer did not stage watermark directory"
[ -d /odm/etc/camera/xiaomi/watermark ] || fail "target watermark directory is missing"
chcon -R u:object_r:vendor_configs_file:s0 "$MODULE_ODM/etc/camera/xiaomi/watermark" || fail "label watermark assets"
build_merge_tree "$MODULE_ODM/etc/camera/xiaomi/watermark" /odm/etc/camera/xiaomi/watermark "$MODDIR/.merge/camera/xiaomi/watermark"
"$BB" mount -o rbind "$MODDIR/.merge/camera/xiaomi/watermark" /odm/etc/camera/xiaomi/watermark || fail "activate watermark directory"



echo "Legend17U ODM merge mounted successfully"
exit 0
