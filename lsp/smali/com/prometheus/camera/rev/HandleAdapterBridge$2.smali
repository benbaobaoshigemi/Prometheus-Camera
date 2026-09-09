.class Lcom/prometheus/camera/rev/HandleAdapterBridge$2;
.super Ljava/lang/Object;
.source "HandleAdapterBridge.java"

# interfaces
.implements Lcom/prometheus/camera/rev/HandleAdapterBridge$Part;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/HandleAdapterBridge;->install(Ljava/lang/ClassLoader;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$2;->val$loader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/prometheus/camera/rev/HandleAdapterBridge$2;->val$loader:Ljava/lang/ClassLoader;

    invoke-static {p0}, Lcom/prometheus/camera/rev/HandleAdapterBridge;->access$100(Ljava/lang/ClassLoader;)V

    return-void
.end method
