.class final Lcom/prometheus/camera/rev/CameraV51Bridge;
.super Ljava/lang/Object;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;
    }
.end annotation


# static fields
.field private static final CLASSIC_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final CLASSIC_DIAGNOSTIC_LIMIT:I = 0x78

.field private static final CLASSIC_EXECUTOR_PROBE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final CLASSIC_STYLE_ASSET_ROOT:Ljava/lang/String; = "prometheus/classic-style"

.field private static final CLASSIC_STYLE_KEY:Ljava/lang/String; = "pref_prometheus_classic_style"

.field private static final CLASSIC_STYLE_MODEL:Ljava/lang/String; = "selected_model"

.field private static final CLASSIC_STYLE_PREFS:Ljava/lang/String; = "prometheus_classic_style"

.field static final ID:Ljava/lang/String; = "phoenix-camera-os4"

.field private static final MENU_DIAGNOSTIC_LIMIT:I = 0x78

.field private static final MIVI_TRANSFORM_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIVI_WATERMARK_LOCK:Ljava/lang/Object;

.field private static final NIGHT_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final PHOTO_MODULE:I = 0xa3

.field private static final VIDEO_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile lastMiviPublishedAt:J

.field private static volatile lastMiviPublishedSelection:Ljava/lang/String;

.field private static volatile runtimeLoader:Ljava/lang/ClassLoader;

