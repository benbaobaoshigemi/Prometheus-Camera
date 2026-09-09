.class Lcom/prometheus/camera/rev/CameraV51Bridge$58;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "CameraV51Bridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->hookClassicCvState(Ljava/lang/ClassLoader;)V
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

    .line 1752
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$58;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 1754
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$58;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4300(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1755
    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 1756
    const-string v0, "DarkStrength="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1757
    :cond_1
    const-string v0, "DarkStrength=[-+0-9.eE]+"

    const-string v1, "DarkStrength=0.0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 1759
    const-string p0, "capture CV script DarkStrength=0 preserve-native-effect"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4400(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
