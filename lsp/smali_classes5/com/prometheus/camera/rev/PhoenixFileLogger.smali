.class public final Lcom/prometheus/camera/rev/PhoenixFileLogger;
.super Ljava/lang/Object;
.source "PhoenixFileLogger.java"


# static fields
.field private static final NAME:Ljava/lang/String;

.field private static final PENDING:Ljava/lang/StringBuilder;

.field private static final SETTING:Ljava/lang/String; = "phoenix_local_log_enabled"

.field private static failureReported:Z

.field private static sessionGeneration:J

.field private static uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 23
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixFileLogger;->NAME:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/prometheus/camera/rev/PhoenixFileLogger;->PENDING:Ljava/lang/StringBuilder;

    const-wide/16 v0, -0x1

    .line 27
    sput-wide v0, Lcom/prometheus/camera/rev/PhoenixFileLogger;->sessionGeneration:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized append(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/prometheus/camera/rev/PhoenixFileLogger;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->enabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->generation()J

    move-result-wide v1

    .line 47
    sget-wide v3, Lcom/prometheus/camera/rev/PhoenixFileLogger;->sessionGeneration:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 48
    sput-object v3, Lcom/prometheus/camera/rev/PhoenixFileLogger;->uri:Landroid/net/Uri;

    .line 49
    sget-object v3, Lcom/prometheus/camera/rev/PhoenixFileLogger;->PENDING:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 50
    sput-boolean v4, Lcom/prometheus/camera/rev/PhoenixFileLogger;->failureReported:Z

    .line 51
    sput-wide v1, Lcom/prometheus/camera/rev/PhoenixFileLogger;->sessionGeneration:J

    .line 53
    :cond_1
    sget-object v1, Lcom/prometheus/camera/rev/PhoenixFileLogger;->PENDING:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->currentApplication()Landroid/app/Application;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_2

    .line 56
    monitor-exit v0

    return-void

    .line 58
    :cond_2
    :try_start_2
    sget-object v2, Lcom/prometheus/camera/rev/PhoenixFileLogger;->uri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 59
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 60
    const-string v3, "_display_name"

    sget-object v5, Lcom/prometheus/camera/rev/PhoenixFileLogger;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "mime_type"

    const-string v5, "text/plain"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "relative_path"

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/prometheus/camera/rev/PhoenixFileLogger;->uri:Landroid/net/Uri;

    .line 65
    :cond_3
    sget-object v2, Lcom/prometheus/camera/rev/PhoenixFileLogger;->uri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_4

    monitor-exit v0

    return-void

    .line 66
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/prometheus/camera/rev/PhoenixFileLogger;->uri:Landroid/net/Uri;

    const-string v3, "wa"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p0, :cond_5

    .line 67
    monitor-exit v0

    return-void

    .line 68
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 69
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 72
    :try_start_5
    sget-boolean v1, Lcom/prometheus/camera/rev/PhoenixFileLogger;->failureReported:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 73
    sput-boolean v1, Lcom/prometheus/camera/rev/PhoenixFileLogger;->failureReported:Z

    .line 74
    const-string v1, "PhoenixFileLogger"

    const-string v2, "local log write failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :cond_6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static append(Ljava/lang/Throwable;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 81
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return-void
.end method

.method private static currentApplication()Landroid/app/Application;
    .locals 3

    const/4 v0, 0x0

    .line 123
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method

.method public static enabled()Z
    .locals 3

    .line 32
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "phoenix_local_log_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return v0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 110
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->stack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return v0
.end method

.method public static generation()J
    .locals 4

    .line 39
    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phoenix_log_generation"

    .line 40
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return v0
.end method

.method private static stack(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 117
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return v0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    .line 98
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->stack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->append(Ljava/lang/String;)V

    return v0
.end method
