.class Lcom/prometheus/camera/filters/FilterEditorDialog$5;
.super Ljava/lang/Object;
.source "FilterEditorDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/FilterEditorDialog;->effectSelector(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[I)Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$primaryTextColor:Landroid/content/res/ColorStateList;

.field final synthetic val$selected:[I


# direct methods
.method constructor <init>([ILandroid/content/res/ColorStateList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$5;->val$selected:[I

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$5;->val$primaryTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 145
    iget-object p1, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$5;->val$selected:[I

    const/4 p4, 0x0

    aput p3, p1, p4

    .line 146
    instance-of p1, p2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 147
    check-cast p2, Landroid/widget/TextView;

    const/high16 p1, 0x41800000    # 16.0f

    .line 148
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterEditorDialog$5;->val$primaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 150
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setAlpha(F)V

    const p0, 0x800015

    .line 151
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
