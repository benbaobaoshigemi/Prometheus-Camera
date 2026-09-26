.class final Lcom/prometheus/camera/rev/PhoenixLogCleaner;
.super Ljava/lang/Object;
.source "PhoenixLogCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanupScript(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/storage/emulated/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/Download"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set -eu\ndir=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'\n[ -d \"$dir\" ] || { printf \'0\\n\'; exit 0; }\ncount=0\nfor path in \"$dir\"/Phoenix-*.log \"$dir\"/PrometheusNRV-mediaeditor-*.log; do\n  [ -f \"$path\" ] && [ ! -L \"$path\" ] || continue\n  name=${path##*/}\n  printf \'%s\\n\' \"$name\" | grep -Eq \'^(Phoenix-[0-9]+-[0-9]{8}-[0-9]{6}|PrometheusNRV-mediaeditor-[0-9]{8}-[0-9]{6})( \\([0-9]+\\))?\\.log$\' || continue\n  rm -- \"$path\"\n  count=$((count + 1))\ndone\nprintf \'%s\\n\' \"$count\"\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid Android user"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static removeOwnedLogs(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "printf \'PHOENIX_ROOT_READY\\n\'\n"

    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "su"

    const-string v3, "-c"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixLogCleaner;->cleanupScript(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x14

    .line 42
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x400

    .line 48
    :try_start_1
    new-array v2, v2, [B

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 51
    :cond_1
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "PHOENIX_ROOT_READY"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x12

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    if-nez p0, :cond_2

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 55
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ROOT cleanup failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_3
    new-instance p0, Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "su did not authorize cleanup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 47
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    .line 43
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 44
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ROOT log cleanup timed out"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;

    const-string v1, "Cannot start su"

    invoke-direct {v0, v1, p0}, Lcom/prometheus/camera/rev/PhoenixLogCleaner$RootAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
