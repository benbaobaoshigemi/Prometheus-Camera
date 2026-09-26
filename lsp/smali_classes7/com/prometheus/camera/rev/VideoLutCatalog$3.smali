.class Lcom/prometheus/camera/rev/VideoLutCatalog$3;
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

    .line 175
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$3;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$3;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$000(Lcom/prometheus/camera/rev/VideoLutCatalog;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$3;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$200(Lcom/prometheus/camera/rev/VideoLutCatalog;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
