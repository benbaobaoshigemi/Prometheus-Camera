.class Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "AlwaysShutterSoundBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->installPreference(Ljava/lang/ClassLoader;)V
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

    .line 141
    iput-object p1, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .line 144
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "mPreferenceGroup"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    const-string v1, "prometheus_always_shutter_sound"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 147
    const-string v3, "k0"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const-string v2, "category_advance_setting"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;->val$loader:Ljava/lang/ClassLoader;

    .line 161
    invoke-static {v2}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$200(Ljava/lang/ClassLoader;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v3, 0x7f140eab

    .line 162
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 156
    const-string v1, "addCheckBoxPreference"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 164
    const-string v0, "\u59cb\u7ec8\u5f00\u542f\u5feb\u95e8\u58f0"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "e0"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "\u65e0\u89c6\u7cfb\u7edf\u9759\u97f3\uff0c\u59cb\u7ec8\u64ad\u653e\u5feb\u95e8\u58f0"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "c0"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object p0, p0, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge$7;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/AlwaysShutterSoundBridge;->access$200(Ljava/lang/ClassLoader;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setChecked"

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string p0, "Phoenix: added always-shutter-sound preference"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Host advanced-settings category is unavailable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
