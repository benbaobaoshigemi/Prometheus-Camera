.class Lcom/prometheus/camera/rev/VideoLutQuality$2;
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


# direct methods
.method constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$2;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$2;->this$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->supportsMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-static {p0, v0}, Lcom/prometheus/camera/rev/VideoLutQuality;->access$502(Lcom/prometheus/camera/rev/VideoLutQuality;Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;)Lcom/prometheus/camera/rev/VideoLutQuality$QualityInput;

    :cond_1
    return-void
.end method
