#include <cerrno>
#include <cstdio>
#include <cstring>
#include <dirent.h>
#include <fcntl.h>
#include <sys/inotify.h>
#include <sys/stat.h>
#include <sys/xattr.h>
#include <unistd.h>

// Root-only transport between the vendor camera and the camera app's private
// staging directory. inotify is armed before draining existing captures.
static constexpr const char* SOURCE = "/data/vendor/camera/offlinelog/phoenix_m3_aux";
static constexpr const char* DEST = "/data/user/0/com.android.camera/files/phoenix_m3_aux";
static struct stat owner;
static char context[256];
static ssize_t context_size;

static bool transfer(const char* name) {
    const size_t length = strlen(name);
    if (length < 5 || strcmp(name + length - 4, ".aux")) return true;
    char src[512], dst[512], tmp[520];
    snprintf(src, sizeof(src), "%s/%s", SOURCE, name);
    snprintf(dst, sizeof(dst), "%s/%s", DEST, name);
    snprintf(tmp, sizeof(tmp), "%s.tmp", dst);
    int input = open(src, O_RDONLY | O_CLOEXEC | O_NOFOLLOW);
    if (input < 0) return errno == ENOENT; // Initial drain may already consume a queued event.
    int output = open(tmp, O_WRONLY | O_CREAT | O_EXCL | O_CLOEXEC | O_NOFOLLOW, 0600);
    bool ok = output >= 0;
    if (ok) ok = fchown(output, owner.st_uid, owner.st_gid) == 0 &&
                 fsetxattr(output, "security.selinux", context, context_size, 0) == 0;
    char bytes[65536];
    while (ok) {
        ssize_t count = read(input, bytes, sizeof(bytes));
        if (count < 0 && errno == EINTR) continue;
        if (!count) break;
        if (count < 0) { ok = false; break; }
        for (ssize_t at = 0; at < count;) {
            ssize_t written = write(output, bytes + at, count - at);
            if (written < 0 && errno == EINTR) continue;
            if (written <= 0) { ok = false; break; }
            at += written;
        }
    }
    close(input);
    if (output >= 0 && close(output)) ok = false;
    if (ok) ok = rename(tmp, dst) == 0;
    if (ok) ok = unlink(src) == 0;
    if (!ok) { perror(name); unlink(tmp); return false; }
    printf("aux delivered %s\n", name); fflush(stdout);
    return true;
}

int main() {
    if (stat(DEST, &owner) || (context_size = getxattr(DEST, "security.selinux", context, sizeof(context))) <= 0) {
        perror("aux destination"); return 1;
    }
    int notify = inotify_init1(IN_CLOEXEC);
    if (notify < 0 || inotify_add_watch(notify, SOURCE, IN_MOVED_TO | IN_DELETE_SELF | IN_MOVE_SELF) < 0) {
        perror("aux watch"); return 1;
    }
    DIR* directory = opendir(SOURCE);
    if (!directory) { perror("aux source"); return 1; }
    while (dirent* item = readdir(directory)) if (!transfer(item->d_name)) return 1;
    closedir(directory);
    printf("aux relay ready\n"); fflush(stdout);
    alignas(inotify_event) char events[4096];
    while (true) {
        ssize_t size = read(notify, events, sizeof(events));
        if (size < 0 && errno == EINTR) continue;
        if (size <= 0) { perror("aux events"); return 1; }
        for (ssize_t at = 0; at < size;) {
            const auto* event = reinterpret_cast<const inotify_event*>(events + at);
            if (event->mask & (IN_Q_OVERFLOW | IN_DELETE_SELF | IN_MOVE_SELF | IN_IGNORED)) {
                fprintf(stderr, "aux watch lost: %u\n", event->mask); return 1;
            }
            if ((event->mask & IN_MOVED_TO) && !(event->mask & IN_ISDIR) && !transfer(event->name)) return 1;
            at += sizeof(inotify_event) + event->len;
        }
    }
}
