.class Lcom/prometheus/camera/filters/FilterEditorDialog$3;
.super Ljava/lang/Object;
.source "FilterEditorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/FilterEditorDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diffusion:[I

.field final synthetic val$grain:[I

.field final synthetic val$name:Lmiuix/androidbasewidget/widget/StateEditText;

.field final synthetic val$refreshed:Ljava/lang/Runnable;

.field final synthetic val$stableId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lmiuix/androidbasewidget/widget/StateEditText;[I[ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$stableId:Ljava/lang/String;

    iput-object p3, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$name:Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p4, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$grain:[I

    iput-object p5, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$diffusion:[I

    iput-object p6, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$refreshed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 107
    :try_start_0
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$stableId:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$name:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$name:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$grain:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$diffusion:[I

    aget v2, v3, v2

    .line 107
    invoke-static {p1, p2, v0, v1, v2}, Lcom/prometheus/camera/filters/FilterCatalogStore;->saveEdits(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 110
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$refreshed:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 112
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$3;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
