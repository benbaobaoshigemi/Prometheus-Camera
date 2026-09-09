#!/system/bin/sh

# Camera publishes a complete by-LEICA asset transaction. MediaEditor only
# receives committed, hash-verified files and never regenerates model text.
MODDIR="${0%/*}"
SRC_APP=/data/user/0/com.android.camera
DST_APP=/data/user/0/com.miui.mediaeditor
SRC_PARENT="$SRC_APP/files/prometheus/by_leica"
SRC_DIR="$SRC_PARENT/current"
SRC_MODELS="$SRC_PARENT/models"
DST_DIR="$DST_APP/files/prometheus/by_leica/current"
DST_MODELS="$DST_APP/files/prometheus/by_leica/models"
LOG="$MODDIR/by-leica-sync.log"
BB=/data/adb/ksu/bin/busybox
[ -x "$BB" ] || BB=/data/adb/magisk/busybox
[ -x "$BB" ] || BB=/data/adb/ap/bin/busybox

log_line() {
  printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >>"$LOG"
}

sha256_file() {
  "$BB" sha256sum "$1" 2>/dev/null | "$BB" awk '{print $1}'
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
  restorecon "$tmp" >/dev/null 2>&1
  mv -f "$tmp" "$dst" || { rm -f "$tmp"; return 1; }
  restorecon "$dst" >/dev/null 2>&1
}

prepare_target() {
  [ -d "$DST_APP" ] || return 1
  uid="$(stat -c %u "$DST_APP")" || return 1
  gid="$(stat -c %g "$DST_APP")" || return 1
  mkdir -p "$DST_DIR" || return 1
  mkdir -p "$DST_MODELS" || return 1
  chown -R "$uid:$gid" "$DST_APP/files/prometheus" || return 1
  find "$DST_APP/files/prometheus" -type d -exec chmod 0700 {} + || return 1
  restorecon -RF "$DST_APP/files/prometheus" >/dev/null 2>&1
}

sync_transaction() {
  manifest="$SRC_DIR/manifest.tsv"
  commit="$SRC_DIR/manifest.commit"
  [ -s "$manifest" ] && [ -s "$commit" ] || return 0
  expected="$(tr -d '\r\n' <"$commit")"
  [ "${#expected}" -eq 64 ] || { log_line "拒绝：拼装事务摘要长度错误"; return 1; }
  [ "$(sha256_file "$manifest")" = "$expected" ] \
    || { log_line "拒绝：拼装事务清单校验失败"; return 1; }

  count=0
  while IFS="$(printf '\t')" read -r kind name hash extra; do
    [ "$kind" = asset ] || continue
    case "$name" in xiaomi_*.webp) ;; *) log_line "拒绝：非法资产名 $name"; return 1 ;; esac
    [ -z "$extra" ] && [ "${#hash}" -eq 64 ] \
      || { log_line "拒绝：资产记录格式错误 $name"; return 1; }
    [ -s "$SRC_DIR/$name" ] \
      || { log_line "拒绝：事务资产缺失 $name"; return 1; }
    [ "$(sha256_file "$SRC_DIR/$name")" = "$hash" ] \
      || { log_line "拒绝：事务资产校验失败 $name"; return 1; }
    count=$((count + 1))
  done <"$manifest"
  [ "$count" -gt 0 ] || { log_line "拒绝：事务中没有拼装资产"; return 1; }

  prepare_target || { log_line "相册编辑器目录尚不可用"; return 1; }
  uid="$(stat -c %u "$DST_APP")"
  gid="$(stat -c %g "$DST_APP")"
  archive="$DST_MODELS/$expected"
  mkdir -p "$archive" || return 1
  chown "$uid:$gid" "$archive" || return 1
  chmod 0700 "$archive" || return 1
  while IFS="$(printf '\t')" read -r kind name hash extra; do
    [ "$kind" = asset ] || continue
    atomic_copy "$SRC_DIR/$name" "$DST_DIR/$name" "$uid" "$gid" || return 1
    atomic_copy "$SRC_DIR/$name" "$archive/$name" "$uid" "$gid" || return 1
  done <"$manifest"
  atomic_copy "$manifest" "$DST_DIR/manifest.tsv" "$uid" "$gid" || return 1
  atomic_copy "$commit" "$DST_DIR/manifest.commit" "$uid" "$gid" || return 1
  atomic_copy "$manifest" "$archive/manifest.tsv" "$uid" "$gid" || return 1
  atomic_copy "$commit" "$archive/manifest.commit" "$uid" "$gid" || return 1
  log_line "成功：已同步并归档 $count 个 by LEICA 拼装资产，事务=$expected"
}

sync_archives() {
  [ -d "$SRC_MODELS" ] || return 0
  prepare_target || return 1
  uid="$(stat -c %u "$DST_APP")" || return 1
  gid="$(stat -c %g "$DST_APP")" || return 1
  for source in "$SRC_MODELS"/*; do
    [ -d "$source" ] || continue
    transaction="${source##*/}"
    manifest="$source/manifest.tsv"
    commit="$source/manifest.commit"
    [ -s "$manifest" ] && [ -s "$commit" ] || continue
    expected="$(tr -d '\r\n' <"$commit")"
    [ "${#expected}" -eq 64 ] || return 1
    [ "$(sha256_file "$manifest")" = "$expected" ] || return 1
    archive="$DST_MODELS/$transaction"
    mkdir -p "$archive" || return 1
    chown "$uid:$gid" "$archive" || return 1
    chmod 0700 "$archive" || return 1
    count=0
    while IFS="$(printf '\t')" read -r kind name hash extra; do
      [ "$kind" = asset ] || continue
      case "$name" in xiaomi_*.webp) ;; *) return 1 ;; esac
      [ -z "$extra" ] && [ "${#hash}" -eq 64 ] || return 1
      [ "$(sha256_file "$source/$name")" = "$hash" ] || return 1
      atomic_copy "$source/$name" "$archive/$name" "$uid" "$gid" || return 1
      count=$((count + 1))
    done <"$manifest"
    [ "$count" -gt 0 ] || return 1
    atomic_copy "$manifest" "$archive/manifest.tsv" "$uid" "$gid" || return 1
    atomic_copy "$commit" "$archive/manifest.commit" "$uid" "$gid" || return 1
  done
}

sync_stable() {
  # Camera commits manifest.tsv before manifest.commit.  inotify can observe
  # that valid intermediate state, so wait briefly for the commit boundary
  # instead of permanently retaining the preceding current transaction.
  attempt=0
  while [ "$attempt" -lt 20 ]; do
    if sync_transaction; then
      sync_archives
      return $?
    fi
    attempt=$((attempt + 1))
    sleep 0.1
  done
  log_line "拒绝：等待 by LEICA 拼装事务稳定后仍无法校验"
  return 1
}

# BusyBox inotifyd callback: <events> <watched-path> [changed-name]
if [ "$#" -ge 2 ]; then
  sync_stable
  exit $?
fi

MODDIR="${1:-$MODDIR}"
LOG="$MODDIR/by-leica-sync.log"
[ -x "$BB" ] || { log_line "BusyBox 不可用"; exit 1; }
while [ ! -d "$SRC_PARENT" ]; do sleep 1; done
sync_stable
exec "$BB" inotifyd "$0" "$SRC_PARENT:cwenydm"
