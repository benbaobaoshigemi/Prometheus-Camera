.class Lcom/prometheus/camera/rev/SoftFocusPanel$2;
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

    .line 169
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 12

    .line 171
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 172
    const-string v0, "mPreferenceGroup"

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-class v1, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-string v2, "category_prometheus_classic_controls"

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "find"

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 175
    const-class v2, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-string v4, "prometheus_hdr_always_on"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2b

    goto/16 :goto_ac

    .line 177
    :cond_2b
    const-class v2, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-string v5, "prometheus_soft_focus_panel_enabled"

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    return-void

    .line 178
    :cond_3a
    const-string v0, "requireContext"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/content/Context;

    .line 179
    const-class p0, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-string p1, "androidx.preference.SwitchPreference"

    .line 180
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$000()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 181
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$300()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v8, "prometheus_soft_focus_panel_enabled"

    const-string v9, "\u67d4\u5149\u63a7\u5236\u7ec4\u4ef6"

    const-string v10, "\u5728\u62cd\u7167\u3001\u4eba\u50cf\u3001\u8857\u62cd\u548c\u4e13\u4e1a\u6a21\u5f0f\u663e\u793a\u67d4\u5149\u63a7\u5236"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 179
    const-string v0, "newSwitch"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 182
    const-class p1, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$000()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "listener"

    invoke-static {p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 183
    const-string v0, "e"

    invoke-static {p0, v0, p1}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string p1, "j0"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-class p1, Lcom/prometheus/camera/rev/FeatureEntryPoint;

    const-string v0, "placeAfter"

    filled-new-array {v1, p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "settings inserted enabled="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " after=prometheus_hdr_always_on"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1200(Ljava/lang/String;)V

    :cond_ac
    :goto_ac
    return-void
.end method
