.class public final Lcom/prometheus/camera/rev/VideoLutCatalog;
.super Ljava/lang/Object;
.source "VideoLutCatalog.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;
    }
.end annotation


# static fields
.field private static final VIDEO:I = 0xa2

.field private static final VIDEO_NONE:I = 0x700


# instance fields
.field private activePhotoId:I

.field private activeRevision:Ljava/lang/String;

.field private activeSlot:I

.field private loader:Ljava/lang/ClassLoader;

.field private nativeVideoOrdinals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activePhotoId:I

    const/16 v0, 0xfe

    .line 25
    iput v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeSlot:I

    return-void
.end method

.method static synthetic access$000(Lcom/prometheus/camera/rev/VideoLutCatalog;I)Z
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->supportedVideo(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/prometheus/camera/rev/VideoLutCatalog;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->selectionComponent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/prometheus/camera/rev/VideoLutCatalog;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->catalog()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/prometheus/camera/rev/VideoLutCatalog;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/prometheus/camera/rev/VideoLutCatalog;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->photoNone()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/prometheus/camera/rev/VideoLutCatalog;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->migrate(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/prometheus/camera/rev/VideoLutCatalog;)I
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->selection()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/prometheus/camera/rev/VideoLutCatalog;I)I
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->publish(I)I

    move-result p0

    return p0
.end method

.method private varargs call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private catalog()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "A9.h"

    const-string v4, "c"

    invoke-direct {p0, v3, v4, v2}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 60
    const-string v5, "a"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 61
    const-string v7, "i3.b"

    invoke-direct {p0, v7}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    filled-new-array {v5, v1, v1, v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v8, v5}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 62
    invoke-direct {p0, v7}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 63
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_2

    :cond_0
    const/4 v11, 0x1

    .line 64
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->photoNone()I

    move-result v4

    if-ne v6, v4, :cond_2

    const/16 v6, 0x700

    :cond_2
    const-string v4, "m"

    invoke-static {v5, v4, v6}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method static hasLut(II)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x700

    if-eq p0, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private migrate(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    const-string v0, "A9.h"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "d"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 139
    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 141
    const-string v3, "c"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v4}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    const-string v3, "m"

    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    const-string v3, "b"

    invoke-static {v1, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 146
    invoke-static {v5, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v1, :cond_2

    .line 147
    const-string p0, "a"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/16 p0, 0x700

    return p0
.end method

.method private mode()I
    .locals 1

    .line 41
    const-string v0, "com.android.camera.module.Y"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static ordinaryVideo(I)Z
    .locals 1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private photoNone()I
    .locals 1

    .line 42
    const-string v0, "i3.b"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "N"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized publish(I)I
    .locals 9

    monitor-enter p0

    .line 101
    :try_start_0
    const-string v0, "com.xiaomi.camera.basic.Global"

    const-string v1, "getApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v3}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 102
    invoke-virtual {p0, v0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->source(Landroid/content/Context;I)Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

    move-result-object v1

    .line 103
    iget-object v3, v1, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->revision:Ljava/lang/String;

    .line 104
    iget v4, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activePhotoId:I

    if-ne v4, p1, :cond_0

    iget-object v4, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeRevision:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeSlot:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return p1

    .line 107
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeSlot:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v5, 0xfd

    if-ne v4, v5, :cond_1

    const/16 v5, 0xfe

    .line 109
    :cond_1
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->open(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x2000

    .line 111
    new-array v6, v6, [B

    .line 112
    :goto_0
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {v4, v6, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 114
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    :cond_3
    :try_start_5
    const-string v0, "si.i"

    const-string v4, "d"

    const-string v6, "/data/vendor/camera/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iput p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activePhotoId:I

    .line 122
    iput-object v3, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeRevision:Ljava/lang/String;

    .line 123
    iput v5, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->activeSlot:I

    .line 124
    const-string v0, "PhoenixVideoLut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "published mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->mode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " photoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vendorId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " lut="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->token:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    monitor-exit p0

    return v5

    .line 119
    :cond_4
    :try_start_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video LUT publication failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 109
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_0
    move-exception p1

    .line 115
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video LUT read failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->token:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private selection()I
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->selectionComponent()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->mode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getComponentValue"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private selectionComponent()Ljava/lang/Object;
    .locals 5

    .line 129
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->mode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "r2.E"

    const-string v2, "q"

    invoke-direct {p0, v1, v2, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v2, "a"

    goto :goto_0

    :cond_0
    const-string v2, "j"

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "g2.a"

    invoke-direct {p0, v4, v2, v3}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    const-string v1, "v2.c0"

    :goto_1
    invoke-direct {p0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "x"

    invoke-static {v2, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private supportedVideo(I)Z
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->ordinaryVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "com.android.camera.data.data.w"

    const-string v1, "j0"

    invoke-direct {p0, v0, v1, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private type(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 4

    .line 156
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 157
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    .line 158
    new-instance p1, Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/VideoLutCover;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Lcom/prometheus/camera/rev/VideoLutCover;->install(Ljava/lang/ClassLoader;)V

    .line 159
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    const-class v0, Landroid/view/View;

    new-instance v1, Lcom/prometheus/camera/rev/VideoLutCatalog$1;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$1;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "y9.b"

    const-string v2, "initView"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 167
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    new-instance v0, Lcom/prometheus/camera/rev/VideoLutCatalog$2;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$2;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "A9.h"

    const-string v2, "d"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 175
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/rev/VideoLutCatalog$3;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$3;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "v2.c0"

    const-string v2, "o"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 180
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutCatalog$4;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$4;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.android.camera.data.data.c"

    const-string v3, "getComponentValue"

    invoke-static {v2, p1, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 192
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/VideoLutCatalog$5;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$5;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "isSwitchOn"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 199
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->loader:Ljava/lang/ClassLoader;

    new-instance v0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$6;-><init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "com.android.camera.data.data.j"

    const-string v1, "Z"

    invoke-static {v0, p1, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 206
    const-string p0, "PhoenixVideoLut"

    const-string p1, "installed SDR video shared LUT catalog modes=162,164,180"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method isLut(I)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->photoNone()I

    move-result p0

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->hasLut(II)Z

    move-result p0

    return p0
.end method

.method isVideo()Z
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->mode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->supportedVideo(I)Z

    move-result p0

    return p0
.end method

.method needsVideoCover(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->isLut(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->nativeVideoOrdinals:Ljava/util/HashSet;

    if-nez v0, :cond_2

    .line 48
    const-string v0, "A9.h"

    .line 49
    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "d"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    invoke-static {v0, v3, v1}, Lde/robv/android/xposed/XposedBridge;->invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "b"

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_1
    iput-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->nativeVideoOrdinals:Ljava/util/HashSet;

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog;->nativeVideoOrdinals:Ljava/util/HashSet;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method source(Landroid/content/Context;I)Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;
    .locals 3

    .line 89
    const-string v0, "o3.d"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr p2, v1

    .line 90
    aget-object p2, v0, p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v0, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "vi.e0"

    const-string v1, "g"

    invoke-direct {p0, v0, v1, p2}, Lcom/prometheus/camera/rev/VideoLutCatalog;->call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 91
    const-string v0, "j"

    invoke-static {p2, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 93
    const-string v0, "prometheus_gallery_filter_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "com.prometheus.camera.filters.CustomLutStore"

    invoke-direct {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 95
    const-string v0, "pathForToken"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 97
    :goto_0
    new-instance p1, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

    invoke-direct {p1, p2, p0}, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
