.class Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;
.super Ljava/lang/Object;
.source "CustomLutPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->showRenameDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

.field final synthetic val$input:Lmiuix/androidbasewidget/widget/StateEditText;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;ILmiuix/androidbasewidget/widget/StateEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iput p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$slot:I

    iput-object p3, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$input:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {p1}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$slot:I

    .line 148
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$input:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$input:Lmiuix/androidbasewidget/widget/StateEditText;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    invoke-static {p1, p2, v0}, Lcom/prometheus/camera/filters/CustomLutStore;->setName(Landroid/content/Context;ILjava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    iget p2, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->val$slot:I

    invoke-static {p1, p2}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->access$200(Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 151
    iget-object p0, p0, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment$3;->this$0:Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/CustomLutPreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method
