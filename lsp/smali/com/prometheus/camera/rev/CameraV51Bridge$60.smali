.class Lcom/prometheus/camera/rev/CameraV51Bridge$60;
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

    .line 1783
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$60;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1785
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$60;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4300(Ljava/lang/ClassLoader;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1786
    :cond_0
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string p1, "mParams"

    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1787
    instance-of p1, p0, Lorg/json/JSONObject;

    if-nez p1, :cond_1

    return-void

    .line 1788
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .line 1789
    const-string p1, "cvFilterNeedDark"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 1790
    const-string v0, "filterScript"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1791
    invoke-static {p1}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4700(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 1792
    const-string v1, "@CvEffect;"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1793
    const-string v1, "DarkStrength=[-+0-9.eE]+"

    const-string v2, "DarkStrength=0.0"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1795
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1796
    const-string p0, "capture final JSONObject DarkStrength=0 preserve-native-effect"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4400(Ljava/lang/String;)V

    .line 1799
    :cond_2
    const-string p0, "capture final JSONObject needDark=false preserve-native-effect"

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$4400(Ljava/lang/String;)V

    return-void
.end method
