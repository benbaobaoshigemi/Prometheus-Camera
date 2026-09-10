.class public final synthetic Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iget-object p0, p0, Lcom/prometheus/camera/rev/VignetteSettings$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/prometheus/camera/rev/VignetteSettings;->lambda$toggle$2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
