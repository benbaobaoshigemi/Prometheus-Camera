.class final Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;
.super Ljava/lang/Object;
.source "AlwaysShutterSoundBridge.java"


# static fields
.field private static final INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static final KEY:Ljava/lang/String; = "prometheus_always_shutter_sound"

.field private static final PLAY_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final RINGER_BYPASS_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final SHUTTER_DISPATCH:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHUTTER_LOAD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->PLAY_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->RINGER_BYPASS_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->SHUTTER_LOAD:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->SHUTTER_DISPATCH:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 16
    sget-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->INSTALLED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->installWithContext(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/ClassLoader;)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->enabled(Ljava/lang/ClassLoader;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->isShutterSound(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/lang/ThreadLocal;
    .locals 1

    .line 16
    sget-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->SHUTTER_LOAD:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 16
    sget-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->PLAY_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/ThreadLocal;
    .locals 1

    .line 16
    sget-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->SHUTTER_DISPATCH:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 16
    sget-object v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->RINGER_BYPASS_LOGGED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->resetAudioTrack(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static enabled(Ljava/lang/ClassLoader;)Z
    .locals 4

    const/4 v0, 0x0

    .line 202
    :try_start_0
    const-string v1, "g2.a"

    .line 203
    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "g"

    new-array v2, v0, [Ljava/lang/Object;

    .line 202
    invoke-static {p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 204
    const-string v1, "h"

    const-string v2, "prometheus_always_shutter_sound"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 206
    const-string v1, "Phoenix: cannot read host always-shutter preference"

    invoke-static {v1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    return v0
.end method

.method static install(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 28
    const-class v0, Landroid/app/Application;

    const-class v1, Landroid/content/Context;

    new-instance v2, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$1;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$1;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "attach"

    invoke-static {v0, v1, p0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installPreference(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;

    invoke-direct {v0, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.android.camera.fragment.settings.CameraAdvancePreferenceFragment"

    const-string v2, "addAdvancePreferences"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 173
    const-string v0, "androidx.preference.Preference"

    const/4 v1, 0x0

    .line 177
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    new-instance v2, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$8;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$8;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-string v1, "com.android.camera.fragment.settings.CameraPreferenceFragment"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installRingerGateBypass(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    const-class v0, Landroid/media/AudioManager;

    new-instance v1, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$5;

    invoke-direct {v1}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$5;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getRingerMode"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 106
    const-class v0, Ljava/lang/Object;

    new-instance v1, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$6;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$6;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "F1.z3"

    const-string v2, "accept"

    invoke-static {v1, p0, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private static installWithContext(Ljava/lang/ClassLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    const-string v1, "F1.D3"

    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    new-instance v2, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$2;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$2;-><init>(Ljava/lang/ClassLoader;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "c"

    invoke-static {v1, p0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 57
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    new-instance v1, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$3;

    invoke-direct {v1, p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$3;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 74
    const-class v0, Landroid/media/AudioAttributes$Builder;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$4;

    invoke-direct {v2}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$4;-><init>()V

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setLegacyStreamType"

    invoke-static {v0, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 90
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->installRingerGateBypass(Ljava/lang/ClassLoader;)V

    .line 91
    const-string p0, "Phoenix: installed always-shutter-sound adapter for F1.D3"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void
.end method

.method private static isShutterSound(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

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

.method private static resetAudioTrack(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 218
    const-string v0, "q"

    :try_start_0
    const-string v1, "F1.D3"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 219
    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    const-string v3, "l"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    .line 221
    invoke-static {p0, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->setStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 223
    const-string v0, "Phoenix: cannot rebuild shutter AudioTrack"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 224
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
