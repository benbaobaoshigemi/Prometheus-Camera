.class public final Laa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laa/a;->c:Ljava/util/List;

    iput-object p3, p0, Laa/a;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Laa/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;ZZ)V
    .locals 5

    iget-object v0, p0, Laa/a;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Laa/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laa/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/d;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v0, p1, Lcom/android/camera/data/data/d;->m:I

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/camera/data/data/d;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/camera/data/data/d;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/camera/data/data/d;->v:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget-object v1, p0, Laa/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-nez p3, :cond_4

    iget-boolean v0, p1, Lcom/android/camera/data/data/d;->A:Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    sget-object v3, Lo9/a;->a:Lo9/b;

    invoke-interface {v3}, Lo9/b;->e()Lp9/t;

    move-result-object v3

    invoke-interface {v3}, Lp9/t;->B()I

    move-result v3

    goto :goto_2

    :cond_6
    sget-object v3, Lf2/e;->c:Lf2/e;

    const v4, 0x7f060b72

    invoke-virtual {v3, v4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    :goto_2
    iget-object v4, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    const-string p4, "normal"

    invoke-static {v4, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_7

    sget-object v3, Lf2/e;->c:Lf2/e;

    const p4, 0x7f0601a0

    invoke-virtual {v3, p4, v2}, Lf2/e;->a(IZ)I

    move-result v3

    :cond_7
    if-eqz p3, :cond_9

    if-eqz v0, :cond_9

    sget-object p3, Lo9/a;->a:Lo9/b;

    invoke-interface {p3}, Lo9/b;->e()Lp9/t;

    move-result-object p3

    if-eqz p4, :cond_8

    goto :goto_3

    :cond_8
    const/16 v1, 0xff

    :goto_3
    invoke-interface {p3, v1, p2}, Lp9/t;->p(ILandroid/view/View;)V

    :cond_9
    move-object p3, p2

    check-cast p3, Landroid/widget/ImageView;

    iget p4, p1, Lcom/android/camera/data/data/d;->g:I

    if-lez p4, :cond_a

    goto :goto_4

    :cond_a
    iget p4, p1, Lcom/android/camera/data/data/d;->c:I

    :goto_4
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3, v2}, Lf2/a;->e(IZ)Landroid/graphics/ColorFilter;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean p3, p1, Lcom/android/camera/data/data/d;->t:Z

    if-eqz p3, :cond_b

    const p3, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    :cond_b
    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p3

    const p4, 0x3f4ccccd    # 0.8f

    invoke-static {p4, p3}, LS1/i;->j(F[Landroid/view/View;)V

    :goto_5
    iget-boolean p1, p1, Lcom/android/camera/data/data/d;->t:Z

    xor-int/2addr p1, v2

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    iget p0, p0, Laa/a;->d:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setRotation(F)V

    sget-object p0, LF1/D2;->f:LF1/D2;

    iget-boolean p0, p0, LF1/D2;->d:Z

    if-eqz p0, :cond_c

    if-eqz v0, :cond_c

    new-instance p0, LF1/R1;

    const/4 p1, 0x6

    invoke-direct {p0, p2, p1}, LF1/R1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_6
    return-void
.end method
