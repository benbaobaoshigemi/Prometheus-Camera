.class Lcom/prometheus/camera/colordev/EntryPoint$3;
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


# direct methods
.method constructor <init>(Lcom/prometheus/camera/colordev/EntryPoint;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/prometheus/camera/colordev/EntryPoint$3;->this$0:Lcom/prometheus/camera/colordev/EntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .locals 0

    .line 96
    invoke-static {}, Lcom/prometheus/camera/colordev/EntryPoint;->access$200()V

    return-void
.end method
