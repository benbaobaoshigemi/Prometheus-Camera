.class Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "MediaEditorWatermarkBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$registry:Lcom/prometheus/camera/rev/ContentRegistry;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;->val$registry:Lcom/prometheus/camera/rev/ContentRegistry;

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

    const-string v0, "PrometheusNRV: MediaEditor \u5f95\u5361\u539f\u751f\u6a21\u677f="

    const-string v1, "PrometheusNRV: MediaEditor \u539f\u751f\u8fc7\u6ee4\u76ee\u5f55="

    const/4 v2, 0x1

    .line 244
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 259
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    :cond_1
    :goto_0
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_1
    return-void

    .line 246
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;->val$loader:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$9;->val$registry:Lcom/prometheus/camera/rev/ContentRegistry;

    iget-object p0, p0, Lcom/prometheus/camera/rev/ContentRegistry;->localWatermarkCategories:Ljava/util/List;

    invoke-static {v4, v3, p0}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$1000(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/util/List;)Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;

    move-result-object p0

    .line 248
    iget-object v3, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->config:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$1100()Z

    move-result p1

    if-nez p1, :cond_3

    .line 250
    invoke-static {v2}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$1102(Z)Z

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->nativeCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u672c\u5730\u4e13\u5c5e\u8865\u5145="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->addedCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c\u7ed3\u679c="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->resultCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->nativeLeicaIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u5f95\u5361\u8865\u5145\u6a21\u677f="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge$MergeResult;->addedLeicaIds:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_3
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_5

    .line 260
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p1, v2, :cond_4

    goto :goto_2

    .line 261
    :cond_4
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 260
    :cond_5
    :goto_2
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 259
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v2, :cond_6

    goto :goto_4

    .line 261
    :cond_6
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_5

    .line 260
    :cond_7
    :goto_4
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 262
    :goto_5
    throw p0
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 237
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 238
    invoke-static {}, Lcom/prometheus/camera/rev/MediaEditorWatermarkBridge;->access$900()Ljava/lang/ThreadLocal;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
