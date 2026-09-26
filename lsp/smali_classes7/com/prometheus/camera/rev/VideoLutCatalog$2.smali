.class Lcom/prometheus/camera/rev/VideoLutCatalog$2;
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

    .line 167
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-virtual {v0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$200(Lcom/prometheus/camera/rev/VideoLutCatalog;)Ljava/util/ArrayList;

    move-result-object p0

    .line 171
    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
