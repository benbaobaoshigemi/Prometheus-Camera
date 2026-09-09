.class Lcom/prometheus/camera/colordev/EntryPoint$6;
.super Ljava/lang/Object;
.source "EntryPoint.java"

# interfaces
.implements Lcom/prometheus/camera/colordev/EntryPoint$HookInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/colordev/EntryPoint;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/colordev/EntryPoint;

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/colordev/EntryPoint;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$6;->this$0:Lcom/prometheus/camera/colordev/EntryPoint;

    iput-object p2, p0, Lcom/prometheus/camera/colordev/EntryPoint$6;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/prometheus/camera/colordev/EntryPoint$6;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/colordev/EntryPoint;->access$500(Ljava/lang/ClassLoader;)V

    return-void
.end method
