.class Lcom/prometheus/camera/colordev/EntryPoint$25;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "EntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->hookClassicPreviewRefresh(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$25;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 1

    .line 663
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/colordev/EntryPoint$25;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$3200(Ljava/lang/ClassLoader;)V

    :cond_1
    :goto_0
    return-void
.end method
