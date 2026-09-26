.class Lcom/prometheus/camera/rev/VideoLutQuality$4;
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

.field final synthetic val$module:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/Class;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$4;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutQuality$4;->val$module:Ljava/lang/Class;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$4;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$200(Lcom/prometheus/camera/rev/VideoLutQuality;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$4;->val$module:Ljava/lang/Class;

    const-string v2, "a"

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedHelpers;->getStaticIntField(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->supportsMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 168
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "q6.X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "f8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_2
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$4;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "skip quality filter reset "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$400(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 171
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
