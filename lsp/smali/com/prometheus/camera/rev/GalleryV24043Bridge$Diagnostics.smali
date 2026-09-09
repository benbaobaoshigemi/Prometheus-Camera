.class final Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;
.super Ljava/lang/Object;
.source "GalleryV24043Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/rev/GalleryV24043Bridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Diagnostics"
.end annotation


# static fields
.field private static final BUFFER:Ljava/lang/StringBuilder;

.field private static final LOCK:Ljava/lang/Object;

.field private static final NAME:Ljava/lang/String;

.field private static catalogLogged:Z

.field private static file:Ljava/io/File;

.field private static listPublished:Z

.field private static uiProbeInstalled:Z

.field private static uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->LOCK:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusNRV-mediaeditor-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 38
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->NAME:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->BUFFER:Ljava/lang/StringBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/lang/StringBuilder;[I)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->scan(Landroid/view/View;Ljava/lang/StringBuilder;[I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->listPublished:Z

    return v0
.end method

.method static add(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/prometheus/camera/rev/PhoenixLocalLogGate;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->BUFFER:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss.SSS"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 50
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->flush()V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static addThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 53
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 54
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    return-void
.end method

.method static catalogOnce(Ljava/lang/String;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-boolean v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->catalogLogged:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->catalogLogged:Z

    sput-boolean v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->listPublished:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catalog-hook "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static currentApplication()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 128
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 129
    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private static flush()V
    .locals 7

    .line 98
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->BUFFER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-static {}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->currentApplication()Ljava/lang/Object;

    move-result-object v3

    .line 102
    sget-object v4, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uri:Landroid/net/Uri;

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 103
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v5, "_display_name"

    sget-object v6, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v5, "mime_type"

    const-string v6, "text/plain"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v5, "relative_path"

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object v5, v3

    check-cast v5, Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uri:Landroid/net/Uri;

    .line 111
    :cond_1
    sget-object v4, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 112
    check-cast v3, Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uri:Landroid/net/Uri;

    const-string v5, "wa"

    .line 113
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_2

    .line 112
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 114
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    .line 118
    :catchall_2
    :cond_5
    :try_start_4
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->file:Ljava/io/File;

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 119
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->NAME:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->file:Ljava/io/File;

    .line 121
    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->file:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 122
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 123
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 124
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->BUFFER:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_3
    move-exception v1

    .line 121
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :goto_3
    return-void
.end method

.method static installUiProbe()V
    .locals 3

    .line 61
    sget-object v0, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uiProbeInstalled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->uiProbeInstalled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    const-class v0, Landroid/app/Activity;

    const-string v1, "onResume"

    new-instance v2, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics$1;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics$1;-><init>()V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 80
    const-string v0, "ui probe installed Activity.onResume"

    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 81
    const-string v1, "ui probe install failed"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->addThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private static scan(Landroid/view/View;Ljava/lang/StringBuilder;[I)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 84
    aget v1, p2, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 86
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 88
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 89
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    aget v3, p2, v2

    add-int/2addr v3, v2

    aput v3, p2, v2

    .line 90
    const-string v3, "\u66f4\u591a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "more"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x2

    aget v4, p2, v3

    add-int/2addr v4, v2

    aput v4, p2, v3

    .line 91
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x4b0

    if-ge v2, v3, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_4
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    check-cast p0, Landroid/view/ViewGroup;

    .line 95
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->scan(Landroid/view/View;Ljava/lang/StringBuilder;[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method static start()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package=com.miui.mediaeditor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/prometheus/camera/rev/GalleryV24043Bridge$Diagnostics;->add(Ljava/lang/String;)V

    return-void
.end method