.field private static volatile watermarkFileUtil:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile watermarkLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->MIVI_WATERMARK_LOCK:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->CLASSIC_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->CLASSIC_EXECUTOR_PROBE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->NIGHT_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->VIDEO_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->MIVI_TRANSFORM_CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installFilterRuntimePort(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookStillFilterCatalog(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicStylePreference(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicCvState(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookMiviLutPublisher(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookMiviWatermarkModelPublisher(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installOnlineLeicaPrewarm(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookOnlineLeicaWatermarkBitmap(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookCustomShutterSoundCatalog(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->registerNightEvProtocol(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->unregisterNightEvProtocol(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 38
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->NIGHT_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installNightControls(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$2000(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->summarizeTopConfigs(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hasTopConfig(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 38
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->VIDEO_MENU_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2300(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->summarizeIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->summarizeDataItems(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->syncLeicaPublicationToMediaEditor(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->publishMiviWatermarkModels(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->maybePublishMiviWatermarkModels(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installVideoControls(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$3000(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviWatermarkModels(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100()Ljava/lang/Class;
    .locals 1

    .line 38
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkFileUtil:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$3200(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->containsSoundToken(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isClassicStyleToken(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->selectedClassicStyleModel(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicStyleScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->openLspAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Ljava/lang/ClassLoader;Ljava/lang/Object;[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->publishMiviBytes(Ljava/lang/ClassLoader;Ljava/lang/Object;[B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->removeMiviPublication(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookCustomLutDisplayNames(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$4000(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isCurrentLeicaLooks(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4100(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->selectedClassicStyleLabel(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->executorProbe(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicVignetteDisabled(Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicDiagnostic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/rev/CameraV51Bridge;->syncClassicCvState(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Ljava/lang/ClassLoader;)I
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->currentCameraModule(Ljava/lang/ClassLoader;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->captureScriptProbe(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isLeicaStableId(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Landroid/content/Context;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/Enum;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static/range {p0 .. p5}, Lcom/prometheus/camera/rev/CameraV51Bridge;->createGalleryFilterItem(Landroid/content/Context;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/Enum;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookFilterItemDisplayNames(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$5000(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/rev/CameraV51Bridge;->createNativeFilterItem(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5100(Ljava/lang/ClassLoader;Ljava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->titleResource(Ljava/lang/ClassLoader;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$5200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->leicaWatermarkFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookLeicaLooksHintVisibility(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookWatermarkLeicaFilterIdentity(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookContentRegistries(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookSupportedWatermarkIds(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    return-void
.end method

.method private static applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2036
    const-string v0, "com.xiaomi.camera.basic.Global"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2038
    const-string v0, "getContext"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private static captureScriptProbe(Ljava/lang/String;)V
    .locals 6

    if-nez p0, :cond_0

    .line 1932
    const-string p0, "capture filterScript=null"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->executorProbe(Ljava/lang/String;)V

    return-void

    .line 1935
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capture filterScript len="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1936
    const-string v1, "@(CvEffect|CvStyleEffect);[^@]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 1938
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xc

    if-ge v2, v4, :cond_2

    .line 1939
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1940
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1a4

    if-le v4, v5, :cond_1

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1941
    :cond_1
    const-string v4, " segment["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1943
    :cond_3
    const-string p0, " segments="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->executorProbe(Ljava/lang/String;)V

    return-void
.end method

.method private static classicAiScene(Ljava/lang/ClassLoader;Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1889
    :cond_0
    :try_start_0
    const-string v1, "getModuleIndex"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1890
    const-string v2, "com.android.camera.data.data.j"

    invoke-static {v2, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1892
    const-string v2, "i"

    .line 1893
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1892
    invoke-static {p0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    .line 1895
    :cond_1
    const-string p0, "mAiSceneMgr"

    invoke-static {p1, p0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 1896
    :cond_2
    const-string p1, "b"

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :catchall_0
    move-exception p0

    .line 1898
    const-string p1, "PrometheusRev: classic AI scene lookup failed; using common"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 1899
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    return v0
.end method

.method private static classicDiagnostic(Ljava/lang/String;)V
    .locals 3

    .line 1914
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->CLASSIC_DIAGNOSTIC_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrometheusRev: classic diagnostic["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x79

    if-ne v0, p0, :cond_1

    .line 1919
    const-string p0, "PrometheusRev: classic diagnostic limit reached"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static classicStyleScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1979
    const-string v1, "lut_cvstyle_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0xc

    .line 1980
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1984
    const-string v1, "bixi_"

    const-string v2, "zizhan_"

    const-string v3, "fuxi_"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    .line 1985
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1986
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1995
    :cond_2
    :goto_1
    const-string v1, "common"

    .line 1990
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "food"

    .line 1991
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "human"

    .line 1992
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "night"

    .line 1993
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "plants"

    .line 1994
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sunrise_sunset"

    .line 1995
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static classicVignetteDisabled(Ljava/lang/ClassLoader;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1806
    :try_start_0
    const-string v1, "com.android.camera.data.data.j"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1808
    const-string v2, "o"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    .line 1810
    :cond_0
    const-string v1, "com.xiaomi.camera.basic.Global"

    .line 1811
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getContext"

    new-array v3, v0, [Ljava/lang/Object;

    .line 1810
    invoke-static {p0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 1813
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "prometheus_color_development"

    .line 1814
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "pref_prometheus_classic_vignette"

    .line 1815
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p0, v2

    return p0

    :catchall_0
    return v0
.end method

.method private static containsSoundToken(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1241
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1242
    const-string v1, "b"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1243
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static copyLeicaTransformSupport(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1040
    const-string v0, "config.json"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1041
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1043
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v3, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v3, v1

    invoke-static {v2, v0, v3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 1047
    :cond_0
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 1050
    :cond_1
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1051
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v6, v4, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v6, v1

    invoke-static {v5, v3, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static createGalleryFilterItem(Landroid/content/Context;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/Enum;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x8

    .line 2135
    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prometheus_gallery_filter_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    .line 2139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2136
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prometheus_gallery_filter_cover_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    .line 2143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2140
    invoke-virtual {v2, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 2151
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    .line 2156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 p5, p5, 0x64

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v4, "NORMAL"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 2155
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit16 p4, p4, 0x7d0

    .line 2157
    invoke-virtual {p2, p0, p4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    return-object p0

    :catch_0
    move-exception p0

    .line 2153
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid Gallery filter identity "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2145
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Missing Gallery filter resources for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " name="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " cover="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createNativeFilterItem(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2164
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 2165
    invoke-static {p1, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2166
    const-string p2, "vi.e0"

    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2167
    const-string p2, "r"

    const-string v2, "o"

    const-string v3, "b"

    filled-new-array {v3, p2, v2}, [Ljava/lang/String;

    move-result-object p2

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    aget-object v3, p2, v2

    .line 2168
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/util/ArrayList;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 2169
    invoke-virtual {p0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2171
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    .line 2172
    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2175
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No OS4 camera item factory for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static currentCameraModule(Ljava/lang/ClassLoader;)I
    .locals 1

    .line 1906
    :try_start_0
    const-string v0, "com.android.camera.module.Y"

    .line 1907
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "a"

    .line 1906
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method private static executorProbe(Ljava/lang/String;)V
    .locals 3

    .line 1924
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->CLASSIC_EXECUTOR_PROBE_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_0

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrometheusRev: classic executor probe["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 491
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 494
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hasTopConfig(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 501
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static hookClassicCvState(Ljava/lang/ClassLoader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1505
    const-string v0, "com.android.camera.module.Camera2Module"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1507
    const-string v2, "com.android.camera.module.r"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1509
    const-string v3, "j6.j"

    invoke-static {v3, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1510
    const-string v4, "l6.b"

    invoke-static {v4, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1511
    const-string v5, "ru.k"

    invoke-static {v5, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 1512
    const-string v6, "com.xiaomi.camera.effect.EffectController"

    invoke-static {v6, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 1519
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v9, "wu.h"

    .line 1524
    invoke-static {v9, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Lcom/prometheus/camera/rev/CameraV51Bridge$46;

    invoke-direct {v10, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$46;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    .line 1519
    const-string v9, "Cu.i"

    const-string v10, "h"

    invoke-static {v9, p0, v10, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1549
    new-instance v8, Lcom/prometheus/camera/rev/CameraV51Bridge$47;

    invoke-direct {v8, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$47;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v3, v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "setupCameraConfigForSessionIfNeed"

    invoke-static {v2, v9, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1559
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v8, Lcom/prometheus/camera/rev/CameraV51Bridge$48;

    invoke-direct {v8, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$48;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2, v8}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "Y"

    invoke-static {v7, v8, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1575
    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$49;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$49;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v9, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1584
    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$50;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$50;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "updateAiScene"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1592
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$51;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$51;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "b"

    invoke-static {v4, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1608
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$52;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$52;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "h0"

    invoke-static {v6, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1624
    const-class v0, [Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$53;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$53;-><init>(Ljava/lang/ClassLoader;)V

    const-string v3, "tu.d"

    filled-new-array {v3, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Ym.e"

    const-string v3, "t"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1651
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$54;

    invoke-direct {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$54;-><init>()V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "s9.a"

    const-string v3, "p"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1674
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$55;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$55;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "w"

    invoke-static {v2, p0, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1699
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v10, Lcom/prometheus/camera/rev/CameraV51Bridge$56;

    invoke-direct {v10}, Lcom/prometheus/camera/rev/CameraV51Bridge$56;-><init>()V

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "com.xiaomi.camera.mivi.filter.MIVIRenderTag"

    invoke-static {v2, p0, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookConstructor(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1722
    const-string v0, "com.xiaomi.camera.mivi.filter.MIVIRenderTag$TagForRenderCore"

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1725
    const-string v3, "o3.b"

    invoke-static {v3, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1726
    const-class v4, Ljava/util/Map;

    new-instance v5, Lcom/prometheus/camera/rev/CameraV51Bridge$57;

    invoke-direct {v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$57;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "initCvFilterParams"

    invoke-static {v0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1745
    const-string v4, "com.xiaomi.camera.mivi.filter.MIVIRenderTag$TagForCandy"

    invoke-static {v4, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1748
    new-instance v5, Lcom/prometheus/camera/rev/CameraV51Bridge$58;

    invoke-direct {v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$58;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getCvFilterCandyParams"

    invoke-static {v4, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1762
    const-string v4, "java.util.Map"

    invoke-static {v4, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1763
    new-instance v5, Lcom/prometheus/camera/rev/CameraV51Bridge$59;

    invoke-direct {v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$59;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v4, v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "a"

    invoke-static {v0, v4, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1778
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1780
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$60;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$60;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "initParams"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookClassicStylePreference(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1419
    const-string v0, "androidx.preference.Preference"

    const/4 v1, 0x0

    .line 1420
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1421
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$43;

    invoke-direct {v1, v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$43;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v3, "addAdvancePreferences"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1458
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$44;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge$44;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "registerPreferenceListener"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1475
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$45;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$45;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onPreferenceClick"

    invoke-static {v2, p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookContentRegistries(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 3

    .line 2352
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$64;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$64;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.prometheus.camera.filters.GalleryFilterCatalog"

    const-string v2, "ids"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2362
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$65;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$65;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "managedIds"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2372
    const-class v0, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$66;

    invoke-direct {v2, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$66;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "indexForKey"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2383
    const-class v0, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$67;

    invoke-direct {v2, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$67;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "cameraIdForKey"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2394
    const-class v0, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$68;

    invoke-direct {v2, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$68;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "labelFor"

    invoke-static {v1, p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookCustomLutDisplayNames(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 1179
    const-class v0, Landroid/content/Context;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$37;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$37;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.camera.data.data.c"

    const-string v2, "getCurrentDisplayNameToString"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1197
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$38;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$38;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getValueDisplayStringNotFromResource"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookCustomMiviLutSource(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 1372
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$42;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$42;-><init>(Ljava/lang/ClassLoader;)V

    const-class v3, [B

    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.camera.mivi.filter.MIVILutSaver"

    const-string v2, "writeLutToDir"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookCustomShutterSoundCatalog(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 1143
    const-string v0, "f2.c"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1144
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$36;

    invoke-direct {v1, p0, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$36;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "b"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookDeviceFactory(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 2408
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$69;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$69;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "G7.d"

    const-string v2, "k"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookFilterItemDisplayNames(Ljava/lang/ClassLoader;)V
    .locals 4

    move-object v3, p0

    .line 1218
    const-string v0, "O9.i"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1219
    const-string v1, "com.android.camera.data.data.d"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1221
    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$39;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$39;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "pr"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$70;

    invoke-direct {v1, v3}, Lcom/prometheus/camera/rev/CameraV51Bridge$70;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "android.content.res.Resources"

    const-string v2, "getString"

    invoke-static {v1, v3, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookLeicaLooksHintVisibility(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1302
    const-string v0, "com.android.camera.data.data.d"

    .line 1306
    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$41;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$41;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1302
    const-string v1, "y9.b"

    const-string v2, "em"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookMiviLutPublisher(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1250
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->hookCustomMiviLutSource(Ljava/lang/ClassLoader;)V

    .line 1251
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$40;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$40;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.camera.mivi.filter.a"

    const-string v2, "run"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookMiviWatermarkModelPublisher(Ljava/lang/ClassLoader;)V
    .locals 5

    .line 750
    sput-object p0, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkLoader:Ljava/lang/ClassLoader;

    .line 751
    const-string v0, "com.xiaomi.cam.watermark.a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 752
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$30;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$30;-><init>(Ljava/lang/ClassLoader;)V

    const-string v2, "n0"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 765
    const-string v0, "Gg.s"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 766
    sput-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkFileUtil:Ljava/lang/Class;

    .line 767
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$31;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$31;-><init>(Ljava/lang/ClassLoader;)V

    const-string v2, "d"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 788
    const-class v1, Ljava/nio/file/Path;

    const-class v2, Ljava/nio/file/Path;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v4, Lcom/prometheus/camera/rev/CameraV51Bridge$32;

    invoke-direct {v4, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$32;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "c"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 807
    const-string v1, "com.prometheus.camera.settings.DeviceNameRuntime"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 809
    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$33;

    invoke-direct {v3, p0, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$33;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "refresh"

    invoke-static {v1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 819
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->scheduleInitialMiviSync(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static hookOnlineLeicaWatermarkBitmap(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 591
    :try_start_0
    const-string v0, "com.prometheus.camera.filters.OnlineLeicaRenderer"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    const-string v1, "com.xiaomi.cam.watermark.b"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 598
    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$26;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/CameraV51Bridge$26;-><init>()V

    const-string v3, "e"

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 612
    const-class v1, Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/rev/CameraV51Bridge$27;

    invoke-direct {v2, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$27;-><init>(Ljava/lang/Class;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Gg.A"

    const-string v3, "invoke"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 649
    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$28;

    invoke-direct {v3, p0, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge$28;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hs.a"

    const-string v2, "a"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void

    :catch_0
    move-exception p0

    .line 594
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnlineLeicaRenderer is not in the injected dex"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static hookStillFilterCatalog(Ljava/lang/ClassLoader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2043
    const-string v0, "o3.d"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 2044
    const-string v0, "i3.b"

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2045
    const-string v2, "com.prometheus.camera.filters.FilterCatalogStore"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2047
    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v4, "resolveVisibleIds"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2048
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Class;

    move-result-object v1

    .line 2049
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v1, 0x1

    .line 2056
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2057
    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 2058
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2059
    const-string v2, "k"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 2060
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2061
    const-string v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 2062
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2063
    const-string v2, "f"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 2064
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2065
    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 2066
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2067
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$61;

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/prometheus/camera/rev/CameraV51Bridge$61;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/ClassLoader;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "A9.h"

    const-string v2, "c"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookSupportedWatermarkIds(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 1

    .line 524
    const-string v0, "Gg.P"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 525
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$24;

    invoke-direct {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$24;-><init>(Lcom/prometheus/camera/rev/ContentRegistry;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "f"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookWatermarkLeicaFilterIdentity(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 2312
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$63;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$63;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.cam.watermark.a"

    const-string v2, "k0"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static hookWatermarkPreviewRenderer(Ljava/lang/ClassLoader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 700
    const-string v0, "com.xiaomi.cam.watermark.a"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 706
    const-string v1, "as.b"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 707
    const-class v2, Landroid/app/Application;

    const-class v3, Landroid/graphics/Bitmap;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lcom/prometheus/camera/rev/CameraV51Bridge$29;

    invoke-direct {v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$29;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2, v3, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "c"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 2

    .line 211
    sput-object p0, Lcom/prometheus/camera/rev/CameraV51Bridge;->runtimeLoader:Ljava/lang/ClassLoader;

    .line 212
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$1;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$1;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "photography handle"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 215
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$2;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$2;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "filter runtime"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 218
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$3;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$3;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "still filter catalog"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 221
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$4;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$4;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "night EV and filter controls"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 224
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$5;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$5;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "video MasterCinema and Dolby controls"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 227
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$6;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$6;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "custom LUT display names"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 233
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$7;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$7;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "Leica Looks hint visibility"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 238
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$8;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$8;-><init>(Ljava/lang/ClassLoader;)V

    const-string v1, "Leica watermark filter identity"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 241
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$9;

    invoke-direct {v0, p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$9;-><init>(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    const-string v1, "content registries"

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 244
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$10;

    invoke-direct {v0, p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$10;-><init>(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    const-string p1, "supported watermark IDs"

    invoke-static {p1, v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 247
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$11;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$11;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "classic style preference"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 250
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$12;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$12;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "classic CV state"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 253
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$13;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$13;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "MIVI LUT publisher"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 256
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$14;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$14;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "MIVI watermark model publisher"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 262
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$15;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$15;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "online Leica prewarm"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 265
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$16;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$16;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "online Leica watermark bitmap"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 268
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$17;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$17;-><init>(Ljava/lang/ClassLoader;)V

    const-string v0, "custom shutter sound catalog"

    invoke-static {v0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    .line 271
    new-instance p1, Lcom/prometheus/camera/rev/CameraV51Bridge$18;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$18;-><init>(Ljava/lang/ClassLoader;)V

    const-string p0, "always shutter sound"

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V

    return-void
.end method

.method private static installFilterRuntimePort(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2181
    const-string v0, "com.prometheus.camera.filters.FilterRuntimePort"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2183
    const-string v2, "com.prometheus.camera.filters.FilterRuntimePort$Adapter"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 2185
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$62;

    invoke-direct {v3, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$62;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 2244
    const-string v2, "install"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static installNightControls(Ljava/lang/ClassLoader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 299
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 295
    const-string v2, "com.android.camera.features.mode.night.photo.NightModule"

    const-string v3, "supportEvOverlap"

    invoke-static {v2, p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v1, 0x0

    .line 301
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 303
    const-string v3, "mCallback"

    invoke-static {v2, v3}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 304
    const-string v4, "tu.d"

    invoke-static {v4, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 305
    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 306
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 308
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$19;

    invoke-direct {v0, v3, v4}, Lcom/prometheus/camera/rev/CameraV51Bridge$19;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    const-string v5, "onRenderEngineCreate"

    invoke-static {v2, v5, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 313
    new-instance v0, Lcom/prometheus/camera/rev/CameraV51Bridge$20;

    invoke-direct {v0, v3, v4}, Lcom/prometheus/camera/rev/CameraV51Bridge$20;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    const-string v3, "onRenderEngineDestroy"

    invoke-static {v2, v3, v0}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;

    .line 319
    const-string v0, "b4.a"

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$21;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$21;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "l"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installOnlineLeicaPrewarm(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 548
    const-class v0, Landroid/app/Application;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    new-instance v5, Lcom/prometheus/camera/rev/CameraV51Bridge$25;

    invoke-direct {v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$25;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.xiaomi.camera.basic.Global"

    const-string v2, "init"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installStep(Ljava/lang/String;Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;)V
    .locals 2

    const-string v0, "Phoenix: installed "

    .line 280
    :try_start_0
    invoke-interface {p1}, Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;->run()V

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Phoenix: failed to install "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 284
    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static installVideoControls(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    const-string v0, "u2.t"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 358
    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/CameraV51Bridge$22;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/CameraV51Bridge$22;-><init>()V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "X"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 402
    :try_start_0
    const-string v0, "W9.p"

    invoke-static {v0, p0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 403
    const-string v0, "Sq"

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$23;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge$23;-><init>()V

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoenixDiag: W9.p.Sq hook unavailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static isByLeicaSelection(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1106
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " by leica"

    .line 1107
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "leitzphone powered by xiaomi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isClassicStyleToken(Ljava/lang/String;)Z
    .locals 0

    .line 1975
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicStyleScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCurrentLeicaLooks(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 5

    .line 1332
    const-string p0, "1000"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 1333
    :cond_0
    const-string p0, "o3.d"

    const v1, 0xffff

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1335
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    and-int/2addr p2, v1

    .line 1336
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1337
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    if-ltz p2, :cond_1

    .line 1338
    array-length v4, v3

    if-ge p2, v4, :cond_1

    .line 1339
    aget-object p0, v3, p2

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isLeicaStableId(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v2

    .line 1348
    :cond_1
    :try_start_1
    const-string p2, "com.xiaomi.camera.effect.EffectController"

    invoke-static {p2, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 1350
    const-string v3, "s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1351
    const-string v3, "l"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1352
    const-string v3, "i3.b"

    .line 1353
    invoke-static {v3, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "N"

    .line 1352
    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    if-ne p2, v3, :cond_2

    return v0

    :cond_2
    and-int/2addr p2, v1

    .line 1356
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1357
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    if-ltz p2, :cond_3

    .line 1358
    array-length p1, p0

    if-ge p2, p1, :cond_3

    .line 1359
    aget-object p0, p0, p2

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isLeicaStableId(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    :cond_3
    return v2
.end method

.method private static isLeicaStableId(Ljava/lang/String;)Z
    .locals 1

    .line 2278
    const-string v0, "L_BRIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L_NATURAL"

    .line 2279
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_CHR"

    .line 2280
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_CLS"

    .line 2281
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_CNT"

    .line 2282
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_ETN"

    .line 2283
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_BRS"

    .line 2284
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_TEL"

    .line 2285
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L_DARK"

    .line 2286
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L_DARK_HIGH"

    .line 2287
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LC_IA"

    .line 2288
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "L_BLUE"

    .line 2289
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

.method private static isTitaniumSelection(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1111
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " Ti"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$copyLeicaTransformSupport$4(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1048
    const-string p0, "prometheus_leica_suffix_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".webp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$publishMiviWatermarkModels$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 883
    const-string p0, "mivi_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$rewriteMiviWatermarkModels$1(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 958
    const-string p0, "mivi_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$synchronizeVendorMiviFiles$2(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 995
    const-string p0, "mivi_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$synchronizeVendorMiviFiles$3(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1011
    const-string p0, "mivi_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".json"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static leicaWatermarkFilterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2293
    const-string v0, "L_BRIGHT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "vivid"

    return-object p0

    .line 2294
    :cond_0
    const-string v0, "L_NATURAL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "natural"

    return-object p0

    .line 2295
    :cond_1
    const-string v0, "L_DARK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "monochrome natural"

    return-object p0

    .line 2296
    :cond_2
    const-string v0, "L_DARK_HIGH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "monochrome high contrast"

    return-object p0

    .line 2297
    :cond_3
    const-string v0, "L_BLUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "blue"

    return-object p0

    .line 2298
    :cond_4
    const-string v0, "LC_CHR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "chrome"

    return-object p0

    .line 2299
    :cond_5
    const-string v0, "LC_CLS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "classic"

    return-object p0

    .line 2300
    :cond_6
    const-string v0, "LC_CNT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "contemporary"

    return-object p0

    .line 2301
    :cond_7
    const-string v0, "LC_ETN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "eternal"

    return-object p0

    .line 2302
    :cond_8
    const-string v0, "LC_BRS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "brass"

    return-object p0

    .line 2303
    :cond_9
    const-string v0, "LC_TEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "teal"

    return-object p0

    .line 2304
    :cond_a
    const-string v0, "LC_IA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "i model a"

    return-object p0

    .line 2308
    :cond_b
    const-string p0, "regular"

    return-object p0
.end method

.method private static maybePublishMiviWatermarkModels(Ljava/lang/String;)V
    .locals 6

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 914
    sget-object v2, Lcom/prometheus/camera/rev/CameraV51Bridge;->lastMiviPublishedSelection:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/prometheus/camera/rev/CameraV51Bridge;->lastMiviPublishedAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 916
    :cond_0
    sput-object p0, Lcom/prometheus/camera/rev/CameraV51Bridge;->lastMiviPublishedSelection:Ljava/lang/String;

    .line 917
    sput-wide v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->lastMiviPublishedAt:J

    .line 919
    :try_start_0
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviWatermarkModels(Ljava/lang/String;)V

    .line 920
    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->scheduleMiviWatermarkResync(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 922
    const-string v0, "Phoenix: MIVI watermark publish failed"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 923
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static openLspAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1413
    const-string v0, "com.prometheus.camera.rev"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 1415
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static probe(Ljava/lang/ClassLoader;)Z
    .locals 19

    move-object/from16 v0, p0

    const/4 v7, 0x0

    .line 64
    :try_start_0
    const-string v2, "Gg.P"

    const-string v3, "f"

    const-string v4, "java.util.List"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    const-string v2, "j9.m0"

    const-string v3, "t0"

    const-string v4, "void"

    const-class v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    const-class v5, [B

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    const-string v2, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v3, "addAdvancePreferences"

    const-string v4, "void"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    const-string v2, "com.xiaomi.camera.effect.EffectController"

    const-string v3, "s"

    const-string v4, "com.xiaomi.camera.effect.EffectController"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    const-string v2, "f2.c"

    const-string v3, "b"

    const-string v4, "java.util.List"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    const-string v2, "A9.h"

    const-string v3, "c"

    const-string v4, "java.util.ArrayList"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 87
    const-string v2, "b4.a"

    const-string v3, "l"

    const-string v4, "java.util.ArrayList"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    const-string v2, "u2.t"

    const-string v3, "X"

    const-string v4, "void"

    const-class v1, Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    const-string v2, "com.android.camera.features.mode.night.photo.NightModule"

    const-string v3, "supportEvOverlap"

    const-string v4, "boolean"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    const-string v1, "tu.d"

    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string v2, "V9.M5"

    const-string v3, "I"

    const-string v4, "a5.i$a"

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    const-string v1, "a5.i"

    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    const-string v2, "a5.i$a"

    .line 104
    invoke-static {v2, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 105
    const-string v1, "i3.b"

    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 106
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 113
    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const-string v2, "com.android.camera.data.data.c"

    const-string v3, "getCurrentDisplayNameToString"

    const-string v4, "java.lang.String"

    const-class v1, Landroid/content/Context;

    const-class v5, Ljava/lang/String;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    const-string v2, "com.android.camera.data.data.c"

    const-string v3, "getValueDisplayStringNotFromResource"

    const-string v4, "java.lang.String"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    const-string v2, "hs.a"

    const-string v3, "a"

    const-string v4, "android.graphics.Bitmap"

    const-class v1, Landroid/content/Context;

    const-class v5, Ljava/lang/String;

    filled-new-array {v1, v5}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 142
    const-string v2, "com.xiaomi.cam.watermark.a"

    const-string v3, "J0"

    const-string v4, "void"

    const-class v1, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 151
    const-string v2, "nu.a$a"

    const-string v3, "a"

    const-string v4, "ju.a"

    const-class v1, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5, v6}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 160
    const-string v2, "fs.m"

    const-string v3, "o"

    const-string v4, "void"

    const-class v1, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v5, v6, v8}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    const-string v2, "Gg.A"

    const-string v3, "invoke"

    const-string v4, "java.lang.Object"

    const-class v1, Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 177
    const-string v2, "com.xiaomi.cam.watermark.b"

    const-string v3, "e"

    const-string v4, "iu.b"

    const-class v8, Landroid/content/Context;

    const-string v1, "fs.g"

    .line 184
    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Landroid/graphics/Bitmap;

    const-string v1, "as.b"

    .line 186
    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v11

    const-string v1, "cs.e"

    .line 187
    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v17, Landroid/graphics/PorterDuff$Mode;

    const-string v1, "Gg.a0"

    .line 193
    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v18

    filled-new-array/range {v8 .. v18}, [Ljava/lang/Class;

    move-result-object v6

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 177
    invoke-static/range {v1 .. v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    const-string v1, "androidx.preference.Preference"

    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    const-class v3, Landroid/util/AttributeSet;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 196
    const-string v1, "com.android.camera.module.Y"

    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 197
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "com.android.camera.module.Y#a is not static int"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "i3.b#k is not instance int"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "tu.d#f is not static"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 203
    const-string v1, "Phoenix: OS4 ABI probe rejected camera package"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 204
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    return v7
.end method

.method private static publishMiviBytes(Ljava/lang/ClassLoader;Ljava/lang/Object;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2012
    const-string v0, "c"

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2013
    const-string v1, "d"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2014
    const-string v1, "com.xiaomi.camera.mivi.filter.MIVILutSaver"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2016
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    const-class v3, [B

    filled-new-array {v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "writeLutToDir"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    .line 2018
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 2019
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static publishMiviWatermarkModels(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    new-instance v0, Ljava/io/File;
    const-string v1, "/data/user/0/com.android.camera/files/watermarks"
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :done
    new-instance v4, Ljava/io/File;
    const-string v1, "/data/vendor/camera/watermarks"
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const/4 v1, 0x0
    array-length v2, v0
    :loop
    if-ge v1, v2, :done
    aget-object v3, v0, v1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    move-result v5
    if-eqz v5, :next
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object p0
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v3, p1, p2, v5}, Lcom/prometheus/camera/rev/CameraV51Bridge;->publishMiviWatermarkCategory(Ljava/io/File;Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;)V
    :next
    add-int/lit8 v1, v1, 0x1
    goto :loop
    :done
    return-void
.end method

.method private static publishMiviWatermarkCategory(Ljava/io/File;Ljava/lang/Class;Ljava/lang/String;Ljava/io/File;)V
    .locals 13

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 877
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 880
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v5, p0, v3

    .line 881
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_3

    .line 882
    :cond_1
    new-instance v6, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 885
    :cond_2
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 886
    invoke-static {v9, p2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    .line 887
    :cond_3
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "d"

    invoke-static {p1, v10, v9}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 892
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "MIVI watermark republished selected="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " files="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Phoenix"

    invoke-static {p1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2001
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    .line 2002
    new-array v1, v1, [B

    .line 2004
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 2005
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 2007
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static readUtf8(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1115
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1117
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_0

    sub-int v4, p0, v3

    .line 1121
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    add-int/2addr v3, v4

    goto :goto_0

    .line 1124
    :cond_0
    new-instance p0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1127
    throw p0
.end method

.method private static registerNightEvProtocol(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 511
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Xg"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 512
    const-string v0, "E"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static removeMiviPublication(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2

    .line 2025
    :try_start_0
    const-string v0, "com.xiaomi.camera.mivi.filter.MIVILutCache"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2027
    const-string v0, "getInstance"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2028
    const-string v0, "removeLutName"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrometheusRev: failed to release MIVI token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 2031
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static replace(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2429
    :try_start_0
    invoke-static {p3}, Lde/robv/android/xposed/XC_MethodReplacement;->returnConstant(Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodReplacement;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 2425
    invoke-static {p1, p0, p2, p3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2431
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "PrometheusRev: hook failed "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 2432
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    .line 2433
    throw p0
.end method

.method public static republishSelected(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 824
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 825
    :cond_0
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkLoader:Ljava/lang/ClassLoader;

    .line 826
    sget-object v1, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkFileUtil:Ljava/lang/Class;

    .line 827
    const-string v2, "Phoenix"

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 828
    :cond_1
    const-class v0, Lcom/prometheus/camera/rev/CameraV51Bridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 830
    :try_start_0
    const-string v1, "Gg.s"

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 837
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->publishMiviWatermarkModels(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)V

    .line 838
    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->syncLeicaPublicationToMediaEditor(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 840
    const-string v0, "MIVI republish failed from settings"

    invoke-static {v2, v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 832
    const-string v0, "MIVI republish unavailable before Camera hook"

    invoke-static {v2, v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private static varargs requireMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2444
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 2445
    invoke-virtual {p0, p2, p5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 2446
    const-string p5, "#"

    if-nez p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2447
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unexpectedly returns void"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 2449
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2450
    :cond_2
    new-instance p4, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returns "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 2459
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p3

    if-eq p3, p4, :cond_5

    .line 2460
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    .line 2464
    const-string p1, " is not static"

    goto :goto_2

    :cond_4
    const-string p1, " is unexpectedly static"

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method private static rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1057
    sget-object v0, Lcom/prometheus/camera/rev/CameraV51Bridge;->MIVI_WATERMARK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFileLocked(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1059
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static rewriteMiviFileLocked(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "NRV Leica watermark transformer rejected "

    .line 1063
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1068
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->isByLeicaSelection(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1071
    sget-object v3, Lcom/prometheus/camera/rev/CameraV51Bridge;->MIVI_TRANSFORM_CACHE:Ljava/util/Map;

    monitor-enter v3

    .line 1072
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    monitor-exit v3

    return v2

    .line 1075
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1077
    :try_start_1
    sget-object v1, Lcom/prometheus/camera/rev/CameraV51Bridge;->runtimeLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/prometheus/camera/rev/CameraV51Bridge;->runtimeLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkLoader:Ljava/lang/ClassLoader;

    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_3

    move-object v5, v4

    goto :goto_1

    .line 1078
    :cond_3
    invoke-static {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->applicationContext(Ljava/lang/ClassLoader;)Landroid/content/Context;

    move-result-object v5

    :goto_1
    if-eqz v1, :cond_5

    if-eqz v5, :cond_5

    .line 1082
    const-string v6, "com.prometheus.camera.settings.WatermarkAssetRouter"

    invoke-static {v6, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1084
    const-string v6, "postProcessMivi"

    const-class v7, Landroid/content/Context;

    const-class v8, Ljava/nio/file/Path;

    const-class v9, Ljava/nio/file/Path;

    filled-new-array {v7, v8, v9}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1086
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1087
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1092
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1093
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    monitor-exit v3

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    .line 1088
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1080
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Camera context unavailable for Leica watermark transform"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 1097
    const-string p1, "Phoenix: NRV Leica watermark semantic transform failed"

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 1098
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    return v2

    :catchall_2
    move-exception p0

    .line 1075
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_6
    return v2
.end method

.method private static rewriteMiviWatermarkModels(Ljava/lang/String;)V
    .locals 7
    new-instance v0, Ljava/io/File;
    const-string v1, "/data/user/0/com.android.camera/files/watermarks"
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :done
    new-instance v4, Ljava/io/File;
    const-string v1, "/data/vendor/camera/watermarks"
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    const/4 v1, 0x0
    array-length v2, v0
    :loop
    if-ge v1, v2, :done
    aget-object v3, v0, v1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    move-result v5
    if-eqz v5, :next
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v6
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v3, v5, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviWatermarkCategory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :next
    add-int/lit8 v1, v1, 0x1
    goto :loop
    :done
    return-void
.end method

.method private static rewriteMiviWatermarkCategory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0
    move-object v1, p1
    move-object p0, p2

    .line 953
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 956
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v7, v2, v5

    .line 957
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 958
    :cond_1
    new-instance v8, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 960
    :cond_2
    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 961
    invoke-static {v10, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 966
    :cond_5
    sget-object v2, Lcom/prometheus/camera/rev/CameraV51Bridge;->watermarkFileUtil:Ljava/lang/Class;

    invoke-static {v0, v1, v2, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->synchronizeVendorMiviFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    if-gtz v6, :cond_6

    if-lez v0, :cond_7

    .line 969
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Phoenix: MIVI watermark model synchronized selected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " source="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " vendor="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static scheduleInitialMiviSync(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 928
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$35;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$35;-><init>(Ljava/lang/ClassLoader;)V

    const-string p0, "Phoenix-InitialMiviWatermarkSync"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 946
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 947
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static scheduleMiviWatermarkResync(Ljava/lang/String;)V
    .locals 2

    .line 897
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/prometheus/camera/rev/CameraV51Bridge$34;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge$34;-><init>(Ljava/lang/String;)V

    const-string p0, "Phoenix-MiviWatermarkResync"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 908
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 909
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static selectedClassicStyleLabel(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1969
    const-string v0, "com.prometheus.camera.filters.ClassicStyleStore"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 1971
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static selectedClassicStyleModel(Ljava/lang/ClassLoader;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1952
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1953
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1954
    :cond_0
    const-string p0, "prometheus_classic_style"

    const/4 v0, 0x0

    .line 1955
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "selected_model"

    .line 1956
    const-string v1, "17u"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1957
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1958
    :cond_1
    const-string v9, "17u"

    const-string v10, "blackwhite"

    const-string v2, "m9"

    const-string v3, "passthrough"

    const-string v4, "neutral"

    const-string v5, "12su"

    const-string v6, "fuxi"

    const-string v7, "13u"

    const-string v8, "14u"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_3

    aget-object v2, p1, v0

    .line 1962
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private static summarizeDataItems(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 449
    const-string v0, "null"

    if-nez p0, :cond_0

    return-object v0

    .line 450
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    if-lez v3, :cond_1

    const/16 v4, 0x2c

    .line 453
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 456
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "q"

    invoke-static {v5, v6}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 457
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "i"

    invoke-static {v6, v7}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 458
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "k"

    invoke-static {v7, v8}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 459
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/i="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/k="

    .line 460
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    if-nez v4, :cond_2

    move-object v4, v0

    goto :goto_1

    .line 462
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_4

    const-string p0, ",..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x5d

    .line 466
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static summarizeIds(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 436
    const-string v0, "null"

    if-nez p0, :cond_0

    return-object v0

    .line 437
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    if-lez v3, :cond_1

    const/16 v4, 0x2c

    .line 440
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :cond_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v0

    goto :goto_1

    .line 442
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v2, :cond_4

    const-string p0, ",..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x5d

    .line 445
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static summarizeTopConfigs(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 470
    const-string p0, "null"

    return-object p0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-lez v2, :cond_1

    const/16 v3, 0x2c

    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "c"

    invoke-static {v3, v4}, Lcom/prometheus/camera/rev/CameraV51Bridge;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "?"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const/16 v3, 0x3f

    .line 479
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v1, :cond_4

    const-string p0, ",..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 p0, 0x5d

    .line 483
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static syncClassicCvState(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "classic effect restored source="

    const-string v4, "native effect differs from classic mapping; preserve OS4 state source="

    const-string v5, "sync source="

    const-string v6, "sync-skip source="

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 1826
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->currentCameraModule(Ljava/lang/ClassLoader;)I

    move-result v8

    goto :goto_0

    .line 1827
    :cond_0
    const-string v8, "getModuleIndex"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v1, v8, v9}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1828
    :goto_0
    const-string v9, "com.android.camera.data.data.j"

    invoke-static {v9, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 1830
    const-string v10, "o"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    const-string v11, " cvType="

    const-string v12, " module="

    const/4 v13, 0x1

    if-eq v10, v13, :cond_1

    .line 1832
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicDiagnostic(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1838
    :cond_1
    const-string v6, "i"

    if-eqz v1, :cond_2

    .line 1840
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    .line 1839
    invoke-static {v9, v6, v14}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v13

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-nez v9, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 1843
    invoke-static/range {p0 .. p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicAiScene(Ljava/lang/ClassLoader;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1844
    :goto_2
    const-string v14, "l6.b"

    invoke-static {v14, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 1845
    const-string v15, "com.xiaomi.camera.basic.Global"

    .line 1846
    invoke-static {v15, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v15

    const-string v13, "getContext"

    move-object/from16 v16, v3

    new-array v3, v7, [Ljava/lang/Object;

    .line 1845
    invoke-static {v15, v13, v3}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 1848
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v13, "prometheus_color_development"

    .line 1849
    invoke-virtual {v3, v13, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v13, "pref_prometheus_classic_vignette"

    const/4 v15, 0x1

    .line 1850
    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1851
    const-string v13, "d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v13, v15}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1852
    const-string v15, "com.xiaomi.camera.effect.EffectController"

    invoke-static {v15, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1854
    const-string v15, "s"

    move-object/from16 p1, v13

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v0, v15, v13}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1855
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " aiEnabled="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " scene="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vignetteEnabled="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " previous="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (native effect preserved)"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicDiagnostic(Ljava/lang/String;)V

    if-eq v6, v14, :cond_5

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " native="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mapped="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicDiagnostic(Ljava/lang/String;)V

    if-nez v9, :cond_5

    .line 1874
    const-string v1, "Y"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " aiEnabled=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->classicDiagnostic(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1881
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PrometheusRev: classic CV state sync failed source="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 1882
    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static syncLeicaPublicationToMediaEditor(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/user/0/com.android.camera/files/prometheus/by_leica/current"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user/0/com.miui.mediaeditor/files/prometheus/by_leica/current"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 852
    new-instance v1, Ljava/io/File;

    const-string v2, "manifest.tsv"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    new-instance v2, Ljava/io/File;

    const-string v3, "manifest.commit"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 855
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 857
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 858
    const-string p0, "Phoenix: MediaEditor by-Leica target unavailable"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 863
    :cond_2
    array-length v1, p0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "d"

    if-ge v4, v1, :cond_5

    aget-object v6, p0, v4

    .line 864
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 865
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    .line 866
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 865
    invoke-static {p1, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 868
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 868
    invoke-static {p1, v5, p0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string p0, "Phoenix: by-Leica publication synchronized to MediaEditor"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static synchronizeVendorMiviFiles(Ljava/io/File;Ljava/io/File;Ljava/lang/Class;Ljava/lang/String;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 984
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/user/0/com.android.camera/files/prometheus/watermark_sync"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    .line 987
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 988
    const-string v5, "d"

    if-nez v4, :cond_8

    .line 990
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 992
    :cond_2
    array-length v4, v3

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v8, v3, v6

    .line 993
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 994
    :cond_3
    new-instance v9, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_5

    :cond_4
    :goto_1
    move-object/from16 v2, p1

    goto :goto_4

    .line 997
    :cond_5
    array-length v10, v9

    move v11, v2

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 998
    invoke-static {v12, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v2, p1

    goto :goto_3

    .line 999
    :cond_6
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p1

    invoke-direct {v14, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    .line 1000
    invoke-static {v0, v5, v12}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :goto_4
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    return v7

    .line 1008
    :cond_8
    array-length v2, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_5
    if-ge v6, v2, :cond_10

    aget-object v8, v4, v6

    .line 1009
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    .line 1010
    :cond_9
    new-instance v9, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/prometheus/camera/rev/CameraV51Bridge$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v8, v9}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    if-nez v9, :cond_b

    :cond_a
    :goto_6
    move/from16 p1, v2

    goto/16 :goto_a

    .line 1013
    :cond_b
    array-length v10, v9

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_a

    aget-object v12, v9, v11

    .line 1014
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 p1, v2

    move-object/from16 v2, p0

    invoke-direct {v14, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1015
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_9

    .line 1019
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->copyLeicaTransformSupport(Ljava/io/File;Ljava/io/File;)V

    .line 1021
    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1022
    invoke-static {v12}, Lcom/prometheus/camera/rev/CameraV51Bridge;->readUtf8(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 1023
    :cond_d
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1024
    invoke-static {v13}, Lcom/prometheus/camera/rev/CameraV51Bridge;->readUtf8(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1028
    :goto_8
    invoke-static {v14, v2}, Lcom/prometheus/camera/rev/CameraV51Bridge;->writeUtf8(Ljava/io/File;Ljava/lang/String;)V

    .line 1029
    invoke-static {v14, v1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->rewriteMiviFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_9

    .line 1031
    :cond_e
    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v12

    filled-new-array {v2, v12}, [Ljava/lang/Object;

    move-result-object v2

    .line 1030
    invoke-static {v0, v5, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    :cond_f
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    goto :goto_7

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, p1

    goto/16 :goto_5

    :cond_10
    return v7
.end method

.method private static titleResource(Ljava/lang/ClassLoader;Ljava/lang/String;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2250
    const-string v0, "o3.d"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2251
    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    const/4 v3, 0x1

    .line 2253
    const-string v4, "c"

    if-eqz p2, :cond_3

    .line 2254
    const-string p2, "A9.h"

    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    .line 2255
    invoke-virtual {p2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 2257
    const-string v5, "i3.b"

    invoke-static {v5, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 2258
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2259
    move-object v1, v2

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 2260
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2261
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v1, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 2267
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No OS4 Leica camera item for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2270
    :cond_3
    invoke-static {p0, v0, v2, p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->createNativeFilterItem(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2272
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 2273
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2274
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static unregisterNightEvProtocol(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 517
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Xg"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 518
    const-string v0, "r"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static writeUtf8(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1133
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1135
    :try_start_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1136
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1139
    throw p0
.end method
