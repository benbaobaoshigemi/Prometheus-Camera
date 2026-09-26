.class Lcom/prometheus/camera/rev/VideoLutCover$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VideoLutCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/VideoLutCover;->install(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/rev/VideoLutCover;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutCover;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCover$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v1, "f"

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 38
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCover$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutCover;->access$000(Lcom/prometheus/camera/rev/VideoLutCover;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCover$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutCover;->access$100(Lcom/prometheus/camera/rev/VideoLutCover;)Lcom/prometheus/camera/rev/VideoLutCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    const-string v1, "q"

    invoke-static {p1, v1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 41
    iget-object v1, p0, Lcom/prometheus/camera/rev/VideoLutCover$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-static {v1}, Lcom/prometheus/camera/rev/VideoLutCover;->access$100(Lcom/prometheus/camera/rev/VideoLutCover;)Lcom/prometheus/camera/rev/VideoLutCatalog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->needsVideoCover(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCover$2;->this$0:Lcom/prometheus/camera/rev/VideoLutCover;

    invoke-static {p0, v0, p1}, Lcom/prometheus/camera/rev/VideoLutCover;->access$200(Lcom/prometheus/camera/rev/VideoLutCover;Landroid/widget/ImageView;I)V

    return-void
.end method
