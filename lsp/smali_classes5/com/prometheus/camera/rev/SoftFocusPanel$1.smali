.class Lcom/prometheus/camera/rev/SoftFocusPanel$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SoftFocusPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/SoftFocusPanel;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/SoftFocusPanel;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$1;->this$0:Lcom/prometheus/camera/rev/SoftFocusPanel;

    iput-object p2, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$102(Landroid/os/Handler;)Landroid/os/Handler;

    .line 80
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    const-string v1, "prometheus_camera_settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$202(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 81
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$200()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "prometheus_soft_focus_panel_enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$302(Z)Z

    .line 82
    new-instance p1, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;

    invoke-direct {p1, p0}, Lcom/prometheus/camera/rev/SoftFocusPanel$1$1;-><init>(Lcom/prometheus/camera/rev/SoftFocusPanel$1;)V

    invoke-static {p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$402(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 99
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$200()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$400()Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    :try_start_44
    invoke-static {}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1300()V

    .line 102
    const-string p0, "installed modes=163,171,225,167"

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1200(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "installation failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1200(Ljava/lang/String;)V

    .line 105
    throw p0
.end method
