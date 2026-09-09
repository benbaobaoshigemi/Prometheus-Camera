.class Lcom/prometheus/camera/filters/FilterEditorDialog$1;
.super Ljava/lang/Object;
.source "FilterEditorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/FilterEditorDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$deleteRequested:Ljava/lang/Runnable;

.field final synthetic val$editorDialog:[Lmiuix/appcompat/app/h;


# direct methods
.method constructor <init>([Lmiuix/appcompat/app/h;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$1;->val$editorDialog:[Lmiuix/appcompat/app/h;

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$1;->val$deleteRequested:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$1;->val$editorDialog:[Lmiuix/appcompat/app/h;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lmiuix/appcompat/app/h;->dismiss()V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$1;->val$deleteRequested:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
