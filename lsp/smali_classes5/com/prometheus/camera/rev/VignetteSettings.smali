.class public final Lcom/prometheus/camera/rev/VignetteSettings;
.super Ljava/lang/Object;
.source "VignetteSettings.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;,
        Lcom/prometheus/camera/rev/VignetteSettings$Work;
    }
.end annotation


# static fields
.field static final DELETE:Ljava/lang/String; = "phoenix_vignette_delete"

.field static final ENABLE:Ljava/lang/String; = "phoenix_vignette_enabled"

.field static final ENTRY:Ljava/lang/String; = "phoenix_vignette_settings"

.field static final EXP:Ljava/lang/String; = "com.prometheus.camera.filters.VignetteExperimentalFragment"

.field static final IMPORT:Ljava/lang/String; = "phoenix_vignette_import"

.field static final MAIN:Ljava/lang/String; = "com.prometheus.camera.filters.VignettePreferenceFragment"

.field static final PICK:I = 0x69e0

.field static final PROTECT:Ljava/lang/String; = "phoenix_vignette_protect"

.field static final RANGE:Ljava/lang/String; = "phoenix_vignette_range"

.field static final RANGE_MAX:I = 0x96

.field static final RANGE_MIN:I = 0x0

.field static final SHAPE:Ljava/lang/String; = "phoenix_vignette_shape"

.field static final STRENGTH:Ljava/lang/String; = "phoenix_vignette_strength"

.field static app:Landroid/content/Context;

.field static volatile busy:Z

.field static volatile desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

.field static final fragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final io:Ljava/util/concurrent/ExecutorService;

.field static loader:Ljava/lang/ClassLoader;

.field static final owners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static prefs:Landroid/content/SharedPreferences;

.field static tracking:Z

