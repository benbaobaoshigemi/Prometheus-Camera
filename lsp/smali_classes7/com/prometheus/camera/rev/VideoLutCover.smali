.class final Lcom/prometheus/camera/rev/VideoLutCover;
.super Ljava/lang/Object;
.source "VideoLutCover.java"


# instance fields
.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final catalog:Lcom/prometheus/camera/rev/VideoLutCatalog;

.field private final main:Landroid/os/Handler;

.field private final pending:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->main:Landroid/os/Handler;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->worker:Ljava/util/concurrent/ExecutorService;

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->bindings:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->pending:Ljava/util/HashSet;

    .line 27
    new-instance v0, Lcom/prometheus/camera/rev/VideoLutCover$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, p0, v1}, Lcom/prometheus/camera/rev/VideoLutCover$1;-><init>(Lcom/prometheus/camera/rev/VideoLutCover;I)V

    iput-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->cache:Landroid/util/LruCache;

    .line 31
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover;->catalog:Lcom/prometheus/camera/rev/VideoLutCatalog;

    return-void
.end method

.method static synthetic access$000(Lcom/prometheus/camera/rev/VideoLutCover;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->bindings:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/prometheus/camera/rev/VideoLutCover;)Lcom/prometheus/camera/rev/VideoLutCatalog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->catalog:Lcom/prometheus/camera/rev/VideoLutCatalog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/prometheus/camera/rev/VideoLutCover;Landroid/widget/ImageView;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/prometheus/camera/rev/VideoLutCover;->bind(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private bind(Landroid/widget/ImageView;I)V
    .locals 7

    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 49
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->catalog:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-virtual {v0, v3, p2}, Lcom/prometheus/camera/rev/VideoLutCatalog;->source(Landroid/content/Context;I)Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;

    move-result-object v5

    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "drawable"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_filter_image_none"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->revision:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    iget-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover;->bindings:Ljava/util/Map;

    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover;->cache:Landroid/util/LruCache;

    invoke-virtual {p2, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover;->pending:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda2;-><init>(Lcom/prometheus/camera/rev/VideoLutCover;Landroid/content/Context;ILcom/prometheus/camera/rev/VideoLutCatalog$LutSource;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "STD video cover missing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method install(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 34
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/rev/VideoLutCover$2;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/VideoLutCover$2;-><init>(Lcom/prometheus/camera/rev/VideoLutCover;)V

    const-string p0, "com.android.camera.data.data.d"

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "com.android.camera.fragment.d$c"

    const-string v1, "c"

    invoke-static {v0, p1, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method synthetic lambda$bind$0$com-prometheus-camera-rev-VideoLutCover(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->pending:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->catalog:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-virtual {v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->bindings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic lambda$bind$1$com-prometheus-camera-rev-VideoLutCover(Ljava/lang/String;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover;->pending:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$bind$2$com-prometheus-camera-rev-VideoLutCover(Landroid/content/Context;ILcom/prometheus/camera/rev/VideoLutCatalog$LutSource;Ljava/lang/String;)V
    .locals 11

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 63
    invoke-virtual {p3, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->open(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz v9, :cond_1

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    new-array p1, p1, [I

    .line 66
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v10, v0, [I

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 68
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 69
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v10, v0, v1}, Lcom/prometheus/camera/rev/LutThumbnail;->render([I[III)[I

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 72
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    iget-object p2, p0, Lcom/prometheus/camera/rev/VideoLutCover;->main:Landroid/os/Handler;

    new-instance v0, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4, p1}, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda0;-><init>(Lcom/prometheus/camera/rev/VideoLutCover;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Video cover/LUT decode failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 63
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "STD cover generation failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/prometheus/camera/rev/VideoLutCatalog$LutSource;->revision:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PhoenixVideoLut"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    iget-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover;->main:Landroid/os/Handler;

    new-instance p2, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p4}, Lcom/prometheus/camera/rev/VideoLutCover$$ExternalSyntheticLambda1;-><init>(Lcom/prometheus/camera/rev/VideoLutCover;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
