.class public final synthetic Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/prometheus/camera/rev/VideoLutQuality;

.field public final synthetic f$1:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/prometheus/camera/rev/VideoLutQuality;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;->f$0:Lcom/prometheus/camera/rev/VideoLutQuality;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VideoLutQuality$$ExternalSyntheticLambda0;->f$1:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/prometheus/camera/rev/VideoLutQuality;->lambda$injectSettings$0$com-prometheus-camera-rev-VideoLutQuality(Ljava/lang/ClassLoader;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
