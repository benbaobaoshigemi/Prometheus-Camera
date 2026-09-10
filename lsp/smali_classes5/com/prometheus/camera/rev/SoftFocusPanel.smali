.class public final Lcom/prometheus/camera/rev/SoftFocusPanel;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;
    }
.end annotation


# static fields
.field private static final CAMERA:Ljava/lang/String; = "com.android.camera"

.field private static final CONTROL:Ljava/lang/String; = "com.android.camera.ui.TopAlertSlideSwitchButton"

.field private static final EFFECT:Ljava/lang/String; = "com.xiaomi.camera.effect.EffectController"

.field private static final ENABLED:Ljava/lang/String; = "prometheus_soft_focus_panel_enabled"

.field private static final LABELS:[Ljava/lang/String;

.field private static final PANEL_TYPE:I = 0x50485346

.field private static binding:Z = false

.field private static cameraLoader:Ljava/lang/ClassLoader; = null

.field private static carrierFilterId:I = 0x0

.field private static volatile componentEnabled:Z = true

.field private static effectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static fragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static main:Landroid/os/Handler;

.field private static modeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static noFilterId:I

.field private static panel:Landroid/widget/LinearLayout;

.field private static panelMode:I

.field private static preferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static preferences:Landroid/content/SharedPreferences;

.field private static final readingFilter:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final selections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private static softTypes:[Ljava/lang/Object;

.field private static final standaloneCapture:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static uiPosted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-string v0, "\u9ed1\u67d4"

    const-string v1, "\u767d\u67d4"

    const-string v2, "\u5173\u95ed"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->LABELS:[Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->readingFilter:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->standaloneCapture:Ljava/lang/ThreadLocal;

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->fragment:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    .line 49
    sput v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static acceptFilter(III)V
    .locals 2

    .line 134
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->selection(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->accept(II)Z

    move-result v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    if-eqz v1, :cond_32

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source=filter mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " filter="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " soft="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->log(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->postSelection()V

    :cond_32
    return-void

    :catchall_33
    move-exception p0

    .line 134
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->fragment:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->updatePanel(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->install()V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/ThreadLocal;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->readingFilter:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1500(III)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/rev/SoftFocusPanel;->acceptFilter(III)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->syncFilter(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1700(I)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->effective(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800()[Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->softTypes:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->selection(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2000(I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->isNoFilter(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$2100()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->detach()V

    return-void
.end method

.method static synthetic access$2202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    .line 27
    sput p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    return p0
.end method

.method static synthetic access$2400(I)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->selectManually(I)V

    return-void
.end method

.method static synthetic access$2502(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->uiPosted:Z

    return p0
.end method

.method static synthetic access$2600()V
    .locals 0

    .line 27
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->renderSelection()V

    return-void
.end method

.method static synthetic access$2700()I
    .locals 1

    .line 27
    sget v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->carrierFilterId:I

    return v0
.end method

.method static synthetic access$2800(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->standaloneTag(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900()Ljava/lang/ThreadLocal;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->standaloneCapture:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 27
    sput-boolean p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    return p0
.end method

.method static synthetic access$400()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->preferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic access$402(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    .line 27
    sput-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->preferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method static synthetic access$500()Landroid/util/SparseArray;
    .locals 1

    .line 27
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 27
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->currentMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->supported(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->controller()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Object;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->refreshPreview(Ljava/lang/Object;)V

    return-void
.end method

.method private static applyStyle(Landroid/widget/LinearLayout;)I
    .locals 7

    .line 361
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    const-string v1, "o9.a"

    sget-object v2, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 363
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "f"

    invoke-static {v1, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xba

    .line 364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "e"

    invoke-static {v1, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 365
    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setChildWidth"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v4, "g"

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setChildHeight"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v4, "h"

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setmChildMargin"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setSemicircleRectStyle"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {v1, v6}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setIndicatorColor"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v4, "i"

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setSelectColor"

    invoke-static {p0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v4, "c"

    invoke-static {v1, v4}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "setBackgroundColor"

    invoke-static {p0, v6, v5}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v5, "getBackgroundPaint"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v5, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    .line 373
    const-string v5, "b"

    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    const-string v5, "j"

    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 375
    const-string v3, "f2.e"

    sget-object v5, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v5}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v4}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 376
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "color"

    const-string v5, "com.android.camera"

    const-string v6, "top_alert_slide_switch_normal_color"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 378
    const-string v2, "setNormalColor"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string p0, "d"

    invoke-static {v1, p0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static controller()Ljava/lang/Object;
    .locals 3

    .line 117
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->effectClass:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "s"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static createPanel(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 8

    .line 314
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "com.android.camera"

    const-string v3, "f_d"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 315
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    const-string v1, "com.android.camera.ui.TopAlertSlideSwitchButton$b"

    sget-object v2, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 318
    :goto_28
    sget-object v4, Lcom/prometheus/camera/rev/SoftFocusPanel;->LABELS:[Ljava/lang/String;

    array-length v5, v4

    const-string v6, "b"

    if-ge v3, v5, :cond_5e

    .line 319
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lde/robv/android/xposed/XposedHelpers;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 320
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v6, "c"

    const/high16 v7, 0x1040000

    invoke-static {v5, v6, v7}, Lde/robv/android/xposed/XposedHelpers;->setIntField(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u67d4\u5149\u6548\u679c\uff0c"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "h"

    invoke-static {v5, v6, v4}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 326
    :cond_5e
    const-string v1, "m"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v1, "M"

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v1, "q"

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V

    const v1, 0x50485346

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setType"

    invoke-static {p0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->applyStyle(Landroid/widget/LinearLayout;)I

    .line 333
    :goto_88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_af

    .line 334
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0"

    filled-new-array {v4, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v6, v1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/prometheus/camera/rev/SoftFocusPanel;->LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 337
    :cond_af
    const-string v0, "Z4.c"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 338
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/prometheus/camera/rev/SoftFocusPanel$10;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/SoftFocusPanel$10;-><init>()V

    invoke-static {v1, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    const-string v1, "setSlideSwitchListener"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static currentMode()I
    .locals 2

    .line 115
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->modeClass:Ljava/lang/Class;

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static detach()V
    .locals 2

    .line 270
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    return-void
.end method

.method private static effective(I)I
    .locals 2

    .line 154
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->selection(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    move-result-object p0

    .line 156
    sget-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->effective()I

    move-result p0

    goto :goto_12

    :cond_10
    iget p0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterSoft:I

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 157
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private static install()V
    .locals 5

    .line 161
    const-string v0, "com.xiaomi.camera.effect.EffectController"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->effectClass:Ljava/lang/Class;

    .line 162
    const-string v0, "com.android.camera.module.Y"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->modeClass:Ljava/lang/Class;

    .line 163
    const-string v0, "com.xiaomi.camera.effect.EffectController$c"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->softTypes:[Ljava/lang/Object;

    .line 164
    const-string v0, "i3.b"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "N"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->noFilterId:I

    .line 165
    const-string v0, "o3.d"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    .line 166
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "N_ORIGINAL"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 165
    const-string v2, "valueOf"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    const/high16 v1, 0x10000

    .line 167
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    or-int/2addr v0, v1

    sput v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->carrierFilterId:I

    .line 168
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->installStandaloneSoftFocus()V

    .line 169
    const-class v0, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-class v1, Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/rev/SoftFocusPanel$2;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/SoftFocusPanel$2;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "injectLate"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 193
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$3;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$3;-><init>()V

    const-string v2, "P8.a"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cu.i"

    const-string v3, "c"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 206
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/prometheus/camera/rev/SoftFocusPanel$4;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/SoftFocusPanel$4;-><init>()V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.xiaomi.milab.filtersdk.CandySDK"

    const-string v3, "configPipeline"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 214
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->effectClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/SoftFocusPanel$5;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/SoftFocusPanel$5;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "w"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 237
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->effectClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/SoftFocusPanel$6;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/SoftFocusPanel$6;-><init>()V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "b0"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 246
    const-string v0, "o5.q"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$7;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$7;-><init>()V

    .line 252
    const-class v2, Landroid/view/View;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "initView"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 253
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "provideAnimateElement"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 254
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyAfterFrameAvailable"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 255
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "notifyThemeChanged"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 256
    const-class v2, Landroid/view/View;

    const-class v3, Landroid/os/Bundle;

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "updateView"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 257
    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$8;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$8;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onDestroyView"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installStandaloneSoftFocus()V
    .locals 4

    .line 442
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->effectClass:Ljava/lang/Class;

    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$12;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$12;-><init>()V

    const-string v2, "ru.k"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "b"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 462
    const-string v0, "com.xiaomi.camera.mivi.filter.MIVIRenderTag"

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 463
    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$13;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$13;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "initType"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 472
    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$14;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$14;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "initParams"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 484
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/prometheus/camera/rev/SoftFocusPanel$15;

    invoke-direct {v3}, Lcom/prometheus/camera/rev/SoftFocusPanel$15;-><init>()V

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ri.e"

    const-string v3, "c"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 492
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->cameraLoader:Ljava/lang/ClassLoader;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/SoftFocusPanel$16;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/SoftFocusPanel$16;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.xiaomi.camera.mivi.filter.MIVILutSaver"

    const-string v3, "saveLutByFilterId"

    invoke-static {v2, v0, v3, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static isNoFilter(I)Z
    .locals 1

    .line 427
    sget v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->noFilterId:I

    if-eq p0, v0, :cond_9

    if-nez p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoenixSoftFocus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static postSelection()V
    .locals 2

    .line 383
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    monitor-enter v0

    .line 384
    :try_start_3
    sget-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->uiPosted:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 385
    sput-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->uiPosted:Z

    .line 386
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    .line 387
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->main:Landroid/os/Handler;

    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$11;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_18
    move-exception v1

    .line 386
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private static refreshPreview(Ljava/lang/Object;)V
    .locals 2

    .line 430
    const-string v0, "M"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    .line 431
    :cond_c
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_1b

    .line 432
    const-string v1, "b"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method private static renderSelection()V
    .locals 3

    .line 396
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5a

    sget v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->supported(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_15

    goto :goto_5a

    .line 397
    :cond_15
    sget v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->effective(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 400
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 403
    :cond_26
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    const-string v2, "j"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_5a

    .line 405
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    const-string v2, "l"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_45

    .line 406
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 407
    :cond_45
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 408
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "setIndex"

    invoke-static {v1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    :goto_5a
    return-void
.end method

.method private static selectManually(I)V
    .locals 4

    .line 413
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->currentMode()I

    move-result v0

    .line 414
    sget-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    if-eqz v1, :cond_56

    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_56

    if-ltz p0, :cond_56

    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->LABELS:[Ljava/lang/String;

    array-length v1, v1

    if-lt p0, v1, :cond_16

    goto :goto_56

    .line 415
    :cond_16
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->controller()Ljava/lang/Object;

    move-result-object v1

    .line 416
    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->syncFilter(Ljava/lang/Object;I)V

    .line 418
    sget-object v2, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    monitor-enter v2

    .line 419
    :try_start_20
    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->selection(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    move-result-object v3

    .line 420
    iput p0, v3, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->override:I

    .line 421
    iget v3, v3, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;->filterId:I

    .line 422
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_53

    .line 423
    invoke-static {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->refreshPreview(Ljava/lang/Object;)V

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "source=panel mode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " filter="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " soft="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " scope=session"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->log(Ljava/lang/String;)V

    return-void

    :catchall_53
    move-exception p0

    .line 422
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    :goto_56
    return-void
.end method

.method private static selection(I)Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;
    .locals 2

    .line 120
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->selections:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    if-nez v1, :cond_12

    .line 122
    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel$Selection;-><init>()V

    .line 123
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    return-object v1
.end method

.method private static standaloneTag(Ljava/lang/Object;)Z
    .locals 2

    .line 436
    const-string v0, "mSoftFocusType"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 437
    sget-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->currentMode()I

    move-result v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->supported(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "mFilterId"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->isNoFilter(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    if-eq v0, p0, :cond_2e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :cond_2e
    :goto_2e
    return p0
.end method

.method private static supported(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_13

    const/16 v0, 0xab

    if-eq p0, v0, :cond_13

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_13

    const/16 v0, 0xa7

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static syncFilter(Ljava/lang/Object;I)V
    .locals 4

    .line 142
    const-string v0, "g"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 143
    sget-object v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->readingFilter:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 146
    :try_start_d
    const-string v2, "w"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_28

    .line 148
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 150
    invoke-static {p1, v0, p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->acceptFilter(III)V

    return-void

    :catchall_28
    move-exception p0

    .line 148
    sget-object p1, Lcom/prometheus/camera/rev/SoftFocusPanel;->readingFilter:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 149
    throw p0
.end method

.method private static updatePanel(Ljava/lang/Object;)V
    .locals 15

    const-string v0, "attached mode="

    .line 274
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_17

    .line 275
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->main:Landroid/os/Handler;

    new-instance v1, Lcom/prometheus/camera/rev/SoftFocusPanel$9;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/SoftFocusPanel$9;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 278
    :cond_17
    sget-boolean v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->binding:Z

    if-eqz v1, :cond_1c

    return-void

    .line 279
    :cond_1c
    const-string v1, "mCurrentMode"

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 280
    sget-boolean v2, Lcom/prometheus/camera/rev/SoftFocusPanel;->componentEnabled:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_d3

    invoke-static {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->supported(I)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_d3

    .line 285
    :cond_2f
    const-string v2, "Z"

    invoke-static {p0, v2}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-nez v2, :cond_3a

    return-void

    :cond_3a
    const/4 v4, 0x1

    .line 287
    sput-boolean v4, Lcom/prometheus/camera/rev/SoftFocusPanel;->binding:Z

    const/4 v5, 0x0

    .line 289
    :try_start_3e
    sget-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_53

    .line 290
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->detach()V

    const/4 v6, 0x0

    .line 291
    sput-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    .line 292
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->fragment:Ljava/lang/ref/WeakReference;

    .line 294
    :cond_53
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->controller()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->syncFilter(Ljava/lang/Object;I)V

    .line 295
    sget-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    if-nez v6, :cond_68

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/prometheus/camera/rev/SoftFocusPanel;->createPanel(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    sput-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    .line 296
    :cond_68
    sget-object v6, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-static {v6}, Lcom/prometheus/camera/rev/SoftFocusPanel;->applyStyle(Landroid/widget/LinearLayout;)I

    move-result v6

    .line 297
    sget v7, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    if-eq v7, v1, :cond_74

    move v7, v4

    goto :goto_75

    :cond_74
    move v7, v5

    .line 298
    :goto_75
    sput v1, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    .line 299
    sget-object v8, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v8, v2, :cond_a6

    .line 300
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->detach()V

    .line 301
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v13, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 302
    const-string v2, "fr"

    sget-object v9, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    :cond_a6
    move v4, v7

    .line 305
    :goto_a7
    sget-object p0, Lcom/prometheus/camera/rev/SoftFocusPanel;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->renderSelection()V

    if-eqz v4, :cond_cc

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parent=top_tip_layout soft="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->effective(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->log(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_3e .. :try_end_cc} :catchall_cf

    .line 309
    :cond_cc
    sput-boolean v5, Lcom/prometheus/camera/rev/SoftFocusPanel;->binding:Z

    return-void

    :catchall_cf
    move-exception p0

    sput-boolean v5, Lcom/prometheus/camera/rev/SoftFocusPanel;->binding:Z

    .line 310
    throw p0

    .line 281
    :cond_d3
    :goto_d3
    sget-object v0, Lcom/prometheus/camera/rev/SoftFocusPanel;->fragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_de

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->detach()V

    .line 282
    :cond_de
    sput v3, Lcom/prometheus/camera/rev/SoftFocusPanel;->panelMode:I

    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 3

    .line 75
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_25

    .line 76
    :cond_13
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/SoftFocusPanel$1;

    invoke-direct {v2, p0, p1}, Lcom/prometheus/camera/rev/SoftFocusPanel$1;-><init>(Lcom/prometheus/camera/rev/SoftFocusPanel;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "attach"

    invoke-static {v0, p1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_25
    :goto_25
    return-void
.end method
