.class public final Lr2/i;
.super Lcom/android/camera/data/data/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/data/data/n;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Ljava/util/ArrayList;


# direct methods
.method public static m()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/camera/data/data/d;->d:I

    iput v2, v1, Lcom/android/camera/data/data/d;->e:I

    iput v2, v1, Lcom/android/camera/data/data/d;->f:I

    iput v2, v1, Lcom/android/camera/data/data/d;->h:I

    iput v2, v1, Lcom/android/camera/data/data/d;->j:I

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "0"

    iput-object v4, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_video_cclock_menu:I

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->cclock_format:I

    iput v5, v1, Lcom/android/camera/data/data/d;->k:I

    invoke-static {v0, v1}, LHy/a;->b(Ljava/util/ArrayList;Lcom/android/camera/data/data/d;)Lcom/android/camera/data/data/d;

    move-result-object v1

    iput v2, v1, Lcom/android/camera/data/data/d;->d:I

    iput v2, v1, Lcom/android/camera/data/data/d;->e:I

    iput v2, v1, Lcom/android/camera/data/data/d;->f:I

    iput v2, v1, Lcom/android/camera/data/data/d;->h:I

    iput v2, v1, Lcom/android/camera/data/data/d;->j:I

    iput v3, v1, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "1"

    iput-object v2, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput v4, v1, Lcom/android/camera/data/data/d;->c:I

    iput v5, v1, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static o(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/E;->U(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/E;->S(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/m;->q0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final R(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/android/camera/data/data/B;

    iget v0, p1, Lcom/android/camera/data/data/B;->a:I

    iget-object p1, p1, Lcom/android/camera/data/data/B;->c:Lj9/e;

    iput v0, p0, Lr2/i;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr2/i;->b:Z

    iput-boolean v1, p0, Lr2/i;->c:Z

    iput-boolean v1, p0, Lr2/i;->d:Z

    invoke-virtual {p0, v0}, Lr2/i;->isSupportMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lr2/i;->f:I

    const/4 v1, 0x1

    invoke-static {p1}, Lj9/f;->x4(Lj9/e;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    invoke-static {p1}, Lj9/f;->I0(Lj9/e;)I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->C()I

    move-result v2

    if-eq v3, v2, :cond_1

    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lr2/i;->b:Z

    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lj9/e;->R6:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    sget-object v2, Lga/w0;->B2:Lga/D0;

    invoke-virtual {p1, v2}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p1, Lj9/e;->R6:Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p1, Lj9/e;->R6:Ljava/util/ArrayList;

    :goto_1
    iput-object v2, p0, Lr2/i;->g:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lr2/i;->b:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lr2/i;->f:I

    invoke-virtual {p0, v2}, Lr2/i;->isSupportMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lr2/i;->o(I)Z

    move-result v0

    iput-boolean v0, p0, Lr2/i;->c:Z

    invoke-virtual {p0}, Lr2/i;->q()Z

    move-result v0

    iput-boolean v0, p0, Lr2/i;->d:Z

    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->h()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {p1}, Lj9/f;->k(Lj9/e;)I

    move-result p1

    invoke-static {p1}, Lu6/f;->e0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lr2/i;->e:Z

    :cond_6
    iget-object p1, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    iget-boolean v0, p0, Lr2/i;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lr2/i;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lr2/i;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "reInit:mIsFeatureMutexEnable is %b, mIsQualityMutexEnable is %b, mIsCameraEnable is %b"

    invoke-static {p1, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lr2/i;->m()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-void
.end method

.method public final getCurrentMode()I
    .locals 0

    iget p0, p0, Lr2/i;->f:I

    return p0
.end method

.method public final getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, "0"

    return-object p0
.end method

.method public final getDisplayTitleString()I
    .locals 0

    sget p0, LQh/e;->cclock_format:I

    return p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lr2/i;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public final getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_camera_video_cclock"

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ComponentConfigCclock"

    return-object p0
.end method

.method public final isSupportMode(I)Z
    .locals 2

    const/4 p0, 0x0

    const/16 v0, 0xa2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    :cond_0
    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSwitchOn(I)Z
    .locals 1

    iget-boolean v0, p0, Lr2/i;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lr2/i;->isSupportMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lr2/i;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()I
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget v1, p0, Lr2/i;->f:I

    invoke-virtual {v0, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3001,24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "8,60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "8,120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    :goto_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Z;

    iget v2, p0, Lr2/i;->f:I

    invoke-static {v2}, Lcom/android/camera/data/data/E;->m(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lr2/i;->f:I

    invoke-virtual {v1, v3}, Lv2/Z;->isSwitchOn(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "PRO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lr2/i;->r()Z

    move-result p0

    if-nez p0, :cond_5

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_5
    :goto_2
    return v0
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lr2/i;->f:I

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final q()Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    iget-object v1, v0, Lr2/f0;->g:Lr2/h0;

    iget v2, p0, Lr2/i;->f:I

    iget-object v1, v1, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v1, v2}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lr2/i;->f:I

    iget-object v0, v0, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {v0, v2}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lr2/i;->g:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lr2/j1;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lr2/i;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_0
    const-string p0, "3001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "120"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v3
.end method

.method public final r()Z
    .locals 5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v3

    invoke-virtual {v3}, Lu6/f;->v()I

    move-result v3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->p()I

    move-result v4

    iget v0, v0, Lj9/e;->e:I

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget p0, p0, Lr2/i;->a:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final reset(I)V
    .locals 1

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public final resetComponentValue(I)V
    .locals 1

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iget v0, p0, Lr2/i;->f:I

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public final toSwitch(IZ)V
    .locals 1

    iget-boolean v0, p0, Lr2/i;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lr2/i;->isSupportMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
