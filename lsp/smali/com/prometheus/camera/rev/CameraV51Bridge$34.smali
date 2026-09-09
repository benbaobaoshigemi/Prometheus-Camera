.class Lcom/prometheus/camera/rev/CameraV51Bridge$34;
.super Ljava/lang/Object;
.source "CameraV51Bridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/CameraV51Bridge;->scheduleMiviWatermarkResync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$selected:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 897
    iput-object p1, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$34;->val$selected:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x320

    .line 900
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 901
    iget-object p0, p0, Lcom/prometheus/camera/rev/CameraV51Bridge$34;->val$selected:Ljava/lang/String;

    invoke-static {p0}, Lcom/prometheus/camera/rev/CameraV51Bridge;->access$3000(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 903
    const-string v0, "Phoenix: delayed MIVI watermark resync failed"

    invoke-static {v0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/String;)V

    .line 904
    invoke-static {p0}, Lcom/prometheus/camera/rev/FeatureEntryPoint;->logExternal(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