.field static ui:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->io:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->owners:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->fragments:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->pref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lcom/prometheus/camera/rev/VignetteSettings;->owners:Ljava/util/Map;

    invoke-interface {p3, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "j0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method static adjust(Ljava/lang/Object;IZIZ)V
    .locals 10

    .line 277
    sget-boolean v0, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;-><init>(Ljava/lang/Object;IZIZ)V

    sput-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    .line 279
    sget-object v8, Lcom/prometheus/camera/rev/VignetteSettings;->io:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;

    move-object v1, v9

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda11;-><init>(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;IZIZLjava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static apply(Ljava/lang/Object;IZIZZLcom/prometheus/camera/rev/VignetteSettings$Work;)V
    .locals 8

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 308
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->adjust(Ljava/lang/Object;IZIZ)V

    return-void

    .line 309
    :cond_0
    new-instance v0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;

    move-object v1, v0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda0;-><init>(ZIZIZLcom/prometheus/camera/rev/VignetteSettings$Work;)V

    const-string p1, "\u5df2\u5e94\u7528"

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/VignetteSettings;->operation(Ljava/lang/Object;Lcom/prometheus/camera/rev/VignetteSettings$Work;Ljava/lang/String;)V

    return-void
.end method

.method static asset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v1, 0x1000

    .line 375
    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 374
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method static atomic(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/file/CopyOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    :catchall_0
    move-exception p0

    .line 352
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method static bind(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 244
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->owners:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    const-string v1, "m"

    invoke-static {p0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 246
    sget-boolean v1, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->normalControl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 247
    :goto_0
    const-string v4, "phoenix_vignette_strength"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "phoenix_vignette_range"

    if-nez v4, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 265
    :cond_3
    const-string v0, "phoenix_vignette_protect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "phoenix_vignette_shape"

    const-string v6, "phoenix_vignette_enabled"

    if-nez v4, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_4
    const v4, 0x1020001

    .line 266
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u9ad8\u5149\u4fdd\u62a4"

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u6697\u89d2\u5f62\u72b6\u8c03\u6574"

    goto :goto_1

    :cond_6
    const-string v0, "\u542f\u7528\u81ea\u5b9a\u4e49\u7740\u8272\u5668"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_7

    .line 268
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :cond_8
    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_8

    .line 248
    :cond_9
    :goto_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v2, 0x102000d

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const/4 v3, 0x0

    .line 250
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    if-eqz p0, :cond_a

    const/16 v3, 0x96

    goto :goto_4

    :cond_a
    const/16 v3, 0x258

    .line 251
    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    if-eqz p0, :cond_b

    .line 252
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v3

    goto :goto_5

    :cond_b
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v3

    invoke-static {v3}, Lcom/prometheus/camera/rev/VignetteSettings;->toPosition(I)I

    move-result v3

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    if-eqz p0, :cond_c

    .line 253
    const-string v3, "\u6697\u89d2\u8303\u56f4"

    goto :goto_6

    :cond_c
    const-string v3, "\u6697\u89d2\u5f3a\u5ea6"

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    const v1, 0x1020010

    .line 255
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v3

    goto :goto_7

    :cond_d
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v3

    :goto_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/prometheus/camera/rev/VignetteSettings$9;-><init>(ZLandroid/widget/TextView;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_e
    :goto_8
    return-void
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 157
    const-string v0, "androidx.preference.PreferenceCategory"

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 158
    const-string v0, "a0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static click(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 3

    .line 123
    const-string v0, "androidx.preference.Preference$d"

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "f"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static ctx(Ljava/lang/Object;)Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "requireContext"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method static dir()Ljava/io/File;
    .locals 3

    .line 63
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "phoenix-vignette"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static experimental()Z
    .locals 3

    .line 68
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static fileName()Ljava/lang/String;
    .locals 3

    .line 69
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static formula(IZIZ)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p3, :cond_1

    const-string p3, "uv.x = (uv.x - 0.5) * 0.75 + 0.5;\n"

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "float d = distance(uv, vec2(0.5));\n"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x64

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 345
    const-string v4, "%.2f"

    if-ne p2, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "d *= "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    int-to-double v5, p2

    div-double/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, v4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "float m = smoothstep(PREFIX(SmoothStartValue), PREFIX(Falloff) * PREFIX(SmoothEndValue), d * darkStrength);\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 347
    const-string p1, "float y = dot(color.rgb, vec3(0.2125, 0.7154, 0.0721));\nfloat h = 1.0 / pow(100.0, 1.0-y);\nfloat gain = (1.0-h)*m+h;\n"

    goto :goto_2

    :cond_3
    const-string p1, "float gain = m;\n"

    .line 348
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "return color * pow(max(gain, 0.0), "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    int-to-double v0, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ");\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 342
    :cond_4
    :goto_3
    const-string p0, "return color;\n"

    return-object p0
.end method

.method static importFile(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 1

    .line 318
    new-instance v0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda10;-><init>(Landroid/net/Uri;)V

    const-string p1, "\u5df2\u5bfc\u5165\uff0c\u53ef\u5f00\u542f\u81ea\u5b9a\u4e49\u7740\u8272\u5668"

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/VignetteSettings;->operation(Ljava/lang/Object;Lcom/prometheus/camera/rev/VignetteSettings$Work;Ljava/lang/String;)V

    return-void
.end method

.method static inject(Ljava/lang/Object;)V
    .locals 10

    .line 137
    const-string v0, "j0"

    const-string v1, "g"

    const-string v2, "phoenix_vignette_settings"

    const-string v3, "k0"

    :try_start_0
    const-string v4, "mPreferenceGroup"

    invoke-static {p0, v4}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 138
    const-string v5, "category_prometheus_classic_controls"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 140
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u5f95\u5361\u7ecf\u5178\u6697\u89d2\u7740\u8272\u5668"

    const-string v6, ""

    invoke-static {v3, v2, v4, v6}, Lcom/prometheus/camera/rev/VignetteSettings;->pref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    new-instance v3, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/prometheus/camera/rev/VignetteSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    const-string v3, "f0"

    invoke-static {v5, v3}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v6, "n0"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 147
    invoke-static {v6, v1, v4}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v0, v8}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v8, "pref_prometheus_classic_style"

    const-string v9, "m"

    invoke-static {v6, v9}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x2

    .line 149
    invoke-static {v2, v1, v7}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 153
    const-string p0, "PhoenixVignette"

    const-string v0, "entry inserted below classic style"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 152
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Classic style anchor missing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Classic controls category missing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 154
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->log(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static install()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    const-string v0, "com.prometheus.camera.filters.VignettePreferenceFragment"

    const-string v1, "com.prometheus.camera.filters.VignetteExperimentalFragment"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    .line 75
    sget-object v3, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 76
    new-instance v3, Lcom/prometheus/camera/rev/VignetteSettings$2;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/VignetteSettings$2;-><init>()V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getFragmentTitle"

    invoke-static {v2, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 84
    new-instance v3, Lcom/prometheus/camera/rev/VignetteSettings$3;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/VignetteSettings$3;-><init>()V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "addCurrentPreferences"

    invoke-static {v2, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 87
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    new-instance v6, Lcom/prometheus/camera/rev/VignetteSettings$4;

    invoke-direct {v6}, Lcom/prometheus/camera/rev/VignetteSettings$4;-><init>()V

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onActivityResult"

    invoke-static {v2, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$5;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/VignetteSettings$5;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.fragment.settings.b"

    const-string v3, "initializeActivity"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 99
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$6;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lcom/prometheus/camera/rev/VignetteSettings$6;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v3, "registerPreferenceListener"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 105
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    .line 106
    const-string v1, "androidx.preference.l"

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/prometheus/camera/rev/VignetteSettings$7;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/VignetteSettings$7;-><init>()V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 105
    const-string v3, "miuix.preference.BasePreference"

    const-string v4, "G"

    invoke-static {v3, v0, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 109
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    .line 110
    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/prometheus/camera/rev/VignetteSettings$8;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/VignetteSettings$8;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 109
    const-string v2, "miuix.preference.CheckBoxPreference"

    invoke-static {v2, v0, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method static isPage(Ljava/lang/Object;)Z
    .locals 2

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.prometheus.camera.filters.VignettePreferenceFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.prometheus.camera.filters.VignetteExperimentalFragment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method static synthetic lambda$adjust$7(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 289
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    sget-boolean p0, Lcom/prometheus/camera/rev/VignetteSettings;->tracking:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->refresh()V

    :cond_0
    if-eqz p1, :cond_1

    .line 290
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u672a\u5e94\u7528\uff1a"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/prometheus/camera/rev/VignetteSettings;->message(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$adjust$8(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;IZIZLjava/lang/Object;)V
    .locals 5

    const-string v0, "applied strength="

    .line 280
    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-eq v1, p0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 283
    :try_start_0
    const-string v3, "apply"

    invoke-static {p1, p2, p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->formula(IZIZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/prometheus/camera/rev/VignetteSettings;->request(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 284
    invoke-static {p1, p2, p3, p4, v3}, Lcom/prometheus/camera/rev/VignetteSettings;->save(IZIZZ)V

    .line 285
    const-string v3, "PhoenixVignette"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " protect="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " range="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " shape="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " latencyMs="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-static {p1}, Lcom/prometheus/camera/rev/VignetteSettings;->log(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 288
    :goto_0
    sget-object p2, Lcom/prometheus/camera/rev/VignetteSettings;->ui:Landroid/os/Handler;

    new-instance p3, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1, p5}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda5;-><init>(Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$apply$11(ZIZIZLcom/prometheus/camera/rev/VignetteSettings$Work;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v2

    const-string v3, "custom.glsl"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->formula(IZIZ)Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    const-string v1, "apply"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->request(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {p1, p2, p3, p4, p0}, Lcom/prometheus/camera/rev/VignetteSettings;->save(IZIZZ)V

    if-eqz p5, :cond_1

    .line 313
    invoke-interface {p5}, Lcom/prometheus/camera/rev/VignetteSettings$Work;->run()V

    .line 314
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "applied strength="

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " protect="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " range="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " shape="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " custom="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoenixVignette"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$click$0(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hashCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "equals"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    aget-object p2, p3, p0

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 128
    :cond_3
    const-string p0, "VignettePreferenceListener"

    return-object p0
.end method

.method static synthetic lambda$importFile$12(Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 321
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 322
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ".glsl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 325
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 326
    sget-object v3, Lcom/prometheus/camera/rev/VignetteSettings;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_7

    const/16 v3, 0x1000

    .line 328
    :try_start_1
    new-array v3, v3, [B

    .line 329
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/16 v5, 0x4000

    if-gt v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u6587\u4ef6\u8d85\u8fc7 16 KiB"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p0, :cond_3

    .line 330
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 331
    :cond_3
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 332
    const-string v0, "\ufeff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 333
    :cond_4
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->validate(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v0

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result v3

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v4

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/prometheus/camera/rev/VignetteSettings;->formula(IZIZ)Ljava/lang/String;

    move-result-object v0

    const-string v3, "apply"

    invoke-static {v3, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->request(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v3

    const-string v4, "custom.glsl"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/VignetteSettings;->atomic(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    sget-object p0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "name"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "enabled"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "GLSL import compiled and saved: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoenixVignette"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot save imported file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 327
    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u8bfb\u53d6\u6587\u4ef6"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p0, :cond_8

    .line 326
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v0

    .line 324
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "\u8bf7\u9009\u62e9 .glsl \u6587\u4ef6"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_a
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u8bfb\u53d6\u6587\u4ef6\u540d"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_b

    .line 320
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw p0
.end method

.method static synthetic lambda$inject$1(Ljava/lang/Object;)V
    .locals 1

    .line 142
    const-string v0, "com.prometheus.camera.filters.VignettePreferenceFragment"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->navigate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$operation$10(Lcom/prometheus/camera/rev/VignetteSettings$Work;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 298
    :try_start_0
    invoke-interface {p0}, Lcom/prometheus/camera/rev/VignetteSettings$Work;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->log(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 300
    :goto_0
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p0, p2}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$operation$9(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    sput-boolean v0, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->refresh()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u672a\u5e94\u7528\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p0, p2}, Lcom/prometheus/camera/rev/VignetteSettings;->message(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$populate$3(Ljava/lang/Object;)V
    .locals 1

    .line 202
    const-string v0, "com.prometheus.camera.filters.VignetteExperimentalFragment"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->navigate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$populate$4(Ljava/lang/Object;)V
    .locals 2

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x69e0

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "startActivityForResult"

    invoke-static {p0, v1, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$populate$5()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v1

    const-string v2, "custom.glsl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 214
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot save file state"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$populate$6(Ljava/lang/Object;)V
    .locals 7

    .line 212
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v1

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result v2

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v3

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result v4

    new-instance v6, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda6;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/rev/VignetteSettings;->apply(Ljava/lang/Object;IZIZZLcom/prometheus/camera/rev/VignetteSettings$Work;)V

    return-void
.end method

.method static synthetic lambda$toggle$2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 172
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object p3, p4, v1

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 173
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v3

    const-string p3, "phoenix_vignette_protect"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move v4, p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result p3

    move v4, p3

    :goto_0
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v5

    .line 174
    const-string p3, "phoenix_vignette_shape"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    move v6, p2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result p3

    move v6, p3

    :goto_1
    const-string p3, "phoenix_vignette_enabled"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result p2

    :goto_2
    move v7, p2

    const/4 v8, 0x0

    move-object v2, p0

    .line 173
    invoke-static/range {v2 .. v8}, Lcom/prometheus/camera/rev/VignetteSettings;->apply(Ljava/lang/Object;IZIZZLcom/prometheus/camera/rev/VignetteSettings$Work;)V

    .line 175
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 177
    :cond_3
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hashCode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 178
    :cond_4
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "equals"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    aget-object p1, p4, p0

    if-ne p2, p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, p0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 179
    :cond_6
    const-string p0, "VignetteChangeListener"

    return-object p0
.end method

.method static log(Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    const-string v0, "PhoenixVignette"

    const-string v1, "operation failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static message(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static navigate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 132
    const-string v0, "com.prometheus.camera.filters.VignetteExperimentalFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.camera.fragment.settings.VignetteExperimentalActivity"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.camera.fragment.settings.PreferenceExtraActivity"

    .line 133
    :goto_0
    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "goToActivity"

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static normalControl(Ljava/lang/String;)Z
    .locals 1

    .line 241
    const-string v0, "phoenix_vignette_strength"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "phoenix_vignette_protect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "phoenix_vignette_range"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "phoenix_vignette_shape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method static operation(Ljava/lang/Object;Lcom/prometheus/camera/rev/VignetteSettings$Work;Ljava/lang/String;)V
    .locals 2

    .line 295
    sget-boolean v0, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->refresh()V

    .line 296
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->io:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0, p2}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda1;-><init>(Lcom/prometheus/camera/rev/VignetteSettings$Work;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static populate(Ljava/lang/Object;)V
    .locals 11

    .line 188
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->fragments:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v0, "mPreferenceGroup"

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    const-string v1, "phoenix_vignette_controls"

    invoke-static {p0, v0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.prometheus.camera.filters.VignettePreferenceFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "phoenix_vignette_strength"

    const-string v3, "\u6697\u89d2\u5f3a\u5ea6"

    invoke-static {p0, v1, v9, v3, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lcom/prometheus/camera/rev/VignetteSettings;->res(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v10, "U"

    invoke-static {v2, v10, v3}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 194
    const-string v6, "\u5173\u95ed\u9ad8\u5149\u4fdd\u62a4\u4ee5\u5b9e\u73b0\u66f4\u7b26\u5408\u7269\u7406\u7684\u6548\u679c"

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result v7

    const-string v4, "phoenix_vignette_protect"

    const-string v5, "\u9ad8\u5149\u4fdd\u62a4"

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings;->toggle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 195
    const-string v1, "phoenix_vignette_geometry"

    invoke-static {p0, v0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 196
    const-string v1, "\u6697\u89d2\u5f62\u6001\u8c03\u8282"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "e0"

    invoke-static {v3, v2, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phoenix_vignette_range"

    const-string v4, "\u6697\u89d2\u8303\u56f4"

    invoke-static {p0, v3, v2, v4, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/prometheus/camera/rev/VignetteSettings;->res(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v10, v2}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 199
    const-string v6, "\u539f\u751f\u72b6\u6001\u4e3a\u5f00\u542f\uff0c\u5173\u95ed\u66f4\u7b26\u5408\u7269\u7406"

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result v7

    const-string v4, "phoenix_vignette_shape"

    const-string v5, "\u6697\u89d2\u5f62\u72b6\u8c03\u6574"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings;->toggle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 200
    const-string v1, "phoenix_vignette_experimental"

    invoke-static {p0, v0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->category(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    const-string v1, "\u5b9e\u9a8c\u6027"

    const-string v2, "\u5bfc\u5165\u81ea\u5b9a\u4e49 GLSL \u7740\u8272\u5668"

    const-string v3, "phoenix_vignette_experimental_entry"

    invoke-static {p0, v0, v3, v1, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 204
    :cond_0
    const-string v6, ""

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v7

    const-string v4, "phoenix_vignette_enabled"

    const-string v5, "\u542f\u7528\u81ea\u5b9a\u4e49\u7740\u8272\u5668"

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/prometheus/camera/rev/VignetteSettings;->toggle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 205
    const-string v0, "\u5bfc\u5165 GLSL \u6587\u4ef6"

    const-string v2, "UTF-8 \u51fd\u6570\u4f53\uff0c\u6700\u5927 16 KiB"

    const-string v3, "phoenix_vignette_import"

    invoke-static {p0, v1, v3, v0, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 206
    new-instance v2, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 210
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u672a\u5bfc\u5165"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "phoenix_vignette_file"

    const-string v3, "\u5f53\u524d\u6587\u4ef6"

    invoke-static {p0, v1, v2, v3, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    const-string v0, "\u5220\u9664"

    const-string v2, ""

    const-string v3, "phoenix_vignette_delete"

    invoke-static {p0, v1, v3, v0, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VignetteSettings;->click(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 217
    :goto_1
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->refresh()V

    return-void
.end method

.method static pref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 117
    const-string v0, "miuix.preference.BasePreference"

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 118
    const-string v0, "a0"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "e0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "c0"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string p1, "t"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-object p0
.end method

.method static protect()Z
    .locals 3

    .line 65
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "protect"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->protect:Z

    :goto_0
    return v0
.end method

.method static range()I
    .locals 3

    .line 66
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "range"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->range:I

    :goto_0
    return v0
.end method

.method static refresh()V
    .locals 12

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->fragments:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 221
    const-string v2, "mPreferenceGroup"

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    const-string v8, "phoenix_vignette_delete"

    const-string v9, "phoenix_vignette_file"

    const-string v2, "phoenix_vignette_strength"

    const-string v3, "phoenix_vignette_protect"

    const-string v4, "phoenix_vignette_range"

    const-string v5, "phoenix_vignette_shape"

    const-string v6, "phoenix_vignette_enabled"

    const-string v7, "phoenix_vignette_import"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    .line 224
    const-string v6, "k0"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_5

    .line 225
    :cond_2
    sget-boolean v7, Lcom/prometheus/camera/rev/VignetteSettings;->busy:Z

    xor-int/lit8 v7, v7, 0x1

    .line 226
    invoke-static {v5}, Lcom/prometheus/camera/rev/VignetteSettings;->normalControl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    and-int/2addr v7, v8

    .line 227
    :cond_3
    const-string v8, "phoenix_vignette_enabled"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "phoenix_vignette_delete"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    and-int/2addr v7, v9

    .line 228
    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "Y"

    invoke-static {v6, v9, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v7, "phoenix_vignette_strength"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "c0"

    if-nez v9, :cond_6

    const-string v9, "phoenix_vignette_range"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 230
    :cond_6
    sget-boolean v9, Lcom/prometheus/camera/rev/VignetteSettings;->tracking:Z

    if-eqz v9, :cond_7

    goto/16 :goto_5

    .line 231
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->strength()I

    move-result v7

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->range()I

    move-result v7

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v10, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_9
    const-string v7, "phoenix_vignette_protect"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "setChecked"

    if-nez v9, :cond_a

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_a
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->protect()Z

    move-result v7

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->experimental()Z

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_c
    const-string v7, "phoenix_vignette_shape"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->shape()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v11, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_d
    const-string v7, "phoenix_vignette_file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "\u672a\u5bfc\u5165"

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->fileName()Ljava/lang/String;

    move-result-object v5

    :goto_4
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v10, v5}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_f
    const-string v5, "B"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v5, v7}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method static request(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 357
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v2

    const-string v3, "request.glsl"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/prometheus/camera/rev/VignetteSettings;->atomic(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v1

    const-string v2, "request"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/VignetteSettings;->atomic(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/16 v3, 0x1f40

    add-long/2addr p0, v3

    .line 360
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/prometheus/camera/rev/VignetteSettings;->dir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ack"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-gez v3, :cond_3

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OK"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-wide/16 v3, 0x32

    .line 369
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 371
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u6a21\u5757\u672a\u54cd\u5e94\uff0c\u8bf7\u68c0\u67e5 Phoenix \u6a21\u5757\u662f\u5426\u542f\u7528"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static res(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "layout"

    const-string v1, "com.android.camera"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    .line 185
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing MIUIX layout "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static save(IZIZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "strength"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "protect"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "range"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "shape"

    .line 305
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "enabled"

    invoke-interface {p0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot save settings"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static shader(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    .line 409
    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 410
    aget p1, p1, v1

    if-eqz p1, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLSL \u7f16\u8bd1\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static shape()Z
    .locals 3

    .line 67
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "shape"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->shape:Z

    :goto_0
    return v0
.end method

.method static strength()I
    .locals 3

    .line 64
    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->desired:Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prometheus/camera/rev/VignetteSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "strength"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/prometheus/camera/rev/VignetteSettings$Adjustment;->strength:I

    :goto_0
    return v0
.end method

.method static title(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.prometheus.camera.filters.VignetteExperimentalFragment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u5b9e\u9a8c\u6027"

    goto :goto_0

    :cond_0
    const-string p0, "\u5f95\u5361\u7ecf\u5178\u6697\u89d2\u7740\u8272\u5668"

    :goto_0
    return-object p0
.end method

.method static toPosition(I)I
    .locals 1

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method static toStrength(I)I
    .locals 1

    const/16 v0, 0x190

    if-gt p0, v0, :cond_0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    .line 274
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, -0xc8

    :goto_0
    return p0
.end method

.method static toggle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3

    .line 164
    const-string v0, "miuix.preference.CheckBoxPreference"

    sget-object v1, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    const-string v1, "a0"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e0"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v1, p3}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "c0"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0, p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string p3, "t"

    const/4 p4, 0x0

    invoke-static {v0, p3, p4}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 167
    invoke-static {p0}, Lcom/prometheus/camera/rev/VignetteSettings;->ctx(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object p3

    const-string p4, "phoenix_vignette_switch"

    invoke-static {p3, p4}, Lcom/prometheus/camera/rev/VignetteSettings;->res(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const-string p4, "V"

    invoke-static {v0, p4, p3}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 168
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "setChecked"

    invoke-static {v0, p4, p3}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string p3, "androidx.preference.Preference$c"

    sget-object p4, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    invoke-static {p3, p4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    .line 170
    sget-object p4, Lcom/prometheus/camera/rev/VignetteSettings;->loader:Ljava/lang/ClassLoader;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    new-instance p5, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;

    invoke-direct {p5, p0, p2}, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p3, p5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "e"

    invoke-static {v0, p3, p2}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    sget-object p2, Lcom/prometheus/camera/rev/VignetteSettings;->owners:Ljava/util/Map;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "j0"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/prometheus/camera/rev/VignetteSettings;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static validate(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "GLSL \u94fe\u63a5\u5931\u8d25\uff1a"

    .line 380
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_e

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x4000

    if-gt v3, v4, :cond_e

    .line 381
    const-string v3, "phoenix/vignette-template.glsl"

    invoke-static {v3}, Lcom/prometheus/camera/rev/VignetteSettings;->asset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/*PHOENIX_BODY*/"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v11

    .line 383
    sget-object v12, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    sget-object v13, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const/4 v14, 0x2

    .line 384
    new-array v3, v14, [I

    const/4 v15, 0x1

    .line 385
    invoke-static {v11, v3, v2, v3, v15}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 388
    :try_start_0
    new-array v10, v15, [Landroid/opengl/EGLConfig;

    new-array v9, v15, [I

    const/16 v8, 0x3038

    const/16 v3, 0x3033

    const/16 v4, 0x3040

    const/4 v5, 0x4

    .line 389
    filled-new-array {v3, v15, v4, v5, v8}, [I

    move-result-object v4

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    move-object v6, v10

    move v15, v8

    move/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_7

    aget v3, v16, v2

    if-eqz v3, :cond_7

    .line 390
    aget-object v3, v18, v2

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/16 v5, 0x3098

    filled-new-array {v5, v14, v15}, [I

    move-result-object v5

    invoke-static {v11, v3, v4, v5, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v12

    .line 391
    aget-object v3, v18, v2

    const/16 v4, 0x3057

    const/16 v5, 0x3056

    const/4 v6, 0x1

    filled-new-array {v4, v6, v5, v6, v15}, [I

    move-result-object v4

    invoke-static {v11, v3, v4, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v13

    .line 392
    invoke-static {v11, v13, v13, v12}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x8b30

    .line 393
    invoke-static {v3, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->shader(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 394
    :try_start_1
    const-string v0, "attribute vec4 position; varying vec2 tc; void main(){gl_Position=position;tc=position.xy;}"

    const v4, 0x8b31

    invoke-static {v4, v0}, Lcom/prometheus/camera/rev/VignetteSettings;->shader(ILjava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 395
    :try_start_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x1

    .line 396
    new-array v0, v0, [I

    const v6, 0x8b82

    invoke-static {v5, v6, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 397
    aget v0, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_0

    .line 399
    invoke-static {v5}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 400
    :cond_2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v11, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 401
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v13, v0, :cond_3

    invoke-static {v11, v13}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 402
    :cond_3
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v12, v0, :cond_4

    invoke-static {v11, v12}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 404
    :cond_4
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    return-void

    .line 397
    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move v2, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move v4, v2

    goto :goto_0

    .line 392
    :cond_6
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u521b\u5efa GLES \u4e0a\u4e0b\u6587"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u9009\u62e9 GLES \u914d\u7f6e"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move v3, v2

    move v4, v3

    :goto_0
    if-eqz v2, :cond_8

    .line 399
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_9
    if-eqz v4, :cond_a

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 400
    :cond_a
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v11, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 401
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v13, v1, :cond_b

    invoke-static {v11, v13}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 402
    :cond_b
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v12, v1, :cond_c

    invoke-static {v11, v12}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 404
    :cond_c
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 405
    throw v0

    .line 385
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u521d\u59cb\u5316 GLES"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "GLSL \u51fd\u6570\u4f53\u4e3a\u7a7a\u6216\u683c\u5f0f\u65e0\u6548"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
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

    goto :goto_0

    .line 49
    :cond_0
    const-class v0, Landroid/app/Application;

    new-instance v1, Lcom/prometheus/camera/rev/VignetteSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/rev/VignetteSettings$1;-><init>(Lcom/prometheus/camera/rev/VignetteSettings;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onCreate"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_1
    :goto_0
    return-void
.end method
