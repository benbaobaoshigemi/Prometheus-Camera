.class public final LR/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "LR/l;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LR/l;->a:F

    const/4 v1, 0x0

    iput v1, p0, LR/l;->b:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, LR/l;->d:Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, LR/l;->e:F

    iput v0, p0, LR/l;->f:F

    iput v0, p0, LR/l;->g:F

    iput v0, p0, LR/l;->h:F

    iput v1, p0, LR/l;->i:F

    iput v1, p0, LR/l;->j:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, LR/l;->k:F

    iput v1, p0, LR/l;->l:F

    iput v0, p0, LR/l;->m:F

    iput v0, p0, LR/l;->n:F

    iput v0, p0, LR/l;->o:F

    iput v1, p0, LR/l;->p:F

    iput v1, p0, LR/l;->q:F

    return-void
.end method

.method public static d(FF)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_2

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/d;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ/d;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "alpha"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v7, "transitionPathRotate"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "elevation"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v7, "rotation"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v7, "transformPivotY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v7, "transformPivotX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v7, "scaleY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_7
    const-string/jumbo v7, "scaleX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_1

    :cond_9
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_8
    const-string v7, "progress"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_9
    const-string/jumbo v7, "translationZ"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_a
    const-string/jumbo v7, "translationY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_b
    const-string/jumbo v7, "translationX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_c
    const-string/jumbo v7, "rotationY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_1

    :cond_e
    move v6, v0

    goto :goto_1

    :sswitch_d
    const-string/jumbo v7, "rotationX"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_1

    :cond_f
    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    const-string v4, "CUSTOM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "MotionPaths"

    if-eqz v4, :cond_11

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v6, p0, LR/l;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/a;

    instance-of v6, v3, LQ/d$b;

    if-eqz v6, :cond_10

    check-cast v3, LQ/d$b;

    iget-object v2, v3, LQ/d$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/a;->a()F

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string v3, "UNKNOWN spline "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget v2, p0, LR/l;->e:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_2

    :cond_12
    iget v4, p0, LR/l;->e:F

    :goto_2
    invoke-virtual {v3, v4, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_1
    iget v2, p0, LR/l;->p:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3

    :cond_13
    iget v5, p0, LR/l;->p:F

    :goto_3
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_2
    iget v2, p0, LR/l;->f:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_4

    :cond_14
    iget v5, p0, LR/l;->f:F

    :goto_4
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_3
    iget v2, p0, LR/l;->g:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_5

    :cond_15
    iget v5, p0, LR/l;->g:F

    :goto_5
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_4
    iget v2, p0, LR/l;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_6

    :cond_16
    iget v5, p0, LR/l;->l:F

    :goto_6
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_5
    iget v2, p0, LR/l;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_7

    :cond_17
    iget v5, p0, LR/l;->k:F

    :goto_7
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_6
    iget v2, p0, LR/l;->j:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_8

    :cond_18
    iget v4, p0, LR/l;->j:F

    :goto_8
    invoke-virtual {v3, v4, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_7
    iget v2, p0, LR/l;->i:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    iget v4, p0, LR/l;->i:F

    :goto_9
    invoke-virtual {v3, v4, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_8
    iget v2, p0, LR/l;->q:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_a

    :cond_1a
    iget v5, p0, LR/l;->q:F

    :goto_a
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_9
    iget v2, p0, LR/l;->o:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_b

    :cond_1b
    iget v5, p0, LR/l;->o:F

    :goto_b
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_a
    iget v2, p0, LR/l;->n:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_c

    :cond_1c
    iget v5, p0, LR/l;->n:F

    :goto_c
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_b
    iget v2, p0, LR/l;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_d

    :cond_1d
    iget v5, p0, LR/l;->m:F

    :goto_d
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_c
    iget v2, p0, LR/l;->a:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_e

    :cond_1e
    iget v5, p0, LR/l;->a:F

    :goto_e
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :pswitch_d
    iget v2, p0, LR/l;->h:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_f

    :cond_1f
    iget v5, p0, LR/l;->h:F

    :goto_f
    invoke-virtual {v3, v5, p2}, LN/l;->b(FI)V

    goto/16 :goto_0

    :cond_20
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, LR/l;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    iput v0, p0, LR/l;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, LR/l;->f:F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, LR/l;->g:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, LR/l;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, LR/l;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, LR/l;->i:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, LR/l;->j:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, LR/l;->k:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, LR/l;->l:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, LR/l;->m:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, LR/l;->n:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, LR/l;->o:F

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LR/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public final e(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/c;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p1

    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget p4, p2, Landroidx/constraintlayout/widget/c$d;->c:I

    iput p4, p0, LR/l;->b:I

    iget v0, p2, Landroidx/constraintlayout/widget/c$d;->b:I

    iput v0, p0, LR/l;->c:I

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->d:F

    :goto_0
    iput p2, p0, LR/l;->e:F

    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget-boolean p4, p2, Landroidx/constraintlayout/widget/c$e;->m:Z

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->n:F

    iput p4, p0, LR/l;->f:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->b:F

    iput p4, p0, LR/l;->g:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->c:F

    iput p4, p0, LR/l;->h:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->d:F

    iput p4, p0, LR/l;->a:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->e:F

    iput p4, p0, LR/l;->i:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->f:F

    iput p4, p0, LR/l;->j:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->g:F

    iput p4, p0, LR/l;->k:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->h:F

    iput p4, p0, LR/l;->l:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->j:F

    iput p4, p0, LR/l;->m:F

    iget p4, p2, Landroidx/constraintlayout/widget/c$e;->k:F

    iput p4, p0, LR/l;->n:F

    iget p2, p2, Landroidx/constraintlayout/widget/c$e;->l:F

    iput p2, p0, LR/l;->o:F

    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    iget-object p4, p2, Landroidx/constraintlayout/widget/c$c;->d:Ljava/lang/String;

    invoke-static {p4}, LN/c;->c(Ljava/lang/String;)LN/c;

    iget p2, p2, Landroidx/constraintlayout/widget/c$c;->h:F

    iput p2, p0, LR/l;->p:F

    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget p2, p2, Landroidx/constraintlayout/widget/c$d;->e:F

    iput p2, p0, LR/l;->q:F

    iget-object p2, p1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v0, 0x4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v1, p1, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/a;

    iget-object v2, v1, Landroidx/constraintlayout/widget/a;->c:Landroidx/constraintlayout/widget/a$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    const/4 v0, 0x7

    if-eq v2, v0, :cond_1

    iget-object v0, p0, LR/l;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    const/high16 p2, 0x42b40000    # 90.0f

    if-eq p3, p1, :cond_5

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_5

    if-eq p3, v0, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p0, LR/l;->g:F

    add-float/2addr p1, p2

    iput p1, p0, LR/l;->g:F

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_4

    const/high16 p2, 0x43b40000    # 360.0f

    sub-float/2addr p1, p2

    iput p1, p0, LR/l;->g:F

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget p1, p0, LR/l;->g:F

    sub-float/2addr p1, p2

    iput p1, p0, LR/l;->g:F

    return-void
.end method
