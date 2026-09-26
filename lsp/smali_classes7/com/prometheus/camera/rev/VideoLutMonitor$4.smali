.class Lcom/prometheus/camera/rev/VideoLutMonitor$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutMonitor;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutMonitor;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.android.camera.module.Y"

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xa2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v2, "r2.E"

    invoke-static {v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "q"

    invoke-static {v0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    iget-object v4, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v4, v4, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v5, "g2.a"

    invoke-static {v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "j"

    :goto_0
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v6}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "v2.c0"

    :goto_1
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "x"

    invoke-static {v1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filter after write="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " selection="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "getComponentValue"

    invoke-static {v0, v2, p1}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v1, "com.android.camera.module.Y"

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 67
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 68
    const-string v8, "q6."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "r2."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.camera.data.data."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 69
    :cond_1
    const-string v7, " <- "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutMonitor$4;->this$0:Lcom/prometheus/camera/rev/VideoLutMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filter write="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/VideoLutMonitor;->access$100(Lcom/prometheus/camera/rev/VideoLutMonitor;Ljava/lang/String;)V

    return-void
.end method
