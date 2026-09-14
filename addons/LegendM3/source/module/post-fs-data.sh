#!/system/bin/sh
MODDIR=${0%/*}
exec >"$MODDIR/mount.log" 2>&1
BB=/data/adb/ksu/bin/busybox
fail() { echo "ERROR: $*"; exit 1; }
[ -x "$BB" ] || fail "KernelSU BusyBox missing"
AUX=/data/vendor/camera/offlinelog/phoenix_m3_aux
mkdir -p "$AUX" || fail "create aux staging"
chown 1047:1005 "$AUX" || fail "own aux staging"
chmod 0700 "$AUX" || fail "protect aux staging"
chcon u:object_r:vendor_camera_data_file:s0 "$AUX" || fail "label aux staging"
DATA_DEVICE=$(/system/bin/stat -c %d "$MODDIR") || fail "read module device"
MERGE=/dev/phoenix_m3
[ ! -e "$MERGE" ] || fail "M3 merge already exists in this boot"
mkdir -p "$MERGE" || fail "create merge root"

bind_entry() {
    local src="$1" dst="$2" item
    if [ -L "$src" ]; then
        cp -a "$src" "$dst" || fail "copy symlink $src"
    elif [ -d "$src" ]; then
        mkdir -p "$dst" || fail "mkdir $dst"
        if [ "$(/system/bin/stat -c %d "$src")" = "$DATA_DEVICE" ]; then
            chcon "$(/system/bin/stat -c %C "$src")" "$dst" || fail "label $dst"
            for item in "$src"/*; do
                [ -e "$item" ] || [ -L "$item" ] || continue
                bind_entry "$item" "$dst/${item##*/}"
            done
        else
            "$BB" mount -o rbind "$src" "$dst" || fail "bind directory $src"
        fi
    elif [ "$(/system/bin/stat -c %d "$src")" = "$DATA_DEVICE" ]; then
        # App mount isolation removes data-backed file binds. Materialize these
        # static assets so that the merged directory never exposes empty stubs.
        cp -p "$src" "$dst" || fail "copy static overlay $src"
        chcon "$(/system/bin/stat -c %C "$src")" "$dst" || fail "label $dst"
        "$BB" cmp "$src" "$dst" || fail "verify static overlay $src"
    else
        : >"$dst" || fail "create mount point $dst"
        "$BB" mount -o bind "$src" "$dst" || fail "bind file $src"
    fi
}

merge_tree() {
    local src="$1" lower="$2" merged="$3" entry name
    mkdir -p "$merged" || fail "create $merged"
    chcon "$(/system/bin/stat -c %C "$lower")" "$merged" || fail "label $merged"
    for entry in "$lower"/*; do
        [ -e "$entry" ] || [ -L "$entry" ] || continue
        name=${entry##*/}
        if [ -e "$src/$name" ] || [ -L "$src/$name" ]; then
            if [ -d "$entry" ] && [ ! -L "$entry" ] && [ -d "$src/$name" ]; then
                merge_tree "$src/$name" "$entry" "$merged/$name"
            else
                bind_entry "$src/$name" "$merged/$name"
            fi
        else
            bind_entry "$entry" "$merged/$name"
        fi
    done
    for entry in "$src"/*; do
        [ -e "$entry" ] || [ -L "$entry" ] || continue
        name=${entry##*/}
        if [ ! -e "$lower/$name" ] && [ ! -L "$lower/$name" ]; then
            bind_entry "$entry" "$merged/$name"
        fi
    done
}

chcon -R u:object_r:vendor_configs_file:s0 "$MODDIR/payload/odm/etc/camera" || fail "label assets"
chcon -R u:object_r:vendor_file:s0 "$MODDIR/payload/odm/lib64" || fail "label libraries"
merge_tree "$MODDIR/payload/odm/etc/camera/xiaomi" /odm/etc/camera/xiaomi "$MERGE/xiaomi"
merge_tree "$MODDIR/payload/odm/lib64/camera/plugins" /odm/lib64/camera/plugins "$MERGE/plugins"
"$BB" mount -o rbind "$MERGE/xiaomi" /odm/etc/camera/xiaomi || fail "activate camera assets"
"$BB" mount -o rbind "$MERGE/plugins" /odm/lib64/camera/plugins || fail "activate plugins"
echo "M3 ODM graphs, plugins and assets mounted"
