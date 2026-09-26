.class public final Lr2/m0;
.super Lv2/h;
.source "SourceFile"


# instance fields
.field public j0:Z


# direct methods
.method public constructor <init>(Lr2/f1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv2/h;-><init>(Lv2/D0;)V

    iput-object p1, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    return-void
.end method

.method public static O(Ljava/util/ArrayList;)V
    .locals 3

    sget-object v0, Le2/a;->b:Ljava/lang/String;

    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/camera/data/data/d;->c:I

    iput v2, v1, Lcom/android/camera/data/data/d;->d:I

    iput v2, v1, Lcom/android/camera/data/data/d;->e:I

    iput v2, v1, Lcom/android/camera/data/data/d;->f:I

    iput v2, v1, Lcom/android/camera/data/data/d;->h:I

    iput v2, v1, Lcom/android/camera/data/data/d;->j:I

    iput v2, v1, Lcom/android/camera/data/data/d;->k:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/camera/data/data/d;->z:I

    iput-object v0, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    const-string v0, "AUTO"

    iput-object v0, v1, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final A(I)F
    .locals 2

    iget-boolean v0, p0, Lv2/h;->e0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv2/h;->g0:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lv2/h;->A(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lv2/h;->y()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv2/h;->B()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final D(Lj9/e;)V
    .locals 2

    iget v0, p0, Lv2/h;->b0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lv2/h;->D(Lj9/e;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lj9/f;->e(Lj9/e;)[F

    move-result-object p1

    iput-object p1, p0, Lv2/h;->c:[F

    return-void
.end method

.method public final F(I)V
    .locals 8

    iget v0, p0, Lv2/h;->b0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa9

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lv2/h;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lv2/h;->i:I

    return-void

    :cond_1
    iget v0, p0, Lv2/h;->b0:I

    const/4 v1, 0x0

    const/16 v2, 0xb4

    const/16 v3, 0xa9

    const/16 v4, 0xa7

    const/16 v5, 0xa4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v0, v7, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_5

    iput v1, p0, Lv2/h;->i:I

    return-void

    :cond_2
    iget-object p1, p0, Lv2/h;->d:[B

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_4

    aget-byte v2, p1, v1

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p1

    if-nez p1, :cond_4

    iput v7, p0, Lv2/h;->i:I

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput v6, p0, Lv2/h;->i:I

    return-void

    :cond_5
    iput v6, p0, Lv2/h;->i:I

    return-void

    :cond_6
    const/4 v7, 0x3

    if-eq v0, v6, :cond_8

    if-ne v0, v7, :cond_7

    goto :goto_2

    :cond_7
    return-void

    :cond_8
    :goto_2
    if-eq p1, v5, :cond_a

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_a

    iput v1, p0, Lv2/h;->i:I

    return-void

    :cond_9
    iput v7, p0, Lv2/h;->i:I

    return-void

    :cond_a
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/G0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/G0;

    iget-boolean v0, p1, Lr2/G0;->h:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lr2/G0;->p()Z

    move-result p1

    if-eqz p1, :cond_b

    iput v7, p0, Lv2/h;->i:I

    return-void

    :cond_b
    iput v2, p0, Lv2/h;->i:I

    return-void

    :cond_c
    iget-object p1, p0, Lv2/h;->d:[B

    array-length v0, p1

    :goto_3
    if-ge v1, v0, :cond_e

    aget-byte v3, p1, v1

    if-nez v3, :cond_d

    move v7, v2

    goto :goto_4

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    iput v7, p0, Lv2/h;->i:I

    return-void
.end method

.method public final G(I)V
    .locals 7

    iget v0, p0, Lv2/h;->b0:I

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lv2/h;->k:F

    invoke-static {p1, v0, v2}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x2

    const/16 v3, 0xb4

    const/16 v4, 0xa7

    const/16 v5, 0xa4

    const-string v6, "-1.0"

    if-ne v0, v1, :cond_6

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lv2/h;->l:F

    invoke-static {p1, v0, v2}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/G0;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/G0;

    iget-boolean v0, p1, Lr2/G0;->h:Z

    if-nez v0, :cond_2

    iput-object v6, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_2
    invoke-virtual {p1}, Lr2/G0;->q()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lr2/G0;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lr2/G0;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lv2/h;->l:F

    invoke-static {p1, v0, v2}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_4
    iput-object v6, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_5
    :goto_0
    iput-object v6, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lv2/h;->n:F

    invoke-static {p1, v0, v2}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_7
    iput-object v6, p0, Lv2/h;->h:Ljava/lang/String;

    return-void

    :cond_8
    const-string p1, "0.0"

    iput-object p1, p0, Lv2/h;->h:Ljava/lang/String;

    return-void
.end method

.method public final H()V
    .locals 2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lu6/f;->O(I)Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->g2(Lj9/e;)Z

    move-result v0

    iput-boolean v0, p0, Lv2/h;->U:Z

    return-void
.end method

.method public final J()Z
    .locals 4

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xa9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lv2/h;->o:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lv2/h;->J()Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    iget-boolean v0, p0, Lv2/h;->W:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/G0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/G0;

    iget-boolean v1, v0, Lr2/G0;->h:Z

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lv2/h;->o:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lr2/m0;->K()Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2

    :cond_3
    iget-boolean v1, p0, Lv2/h;->o:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lr2/m0;->K()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lr2/G0;->r()Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    invoke-super {p0}, Lv2/h;->J()Z

    move-result p0

    return p0
.end method

.method public final K()Z
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa9

    if-ne v0, v1, :cond_1

    invoke-super {p0}, Lv2/h;->K()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v1, Lr2/z0;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/z0;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "wide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final L(F)Z
    .locals 2

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lv2/h;->L(F)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lr2/m0;->K()Z

    move-result p0

    return p0
.end method

.method public final N(Lcom/android/camera/data/data/B;)V
    .locals 0

    invoke-super {p0, p1}, Lv2/h;->N(Lcom/android/camera/data/data/B;)V

    invoke-virtual {p0}, Lr2/m0;->J()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lr2/m0;->j0:Z

    return-void
.end method

.method public final bridge synthetic R(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/data/data/B;

    invoke-virtual {p0, p1}, Lr2/m0;->N(Lcom/android/camera/data/data/B;)V

    return-void
.end method

.method public final checkValueValid(ILjava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lv2/h;->c0:Z

    const-string v1, "ComponentManuallyAperture"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "unsupported Variable aperture"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lv2/h;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/d;

    iget-object v0, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/16 p0, 0xa3

    if-eq p1, p0, :cond_4

    const/16 p0, 0xba

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa7

    if-ne p1, p0, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_4
    sget-object p0, Le2/a;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_5
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lv2/h;->c:[F

    aget p2, p0, v3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_6

    array-length p2, p0

    sub-int/2addr p2, v2

    aget p0, p0, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_6

    goto :goto_0

    :cond_6
    sget-boolean p0, Lv2/h;->i0:Z

    if-eqz p0, :cond_8

    const-string p0, "checkValueValid: invalid value!"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v3
.end method

.method public final disableUpdate()Z
    .locals 0

    iget-boolean p0, p0, Lr2/m0;->j0:Z

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lr2/m0;->A(I)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getComponentNextValue(IZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object p0, p0, Lv2/h;->h0:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-eqz p2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    move p1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p1, v1, p2}, LPq/b;->r(III)I

    move-result p1

    if-ne p1, v1, :cond_5

    const-string p0, "-1.0"

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContentDescriptionString()I
    .locals 0

    sget p0, LQh/e;->parameter_aperture_title:I

    return p0
.end method

.method public final getDefaultValueDisplayString(I)I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget p0, LQh/e;->pref_camera_aperture_entry_auto_abbr:I

    return p0
.end method

.method public final getDisplayTitleString()I
    .locals 0

    sget p0, LQh/e;->pref_camera_aperture_title_abbr:I

    return p0
.end method

.method public final getKey(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa4

    const-class v1, Lr2/G0;

    if-eq p1, v0, :cond_b

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_5

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_4

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string p0, "pref_camera_aperture_retain_key"

    return-object p0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/G0;

    iget-boolean p1, p0, Lr2/G0;->h:Z

    const-string v0, "pref_camera_pro_video_aperture_key"

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lr2/G0;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lr2/G0;->p()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "pref_camera_pro_video_aperture_priority_aperture_key"

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    const-string p0, "pref_fastmotion_camera_pro_video_aperture_key"

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lv2/h;->I()Z

    move-result p0

    const-string p1, "pref_camera_pro_aperture_key"

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "pref_camera_pro_ultrapixelon_aperture_key"

    return-object p0

    :cond_6
    return-object p1

    :cond_7
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/G0;

    iget-boolean v0, p0, Lr2/G0;->h:Z

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lr2/G0;->q()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    invoke-virtual {p0}, Lr2/G0;->p()Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "pref_camera_pro_aperture_priority_aperture_key"

    return-object p0

    :cond_a
    return-object p1

    :cond_b
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/G0;

    iget-boolean p1, p0, Lr2/G0;->h:Z

    const-string v0, "pref_cinemaster_camera_pro_video_aperture_key"

    if-nez p1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Lr2/G0;->q()Z

    move-result p1

    if-eqz p1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0}, Lr2/G0;->p()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "pref_cinemaster_camera_pro_video_aperture_priority_aperture_key"

    return-object p0

    :cond_e
    return-object v0
.end method

.method public final getValueDisplayStringNotFromResource(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lr2/m0;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lr2/m0;->K()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "-1.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lv2/h;->e0:Z

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v2, Lr2/G0;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/G0;

    iget-boolean v2, p1, Lr2/G0;->h:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lv2/h;->e0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lr2/G0;->q()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lr2/G0;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lv2/h;->e0:Z

    :cond_4
    iget-object p1, p0, Lv2/h;->g0:Ljava/lang/Float;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lv2/h;->g0:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    invoke-virtual {p0}, Lv2/h;->B()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lv2/h;->g0:Ljava/lang/Float;

    :cond_6
    iget-boolean p1, p0, Lv2/h;->e0:Z

    if-nez p1, :cond_7

    invoke-virtual {p0, p2}, Lv2/h;->M(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    iput-boolean v0, p0, Lv2/h;->f0:Z

    return-void
.end method

.method public final p(Ljava/util/ArrayList;)V
    .locals 8

    iget-object p0, p0, Lv2/h;->c:[F

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.00"

    invoke-direct {v5, v6, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/data/data/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, -0x1

    iput v6, v5, Lcom/android/camera/data/data/d;->c:I

    iput v6, v5, Lcom/android/camera/data/data/d;->d:I

    iput v6, v5, Lcom/android/camera/data/data/d;->e:I

    iput v6, v5, Lcom/android/camera/data/data/d;->f:I

    iput v6, v5, Lcom/android/camera/data/data/d;->h:I

    iput v6, v5, Lcom/android/camera/data/data/d;->j:I

    iput v6, v5, Lcom/android/camera/data/data/d;->k:I

    iput v1, v5, Lcom/android/camera/data/data/d;->z:I

    iput-object v4, v5, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v3}, Lv2/h;->w(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Ljava/util/ArrayList;)V
    .locals 8

    iget-object p0, p0, Lv2/h;->c:[F

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.00"

    invoke-direct {v5, v6, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/data/data/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, -0x1

    iput v6, v5, Lcom/android/camera/data/data/d;->c:I

    iput v6, v5, Lcom/android/camera/data/data/d;->d:I

    iput v6, v5, Lcom/android/camera/data/data/d;->e:I

    iput v6, v5, Lcom/android/camera/data/data/d;->f:I

    iput v6, v5, Lcom/android/camera/data/data/d;->h:I

    iput v6, v5, Lcom/android/camera/data/data/d;->j:I

    iput v6, v5, Lcom/android/camera/data/data/d;->k:I

    iput v1, v5, Lcom/android/camera/data/data/d;->z:I

    iput-object v4, v5, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v3}, Lv2/h;->w(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 4

    iget v0, p0, Lv2/h;->b0:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lv2/h;->r()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lv2/h;->c:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    aget v0, v0, v1

    iput v0, p0, Lv2/h;->l:F

    return v3

    :cond_2
    return v1
.end method

.method public final reset(I)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/G0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/G0;

    invoke-virtual {v0}, Lr2/G0;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lr2/m0;->F(I)V

    invoke-virtual {p0, p1}, Lv2/h;->E(I)V

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const/16 v1, 0xa4

    const-string v2, "1.42"

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1}, Lv2/h;->reset(I)V

    goto :goto_0

    :cond_0
    const-string v1, "pref_camera_pro_video_aperture_key"

    sget-object v3, Le2/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    const-string v1, "pref_camera_pro_video_aperture_priority_aperture_key"

    invoke-virtual {v0, v1, v2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    goto :goto_0

    :cond_1
    const-string v1, "pref_camera_pro_aperture_key"

    sget-object v3, Le2/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    const-string v1, "pref_camera_pro_aperture_priority_aperture_key"

    invoke-virtual {v0, v1, v2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    goto :goto_0

    :cond_2
    const-string v1, "pref_cinemaster_camera_pro_video_aperture_key"

    sget-object v3, Le2/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    const-string v1, "pref_cinemaster_camera_pro_video_aperture_priority_aperture_key"

    invoke-virtual {v0, v1, v2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lv2/h;->reset(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lv2/h;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr2/m0;->i(ILjava/lang/String;)V

    return-void
.end method

.method public final resetComponentValue(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lv2/h;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr2/m0;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public final setComponentValue(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/G0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/G0;

    iget-boolean v1, v0, Lr2/G0;->h:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr2/G0;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Le2/a;->b:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public final t(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lv2/h;->i:I

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    if-eq v1, p1, :cond_3

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lr2/m0;->O(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lr2/m0;->q(Ljava/util/ArrayList;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lr2/m0;->q(Ljava/util/ArrayList;)V

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lr2/m0;->p(Ljava/util/ArrayList;)V

    return-object v0

    :cond_3
    invoke-static {v0}, Lr2/m0;->O(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lr2/m0;->p(Ljava/util/ArrayList;)V

    return-object v0

    :cond_4
    sget-boolean p0, Lv2/h;->i0:Z

    if-eqz p0, :cond_5

    const-string p0, " is not support adjust Aperture"

    invoke-static {p1, p0}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "ComponentManuallyAperture"

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-object v0
.end method
