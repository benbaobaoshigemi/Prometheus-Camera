.class Lcom/prometheus/camera/rev/VideoLutCatalog$4;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutCatalog;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutCatalog;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$4;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$4;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$000(Lcom/prometheus/camera/rev/VideoLutCatalog;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$4;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    const-string v1, "v2.c0"

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$300(Lcom/prometheus/camera/rev/VideoLutCatalog;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$4;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$400(Lcom/prometheus/camera/rev/VideoLutCatalog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->hasLut(II)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$4;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$500(Lcom/prometheus/camera/rev/VideoLutCatalog;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 187
    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v3, v2

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setComponentValue"

    invoke-static {v1, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "migrated selection "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoenixVideoLut"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
