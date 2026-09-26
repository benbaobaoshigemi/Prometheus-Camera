.class public final synthetic Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/prometheus/camera/rev/PhoenixLogSettings$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/prometheus/camera/rev/PhoenixLogSettings;->lambda$toggle$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
