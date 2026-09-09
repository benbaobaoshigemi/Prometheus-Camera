.class final Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;
.super Ljava/lang/Object;
.source "MediaEditorWatermarkBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;
    }
.end annotation


# static fields
.field private static final ASSET_NAME:Ljava/util/regex/Pattern;

.field private static final BITMAP_LOADER:Ljava/lang/String; = "on.a"

.field private static final CATALOG_FILTER:Ljava/lang/String; = "vg.q"

.field private static final CLOUD_CATEGORY:Ljava/lang/String; = "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudCategoryData"

.field private static final CLOUD_CONFIG:Ljava/lang/String; = "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkConfigData"

.field private static final CLOUD_GUIDE:Ljava/lang/String; = "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkGuideData"

.field private static final CLOUD_WATERMARK:Ljava/lang/String; = "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkData"

.field private static final LEICA_SUFFIX:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;

.field private static final XIAOMI_PREFIX:Ljava/util/regex/Pattern;

.field private static volatile carAssetLogged:Z

.field private static final carXmlElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile catalogLogged:Z

.field private static volatile filesRoot:Ljava/io/File;

.field private static final filterDecisionsLogged:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final filterRenderScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile installed:Z

.field private static final leicaCatalogScopeDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final nativeCarDiscoveryScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final renderModel:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile titaniumLogged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "(?i)\\s*by\\s*leica\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "(?i)^\\s*xiaomi\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->XIAOMI_PREFIX:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "xiaomi_[A-Za-z0-9_]+\\.webp"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->ASSET_NAME:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filterDecisionsLogged:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->renderModel:Ljava/lang/ThreadLocal;

    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filterRenderScope:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->leicaCatalogScopeDepth:Ljava/lang/ThreadLocal;

    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->nativeCarDiscoveryScope:Ljava/lang/ThreadLocal;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->carXmlElements:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 36
    sput-object p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filesRoot:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->renderModel:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->mergeLocalOnly(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->catalogLogged:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0

    .line 36
    sput-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->catalogLogged:Z

    return p0
.end method

.method static synthetic access$1200(Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->isCarTemplate(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->carXmlElements:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->applyCommittedCarAsset(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/ThreadLocal;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->nativeCarDiscoveryScope:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1600(Ljava/util/Map;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->containsCarTemplate(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->templateName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->containsTemplate(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Ljava/lang/Object;)I
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->templateId(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->assetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->categoryId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->findCategoryByNativeId(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->resolveCommittedAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->normalizeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->titaniumLogged:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 36
    sput-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->titaniumLogged:Z

    return p0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filterRenderScope:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Set;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filterDecisionsLogged:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->modelBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/ThreadLocal;
    .locals 1

    .line 36
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->leicaCatalogScopeDepth:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static applyCommittedCarAsset(Landroid/view/View;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 515
    :cond_0
    const-string v0, "n"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 516
    const-string v2, "o"

    invoke-static {p1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 520
    const-string v4, "kh.g"

    invoke-static {v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 521
    const-string v4, "a"

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 522
    const-string v5, "f"

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->normalizeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 524
    const-string v5, "xiaomi"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    .line 525
    :cond_2
    const-string v4, "v"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->normalizeWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->modelBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 530
    :cond_3
    const-string v2, "e"

    invoke-static {p1, v2}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 532
    const-string p1, "xiaomi_white.webp"

    goto :goto_0

    :cond_4
    const-string p1, "xiaomi_black.webp"

    .line 531
    :goto_0
    invoke-static {v1, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->resolveCommittedAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lez v1, :cond_8

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "frame_image_brand_view"

    .line 540
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 539
    const-string v5, "id"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 541
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "frame_model_view"

    .line 542
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 543
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 544
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 547
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const-string v4, "m"

    invoke-static {v2, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 552
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->setFloatField(Ljava/lang/Object;Ljava/lang/String;F)V

    .line 553
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 554
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 p1, 0x8

    .line 555
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :cond_5
    sget-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->carAssetLogged:Z

    if-nez p0, :cond_6

    const/4 p0, 0x1

    .line 557
    sput-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->carAssetLogged:Z

    .line 558
    const-string p0, "PrometheusNRV: MediaEditor \u539f\u751f car_* \u5df2\u6d88\u8d39\u63d0\u4ea4\u7684 by-LEICA \u8d44\u4ea7"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 545
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Native car template has no brand image consumer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot decode committed car by-LEICA asset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static assetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x5c

    const/16 v2, 0x2f

    .line 596
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 597
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 598
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 599
    :goto_0
    sget-object v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->ASSET_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method private static categoryId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 501
    :cond_0
    const-string v0, "c"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private static cloneCategory(Ljava/lang/reflect/Constructor;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 923
    const-string v0, "a"

    .line 924
    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v0, "b"

    .line 925
    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v0, "c"

    .line 926
    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v0, "d"

    .line 927
    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v0, "e"

    .line 928
    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    move-object v6, p2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 923
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static containsCarTemplate(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 466
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 468
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 469
    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->templateName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->isCarTemplate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static containsTemplate(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 490
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 493
    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->templateName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static findCategoryByNativeId(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 506
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 507
    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->categoryId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static findGroup(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 914
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 915
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "a"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static hookFirstCompleteCatalogPublication(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 563
    const-string v0, "vg.v$a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$15;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$15;-><init>(Ljava/lang/ClassLoader;)V

    const-string p0, "invokeSuspend"

    invoke-static {v0, p0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    return-void
.end method

.method private static hookNativeCarCatalogConstruction(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 368
    const-string v0, "jb.a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$13;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$13;-><init>()V

    .line 377
    const-string v2, "e"

    const-string v3, "i"

    const-string v4, "b"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, v2, v3

    .line 378
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_0
    const-string v0, "vg.h"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    const-string v1, "S3.b"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 383
    const-string v2, "kh.d"

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 384
    new-instance v2, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$14;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$14;-><init>()V

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "d"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookNativeCarTemplates(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 302
    const-string v0, "Fg.b"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 303
    new-instance v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$11;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$11;-><init>()V

    .line 322
    const-string v2, "q"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 323
    const-string v2, "e"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 324
    const-string v3, "f"

    invoke-static {v0, v3, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 326
    const-string v0, "com.miui.mediaeditor.photo.watermark.element.k"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 328
    new-instance v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$12;

    invoke-direct {v0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$12;-><init>()V

    .line 348
    const-string v1, "d"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 349
    invoke-static {p0, v2, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    return-void
.end method

.method static declared-synchronized install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-boolean v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->installed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 75
    :cond_0
    :try_start_1
    const-class v1, Landroid/app/Application;

    const-string v2, "attach"

    const-class v3, Landroid/content/Context;

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$1;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$1;-><init>()V

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->tryInstallStableWatermarkHooks(Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    sput-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->installed:Z

    const-string p0, "PrometheusNRV: MediaEditor watermark stable hooks installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->hookFirstCompleteCatalogPublication(Ljava/lang/ClassLoader;)V

    .line 84
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->unlockLccPhotoEligibility(Ljava/lang/ClassLoader;)V

    .line 85
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->hookNativeCarTemplates(Ljava/lang/ClassLoader;)V

    .line 86
    invoke-static {p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->hookNativeCarCatalogConstruction(Ljava/lang/ClassLoader;)V

    .line 88
    const-string v1, "on.a"

    const-string v2, "a"

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$2;

    invoke-direct {v5}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$2;-><init>()V

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 110
    const-string v1, "Qn.a$a"

    const-string v2, "c"

    const-class v3, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v7, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$3;

    invoke-direct {v7}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$3;-><init>()V

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 137
    const-string v1, "com.miui.mediaeditor.photo.watermask.CloudWatermarkMaker"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 139
    const-string v3, "a"

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$4;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$4;-><init>()V

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 161
    const-string v1, "kh.e"

    const-string v3, "c"

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$5;

    invoke-direct {v4, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$5;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, p0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 181
    const-string v1, "com.xiaomi.cam.watermark.c"

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 183
    const-string v3, "e"

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$6;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$6;-><init>()V

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 205
    const-string v3, "f"

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$7;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$7;-><init>()V

    invoke-static {v1, v3, v4}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 221
    const-string v1, "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkConfigData"

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 222
    const-string v2, "mb.a"

    const-string v3, "f"

    new-instance v4, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$8;

    invoke-direct {v4}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$8;-><init>()V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 233
    const-string v2, "vg.q"

    const-string v3, "a"

    const-class v4, Ljava/util/List;

    new-instance v5, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;

    invoke-direct {v5, p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;-><init>(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p0, v3, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 p0, 0x1

    .line 266
    sput-boolean p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->installed:Z

    .line 267
    const-string p0, "PrometheusNRV: MediaEditor \u672c\u5730\u76ee\u5f55\u4e0e\u7167\u7247\u673a\u578b\u91cd\u5efa\u6865\u5df2\u5b89\u88c5"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isCarTemplate(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 353
    const-string v1, "car_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method private static localized(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 814
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 819
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    .line 820
    const-string v0, "default"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    .line 821
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    .line 822
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Empty local watermark translation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static matchingTransaction(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 626
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 627
    :cond_0
    new-instance p2, Ljava/io/File;

    const-string v1, "manifest.tsv"

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    new-instance v1, Ljava/io/File;

    const-string v2, "manifest.commit"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 631
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 632
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 633
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz v1, :cond_6

    .line 634
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 635
    invoke-static {p2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 637
    :cond_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p2, v0

    .line 639
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 640
    const-string v3, "\\t"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 641
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const-string v3, "model"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p2, 0x1

    .line 642
    aget-object p2, v2, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz p2, :cond_5

    .line 646
    invoke-static {p1, p2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->sameModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p0, v0

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 637
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_6
    :goto_3
    return-object v0

    :catchall_2
    move-exception p0

    .line 631
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_7
    :goto_5
    return-object v0
.end method

.method private static mergeLocalOnly(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;",
            ">;)",
            "Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 714
    const-string v2, "a"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 715
    const-string v4, "b"

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 716
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 717
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->verifyLocalTransaction()Ljava/util/Map;

    move-result-object v5

    .line 718
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 719
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 720
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 722
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    move v9, v7

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v10, "leica"

    const-string v11, "f"

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 723
    invoke-static {v8, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 724
    invoke-static {v8, v11}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 725
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 726
    invoke-static {v14, v11}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->stableKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 729
    invoke-static {v11, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 728
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 735
    :cond_2
    const-string v2, "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudCategoryData"

    invoke-static {v2, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v14, Ljava/lang/String;

    const-class v15, Ljava/lang/String;

    const-class v16, Ljava/lang/String;

    const-class v17, Ljava/lang/String;

    const-class v18, Ljava/util/List;

    const-class v19, Ljava/util/List;

    filled-new-array/range {v14 .. v19}, [Ljava/lang/Class;

    move-result-object v3

    .line 736
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 739
    const-string v3, "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkGuideData"

    invoke-static {v3, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v34

    .line 740
    const-string v3, "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkData"

    invoke-static {v3, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v14, Ljava/lang/String;

    const-class v15, Ljava/lang/String;

    const-class v16, Ljava/util/List;

    const-class v17, Ljava/util/List;

    const-class v18, Ljava/lang/String;

    const-class v19, Ljava/lang/String;

    sget-object v20, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v21, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v22, Ljava/lang/String;

    const-class v23, Ljava/lang/String;

    const-class v24, Ljava/lang/String;

    sget-object v25, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v26, Ljava/util/List;

    const-class v27, Ljava/util/List;

    const-class v28, Ljava/util/List;

    const-class v29, Ljava/util/List;

    const-class v30, Ljava/util/List;

    const-class v31, Ljava/util/List;

    const-class v32, Ljava/util/List;

    sget-object v33, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v14 .. v34}, [Ljava/lang/Class;

    move-result-object v8

    .line 741
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 749
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v14, v7

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;

    .line 750
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p2, v8

    .line 751
    iget-object v8, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->templates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    check-cast v8, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;

    move-object/from16 v22, v12

    .line 752
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v9

    iget-object v9, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u0000"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 753
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    :goto_3
    move-object/from16 v8, v17

    move-object/from16 v12, v22

    move/from16 v9, v23

    goto :goto_2

    .line 754
    :cond_4
    iget-object v9, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    invoke-static {v9, v8, v5}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->verifyLocalTemplate(Ljava/lang/String;Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;Ljava/util/Map;)V

    .line 755
    invoke-static {v3, v8}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->newLocalWatermark(Ljava/lang/reflect/Constructor;Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v9, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 757
    iget-object v8, v8, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move/from16 v23, v9

    move-object/from16 v22, v12

    .line 760
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_4
    move-object/from16 v8, p2

    move-object/from16 v12, v22

    move/from16 v9, v23

    const/4 v7, 0x0

    goto :goto_1

    .line 762
    :cond_6
    iget-object v8, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->findGroup(Ljava/util/List;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_7

    .line 764
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 765
    new-instance v12, Ljava/util/ArrayList;

    .line 766
    invoke-static {v9, v11}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    invoke-interface {v12, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 768
    invoke-static {v2, v9, v12}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->cloneCategory(Ljava/lang/reflect/Constructor;Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 771
    :cond_7
    iget-object v8, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->group:Ljava/lang/String;

    iget-object v9, v15, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkCategory;->nameId:Ljava/lang/String;

    const-string v12, "*"

    .line 773
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const-string v17, ""

    const-string v18, ""

    move-object/from16 v16, v8

    move-object/from16 v19, v9

    move-object/from16 v21, v7

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v8

    .line 771
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v14, v7

    goto :goto_4

    :cond_8
    move/from16 v23, v9

    move-object/from16 v22, v12

    .line 778
    const-string v2, "com.miui.mediaeditor.photo.watermark.model.cloudwatermark.CloudWatermarkConfigData"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/util/List;

    const-class v3, Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    .line 779
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 781
    new-instance v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;

    add-int v11, v23, v14

    move-object v7, v0

    move v10, v14

    invoke-direct/range {v7 .. v13}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;-><init>(Ljava/lang/Object;IIILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static modelBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    .line 584
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    sget-object v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 586
    sget-object v1, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->XIAOMI_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 587
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 589
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty by-LEICA EXIF model name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static newLocalWatermark(Ljava/lang/reflect/Constructor;Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    move-object v13, v15

    move-object/from16 v17, v15

    .line 789
    iget-object v1, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->translations:Ljava/util/Map;

    .line 791
    invoke-static {v2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->localized(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->contentNameIds:Ljava/util/List;

    iget-object v4, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->necessaryShotParam:Ljava/util/List;

    iget-object v5, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->watermarkType:Ljava/lang/String;

    iget-object v6, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->renderEngine:Ljava/lang/String;

    const-wide/16 v7, 0x0

    .line 796
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide v8, 0x7fffffffffffffffL

    .line 797
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    .line 801
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 803
    const-string v9, "*"

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 805
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    iget-object v0, v0, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->marketNameLengthRange:Ljava/util/List;

    move-object/from16 v18, v0

    const-string v0, "ALL"

    .line 808
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 809
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    const/16 v21, 0x0

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p0

    .line 789
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 580
    :cond_0
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static resolveCommittedAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filesRoot:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 605
    new-instance v1, Ljava/io/File;

    const-string v2, "prometheus/by_leica"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/io/File;

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->matchingTransaction(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 608
    new-instance v2, Ljava/io/File;

    const-string v3, "models"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 611
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v0, v1, v3

    .line 612
    invoke-static {v0, p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->matchingTransaction(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 621
    invoke-static {v0, p0, p1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->verifiedAsset(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 618
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No committed by-LEICA transaction for photo model "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 604
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaEditor files unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sameModel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 673
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 674
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 673
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 893
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 894
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x4000

    .line 895
    :try_start_0
    new-array p0, p0, [B

    .line 897
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    .line 898
    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 900
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 901
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 902
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-byte v2, v0, v3

    .line 903
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%02X"

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 905
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 894
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private static stableKey(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u0000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "a"

    .line 910
    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static templateId(Ljava/lang/Object;)I
    .locals 2

    const/high16 v0, -0x80000000

    if-nez p0, :cond_0

    return v0

    .line 484
    :cond_0
    const-string v1, "c"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    const-string v0, "d"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static templateName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 477
    :cond_0
    const-string v1, "c"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    const-string v0, "a"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private static tryInstallStableWatermarkHooks(Ljava/lang/ClassLoader;)Z
    .locals 6

    :try_start_0
    const-string v0, "wy.b"

    const-string v1, "c"

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$2;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$2;-><init>()V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const-string v0, "com.xiaomi.cam.watermark.c"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "f"

    new-instance v2, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$16;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$16;-><init>()V

    invoke-static {v0, v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    const/4 v0, 0x1

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method private static unlockLccPhotoEligibility(Ljava/lang/ClassLoader;)V
    .locals 7

    .line 277
    const-string v0, "Fg.b"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 278
    const-string v1, "S3.b"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 279
    const-string v2, "kh.e"

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 280
    const-string v3, "Bg.a$a"

    invoke-static {v3, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 281
    const-string v4, "a"

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 282
    const-class v5, Ljava/lang/String;

    new-instance v6, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$10;

    invoke-direct {v6, v3}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$10;-><init>(Ljava/lang/Object;)V

    filled-new-array {v0, v5, v1, v2, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "vg.t"

    invoke-static {v1, p0, v4, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static validBitmap(Ljava/io/File;)Z
    .locals 6

    .line 678
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 680
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 681
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 682
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_1

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private static verifiedAsset(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 651
    new-instance p1, Ljava/io/File;

    const-string v0, "manifest.tsv"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    .line 655
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 656
    const-string v2, "\\t"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 657
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string v2, "asset"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 658
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x2

    .line 659
    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 663
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x40

    if-ne p0, v1, :cond_2

    .line 665
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 666
    invoke-static {v0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->validBitmap(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 667
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Committed by-LEICA asset mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 653
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static verifyLocalTemplate(Ljava/lang/String;Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 830
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filesRoot:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 834
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "watermarks/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/config.json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    iget-object v2, p1, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->configSha256:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 838
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->configSha256:Ljava/lang/String;

    .line 839
    invoke-static {v1}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 840
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaEditor local watermark transaction mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/prometheus/camera/rev/ContentRegistry$LocalWatermarkTemplate;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 832
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaEditor files directory unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static verifyLocalTransaction()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 847
    sget-object v0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->filesRoot:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 851
    new-instance v1, Ljava/io/File;

    const-string v2, "prometheus/local_watermarks"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/io/File;

    const-string v2, "manifest.tsv"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    new-instance v2, Ljava/io/File;

    const-string v3, "manifest.commit"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 855
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 856
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 857
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_4

    .line 858
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_4

    .line 859
    invoke-static {v0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 863
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 864
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 866
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 867
    const-string v4, "\\t"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 868
    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    const-string v4, "asset"

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    aget-object v5, v0, v4

    .line 869
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v5, 0x1

    aget-object v6, v0, v5

    const-string v7, "signature/"

    .line 870
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "color_chart/"

    .line 871
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/88/"

    .line 872
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/89/"

    .line 873
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/90/"

    .line 874
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/91/"

    .line 875
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/92/"

    .line 876
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/93/"

    .line 877
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/94/"

    .line 878
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v0, v5

    const-string v7, "leica/111/"

    .line 879
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    aget-object v5, v0, v5

    aget-object v0, v0, v4

    .line 880
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 881
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid MediaEditor local watermark manifest entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 886
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 887
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty MediaEditor local watermark transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 864
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    .line 860
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEditor local watermark transaction is not committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 855
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    .line 849
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaEditor files directory unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
