.class public final LR/f;
.super LR/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR/f$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, LR/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LR/f;->e:I

    const/4 v0, -0x1

    iput v0, p0, LR/f;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, LR/f;->g:Ljava/lang/String;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, LR/f;->h:F

    const/4 v2, 0x0

    iput v2, p0, LR/f;->i:F

    iput v2, p0, LR/f;->j:F

    iput v1, p0, LR/f;->k:F

    iput v0, p0, LR/f;->l:I

    iput v1, p0, LR/f;->m:F

    iput v1, p0, LR/f;->n:F

    iput v1, p0, LR/f;->o:F

    iput v1, p0, LR/f;->p:F

    iput v1, p0, LR/f;->q:F

    iput v1, p0, LR/f;->r:F

    iput v1, p0, LR/f;->s:F

    iput v1, p0, LR/f;->t:F

    iput v1, p0, LR/f;->u:F

    iput v1, p0, LR/f;->v:F

    iput v1, p0, LR/f;->w:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LR/d;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/d;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()LR/d;
    .locals 2

    new-instance v0, LR/f;

    invoke-direct {v0}, LR/f;-><init>()V

    invoke-super {v0, p0}, LR/d;->c(LR/d;)LR/d;

    iget v1, p0, LR/f;->e:I

    iput v1, v0, LR/f;->e:I

    iget v1, p0, LR/f;->f:I

    iput v1, v0, LR/f;->f:I

    iget-object v1, p0, LR/f;->g:Ljava/lang/String;

    iput-object v1, v0, LR/f;->g:Ljava/lang/String;

    iget v1, p0, LR/f;->h:F

    iput v1, v0, LR/f;->h:F

    iget v1, p0, LR/f;->i:F

    iput v1, v0, LR/f;->i:F

    iget v1, p0, LR/f;->j:F

    iput v1, v0, LR/f;->j:F

    iget v1, p0, LR/f;->k:F

    iput v1, v0, LR/f;->k:F

    iget v1, p0, LR/f;->l:I

    iput v1, v0, LR/f;->l:I

    iget v1, p0, LR/f;->m:F

    iput v1, v0, LR/f;->m:F

    iget v1, p0, LR/f;->n:F

    iput v1, v0, LR/f;->n:F

    iget v1, p0, LR/f;->o:F

    iput v1, v0, LR/f;->o:F

    iget v1, p0, LR/f;->p:F

    iput v1, v0, LR/f;->p:F

    iget v1, p0, LR/f;->q:F

    iput v1, v0, LR/f;->q:F

    iget v1, p0, LR/f;->r:F

    iput v1, v0, LR/f;->r:F

    iget v1, p0, LR/f;->s:F

    iput v1, v0, LR/f;->s:F

    iget v1, p0, LR/f;->t:F

    iput v1, v0, LR/f;->t:F

    iget v1, p0, LR/f;->u:F

    iput v1, v0, LR/f;->u:F

    iget v1, p0, LR/f;->v:F

    iput v1, v0, LR/f;->v:F

    iget p0, p0, LR/f;->w:F

    iput p0, v0, LR/f;->w:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LR/f;->b()LR/d;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, LR/f;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, LR/f;->n:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, LR/f;->o:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v0, p0, LR/f;->q:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v0, p0, LR/f;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, LR/f;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v0, p0, LR/f;->t:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, LR/f;->p:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    iget v0, p0, LR/f;->u:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v0, p0, LR/f;->v:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v0, p0, LR/f;->w:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "translationZ"

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, LR/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object p0, p0, LR/d;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CUSTOM,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    sget-object v0, LS/d;->KeyCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, LR/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget-object v2, LR/f$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unused attribute 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCycle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iget v2, p0, LR/f;->j:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    iput v1, p0, LR/f;->j:F

    goto/16 :goto_1

    :pswitch_1
    iget v2, p0, LR/f;->k:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->k:F

    goto/16 :goto_1

    :pswitch_2
    iget v2, p0, LR/f;->w:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, LR/f;->w:F

    goto/16 :goto_1

    :pswitch_3
    iget v2, p0, LR/f;->v:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, LR/f;->v:F

    goto/16 :goto_1

    :pswitch_4
    iget v2, p0, LR/f;->u:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, LR/f;->u:F

    goto/16 :goto_1

    :pswitch_5
    iget v2, p0, LR/f;->t:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->t:F

    goto/16 :goto_1

    :pswitch_6
    iget v2, p0, LR/f;->s:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->s:F

    goto/16 :goto_1

    :pswitch_7
    iget v2, p0, LR/f;->p:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->p:F

    goto/16 :goto_1

    :pswitch_8
    iget v2, p0, LR/f;->r:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->r:F

    goto/16 :goto_1

    :pswitch_9
    iget v2, p0, LR/f;->q:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->q:F

    goto/16 :goto_1

    :pswitch_a
    iget v2, p0, LR/f;->o:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->o:F

    goto/16 :goto_1

    :pswitch_b
    iget v2, p0, LR/f;->n:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, LR/f;->n:F

    goto/16 :goto_1

    :pswitch_c
    iget v2, p0, LR/f;->m:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->m:F

    goto/16 :goto_1

    :pswitch_d
    iget v2, p0, LR/f;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR/f;->l:I

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget v2, p0, LR/f;->i:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, LR/f;->i:F

    goto/16 :goto_1

    :cond_0
    iget v2, p0, LR/f;->i:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->i:F

    goto :goto_1

    :pswitch_f
    iget v2, p0, LR/f;->h:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, LR/f;->h:F

    goto :goto_1

    :pswitch_10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v4, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LR/f;->g:Ljava/lang/String;

    const/4 v1, 0x7

    iput v1, p0, LR/f;->f:I

    goto :goto_1

    :cond_1
    iget v2, p0, LR/f;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR/f;->f:I

    goto :goto_1

    :pswitch_11
    iget v2, p0, LR/f;->e:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, LR/f;->e:I

    goto :goto_1

    :pswitch_12
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_1

    :pswitch_13
    iget v2, p0, LR/d;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, LR/d;->a:I

    goto :goto_1

    :pswitch_14
    sget-boolean v2, LR/q;->S0:Z

    if-eqz v2, :cond_2

    iget v2, p0, LR/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, LR/d;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LR/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v4, :cond_3

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LR/d;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget v2, p0, LR/d;->b:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, LR/d;->b:I

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public final g(Ljava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "LQ/c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x7

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "CUSTOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, LR/d;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    if-eqz v6, :cond_0

    sget-object v7, Landroidx/constraintlayout/widget/a$a;->b:Landroidx/constraintlayout/widget/a$a;

    iget-object v8, v6, Landroidx/constraintlayout/widget/a;->c:Landroidx/constraintlayout/widget/a$a;

    if-eq v8, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LQ/c;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget v8, v0, LR/d;->a:I

    iget v13, v0, LR/f;->f:I

    iget-object v14, v0, LR/f;->g:Ljava/lang/String;

    iget v15, v0, LR/f;->l:I

    iget v9, v0, LR/f;->h:F

    iget v10, v0, LR/f;->i:F

    iget v11, v0, LR/f;->j:F

    invoke-virtual {v6}, Landroidx/constraintlayout/widget/a;->a()F

    move-result v12

    iget-object v7, v5, LN/f;->f:Ljava/util/ArrayList;

    move-object/from16 v16, v7

    new-instance v7, LN/f$b;

    move-object/from16 v2, v16

    invoke-direct/range {v7 .. v12}, LN/f$b;-><init>(IFFFF)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v15, v3, :cond_3

    iput v15, v5, LN/f;->e:I

    :cond_3
    iput v13, v5, LN/f;->c:I

    invoke-virtual {v5, v6}, LN/f;->b(Landroidx/constraintlayout/widget/a;)V

    iput-object v14, v5, LN/f;->d:Ljava/lang/String;

    :goto_1
    const/4 v2, 0x7

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_2
    move v2, v3

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v2, "wavePhase"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v2, "waveOffset"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "alpha"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v2, "transitionPathRotate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "elevation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string/jumbo v2, "rotation"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_2

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v2, "scaleY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string/jumbo v2, "scaleX"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_8
    const-string v2, "progress"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    const-string/jumbo v2, "translationZ"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_2

    :cond_e
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_a
    const-string/jumbo v2, "translationY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_b
    const-string/jumbo v2, "translationX"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_2

    :cond_10
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    const-string/jumbo v2, "rotationY"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_d
    const-string/jumbo v2, "rotationX"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "  UNKNOWN  "

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "WARNING! KeyCycle"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_4
    move v11, v2

    goto :goto_5

    :pswitch_0
    iget v2, v0, LR/f;->j:F

    goto :goto_4

    :pswitch_1
    iget v2, v0, LR/f;->i:F

    goto :goto_4

    :pswitch_2
    iget v2, v0, LR/f;->m:F

    goto :goto_4

    :pswitch_3
    iget v2, v0, LR/f;->p:F

    goto :goto_4

    :pswitch_4
    iget v2, v0, LR/f;->n:F

    goto :goto_4

    :pswitch_5
    iget v2, v0, LR/f;->o:F

    goto :goto_4

    :pswitch_6
    iget v2, v0, LR/f;->t:F

    goto :goto_4

    :pswitch_7
    iget v2, v0, LR/f;->s:F

    goto :goto_4

    :pswitch_8
    iget v2, v0, LR/f;->k:F

    goto :goto_4

    :pswitch_9
    iget v2, v0, LR/f;->w:F

    goto :goto_4

    :pswitch_a
    iget v2, v0, LR/f;->v:F

    goto :goto_4

    :pswitch_b
    iget v2, v0, LR/f;->u:F

    goto :goto_4

    :pswitch_c
    iget v2, v0, LR/f;->r:F

    goto :goto_4

    :pswitch_d
    iget v2, v0, LR/f;->q:F

    goto :goto_4

    :goto_5
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ/c;

    if-nez v2, :cond_15

    goto/16 :goto_1

    :cond_15
    iget v7, v0, LR/d;->a:I

    iget v5, v0, LR/f;->f:I

    iget-object v12, v0, LR/f;->g:Ljava/lang/String;

    iget v13, v0, LR/f;->l:I

    iget v8, v0, LR/f;->h:F

    iget v9, v0, LR/f;->i:F

    iget v10, v0, LR/f;->j:F

    iget-object v14, v2, LN/f;->f:Ljava/util/ArrayList;

    new-instance v6, LN/f$b;

    invoke-direct/range {v6 .. v11}, LN/f$b;-><init>(IFFFF)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v13, v3, :cond_16

    iput v13, v2, LN/f;->e:I

    :cond_16
    iput v5, v2, LN/f;->c:I

    iput-object v12, v2, LN/f;->d:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    return-void

    nop

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
        -0x266f082 -> :sswitch_5
        -0x42d1a3 -> :sswitch_4
        0x2382115 -> :sswitch_3
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_1
        0x5b327a02 -> :sswitch_0
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
