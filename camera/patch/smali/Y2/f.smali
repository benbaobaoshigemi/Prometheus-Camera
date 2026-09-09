.class public final LY2/f;
.super LY2/g;
.source "SourceFile"

# interfaces
.implements Ls4/d$d;
.implements Landroidx/lifecycle/w;
.implements LF1/i4$n;


# static fields
.field public static final n:Z

.field public static o:J


# instance fields
.field public final d:Ljava/lang/String;

.field public e:LZ5/j;

.field public f:LZ5/a;

.field public g:Lcom/android/camera/a;

.field public final h:LY2/d;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public final k:LQ6/f0;

.field public final l:Lcom/android/camera/a;

.field public final m:Lcom/android/camera/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.test.folddevicestate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LY2/f;->n:Z

    const-wide/16 v0, -0x1

    sput-wide v0, LY2/f;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/a;ILQ6/f0;Lcom/android/camera/a;Lcom/android/camera/a;Lcom/android/camera/a;Lcom/android/camera/a;)V
    .locals 2

    invoke-direct {p0, p1}, LY2/g;-><init>(Lcom/android/camera/a;)V

    const/4 v0, -0x1

    iput v0, p0, LY2/f;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CamLayoutManagerImpl@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LY2/f;->d:Ljava/lang/String;

    iput-object p4, p0, LY2/f;->l:Lcom/android/camera/a;

    iput-object p5, p0, LY2/f;->m:Lcom/android/camera/a;

    iput-object p7, p0, LY2/f;->g:Lcom/android/camera/a;

    iput-object p3, p0, LY2/f;->k:LQ6/f0;

    new-instance p5, LY2/d;

    invoke-direct {p5, p6}, LY2/d;-><init>(Lcom/android/camera/a;)V

    iput-object p5, p0, LY2/f;->h:LY2/d;

    iget-object p5, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-virtual {p4}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p4

    iget-object p4, p4, Loh/b;->n:Ly3/s;

    iget p6, p0, LY2/f;->i:I

    invoke-static {p5, p4, p2, p3, p6}, LAv/e;->k(Landroid/app/Activity;Ly3/s;ILQ6/f0;I)LZ5/j;

    move-result-object p2

    iput-object p2, p0, LY2/f;->e:LZ5/j;

    invoke-static {p2}, LAv/e;->j(LZ5/j;)LZ5/a;

    move-result-object p2

    iput-object p2, p0, LY2/f;->f:LZ5/a;

    iget-object p3, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-static {p3, p2}, LK2/b;->L(Landroid/content/Context;LZ5/a;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", debug "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, LY2/f;->n:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, LY2/f;->e:LZ5/j;

    iget v0, v0, LZ5/j;->d:I

    invoke-static {p1}, LK2/e;->h(I)I

    move-result p1

    const-string v1, "onDeviceOrientationChange  "

    const-string v2, "->"

    invoke-static {v0, p1, v1, v2}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, LY2/f;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LY2/f;->e:LZ5/j;

    iput p1, v0, LZ5/j;->d:I

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    iput p1, p0, LZ5/a;->h:I

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 9

    sget-boolean v0, LY2/f;->n:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xb4

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eqz v1, :cond_4

    int-to-float v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    if-gt p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    :cond_3
    :goto_0
    move v6, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, LY2/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/16 v7, 0x78

    goto :goto_1

    :cond_5
    const/16 v7, 0x46

    :goto_1
    if-ge p1, v7, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    int-to-float v7, p1

    const/high16 v8, 0x43160000    # 150.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    move v3, v5

    goto :goto_2

    :cond_7
    if-gt p1, v4, :cond_8

    goto :goto_2

    :cond_8
    move v3, v6

    :goto_2
    if-ne v3, v1, :cond_a

    if-eq v0, v1, :cond_a

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iget-boolean v0, v0, Lt2/j;->q:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, LY2/f;->j:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, LY2/f;->j:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/android/camera/data/data/A;->h(Z)V

    goto :goto_0

    :cond_a
    if-ne v0, v1, :cond_3

    if-ne v3, v5, :cond_3

    iget-object v0, p0, LY2/f;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/android/camera/data/data/A;->h(Z)V

    goto :goto_0

    :cond_b
    :goto_3
    iget v0, p0, LY2/f;->i:I

    if-eq v0, v6, :cond_c

    const-string v0, "angle change: "

    const-string v1, ", fold: "

    invoke-static {p1, v0, v1}, LEm/c;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, LY2/f;->i:I

    invoke-static {v0}, Ls4/d;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ls4/d;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, LY2/f;->d:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v6, p0, LY2/f;->i:I

    sget-object p1, LZ5/m;->c:LZ5/m;

    invoke-virtual {p0, p1}, LY2/f;->g(LZ5/m;)Z

    :cond_c
    :goto_4
    return-void
.end method

.method public final d(Landroid/content/res/Configuration;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onOrientationChange : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LY2/f;->d:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, LZ5/m;->e:LZ5/m;

    invoke-virtual {p0, p1}, LY2/f;->g(LZ5/m;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, LY2/f;->h:LY2/d;

    iget-object p0, p0, LY2/d;->g:LY2/l;

    sget-object v0, LY2/l;->a:LY2/l;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(LZ5/m;)Z
    .locals 12

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/data/data/w;->t0()Z

    move-result v1

    sget-object v2, LZ5/m;->e:LZ5/m;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-ne p1, v2, :cond_4

    iget-object p1, p0, LY2/f;->l:Lcom/android/camera/a;

    invoke-virtual {p1}, Lcom/android/camera/a;->Ck()I

    move-result p1

    iget-object v0, p0, LY2/g;->a:Lcom/android/camera/a;

    iget-object v1, p0, LY2/f;->l:Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->n:Ly3/s;

    iget-object v2, p0, LY2/f;->k:LQ6/f0;

    iget v4, p0, LY2/f;->i:I

    invoke-static {v0, v1, p1, v2, v4}, LAv/e;->k(Landroid/app/Activity;Ly3/s;ILQ6/f0;I)LZ5/j;

    move-result-object p1

    invoke-static {p1}, LAv/e;->j(LZ5/j;)LZ5/a;

    move-result-object p1

    iget-object p0, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-static {p0, p1}, LK2/b;->L(Landroid/content/Context;LZ5/a;)V

    return v3

    :cond_0
    iget-object v1, p0, LY2/f;->g:Lcom/android/camera/a;

    if-eqz v1, :cond_1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LK2/b;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LE4/a;

    invoke-direct {v4, v0}, LE4/a;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, LY2/f;->l:Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Ck()I

    move-result v1

    iget-object v4, p0, LY2/g;->a:Lcom/android/camera/a;

    iget-object v5, p0, LY2/f;->l:Lcom/android/camera/a;

    invoke-virtual {v5}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v5

    iget-object v5, v5, Loh/b;->n:Ly3/s;

    iget-object v6, p0, LY2/f;->k:LQ6/f0;

    iget v7, p0, LY2/f;->i:I

    invoke-static {v4, v5, v1, v6, v7}, LAv/e;->k(Landroid/app/Activity;Ly3/s;ILQ6/f0;I)LZ5/j;

    move-result-object v1

    iget-object v4, p0, LY2/f;->e:LZ5/j;

    invoke-virtual {v1, v4}, LZ5/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v0

    :goto_1
    iget-object v5, p0, LY2/f;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateLayout "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", s.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, LY2/f;->e:LZ5/j;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_5

    sget-object v4, LZ5/m;->b:LZ5/m;

    if-eq p1, v4, :cond_5

    sget-object v4, LZ5/m;->g:LZ5/m;

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return v3

    :cond_5
    :goto_3
    invoke-static {v1}, LAv/e;->j(LZ5/j;)LZ5/a;

    move-result-object v4

    iget-object v5, p0, LY2/f;->e:LZ5/j;

    iget v6, v5, LZ5/j;->g:I

    iget v7, v1, LZ5/j;->g:I

    if-eq v6, v7, :cond_6

    move v6, v0

    goto :goto_4

    :cond_6
    move v6, v3

    :goto_4
    iget v5, v5, LZ5/j;->d:I

    iget v7, v1, LZ5/j;->d:I

    if-eq v5, v7, :cond_7

    sub-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v7, 0xb4

    if-eq v5, v7, :cond_7

    move v5, v0

    goto :goto_5

    :cond_7
    move v5, v3

    :goto_5
    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    new-array p1, v3, [Ljava/lang/Object;

    iget-object v2, p0, LY2/f;->d:Ljava/lang/String;

    const-string/jumbo v3, "updateLayout s.2 "

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LY2/g;->a:Lcom/android/camera/a;

    iget-object v2, p0, LY2/f;->f:LZ5/a;

    iget-object v3, p0, LY2/f;->h:LY2/d;

    iget-object v3, v3, LY2/d;->h:Lcom/android/camera/a;

    if-eqz v3, :cond_8

    iget v5, v2, LZ5/a;->h:I

    iget v6, v4, LZ5/a;->h:I

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/a;->Mq(II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/camera/a;->pr(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v3, v6, v5}, Lcom/android/camera/a;->qr(II)V

    :cond_8
    invoke-static {v2, v4}, LY2/d;->a(LZ5/h;LZ5/h;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, LZ5/i;->a:LZ5/i;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v3, v5, v2}, LZ5/a;->e(Lcom/android/camera/a;LZ5/i;FLZ5/h;)V

    :cond_9
    iget-object p1, p0, LY2/f;->e:LZ5/j;

    iget v2, v1, LZ5/j;->d:I

    iput v2, p1, LZ5/j;->d:I

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    iget p1, v1, LZ5/j;->d:I

    iput p1, p0, LZ5/a;->h:I

    return v0

    :cond_a
    invoke-static {v1}, LAv/e;->j(LZ5/j;)LZ5/a;

    move-result-object v4

    iget-object v5, p0, LY2/f;->f:LZ5/a;

    invoke-virtual {v5, v4}, LZ5/a;->m0(LZ5/h;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    iget-object v7, p0, LY2/f;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateLayout s.3 layout "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", needReset2TargetMode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", gallery opened "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v9

    iget-boolean v9, v9, Lt2/j;->n:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", laptop switch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v9

    iget-boolean v9, v9, Lt2/j;->o:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, LK2/e;->y()Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ", reverse simple "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v10

    iget-boolean v10, v10, Lt2/j;->r:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_b
    const-string v9, ""

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, LY2/g;->a:Lcom/android/camera/a;

    sget-object v8, LZ5/l;->h:LZ5/l;

    sget-object v9, LZ5/l;->o:LZ5/l;

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    iget-object v7, v7, Lcom/android/camera/a;->c0:LY2/o;

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    invoke-interface {v4}, LZ5/h;->h0()LZ5/l;

    move-result-object v10

    const/4 v11, 0x0

    if-ne v10, v9, :cond_e

    new-instance v8, LY2/v;

    const/4 v9, 0x7

    invoke-direct {v8, v9, v11, v7}, LY2/v;-><init>(ILTu/e;LY2/o;)V

    invoke-static {v8}, Lyw/f;->c(Lev/p;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    if-ne v10, v8, :cond_f

    sget-boolean v8, LJe/c;->k:Z

    sget-object v8, LJe/c$b;->a:LJe/c;

    invoke-virtual {v8}, LJe/c;->i0()Z

    :cond_f
    iget-object v8, v7, LY2/o;->i:LY2/m;

    if-nez v8, :cond_10

    goto :goto_7

    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "clearStickyPolicy(): previous = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "ScreenOrientationManageExt"

    invoke-static {v10, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v11, v7, LY2/o;->i:LY2/m;

    :goto_7
    sget-boolean v7, LJe/c;->k:Z

    sget-object v7, LJe/c$b;->a:LJe/c;

    invoke-virtual {v7}, LJe/c;->i0()Z

    iget-object v7, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-static {v7, v4}, LK2/b;->L(Landroid/content/Context;LZ5/a;)V

    iget-object v7, p0, LY2/f;->l:Lcom/android/camera/a;

    invoke-virtual {v7}, Lcom/android/camera/a;->Ck()I

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_11

    if-nez v5, :cond_11

    iget-object v7, p0, LY2/f;->m:Lcom/android/camera/a;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/camera/a;->nk(I)Z

    :cond_11
    iget-object v7, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v4, LZ5/a;->c:[I

    invoke-virtual {v4, v7, v9, v8}, LZ5/a;->h(Lcom/android/camera/a;[ILandroid/graphics/Rect;)V

    iget-object v8, v4, LZ5/a;->d:[I

    invoke-interface {v4}, LZ5/h;->l0()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v7, v8, v9}, LZ5/a;->h(Lcom/android/camera/a;[ILandroid/graphics/Rect;)V

    invoke-virtual {v4, v7}, LZ5/a;->g(Lcom/android/camera/a;)V

    invoke-virtual {v4, v7}, LZ5/a;->f(Lcom/android/camera/a;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->Q()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, LK2/e;->y()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-static {}, LK2/e;->E()Z

    move-result v7

    if-eqz v7, :cond_12

    if-ne p1, v2, :cond_12

    invoke-static {}, LQ6/j0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v7, LF1/w;

    invoke-direct {v7, v3}, LF1/w;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v0

    goto :goto_8

    :cond_12
    move v2, v3

    :goto_8
    iget-object v7, p0, LY2/f;->d:Ljava/lang/String;

    const-string/jumbo v8, "updateLayout noNeedAlpha:"

    invoke-static {v8, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, LY2/f;->h:LY2/d;

    if-eqz v7, :cond_13

    iget-object v8, p0, LY2/g;->a:Lcom/android/camera/a;

    iget-object v9, p0, LY2/f;->f:LZ5/a;

    xor-int/2addr v2, v0

    invoke-virtual {v7, v8, v9, v4, v2}, LY2/d;->b(Lcom/android/camera/a;LZ5/h;LZ5/h;Z)V

    :cond_13
    iget-object v2, p0, LY2/f;->g:Lcom/android/camera/a;

    if-eqz v2, :cond_14

    iget-object v7, p0, LY2/f;->f:LZ5/a;

    invoke-interface {v2, v7, v4}, LY2/e;->onLayoutChange(LZ5/h;LZ5/h;)V

    :cond_14
    if-nez v5, :cond_1f

    iget v2, v1, LZ5/j;->g:I

    iget-object v5, p0, LY2/f;->e:LZ5/j;

    iget v5, v5, LZ5/j;->g:I

    if-ne v2, v5, :cond_1f

    iget-object v2, p0, LY2/f;->f:LZ5/a;

    invoke-interface {v2}, LZ5/h;->h0()LZ5/l;

    move-result-object v2

    invoke-interface {v4}, LZ5/h;->h0()LZ5/l;

    move-result-object v5

    sget-object v7, LZ5/l;->d:LZ5/l;

    sget-object v8, LZ5/l;->j:LZ5/l;

    sget-object v9, LZ5/l;->i:LZ5/l;

    sget-object v10, LZ5/l;->e:LZ5/l;

    if-eq v2, v7, :cond_16

    if-eq v2, v10, :cond_16

    if-eq v2, v9, :cond_16

    if-ne v2, v8, :cond_15

    goto :goto_9

    :cond_15
    move v2, v3

    goto :goto_a

    :cond_16
    :goto_9
    move v2, v0

    :goto_a
    if-eq v5, v7, :cond_18

    if-eq v5, v10, :cond_18

    if-eq v5, v9, :cond_18

    if-ne v5, v8, :cond_17

    goto :goto_b

    :cond_17
    move v0, v3

    :cond_18
    :goto_b
    const-string v3, "flip"

    if-eq v2, v0, :cond_19

    move-object v0, v3

    goto :goto_c

    :cond_19
    if-eqz v2, :cond_1b

    invoke-static {}, LJe/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "fold"

    goto :goto_c

    :cond_1a
    const-string/jumbo v0, "rotation"

    goto :goto_c

    :cond_1b
    const-string v0, "click"

    :goto_c
    invoke-interface {v4}, LZ5/h;->h0()LZ5/l;

    move-result-object v2

    invoke-static {v2}, Ln8/b;->a(LZ5/l;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "watch_shoot"

    invoke-static {v2, v5, v0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LZ5/m;->k:LZ5/m;

    if-eq p1, v2, :cond_1f

    invoke-interface {v4}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    if-eq p1, v9, :cond_1c

    invoke-interface {v4}, LZ5/h;->h0()LZ5/l;

    move-result-object p1

    if-ne p1, v8, :cond_1f

    :cond_1c
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string/jumbo p1, "split_screen"

    goto :goto_d

    :cond_1d
    const-string/jumbo p1, "split_screen_exchange"

    :goto_d
    invoke-static {}, LK2/b;->X()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "down"

    goto :goto_e

    :cond_1e
    const-string/jumbo v2, "up"

    :goto_e
    invoke-static {v2, p1, v0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iput-object v1, p0, LY2/f;->e:LZ5/j;

    iput-object v4, p0, LY2/f;->f:LZ5/a;

    return v6
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, LY2/g;->onCreate()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LY2/f;->d:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, LY2/g;->b:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LY2/f;->o:J

    iget-object v0, p0, LY2/f;->f:LZ5/a;

    iget-object v1, p0, LY2/g;->a:Lcom/android/camera/a;

    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, LZ5/a;->c:[I

    invoke-virtual {v0, v1, v3, v2}, LZ5/a;->h(Lcom/android/camera/a;[ILandroid/graphics/Rect;)V

    iget-object v2, v0, LZ5/a;->d:[I

    invoke-interface {v0}, LZ5/h;->l0()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LZ5/a;->h(Lcom/android/camera/a;[ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, LZ5/a;->g(Lcom/android/camera/a;)V

    invoke-virtual {v0, v1}, LZ5/a;->f(Lcom/android/camera/a;)V

    iget-object v1, p0, LY2/f;->h:LY2/d;

    if-eqz v1, :cond_0

    iget-object v2, p0, LY2/g;->a:Lcom/android/camera/a;

    iget-object v3, p0, LY2/f;->f:LZ5/a;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, LY2/d;->b(Lcom/android/camera/a;LZ5/h;LZ5/h;Z)V

    :cond_0
    iget-object v1, p0, LY2/f;->g:Lcom/android/camera/a;

    if-eqz v1, :cond_1

    iget-object p0, p0, LY2/f;->f:LZ5/a;

    invoke-interface {v1, p0, v0}, LY2/e;->onLayoutChange(LZ5/h;LZ5/h;)V

    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LY2/f;->d:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LY2/g;->a:Lcom/android/camera/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LK2/b;->L(Landroid/content/Context;LZ5/a;)V

    iput-object v1, p0, LY2/f;->g:Lcom/android/camera/a;

    iput-object v1, p0, LY2/g;->a:Lcom/android/camera/a;

    iput-object v1, p0, LY2/f;->e:LZ5/j;

    iput-object v1, p0, LY2/g;->b:Landroid/content/res/Configuration;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, LY2/f;->j:Ljava/lang/Boolean;

    invoke-super {p0}, LY2/g;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, LY2/g;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, LY2/f;->d:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onStart()V
    .locals 6

    invoke-super {p0}, LY2/g;->onStart()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sTimeOutLastTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, LY2/f;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, LY2/f;->d:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v0

    iget-object v0, v0, Ls4/e;->a:Ls4/d;

    invoke-virtual {v0, p0}, Ls4/d;->c(Ls4/d$d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, LY2/f;->o:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iput-boolean v1, v0, Lt2/j;->n:Z

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iput-boolean v1, v0, Lt2/j;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, LY2/f;->o:J

    :cond_0
    sget-object v0, LZ5/m;->b:LZ5/m;

    invoke-virtual {p0, v0}, LY2/f;->g(LZ5/m;)Z

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, LY2/g;->onStop()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, LY2/f;->d:Ljava/lang/String;

    const-string v3, "onStop"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ls4/e;->c()Ls4/e;

    move-result-object v1

    iget-object v1, v1, Ls4/e;->a:Ls4/d;

    invoke-virtual {v1, p0}, Ls4/d;->d(Ls4/d$d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, LY2/f;->o:J

    iget-object v1, p0, LY2/f;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    iget-boolean v1, v1, Lt2/j;->q:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/camera/data/data/A;->h(Z)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, LY2/f;->i:I

    return-void
.end method

.method public final qh(IIZ)V
    .locals 1

    sget-boolean p2, LY2/f;->n:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "state change "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ls4/d;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", base state change "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, LY2/f;->d:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, LZ5/m;->d:LZ5/m;

    invoke-virtual {p0, p1}, LY2/f;->g(LZ5/m;)Z

    return-void
.end method
