.class Lcom/prometheus/camera/colordev/EntryPoint$15;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookSettings(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$switchClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$15;->val$switchClass:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10

    .line 324
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "mPreferenceGroup"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    const-string v1, "category_advance_setting"

    invoke-static {v0, v1}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1900(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "requireActivity"

    invoke-static {p1, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 330
    iget-object v4, p0, Lcom/prometheus/camera/colordev/EntryPoint$15;->val$switchClass:Ljava/lang/Class;

    const-string v8, "\u63a7\u5236\u5f95\u5361\u7ecf\u5178\u7740\u8272\u5668\u6697\u89d2\u6548\u679c"

    const/4 v9, 0x1

    const-string v6, "pref_prometheus_classic_vignette"

    const-string v7, "\u5f95\u5361\u7ecf\u5178\u6697\u89d2"

    move-object v2, v0

    move-object v3, v1

    move-object v5, p1

    invoke-static/range {v2 .. v9}, Lcom/prometheus/camera/colordev/EntryPoint;->access$2000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 332
    iget-object v4, p0, Lcom/prometheus/camera/colordev/EntryPoint$15;->val$switchClass:Ljava/lang/Class;

    const-string v8, "普通拍照的底层 AI 场景调校；默认遵循相机，切换后强制开启或关闭"

    invoke-static {p1}, Lcom/prometheus/camera/colordev/XiaomiAsd;->checked(Landroid/content/Context;)Z

    move-result v9

    const-string v6, "pref_prometheus_xiaomi_ai_asd"

    const-string v7, "\u5c0f\u7c73ASD"

    invoke-static/range {v2 .. v9}, Lcom/prometheus/camera/colordev/EntryPoint;->access$2000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
