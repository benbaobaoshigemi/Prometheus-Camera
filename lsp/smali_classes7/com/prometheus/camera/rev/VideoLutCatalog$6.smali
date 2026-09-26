.class Lcom/prometheus/camera/rev/VideoLutCatalog$6;
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

    .line 199
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-virtual {v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$600(Lcom/prometheus/camera/rev/VideoLutCatalog;)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$400(Lcom/prometheus/camera/rev/VideoLutCatalog;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->hasLut(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$6;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$700(Lcom/prometheus/camera/rev/VideoLutCatalog;I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method
