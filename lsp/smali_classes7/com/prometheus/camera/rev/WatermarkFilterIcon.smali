.class public final Lcom/prometheus/camera/rev/WatermarkFilterIcon;
.super Ljava/lang/Object;
.source "WatermarkFilterIcon.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# instance fields
.field private final published:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/rev/WatermarkFilterIcon;->published:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/prometheus/camera/rev/WatermarkFilterIcon;Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-direct/range {p0 .. p6}, Lcom/prometheus/camera/rev/WatermarkFilterIcon;->publish(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)V

    return-void
.end method

.method private declared-synchronized publish(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;ILjava/lang/ClassLoader;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "Native watermark icon dimensions missing: "

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    iget-object v4, v1, Lcom/prometheus/camera/rev/WatermarkFilterIcon;->published:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 76
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    const-string v5, "leica_looks_standard_black.webp"

    invoke-interface {v0, v5}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v5, :cond_6

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v5, :cond_6

    const/4 v2, 0x2

    .line 79
    new-array v5, v2, [Z

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_5

    aget-boolean v8, v5, v7

    move-object/from16 v9, p1

    move/from16 v10, p5

    .line 80
    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v8, :cond_1

    const/4 v12, -0x1

    goto :goto_1

    :cond_1
    const/high16 v12, -0x1000000

    .line 81
    :goto_1
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 82
    iget v12, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 83
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v11, v6, v6, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 87
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "phoenix_filter_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_2

    const-string v8, "white"

    goto :goto_2

    :cond_2
    const-string v8, "black"

    :goto_2
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".webp"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 90
    new-instance v12, Landroid/util/AtomicFile;

    invoke-interface {v0, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-interface {v13}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 91
    invoke-virtual {v12}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {v13, v11}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v12, v13}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    const-string v12, "si.i"

    move-object/from16 v13, p6

    invoke-static {v12, v13}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-string v14, "d"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/vendor/camera/watermarks/"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v8, v11}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v12, v14, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x2

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watermark vendor icon publication failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v12, v13}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v0

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Watermark icon encoding failed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    iget-object v0, v1, Lcom/prometheus/camera/rev/WatermarkFilterIcon;->published:Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 78
    :cond_6
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3

    .line 26
    const-string v0, "com.android.camera"

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/WatermarkFilterIcon$1;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/WatermarkFilterIcon$1;-><init>(Lcom/prometheus/camera/rev/WatermarkFilterIcon;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "com.xiaomi.cam.watermark.a"

    const-string v1, "w0"

    invoke-static {p1, v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method
