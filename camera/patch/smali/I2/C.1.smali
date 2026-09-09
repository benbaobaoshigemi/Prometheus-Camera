.class public final LI2/C;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LI2/C$b;,
        LI2/C$c;,
        LI2/C$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/android/camera/fragment/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, LI2/C;->a:Ljava/util/ArrayList;

    iput-object p2, p0, LI2/C;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, LI2/C;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, LI2/C;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$B;I)V
    .locals 5

    check-cast p1, Lcom/android/camera/fragment/u;

    instance-of v0, p1, LI2/C$c;

    iget-object p0, p0, LI2/C;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/d;

    check-cast p1, LI2/C$c;

    iget-object p2, p1, LI2/C$c;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/camera/data/data/d;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, LI2/C$c;->c:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p1, LI2/C$c;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p2, p0, Lcom/android/camera/data/data/d;->h:I

    iget-object v0, p1, LI2/C$c;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    const/16 v2, 0x8

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/data/data/d;->a:Lcom/android/camera/data/data/q;

    instance-of p2, p0, Lcom/android/camera/data/data/p;

    iget-object p1, p1, LI2/C$c;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    check-cast p0, Lcom/android/camera/data/data/p;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/data/data/p;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/data/data/p;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/data/data/p;->c:Ljava/lang/String;

    iget p0, p0, Lcom/android/camera/data/data/p;->d:F

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v4

    new-instance v3, LI2/B;

    invoke-direct {v3, p0, v0, v1}, LI2/B;-><init>(FLjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x21

    invoke-virtual {v2, v3, v4, p2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    instance-of v0, p1, LI2/C$b;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p1, LI2/C$b;

    iget-object p2, p1, LI2/C$b;->b:Landroid/widget/TextView;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/d;

    iget v0, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance p2, LI2/C$a;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p0, p2, LI2/C$a;->a:Ljava/util/List;

    iget-object p0, p1, LI2/C$b;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$B;
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p2, p0, :cond_0

    const p0, 0x7f0e0149

    invoke-static {p1, p0, p1, v0}, LF1/r2;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, LI2/C$c;

    invoke-direct {p1, p0}, LI2/C$c;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const p0, 0x7f0e0147

    invoke-static {p1, p0, p1, v0}, LF1/r2;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, LI2/C$b;

    invoke-direct {p1, p0}, LI2/C$b;-><init>(Landroid/view/View;)V

    return-object p1
.end method
