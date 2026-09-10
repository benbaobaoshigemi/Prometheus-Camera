.class Lcom/prometheus/camera/rev/SoftFocusPanel$6;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SoftFocusPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 239
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p0

    if-nez p0, :cond_2c

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$600()I

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$700(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 240
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$600()I

    move-result v0

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1600(Ljava/lang/Object;I)V

    .line 241
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v0, "g"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$2000(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$900(Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method
