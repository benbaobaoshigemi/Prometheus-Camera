.class Lcom/prometheus/camera/rev/VideoLutCatalog$1;
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

    .line 159
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$1;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$1;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-string v2, "mCurrentMode"

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$000(Lcom/prometheus/camera/rev/VideoLutCatalog;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutCatalog$1;->this$0:Lcom/prometheus/camera/rev/VideoLutCatalog;

    invoke-static {p0}, Lcom/prometheus/camera/rev/VideoLutCatalog;->access$100(Lcom/prometheus/camera/rev/VideoLutCatalog;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "h"

    invoke-static {p1, v0, p0}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
