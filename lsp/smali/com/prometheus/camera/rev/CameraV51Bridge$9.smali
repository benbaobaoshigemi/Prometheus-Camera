.class Lcom/prometheus/camera/rev/CameraV51Bridge$9;
.super Ljava/lang/Object;
.source "CameraV51Bridge.java"

# interfaces
.implements Lcom/prometheus/camera/rev/CameraV51Bridge$InstallStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->install(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/prometheus/camera/rev/ContentRegistry;

.field final synthetic val$loader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$9;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$9;->val$content:Lcom/prometheus/camera/rev/ContentRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$9;->val$loader:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$9;->val$content:Lcom/prometheus/camera/rev/ContentRegistry;

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$800(Ljava/lang/ClassLoader;Lcom/prometheus/camera/rev/ContentRegistry;)V

    return-void
.end method
