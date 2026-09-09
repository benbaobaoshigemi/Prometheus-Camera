.class Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AlwaysShutterSoundBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->installWithContext(Ljava/lang/ClassLoader;)V
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

    .line 59
    iput-object p1, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$3;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 70
    invoke-static {}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$400()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 62
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 63
    iget-object p0, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$3;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$200(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$300(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    invoke-static {}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$400()Ljava/lang/ThreadLocal;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
