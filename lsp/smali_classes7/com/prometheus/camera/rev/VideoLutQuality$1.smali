.class Lcom/prometheus/camera/rev/VideoLutQuality$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutQuality;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutQuality;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "pid="

    .line 119
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$002(Lcom/prometheus/camera/rev/VideoLutQuality;Landroid/content/Context;)Landroid/content/Context;

    .line 120
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "install="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v4}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$100(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " enabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v4}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$200(Lcom/prometheus/camera/rev/VideoLutQuality;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " module="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v4}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$300(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v3

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v2, "phoenix-quality-install.log"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 123
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$300(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$1;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {p0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$100(Lcom/prometheus/camera/rev/VideoLutQuality;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 122
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
