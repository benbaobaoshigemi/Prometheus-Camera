.class Lcom/prometheus/camera/rev/VideoLutQuality$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutQuality;->install(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

.field final synthetic val$rules:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Class;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->val$rules:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "quality applied "

    .line 180
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutQuality;->supportsMode(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "quality entry module="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v5}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$200(Lcom/prometheus/camera/rev/VideoLutQuality;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " incoming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$200(Lcom/prometheus/camera/rev/VideoLutQuality;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutQuality;->supportsMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->val$rules:Ljava/lang/Class;

    const-string v4, "apply"

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v6, v6, v3

    iget-object v7, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iget-object v9, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget-object v10, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v10, v10, v2

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lde/robv/android/xposed/XposedHelpers;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 190
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 187
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$5;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V

    .line 188
    throw p1

    :cond_2
    :goto_0
    return-void
.end method
