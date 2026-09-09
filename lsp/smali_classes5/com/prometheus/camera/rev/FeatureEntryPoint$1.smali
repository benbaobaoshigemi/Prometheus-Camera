.class Lcom/prometheus/camera/rev/FeatureEntryPoint$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "FeatureEntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/FeatureEntryPoint;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/FeatureEntryPoint;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/FeatureEntryPoint;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;->this$0:Lcom/prometheus/camera/rev/FeatureEntryPoint;

    iput-object p2, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    iget-object p1, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$300(Ljava/lang/ClassLoader;)V

    .line 41
    iget-object p1, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$400(Ljava/lang/ClassLoader;)V

    .line 42
    iget-object p0, p0, Lcom/prometheus/camera/rev/FeatureEntryPoint$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object p0, p0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$500(Ljava/lang/ClassLoader;)V

    .line 43
    const-string p0, "Feature hooks installed"

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$600(Ljava/lang/String;)V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 36
    iget-object p0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$100()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "prometheus_log_enabled"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->access$200(Z)V

    return-void
.end method
