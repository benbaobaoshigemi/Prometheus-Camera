.class Lcom/prometheus/camera/rev/PhoenixCineAnimFix$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "PhoenixCineAnimFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->hook(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-static {p1}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->access$000(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    .line 169
    invoke-static {v0}, Lcom/prometheus/camera/rev/PhoenixCineAnimFix;->access$102(Z)Z

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CineAnimFix] onRender hook \u5f02\u5e38\uff0c\u5df2\u81ea\u52a8\u505c\u7528: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 171
    const-string v0, "MCAM_CineAnimFix"

    const-string v1, "hook exception, disabled"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
