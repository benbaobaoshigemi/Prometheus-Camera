.class Lcom/prometheus/camera/rev/StreetUiEntryPoint$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "StreetUiEntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/StreetUiEntryPoint;->installStreetUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 115
    invoke-static {}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->enabled()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    .line 116
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/StreetUiEntryPoint;->access$402(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->refreshAfterStreetTransition()V

    .line 118
    const-string p0, "PhoenixStreetUI: exit started; soft-focus UI suppressed"

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
