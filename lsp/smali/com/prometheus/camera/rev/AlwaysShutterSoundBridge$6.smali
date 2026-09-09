.class Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$6;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AlwaysShutterSoundBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->installRingerGateBypass(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$6;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 131
    invoke-static {}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4

    .line 114
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "F1.D3$d"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$6;->val$loader:Ljava/lang/ClassLoader;

    .line 117
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$200(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-static {p0, v1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    .line 121
    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$300(I)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 124
    const-string p0, "Phoenix: bypassed ringer gate for shutter dispatch"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
