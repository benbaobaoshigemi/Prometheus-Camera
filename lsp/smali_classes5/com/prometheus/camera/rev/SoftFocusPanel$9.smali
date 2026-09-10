.class Lcom/prometheus/camera/rev/SoftFocusPanel$9;
.super Ljava/lang/Object;
.source "SoftFocusPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/rev/SoftFocusPanel;->updatePanel(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$top:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$9;->val$top:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/prometheus/camera/rev/SoftFocusPanel$9;->val$top:Ljava/lang/Object;

    invoke-static {p0}, Lcom/prometheus/camera/rev/SoftFocusPanel;->access$1100(Ljava/lang/Object;)V

    return-void
.end method
