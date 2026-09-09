.class public LK4/r;
.super Lcom/android/camera/fragment/t;
.source "SourceFile"

# interfaces
.implements LQ6/N;


# instance fields
.field public I:LK4/p;

.field public J:LK4/m;

.field public K:LK4/p;

.field public L:Ljava/lang/String;

.field public M:I

.field public N:I

.field public O:I

.field public P:Lv2/H;

.field public r:Landroid/widget/LinearLayout;

.field public s:LK4/s;

.field public t:LK4/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/t;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LK4/r;->M:I

    iput v0, p0, LK4/r;->N:I

    iput v0, p0, LK4/r;->O:I

    return-void
.end method


# virtual methods
.method public final Cd()V
    .locals 6

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_2

    check-cast p0, LK4/w;

    invoke-static {}, Lcom/android/camera/data/data/E;->I()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/high16 v3, -0x40000000    # -2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, LK4/v;->b:Lcom/android/camera/ui/CombineSlideView;

    invoke-virtual {v0, v3, v2}, Lcom/android/camera/ui/CombineSlideView;->l(FZ)V

    iget-object p0, p0, LK4/v;->b:Lcom/android/camera/ui/CombineSlideView;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/ui/CombineSlideView;->i(IZ)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, LK4/v;->c:LK4/i;

    invoke-virtual {v4, v0}, LK4/i;->j(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget-object v4, p0, LK4/v;->b:Lcom/android/camera/ui/CombineSlideView;

    invoke-virtual {p0}, LK4/v;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v3, v0

    :goto_0
    invoke-virtual {v4, v3, v2}, Lcom/android/camera/ui/CombineSlideView;->l(FZ)V

    iget-object v0, p0, LK4/v;->b:Lcom/android/camera/ui/CombineSlideView;

    invoke-virtual {p0}, LK4/v;->b()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/CombineSlideView;->i(IZ)V

    :cond_2
    return-void
.end method

.method public final Dg()Ljava/lang/String;
    .locals 4

    const v0, 0x7f1405d3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    iget-object p0, p0, LK4/r;->I:LK4/p;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget v1, p0, LK4/p;->e:I

    iget-object v2, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    invoke-virtual {v2}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, LK4/p;->i:Lcom/android/camera/fragment/R0;

    iget-boolean v3, v3, Lcom/android/camera/fragment/R0;->a:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/d;

    invoke-static {p0, v0}, LK4/p;->a(LK4/p;Lcom/android/camera/data/data/d;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final Em()Z
    .locals 0

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LK4/s;->M0()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiHandle"
        type = 0x0
    .end annotation

    iget v0, p0, LK4/r;->N:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported show type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LK4/r;->N:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, LK4/r;->s:LK4/s;

    invoke-interface {p0, p1}, LK4/s;->G0(Z)V

    return-void
.end method

.method public final G4(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LK4/s;->H0(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final I2(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07145b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f071564

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, LK4/r;->N:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const v1, 0x7f071501

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    invoke-virtual {p0}, LK4/r;->Wq()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final Io(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, LK4/r;->lr(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/s;->er()V

    :cond_0
    return p1
.end method

.method public final K9()Z
    .locals 1

    iget p0, p0, LK4/r;->N:I

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x10

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_1

    and-int/lit8 p0, p0, 0x40

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

.method public final Mi(II)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedBeautyLens"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/i0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i0;

    iget v1, p0, LK4/r;->N:I

    const/16 v2, 0x40

    const v3, 0x7f140297

    const v4, 0x7f1405d3

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lv2/i0;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->J0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->O0(Landroid/content/Context;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/E;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/E;->i0()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, LK4/r;->O:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Lv2/i0;->x()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->J0()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->O0(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v1, 0xb4

    const v2, 0x7f1402a6

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_5

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->J0()V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    if-eq p2, p1, :cond_6

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->O0(Landroid/content/Context;)V

    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_9

    const/16 p1, 0xe3

    if-ne v0, p1, :cond_8

    goto :goto_3

    :cond_8
    if-nez p2, :cond_a

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->J0()V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->O0(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    :cond_a
    :goto_4
    iget-object p1, p0, LK4/r;->I:LK4/p;

    if-eqz p1, :cond_b

    iget-object p1, p1, LK4/p;->a:Lcom/android/camera/data/data/c;

    instance-of p1, p1, Lv2/w;

    if-eqz p1, :cond_b

    iget-object p1, p0, LK4/r;->I:LK4/p;

    iget-object p1, p1, LK4/p;->a:Lcom/android/camera/data/data/c;

    check-cast p1, Lv2/w;

    iget p1, p1, Lv2/w;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    const p1, 0x7f1405d3

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    :cond_b
    sget-object p1, LF1/D2;->f:LF1/D2;

    iget-boolean p1, p1, LF1/D2;->d:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    iget-object p0, p0, LK4/r;->L:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public final Oq()I
    .locals 0

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf0

    return p0

    :cond_0
    const p0, 0xfffa

    return p0
.end method

.method public final Pq()F
    .locals 0

    const p0, 0x7f070412

    invoke-static {p0}, LO2/b;->c(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final Rq()Landroid/view/View;
    .locals 0

    iget-object p0, p0, LK4/r;->s:LK4/s;

    invoke-interface {p0}, LK4/s;->I0()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final Wq()Z
    .locals 2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/H;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/H;

    iput-object v0, p0, LK4/r;->P:Lv2/H;

    invoke-virtual {v0}, Lv2/H;->n()I

    move-result v0

    iput v0, p0, LK4/r;->N:I

    invoke-virtual {p0}, LK4/r;->K9()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final Zq()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LK4/r;->I:LK4/p;

    if-eqz v2, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v1, Lv2/w;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/w;

    invoke-virtual {p0}, Lv2/w;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, LK4/r;->t:LK4/d;

    if-eqz p0, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v1, Lv2/k;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k;

    invoke-virtual {p0}, Lv2/k;->getItems()Ljava/util/List;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/d;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Lcom/android/camera/data/data/d;->k:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final ac()Lcom/android/camera/data/data/c;
    .locals 1

    iget v0, p0, LK4/r;->N:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p0, p0, LK4/r;->I:LK4/p;

    if-eqz p0, :cond_0

    iget-object p0, p0, LK4/p;->a:Lcom/android/camera/data/data/c;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final configFragmentData(LZ1/b;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->configFragmentData(LZ1/b;)V

    const/4 p0, 0x0

    new-array v0, p0, [I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, LZ1/b;->a(I[I)V

    const/4 v0, 0x6

    new-array v1, p0, [I

    invoke-virtual {p1, v0, v1}, LZ1/b;->a(I[I)V

    const/4 v0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, v0, p0}, LZ1/b;->a(I[I)V

    return-void
.end method

.method public final constructConfigItem()LZ1/a;
    .locals 2

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LZ1/a$a;

    invoke-direct {v0}, LZ1/a$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, LZ1/a$a;->a:Z

    invoke-virtual {p0}, Lcom/android/camera/fragment/s;->Vq()Z

    move-result p0

    iput-boolean p0, v0, LZ1/a$a;->b:Z

    iput-boolean v1, v0, LZ1/a$a;->c:Z

    const/4 p0, 0x4

    iput p0, v0, LZ1/a$a;->e:I

    const/16 p0, 0x8

    iput p0, v0, LZ1/a$a;->f:I

    const/16 p0, 0xa

    iput p0, v0, LZ1/a$a;->d:I

    invoke-virtual {v0}, LZ1/a$a;->a()LZ1/a;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/t;->constructConfigItem()LZ1/a;

    move-result-object p0

    return-object p0
.end method

.method public final g2()V
    .locals 2

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    check-cast p0, LK4/w;

    invoke-static {}, Lcom/android/camera/data/data/E;->o0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LK4/v;->c:LK4/i;

    if-eqz v1, :cond_0

    iget-object p0, p0, LK4/v;->b:Lcom/android/camera/ui/CombineSlideView;

    invoke-virtual {v1, v0}, LK4/i;->j(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/camera/ui/CombineSlideView;->a:Lcom/android/camera/ui/h;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/h;->d(F)V

    :cond_0
    return-void
.end method

.method public final getFragmentId()I
    .locals 0

    const/16 p0, 0xffb

    return p0
.end method

.method public final getHeight()I
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const v1, 0x7f07145b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f071564

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, LK4/r;->N:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const v2, 0x7f071501

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    invoke-virtual {p0}, LK4/r;->Wq()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public final getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0e011a

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FragmentFNumberAdjust"

    return-object p0
.end method

.method public final initView(Landroid/view/View;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/xiaomi/camera/base/ui/fragments/d;->initView(Landroid/view/View;)V

    const v0, 0x7f0b046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v0, Lv2/H;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/H;

    iput-object p1, p0, LK4/r;->P:Lv2/H;

    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LK4/r;->provideAnimateElement(ILjava/util/List;I)V

    iget-object p1, p0, LK4/r;->P:Lv2/H;

    invoke-virtual {p1}, Lv2/H;->n()I

    move-result p1

    iput p1, p0, LK4/r;->N:I

    invoke-static {}, Lcom/android/camera/data/data/r;->a()I

    move-result p1

    iput p1, p0, LK4/r;->O:I

    iget p1, p0, LK4/r;->M:I

    iget v2, p0, LK4/r;->N:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iput v2, p0, LK4/r;->M:I

    iput-object v0, p0, LK4/r;->t:LK4/d;

    iput-object v0, p0, LK4/r;->I:LK4/p;

    iput-object v0, p0, LK4/r;->J:LK4/m;

    if-eq v2, v1, :cond_9

    const/4 p1, 0x4

    if-eq v2, p1, :cond_8

    const/16 p1, 0xa

    const-class v0, Lv2/w;

    if-eq v2, p1, :cond_6

    const/16 p1, 0xc

    if-eq v2, p1, :cond_4

    const/16 p1, 0x12

    if-eq v2, p1, :cond_7

    const/16 p1, 0x14

    if-eq v2, p1, :cond_5

    const/16 p1, 0x20

    if-eq v2, p1, :cond_2

    const/16 p1, 0x40

    if-ne v2, p1, :cond_1

    new-instance p1, LK4/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v5, Lv2/k;

    invoke-virtual {v2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-direct {p1, v0, v1, v2}, LK4/p;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/data/data/c;)V

    iput-object p1, p0, LK4/r;->K:LK4/p;

    new-instance p1, LK4/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, LK4/w;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object p1, p0, LK4/r;->s:LK4/s;

    iget-object p1, p0, LK4/r;->K:LK4/p;

    iput-boolean v3, p1, LK4/p;->h:Z

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported show type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, LK4/r;->N:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, LK4/m;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v4, p1, LK4/m;->e:I

    iput v4, p1, LK4/m;->f:I

    iput-boolean v3, p1, LK4/m;->g:Z

    const v2, 0x7f0b028f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p1, LK4/m;->c:Landroid/widget/FrameLayout;

    const v6, 0x7f0b028e

    if-nez v5, :cond_3

    const v5, 0x7f0b0290

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p1, LK4/m;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p1, LK4/m;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const-string v2, "beauty_lens_list"

    invoke-direct {v1, v4, v0, v2, v4}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(ILandroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p1, LK4/m;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/camera/fragment/v;

    invoke-direct {v1}, Lcom/android/camera/fragment/v;-><init>()V

    const-wide/16 v5, 0x96

    iput-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView$l;->f:J

    iput-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView$l;->e:J

    iput-wide v5, v1, Landroidx/recyclerview/widget/RecyclerView$l;->c:J

    iget-object v2, p1, LK4/m;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v1, p1, LK4/m;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lr9/a$b;

    invoke-direct {v2, v0}, Lr9/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p1, LK4/m;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/U;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/U;

    iput-object v1, p1, LK4/m;->a:Lv2/U;

    new-instance v2, Lcom/android/camera/features/mode/cinematic/b;

    invoke-direct {v2, v0, v1}, Lr9/a;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/c;)V

    iput-object v2, p1, LK4/m;->b:Lcom/android/camera/features/mode/cinematic/b;

    iput-object p1, p0, LK4/r;->J:LK4/m;

    new-instance p1, LK4/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, LK4/w;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object p1, p0, LK4/r;->s:LK4/s;

    goto/16 :goto_3

    :cond_4
    new-instance p1, LK4/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    invoke-direct {p1, v1, v2}, LK4/d;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object p1, p0, LK4/r;->t:LK4/d;

    :cond_5
    new-instance p1, LK4/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    invoke-virtual {v5, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/c;

    invoke-direct {p1, v1, v2, v0}, LK4/p;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/data/data/c;)V

    iput-object p1, p0, LK4/r;->I:LK4/p;

    goto :goto_1

    :cond_6
    new-instance p1, LK4/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    invoke-direct {p1, v1, v2}, LK4/d;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object p1, p0, LK4/r;->t:LK4/d;

    :cond_7
    new-instance p1, LK4/p;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    invoke-virtual {v5, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/c;

    invoke-direct {p1, v1, v2, v0}, LK4/p;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Lcom/android/camera/data/data/c;)V

    iput-object p1, p0, LK4/r;->I:LK4/p;

    goto :goto_2

    :cond_8
    :goto_1
    new-instance p1, LK4/w;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, LK4/w;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    iput-object p1, p0, LK4/r;->s:LK4/s;

    goto :goto_3

    :cond_9
    :goto_2
    new-instance p1, LK4/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget-object v0, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-virtual {p0}, Lcom/android/camera/fragment/h;->getDegree()I

    move-result v2

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v1, p1, LK4/t;->e:I

    iput v2, p1, LK4/t;->b:I

    const v1, 0x7f0b0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SeekBarCompat;

    iput-object v2, p1, LK4/t;->a:Lcom/android/camera/ui/SeekBarCompat;

    if-nez v2, :cond_a

    const v2, 0x7f0b0079

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    const v5, 0x7f0e00b0

    invoke-virtual {v2, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SeekBarCompat;

    iput-object v0, p1, LK4/t;->a:Lcom/android/camera/ui/SeekBarCompat;

    :cond_a
    iput-object p1, p0, LK4/r;->s:LK4/s;

    :goto_3
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->J0()V

    iget-object p1, p0, LK4/r;->t:LK4/d;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, LK4/d;->J0()V

    :cond_b
    iget-object p1, p0, LK4/r;->I:LK4/p;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, LK4/p;->J0()V

    :cond_c
    iget-object p1, p0, LK4/r;->J:LK4/m;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, LK4/m;->J0()V

    :cond_d
    iget-object p1, p0, LK4/r;->P:Lv2/H;

    iget-boolean p1, p1, Lv2/H;->c:Z

    if-nez p1, :cond_e

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_f

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/K1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LF1/K1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "beauty panel shown. do not show the slide view."

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object p1, p0, LK4/r;->s:LK4/s;

    const-string v0, "bokeh panels haven\'t been loaded"

    if-nez p1, :cond_11

    iget-object v1, p0, LK4/r;->t:LK4/d;

    if-nez v1, :cond_11

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    if-nez p1, :cond_12

    iget-object v1, p0, LK4/r;->I:LK4/p;

    if-nez v1, :cond_12

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    if-nez p1, :cond_13

    iget-object p1, p0, LK4/r;->J:LK4/m;

    if-nez p1, :cond_13

    iget-object p0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string p1, "flare panels haven\'t been loaded"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object p1, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showBokehPanel mSupportShowType is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LK4/r;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-static {p1}, LU1/b;->e(Landroid/view/View;)V

    iget-object p1, p0, LK4/r;->t:LK4/d;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LK4/d;->O0(Landroid/content/Context;)V

    goto :goto_5

    :cond_14
    iget-object p1, p0, LK4/r;->I:LK4/p;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LK4/p;->O0(Landroid/content/Context;)V

    goto :goto_5

    :cond_15
    iget-object p1, p0, LK4/r;->J:LK4/m;

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LK4/m;->O0(Landroid/content/Context;)V

    goto :goto_5

    :cond_16
    iget-object p1, p0, LK4/r;->K:LK4/p;

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, LK4/p;->O0(Landroid/content/Context;)V

    goto :goto_5

    :cond_17
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, LK4/s;->O0(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1402a6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LK4/r;->L:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/s;->dr(Z)V

    iget-object p0, p0, LK4/r;->P:Lv2/H;

    iput-boolean v4, p0, Lv2/H;->c:Z

    return-void
.end method

.method public final jr(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/camera/fragment/t;->jr(Z)V

    invoke-static {}, LK2/b;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/E;->o0()Ljava/lang/String;

    move-result-object p0

    const-string p1, "f"

    invoke-static {p1, p0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LK4/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LK4/q;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final lr(Z)Z
    .locals 7

    iget-object v0, p0, LK4/r;->t:LK4/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v2, "hide beauty lens panel"

    invoke-static {v0, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LK4/r;->t:LK4/d;

    invoke-virtual {v0}, LK4/d;->L0()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, LK4/r;->I:LK4/p;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v3, "hide cv lens panel"

    invoke-static {v2, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LK4/r;->I:LK4/p;

    invoke-virtual {v2}, LK4/p;->L0()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, LK4/r;->s:LK4/s;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v4, "hide bokeh panel"

    invoke-static {v3, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, LK4/r;->s:LK4/s;

    invoke-interface {v3}, LK4/s;->L0()Z

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget-object v4, p0, LK4/r;->J:LK4/m;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v5, "hide flare panel"

    invoke-static {v4, v5}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, LK4/r;->J:LK4/m;

    invoke-virtual {v4}, LK4/m;->L0()Z

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    iget-object v5, p0, LK4/r;->K:LK4/p;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/xiaomi/camera/base/ui/fragments/d;->TAG:Ljava/lang/String;

    const-string v6, "hide beauty lens2 panel"

    invoke-static {v5, v6}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, LK4/r;->K:LK4/p;

    invoke-virtual {v5}, LK4/p;->L0()Z

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    if-nez v0, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/h;->showHideTopBar(Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/h;->showHideBottomBar(Z)V

    invoke-static {}, LQ6/H0;->b()LQ6/H0;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2, v1, p1}, LQ6/H0;->mp(IZ)V

    :cond_6
    iget p1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/data/data/j;->g1(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LC4/p;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LC4/p;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    iget-object p0, p0, LK4/r;->P:Lv2/H;

    iput-boolean v0, p0, Lv2/H;->c:Z

    return v0
.end method

.method public final mr()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object v0, p0, LK4/r;->I:LK4/p;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LK4/p;->N0(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, LK4/r;->J:LK4/m;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LK4/m;->N0(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, LK4/r;->K:LK4/p;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LK4/p;->N0(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, LK4/r;->s:LK4/s;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LK4/s;->N0(Landroid/content/Context;)V

    iget-object p0, p0, LK4/r;->s:LK4/s;

    invoke-interface {p0}, LK4/s;->P0()V

    :cond_3
    return-void
.end method

.method public final n0()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, LK4/r;->N:I

    invoke-virtual {p0}, LK4/r;->Wq()Z

    move-result p0

    invoke-static {v0, v1, p0}, LAd/b;->h(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public final notifyDataChanged(II)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-boolean v0, v0, Lv2/D0;->w:Z

    if-eqz v0, :cond_0

    const/16 p2, 0xd1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->notifyDataChanged(II)V

    return-void
.end method

.method public final notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/b;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, LK4/s;->notifyPreviewRectChange(LZ5/h;Landroid/graphics/Rect;FLZ5/p;)V

    :cond_0
    return-void
.end method

.method public final notifyThemeChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    iget-object p1, p0, LK4/r;->s:LK4/s;

    if-eqz p1, :cond_1

    iget p2, p0, LK4/r;->N:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->K0(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p1, p2}, LK4/s;->N0(Landroid/content/Context;)V

    iget-object p1, p0, LK4/r;->s:LK4/s;

    invoke-interface {p1}, LK4/s;->P0()V

    :cond_1
    iget-object p1, p0, LK4/r;->K:LK4/p;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, LK4/p;->N0(Landroid/content/Context;)V

    :cond_2
    iget-object p1, p0, LK4/r;->I:LK4/p;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, LK4/p;->N0(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/s;->onAttach(Landroid/content/Context;)V

    const-string p0, "attr_bokeh_ratio"

    invoke-static {p0}, Lcom/android/camera/data/data/E;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public final onBackEvent(I)Z
    .locals 5

    iget-object v0, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    iget v3, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, LK4/r;->lr(Z)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    return v1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/camera/fragment/s;->onBackEvent(I)Z

    move-result p0

    return p0
.end method

.method public final onContainerAnimationUpdate(II)V
    .locals 0

    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, LK4/s;->onContainerAnimationUpdate(II)V

    :cond_0
    return-void
.end method

.method public final onContainerVisibilityChange(IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/s;->onContainerVisibilityChange(IIZ)V

    iget-object p0, p0, LK4/r;->P:Lv2/H;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p3, 0x1

    iput-boolean p1, p0, Lv2/H;->c:Z

    :cond_0
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, LK4/r;->s:LK4/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LK4/s;->Q0()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/s;->dr(Z)V

    invoke-super {p0}, Lcom/android/camera/fragment/t;->onDestroyView()V

    return-void
.end method

.method public final onDetach()V
    .locals 3

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/d;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LCs/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lcom/android/camera/fragment/s;->onDetach()V

    const-string p0, "attr_bokeh_ratio"

    invoke-static {p0}, Lcom/android/camera/data/data/E;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public final onExclusionCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, LQ6/D;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/f;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LCs/f;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/b;",
            ">;I)V"
        }
    .end annotation

    and-int/lit16 v0, p3, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/h;->provideAnimateElement(ILjava/util/List;I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    const-class v0, Lr2/Q;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/Q;

    invoke-virtual {p2, p1}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const-string v0, "4x3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, LK2/b;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/16 p1, 0x40

    if-eq p3, p1, :cond_6

    const/4 p1, 0x2

    if-ne p3, p1, :cond_5

    const/4 p1, 0x5

    goto :goto_2

    :cond_5
    const/4 p1, 0x4

    :goto_2
    invoke-virtual {p0, p1}, LK4/r;->onBackEvent(I)Z

    return-void

    :cond_6
    iget-object p1, p0, LK4/r;->s:LK4/s;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, LK4/s;->K0(Landroid/content/Context;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/h;->provideRotateItem(Ljava/util/List;I)V

    iget-object v0, p0, LK4/r;->t:LK4/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, LK4/d;->provideRotateItem(Ljava/util/List;I)V

    :cond_0
    iget-object p0, p0, LK4/r;->s:LK4/s;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, LK4/s;->provideRotateItem(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public final register(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/s;->register(LN6/g;)V

    const-class v0, LQ6/N;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final sc(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LK4/r;->n0()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, LK4/r;->N:I

    invoke-virtual {p0}, LK4/r;->Wq()Z

    move-result p0

    invoke-static {p1, v0, p0}, LAd/b;->h(Landroid/content/Context;IZ)I

    move-result p0

    return p0
.end method

.method public final setClickEnable(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/b;->setClickEnable(Z)V

    iget-object v0, p0, LK4/r;->t:LK4/d;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, LK4/d;->i:Z

    :cond_0
    iget-object v0, p0, LK4/r;->I:LK4/p;

    if-eqz v0, :cond_1

    iput-boolean p1, v0, LK4/p;->g:Z

    :cond_1
    iget-object p0, p0, LK4/r;->J:LK4/m;

    if-eqz p0, :cond_2

    iput-boolean p1, p0, LK4/m;->g:Z

    :cond_2
    return-void
.end method

.method public final unRegister(LN6/g;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/camera/fragment/s;->unRegister(LN6/g;)V

    const-class v0, LQ6/N;

    check-cast p1, LN6/h;

    invoke-virtual {p1, v0, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final updateLayout4GalleryMode(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {p2}, [I

    move-result-object v1

    iget v2, p0, LK4/r;->N:I

    invoke-static {v2, v0, v1}, LAd/b;->e(ILandroid/content/Context;[I)LG8/d;

    move-result-object v0

    iget v0, v0, LG8/d;->b:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, LK4/r;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateLayout4LaptopMode(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, LK4/r;->N:I

    invoke-static {p2, v0}, LAd/b;->c(Landroid/content/Context;I)LG8/d;

    move-result-object p2

    iget p2, p2, LG8/d;->b:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, -0x1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, LK4/r;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, LK2/b;->J()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {}, LK2/b;->I()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateLayout4LaptopVerMode(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPortLaptopMode"
        type = 0x0
    .end annotation

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, LK4/r;->N:I

    invoke-static {p2, v0}, LAd/b;->d(Landroid/content/Context;I)LG8/d;

    move-result-object p2

    iget p2, p2, LG8/d;->b:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, -0x1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, LK4/r;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, LK2/b;->J()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-static {}, LK2/b;->I()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p2, 0x51

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final updateView4Flip(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/b;->updateView4Flip(Landroid/view/View;Landroid/os/Bundle;Z)V

    invoke-static {}, LK2/b;->y()I

    move-result p2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->v()I

    move-result p3

    :goto_0
    sub-int/2addr p2, p3

    invoke-static {p2, p1}, LG8/h;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateView4Normal(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iget v2, p0, LK4/r;->N:I

    invoke-static {v2, p2, v1}, LAd/b;->e(ILandroid/content/Context;[I)LG8/d;

    move-result-object p2

    iget p2, p2, LG8/d;->b:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, -0x1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, LK4/r;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateView4Pad(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iget v3, p0, LK4/r;->N:I

    invoke-static {v3, p2, v0}, LAd/b;->f(ILandroid/content/Context;[I)LG8/d;

    move-result-object p2

    iget p2, p2, LG8/d;->b:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/xiaomi/camera/base/ui/fragments/d;->getCameraMainViewModel()Loh/b;

    move-result-object v0

    invoke-virtual {v0}, Loh/b;->l()Ljava/util/Optional;

    move-result-object v0

    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071477

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/s;

    invoke-static {p2, v0, v2, v3}, LG8/e;->h(Landroid/content/Context;Ly3/s;[II)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, LK4/r;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateView4SecondScreen(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/b;->updateView4SecondScreen(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    if-nez p2, :cond_0

    const p2, 0x7f0b046c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    :cond_0
    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p1, p0, LK4/r;->r:Landroid/widget/LinearLayout;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final updateView4Simple(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/b;->updateView4Simple(Landroid/view/View;Landroid/os/Bundle;Z)V

    invoke-static {}, LK2/b;->j()I

    move-result p2

    invoke-static {p2, p1}, LG8/h;->b(ILandroid/view/View;)V

    invoke-virtual {p0}, LK4/r;->mr()V

    return-void
.end method

.method public final x0()V
    .locals 3

    iget-object v0, p0, LK4/r;->I:LK4/p;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-object v2, v0, LK4/p;->a:Lcom/android/camera/data/data/c;

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, LK4/p;->b(I)V

    :cond_0
    iget-object v0, p0, LK4/r;->J:LK4/m;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/camera/fragment/h;->mCurrentMode:I

    iget-object v1, v0, LK4/m;->a:Lv2/U;

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/c;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, LK4/m;->a(I)V

    :cond_1
    return-void
.end method
