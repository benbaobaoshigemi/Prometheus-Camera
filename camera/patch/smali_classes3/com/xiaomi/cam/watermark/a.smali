.class public Lcom/xiaomi/cam/watermark/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:Z

.field public final c:Z

.field public final d:LPu/n;

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LPu/n;

.field public g:LGg/H;

.field public h:Landroid/graphics/Bitmap;

.field public final i:LPu/n;

.field public j:Z

.field public final k:LPu/n;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    iput-boolean p2, p0, Lcom/xiaomi/cam/watermark/a;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/cam/watermark/a;->c:Z

    new-instance p1, LGg/K;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LGg/K;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->d:LPu/n;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->e:Ljava/lang/ref/WeakReference;

    new-instance p1, LGg/J;

    invoke-direct {p1, p0}, LGg/J;-><init>(Lcom/xiaomi/cam/watermark/a;)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->f:LPu/n;

    new-instance p1, LGg/M;

    invoke-direct {p1, p0}, LGg/M;-><init>(Lcom/xiaomi/cam/watermark/a;)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->i:LPu/n;

    new-instance p1, LGg/L;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LGg/L;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, LBw/i;->M(Lev/a;)LPu/n;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/cam/watermark/a;->k:LPu/n;

    return-void
.end method

.method public static F(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v3, Las/b;->d:Las/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->h0()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->g:LGg/H;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, LGg/H;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->h0()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/cam/watermark/a;->g:LGg/H;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LGg/H;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    move-object v2, v1

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v4, 0x0

    const/16 v6, 0x38

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/cam/watermark/a;->d(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static d(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13

    move-object v2, p2

    move/from16 v0, p6

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v4, v1

    goto :goto_0

    :cond_0
    move/from16 v4, p4

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_2
    move v9, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "WatermarkItem"

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "srcBitmap"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    :try_start_0
    new-instance v0, Lcom/xiaomi/cam/watermark/b;

    invoke-direct {v0}, Lcom/xiaomi/cam/watermark/b;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v5

    iget-object v3, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v8

    move-object v1, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/xiaomi/cam/watermark/b;->c(Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILZr/a;Ljava/lang/String;Ljava/lang/String;LGg/a0;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1}, LZr/a;->z()Lcs/a;

    move-result-object v1

    invoke-virtual {v1}, Lcs/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    const v6, 0xf4240

    int-to-long v6, v6

    div-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " srcBitmap size:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " createWaterBitmap process cost: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createWaterBitmap error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid bitmap size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l0(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/cam/watermark/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->h()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->P0(F)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->u()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->O0(F)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v2

    invoke-virtual {v2}, LZr/a;->d()Les/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Les/a$a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v7

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->p0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->P()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    move v2, v8

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->D(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->s0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->f()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->s()Z

    move-result v2

    :goto_3
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->h(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->O()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v9}, Lcom/xiaomi/cam/watermark/a;->C(Z)Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->q0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->r()Z

    move-result v2

    :goto_4
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->f(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->t()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->z()Z

    move-result v2

    :goto_5
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->o(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->p()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->y()Z

    move-result v2

    :goto_6
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->n(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->u()Z

    move-result v2

    :goto_7
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->k(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->R()Z

    move-result v3

    iget-object v2, v2, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v2, :cond_32

    const-string v4, "dynamic_effect_switch"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->j(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, LGg/s;->l(Lcom/xiaomi/cam/watermark/a;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, p1, v2}, Lcom/xiaomi/cam/watermark/a;->t0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->v()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-virtual {p0, p1, v2}, Lcom/xiaomi/cam/watermark/a;->x0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->B()Les/b;

    move-result-object v2

    iget-object v2, v2, Les/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Les/b$b;

    iget-object v4, v3, Les/b$b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v5

    invoke-virtual {v5, v4}, LGg/a0;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Les/b$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/xiaomi/cam/watermark/a;->K0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "option_off"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v3, v3, Les/b$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v9}, Lcom/xiaomi/cam/watermark/a;->p(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_d
    iget-object v3, v3, Les/b$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v3, v8}, Lcom/xiaomi/cam/watermark/a;->p(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v2

    iget-object v2, v2, LZr/a;->j:Ljava/lang/String;

    :cond_f
    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->y0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->m()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v3

    invoke-virtual {v3}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgs/a;

    invoke-interface {v4}, Lgs/a;->f()Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_12
    :goto_9
    const-string v2, "location_off"

    :cond_13
    :goto_a
    sget-object v3, LGg/u;->a:LPu/n;

    const-string/jumbo v3, "ro.product.mod_device"

    const-string v4, ""

    invoke-static {v3, v4}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    const-string v4, "_global"

    invoke-static {v3, v4, v9}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v8

    goto :goto_b

    :cond_14
    move v3, v9

    :goto_b
    if-eqz v3, :cond_16

    const-string v3, "location_address"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "location_latlng"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    const-string v2, "location_latlng_switch"

    :cond_16
    move-object v10, v2

    invoke-virtual {p0, v10}, Lcom/xiaomi/cam/watermark/a;->B0(Ljava/lang/String;)V

    const-string v2, "location_off"

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v8

    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->S()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/cam/watermark/a;->V(Landroid/content/Context;)V

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v2, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v3, "jsonObject"

    if-eqz v2, :cond_31

    const-string v4, "custom_avatar_enable"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_18
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_19
    move-object v0, v7

    :goto_c
    const-string v2, "avatar_force_icon"

    const-string/jumbo v3, "type_avatar_layout"

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v11}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v11}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v2, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v3, "jsonObject"

    if-eqz v2, :cond_1c

    const-string v4, "custom_avatar"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_d

    :cond_1a
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_1b
    move-object v5, v7

    :goto_d
    const-string v2, "avatar_force_icon"

    const-string/jumbo v3, "type_avatar_layout"

    const-string v6, "direct"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/cam/watermark/a;->r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_1d
    :goto_e
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->d()Les/a$a;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, v0, Les/a$a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_f

    :cond_1e
    move v4, v9

    :goto_f
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v2, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v3, "jsonObject"

    if-eqz v2, :cond_30

    const-string/jumbo v5, "weather_switch"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_10

    :cond_1f
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_20
    move-object v0, v7

    :goto_10
    const-string/jumbo v2, "weather_icon"

    const-string/jumbo v3, "type_weather_icon"

    invoke-static {v0, v11}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v11}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v2, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v3, "jsonObject"

    if-eqz v2, :cond_23

    const-string/jumbo v5, "weather"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_11

    :cond_21
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_22
    move-object v5, v7

    :goto_11
    const-string/jumbo v2, "weather_icon"

    const-string/jumbo v3, "type_weather_icon"

    const-string/jumbo v6, "select"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/cam/watermark/a;->r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_23
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_24
    :goto_12
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v2, "jsonObject"

    if-eqz v1, :cond_2f

    const-string/jumbo v3, "prototype_diagram_path"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_25

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_13

    :cond_25
    invoke-static {v2}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_26
    move-object v5, v7

    :goto_13
    const-string/jumbo v2, "prototype_diagram"

    const-string/jumbo v3, "type_prototype_diagram"

    const-string/jumbo v6, "select"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/cam/watermark/a;->r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v2, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const-string v3, "jsonObject"

    if-eqz v2, :cond_2e

    const-string v4, "mi_logo_switch"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_27

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_14

    :cond_27
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_28
    :goto_14
    if-eqz v7, :cond_29

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    :cond_29
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    const-string v2, "mi_logo"

    const-string/jumbo v3, "type_logo_layout"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, LZr/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    move v0, v9

    goto :goto_15

    :cond_2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    invoke-interface {v2}, Lgs/a;->f()Z

    move-result v2

    if-eqz v2, :cond_2c

    move v0, v8

    :goto_15
    const-string v2, "mi_logo"

    const-string/jumbo v3, "type_logo_layout"

    invoke-virtual {p0, v2, v3, v0}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "83"

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->U()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, v10}, Lcom/xiaomi/cam/watermark/a;->k0(Ljava/lang/String;)V

    :cond_2d
    iput-boolean v8, p0, Lcom/xiaomi/cam/watermark/a;->j:Z

    const-string v0, "WatermarkItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreFromUserConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_2f
    invoke-static {v2}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_30
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_31
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :cond_32
    const-string v0, "jsonObject"

    invoke-static {v0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v7

    :goto_16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, LGg/a0;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->a()Les/a;

    move-result-object p0

    iget-object p0, p0, Les/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Les/a$a;

    iget-object p0, p0, Les/a$a;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "backgroundList().datas[0].foreground[0]"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->a()Les/a;

    move-result-object p0

    iget-object p0, p0, Les/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les/a$a;

    iget-object v3, v2, Les/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Les/a$a;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "backgroundList().datas.f\u2026          }.foreground[0]"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final A0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationLatlng"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAddress"

    invoke-static {p3, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v4, v0, Lfs/h;

    iget-object v9, v7, LZr/a;->a:Ljava/nio/file/Path;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v5, LZr/J;->a:LZr/J;

    invoke-virtual {v0, v4, v5}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v4, v0, Lfs/j;

    if-eqz v4, :cond_2

    check-cast v0, Lfs/j;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v7}, LZr/a;->A()Lcs/e;

    move-result-object v4

    iget-object v4, v4, Lcs/e;->b:Les/d;

    iget-object v4, v4, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, LZr/a;->d()Les/a$a;

    move-result-object v5

    invoke-static {v9}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lfs/j;->o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Les/a$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lfs/j;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/j;

    invoke-virtual {v7}, LZr/a;->A()Lcs/e;

    move-result-object v1

    iget-object v1, v1, Lcs/e;->b:Les/d;

    iget-object v4, v1, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, LZr/a;->d()Les/a$a;

    move-result-object v5

    invoke-static {v9}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lfs/j;->o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Les/a$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/cam/watermark/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final B()Les/b;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/cam/watermark/a;->d:LPu/n;

    invoke-virtual {v0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "JsonLoader"

    const-string v2, "filePath"

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lww/a;->b:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lav/j;->p(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "wmRes"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "customize_settings"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1}, LZr/a;->A()Lcs/e;

    move-result-object v1

    iget-object v1, v1, Lcs/e;->f:Les/b;

    iget-object v1, v1, Les/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1}, LZr/a;->A()Lcs/e;

    move-result-object v1

    iget-object v1, v1, Lcs/e;->f:Les/b;

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->L()LGg/X;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Les/b;->a(Lorg/json/JSONArray;LGg/X;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->f:Les/b;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    const-string v0, "load fail"

    invoke-static {v1, v0, p0}, LKu/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    :goto_2
    const-string v2, "file not exist: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, LKu/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method

.method public B0(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string/jumbo v3, "saveLocationOption: "

    const-string v4, " "

    invoke-static {v3, v1, v4, p1}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v3, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "location_option"

    invoke-virtual {v0, p1, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location_off"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/h;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v3, LZr/K;->a:LZr/K;

    invoke-virtual {v0, v1, v3}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v3, v1, Lfs/j;

    if-eqz v3, :cond_2

    check-cast v1, Lfs/j;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    iput-object p1, v1, Lfs/j;->A:Ljava/lang/String;

    invoke-virtual {v1}, Lfs/j;->p()V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lfs/j;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/j;

    iput-object p1, v0, Lfs/j;->A:Ljava/lang/String;

    invoke-virtual {v0}, Lfs/j;->p()V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2
.end method

.method public final C(Z)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LZr/a;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    instance-of v3, v2, Lfs/h;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Lfs/h;

    sget-object v4, LZr/m;->a:LZr/m;

    invoke-virtual {v2, v3, v4}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs/a;

    const-string v4, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmImageView"

    invoke-static {v3, v4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lfs/g;

    invoke-virtual {v3}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lfs/g;

    if-eqz v3, :cond_0

    check-cast v2, Lfs/g;

    invoke-virtual {v2}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v0}, LGg/s;->j(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "pathType"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "select"

    invoke-static {v1, v3}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    const-string/jumbo p1, "white"

    goto :goto_3

    :cond_4
    const-string p1, "black"

    :goto_3
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".webp"

    invoke-static {v1, p1, p0}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public final C0(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, LZr/a;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, LQu/u;->M0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, v0}, LQu/u;->M0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/h;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v2, LZr/L;->a:LZr/L;

    invoke-virtual {v0, v1, v2}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lfs/o;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfs/o;

    iput p1, v1, Lfs/o;->z:F

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lfs/o;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/o;

    iput p1, v0, Lfs/o;->z:F

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final D(Z)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, LZr/a;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    instance-of v3, v2, Lfs/h;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Lfs/h;

    sget-object v4, LZr/n;->a:LZr/n;

    invoke-virtual {v2, v3, v4}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs/a;

    const-string v4, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmImageView"

    invoke-static {v3, v4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lfs/g;

    invoke-virtual {v3}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lfs/g;

    if-eqz v3, :cond_0

    check-cast v2, Lfs/g;

    invoke-virtual {v2}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {v0}, LGg/s;->j(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getDefaultCustomSignaturePath pathMap:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WatermarkItem"

    invoke-static {v3, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pathType"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "select"

    invoke-static {v1, v3}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    const-string/jumbo p1, "white"

    goto :goto_3

    :cond_4
    const-string p1, "black"

    :goto_3
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".webp"

    invoke-static {v1, p1, p0}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public final D0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mixId"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "saveMixCustomText: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p2, v3}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom_text_"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, LZr/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, LZr/a;->F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, LZr/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final E(Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;II)LHg/a;
    .locals 23

    const-string v0, " getSizeAndRect start"

    const-string/jumbo v1, "srcBitmap"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/cam/watermark/a;->a()Les/a;

    move-result-object v1

    iget-object v1, v1, Les/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    invoke-virtual {v2}, LGg/a0;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Les/a$a;

    iget-object v1, v1, Les/a$a;->a:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/xiaomi/cam/watermark/b;

    invoke-direct {v1}, Lcom/xiaomi/cam/watermark/b;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v2

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v6

    const-string v13, "mWmDec"

    const-string v14, "WatermarkProcessor"

    const-string/jumbo v4, "watermarkConfig"

    invoke-static {v2, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "folderPath"

    invoke-static {v7, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "wmUserConfig"

    invoke-static {v6, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v2}, LZr/a;->z()Lcs/a;

    move-result-object v4

    invoke-virtual {v4}, Lcs/a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, LZr/a;->n()Lcs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcs/b;->c()Lfs/h;

    move-result-object v8

    new-instance v0, Liu/m;

    move/from16 v5, p4

    rsub-int v4, v5, 0x168

    invoke-direct {v0, v4}, Liu/m;-><init>(I)V

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1c

    const/16 v17, -0x1

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v22}, Liu/a;->k(Liu/a;IIIIII)Liu/a;

    move-result-object v0

    check-cast v0, Liu/d;

    const/16 v11, 0x980

    move-object/from16 v4, p3

    move/from16 v10, p5

    move-object v9, v6

    move-object v6, v2

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lcom/xiaomi/cam/watermark/b;->b(Lcom/xiaomi/cam/watermark/b;Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILZr/a;Ljava/lang/String;Lfs/h;LGg/a0;II)Liu/a;

    move-result-object v2

    move-object v11, v9

    move-object v9, v6

    invoke-virtual {v0, v2}, Liu/d;->n(Liu/a;)V

    invoke-virtual {v0, v12, v12}, Liu/a;->h(II)V

    iget v2, v0, Liu/a;->h:I

    iget v3, v0, Liu/a;->i:I

    invoke-virtual {v0, v2, v3}, Liu/d;->f(II)V

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Liu/a;->h:I

    iget v4, v0, Liu/a;->i:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const-string/jumbo v3, "src_image_view"

    invoke-virtual {v1, v0, v3}, Lcom/xiaomi/cam/watermark/b;->d(Liu/d;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    if-le v10, v4, :cond_2

    sget-object v4, Las/b;->b:Las/b;

    move-object/from16 v5, p3

    if-ne v5, v4, :cond_2

    invoke-static {v10, v3, v2}, Lcom/xiaomi/cam/watermark/b;->a(ILandroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " getSizeAndRect srcImageRectTmp:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " correctRect\uff1a"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :cond_1
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v15

    :cond_2
    move-object v10, v3

    :goto_0
    new-instance v3, LHg/a;

    invoke-virtual {v9}, LZr/a;->A()Lcs/e;

    move-result-object v16

    new-instance v5, LGg/N;

    move-object v4, v2

    move-object v2, v5

    const-class v5, Lcom/xiaomi/cam/watermark/b;

    const-string v6, "getViewRect"

    const-string v7, "getViewRect(Lcom/xiaomi/pendant/PendantGroup;Ljava/lang/String;)Landroid/graphics/Rect;"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x2

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    move-object/from16 v12, v17

    :try_start_1
    invoke-direct/range {v2 .. v8}, Lfv/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v4

    move-object/from16 v7, p2

    move-object v4, v0

    move-object v5, v2

    move-object v2, v9

    move-object v6, v11

    move-object/from16 v3, v16

    :try_start_2
    invoke-virtual/range {v2 .. v7}, LZr/a;->m(Lcs/e;Liu/d;LGg/N;LGg/a0;Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v12, v1, v10, v0}, LHg/a;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Ljava/util/List;)V

    iget-object v0, v8, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " getSizeAndRect end, dynamicParams: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_2
    move-exception v0

    move-object v8, v4

    :goto_1
    iget-object v1, v8, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getSizeAndRect Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v15}, LKu/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, LHg/a;

    new-instance v1, Landroid/util/Size;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, LQu/w;->a:LQu/w;

    invoke-direct {v0, v1, v2, v3}, LHg/a;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Ljava/util/List;)V

    return-object v0

    :cond_4
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v15
.end method

.method public final E0(IILjava/lang/String;Ljava/lang/String;F)V
    .locals 7

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    if-eqz p3, :cond_0

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    iget-object v1, v0, Lfs/l;->A:Ljava/lang/String;

    const-string v2, "exif"

    invoke-static {v1, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lfs/l;->F:Ljava/lang/String;

    const-string/jumbo v2, "updateMixTextExifString start: "

    const-string v3, " (focal:"

    const-string v4, " aperture:"

    invoke-static {v2, v1, p1, v3, v4}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " iso:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WmMixTextView"

    invoke-static {v3, v2}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "@{focal}"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_3

    if-lez p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iput-object v6, v0, Lfs/o;->p:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :goto_1
    const-string v2, "@{aperture}"

    invoke-static {v1, v2, v4}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    cmpl-float v5, p5, v5

    if-lez v5, :cond_4

    sget-object v5, Lhs/b;->a:Lww/f;

    invoke-static {p5}, Lhs/b$a;->b(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iput-object v6, v0, Lfs/o;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :goto_2
    const-string v2, "@{speed}"

    invoke-static {v1, v2, v4}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-static {v1, v2, p4}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    iput-object v6, v0, Lfs/o;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    :goto_3
    const-string v2, "@{iso}"

    invoke-static {v1, v2, v4}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    if-lez p2, :cond_8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    iput-object v6, v0, Lfs/o;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    :goto_4
    iput-object v1, v0, Lfs/o;->p:Ljava/lang/String;

    const-string/jumbo v0, "updateMixTextExifString end: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final F0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationLatlng"

    invoke-static {p3, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAddress"

    invoke-static {p4, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    if-eqz p2, :cond_0

    invoke-interface {v2}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mix_text_"

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Lfs/l;

    invoke-virtual {v0}, LZr/a;->A()Lcs/e;

    move-result-object v2

    iget-object v2, v2, Lcs/e;->b:Les/d;

    iget-object v7, v2, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, LZr/a;->d()Les/a$a;

    move-result-object v8

    iget-object v2, v0, LZr/a;->a:Ljava/nio/file/Path;

    invoke-static {v2}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "fontsMap"

    invoke-static {v7, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, v4, Lfs/l;->C:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p4

    invoke-virtual/range {v4 .. v9}, Lfs/l;->r(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Les/a$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lfs/l;->D:Ljava/lang/String;

    invoke-virtual {v4}, Lfs/l;->p()V

    goto :goto_1

    :cond_0
    move-object v5, p1

    move-object v6, p4

    :goto_1
    move-object p1, v5

    move-object p4, v6

    goto :goto_0

    :cond_1
    move-object v6, p4

    if-nez p2, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p1

    invoke-virtual {p1}, LGg/a0;->o()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p4, ""

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x5f

    const/4 v5, 0x6

    invoke-static {v3, v4, v1, v5}, Lww/p;->H(Ljava/lang/String;CII)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->U()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "wmId->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", targetMixTextOption->"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", locationLatlng isEmpty->"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", locationAddress isEmpty->"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatermarkItem"

    invoke-static {v0, p1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "location_latlng"

    invoke-static {p4, p1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0, p2, v2}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    return-void

    :cond_7
    const-string v0, "location_address"

    invoke-static {p4, v0}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p0, p2, v2}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    return-void

    :cond_8
    invoke-static {p4, p1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, p2, v1}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    return-void

    :cond_9
    invoke-static {p4, v0}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, p2, v1}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final G()Lcs/a;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mixId"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LGg/a0;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    const-string/jumbo v1, "setLocationType:"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WmMixTextView"

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v0, Lfs/l;->B:Ljava/lang/String;

    invoke-virtual {v0}, Lfs/l;->p()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final H(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 3

    const-string v0, "mixId"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    iget-object p0, v0, Lfs/l;->E:Ljava/lang/String;

    const-string/jumbo p1, "ss"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_1
    iget-object p0, v0, Lfs/l;->E:Ljava/lang/String;

    const-string p1, "mm"

    invoke-static {p0, p1, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_2
    iget-object p0, v0, Lfs/l;->E:Ljava/lang/String;

    const-string p1, "HH"

    invoke-static {p0, p1, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_3
    iget-object p0, v0, Lfs/l;->E:Ljava/lang/String;

    const-string p1, "dd"

    invoke-static {p0, p1, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final H0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mixId"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LGg/a0;->x(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    iput-object p2, v0, Lfs/l;->A:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final I()Ljava/util/concurrent/TimeUnit;
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->y()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v2, v0, Lfs/p;

    if-eqz v2, :cond_1

    check-cast v0, Lfs/p;

    invoke-virtual {v0}, Lfs/p;->o()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    goto :goto_2

    :cond_1
    instance-of v2, v0, Lfs/h;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v3, LZr/E;->a:LZr/E;

    invoke-virtual {v0, v2, v3}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    instance-of v3, v2, Lfs/p;

    if-eqz v3, :cond_3

    check-cast v2, Lfs/p;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lfs/p;->o()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_0

    :cond_6
    return-object v1
.end method

.method public final I0(JLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    if-eqz p3, :cond_0

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    invoke-virtual {v0, p1, p2}, Lfs/l;->o(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J()[B
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const-string/jumbo v0, "userData/current"

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    :try_start_0
    const-string/jumbo v0, "targetPath"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LGg/s;->m(Ljava/nio/file/Path;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "deviceLogo"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, LZr/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LZr/a;->q:Ljava/lang/String;

    invoke-virtual {p0}, LZr/a;->t()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/h;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v2, LZr/M;->a:LZr/M;

    invoke-virtual {v0, v1, v2}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    const-string v2, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmModelView"

    invoke-static {v1, v2}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lfs/m;

    iget-boolean v2, v1, Lfs/m;->A:Z

    invoke-virtual {v1, p1, p2, v2, p3}, Lfs/m;->o(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lfs/m;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lfs/m;->A:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Lfs/m;->o(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final K(Landroid/app/Application;Landroid/graphics/Bitmap;Las/b;I[B)Lcom/xiaomi/cam/watermark/WatermarkRemover$b;
    .locals 24

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "srcBitmap"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " getWmRemoverInfo start"

    new-instance v1, Lcom/xiaomi/cam/watermark/b;

    invoke-direct {v1}, Lcom/xiaomi/cam/watermark/b;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v4

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v9

    const-string v12, "WatermarkProcessor"

    const-string v13, "mWmDec"

    const-string/jumbo v5, "watermarkConfig"

    invoke-static {v4, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "folderPath"

    invoke-static {v7, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "userConfig"

    invoke-static {v9, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v4}, LZr/a;->z()Lcs/a;

    move-result-object v5

    invoke-virtual {v5}, Lcs/a;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-object v5, v1, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, LZr/a;->n()Lcs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcs/b;->c()Lfs/h;

    move-result-object v8

    new-instance v0, Liu/m;

    const/16 v5, 0x168

    invoke-direct {v0, v5}, Liu/m;-><init>(I)V

    const/16 v22, 0x0

    const/16 v23, 0x1c

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Liu/a;->k(Liu/a;IIIIII)Liu/a;

    move-result-object v0

    check-cast v0, Liu/d;

    const/16 v11, 0x980

    const/4 v10, 0x2

    const/4 v5, 0x0

    move-object v6, v4

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v11}, Lcom/xiaomi/cam/watermark/b;->b(Lcom/xiaomi/cam/watermark/b;Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILZr/a;Ljava/lang/String;Lfs/h;LGg/a0;II)Liu/a;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v1

    move-object v4, v6

    :try_start_1
    invoke-virtual {v0, v2}, Liu/d;->n(Liu/a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Liu/a;->h(II)V

    iget v1, v0, Liu/a;->h:I

    iget v2, v0, Liu/a;->i:I

    invoke-virtual {v0, v1, v2}, Liu/d;->f(II)V

    new-instance v1, Lcom/xiaomi/cam/watermark/WatermarkRemover;

    invoke-direct {v1}, Lcom/xiaomi/cam/watermark/WatermarkRemover;-><init>()V

    iget-object v5, v9, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/16 v7, 0x5a

    move-object/from16 v2, p2

    move/from16 v6, p4

    move-object/from16 v8, p5

    move-object v3, v0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/cam/watermark/WatermarkRemover;->getWatermarkData(Landroid/graphics/Bitmap;Liu/a;LZr/a;Ljava/lang/String;II[B)Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    move-result-object v0

    iget-object v1, v9, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getWmRemoverInfo end, time cost: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v14

    :cond_1
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v14

    :catch_1
    move-exception v0

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object v9, v1

    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v1, v9, Lcom/xiaomi/cam/watermark/b;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getWmRemoverInfo Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v14}, LKu/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v0, Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    const/16 v1, 0x7f

    invoke-direct {v0, v1, v14}, Lcom/xiaomi/cam/watermark/WatermarkRemover$b;-><init>(ILandroid/graphics/Rect;)V

    return-object v0

    :cond_3
    invoke-static {v13}, Lfv/l;->o(Ljava/lang/String;)V

    throw v14
.end method

.method public final K0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "savePatterningMenuOption: "

    const-string v2, " settingId->"

    const-string v3, " optionId->"

    invoke-static {v1, v0, v2, p1, v3}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "patterning_menu_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L()LGg/X;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->k:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LGg/X;

    return-object p0
.end method

.method public final L0()V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, LZr/a;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, LQu/u;->M0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, v0}, LQu/u;->M0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v3, LZr/N;->a:LZr/N;

    invoke-virtual {v0, v1, v3}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lfs/o;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfs/o;

    iput-boolean v2, v1, Lfs/o;->u:Z

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lfs/o;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/o;

    iput-boolean v2, v0, Lfs/o;->u:Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final M()LGg/a0;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->i:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LGg/a0;

    return-object p0
.end method

.method public final M0(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object v0

    iget-object v0, v0, Lcs/e;->a:Les/a;

    iput-boolean p1, v0, Les/a;->a:Z

    iget-object v1, v0, Les/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Les/a$a;

    iget-boolean v3, v0, Les/a;->a:Z

    iput-boolean v3, v2, Les/a$a;->e:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LZr/a;->l()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmImageView"

    invoke-static {v0, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfs/g;

    iput-boolean p1, v0, Lfs/g;->D:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final N()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->u()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final N0(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->y()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v2, v1, Lfs/h;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lfs/h;

    sget-object v3, LZr/O;->a:LZr/O;

    invoke-virtual {v1, v2, v3}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    instance-of v3, v2, Lfs/p;

    if-eqz v3, :cond_2

    check-cast v2, Lfs/p;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lfs/p;->p(J)V

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lfs/p;

    if-eqz v2, :cond_0

    check-cast v1, Lfs/p;

    invoke-virtual {v1, p1, p2}, Lfs/p;->p(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, LGg/a0;->y(J)V

    return-void
.end method

.method public final O()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->f()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final O0(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveAlpha: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "view_alpha_ratio"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/a;

    if-eqz v1, :cond_1

    check-cast v0, Lfs/a;

    iget-boolean v1, v0, Lfs/a;->i:Z

    if-eqz v1, :cond_0

    iput p1, v0, Lfs/a;->j:F

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lfs/h;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/h;

    iget-boolean v1, v0, Lfs/h;->r:Z

    if-eqz v1, :cond_0

    iput p1, v0, Lfs/h;->t:F

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final P()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->h()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final P0(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveFontScale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "font_scale"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->w()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/g;

    if-eqz v1, :cond_1

    check-cast v0, Lfs/g;

    iget-boolean v1, v0, Lfs/g;->w:Z

    if-eqz v1, :cond_0

    iput p1, v0, Lfs/g;->x:F

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lfs/o;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/o;

    iput p1, v0, Lfs/o;->r:F

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Q()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    iget-object p0, p0, Lcs/a;->g:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "showLocationType"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final R()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->e:Les/c;

    iget-object p0, p0, Les/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final S()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final T()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->w()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final U()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    invoke-virtual {p0}, Lcs/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, LGg/a0;->o()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v4, 0x5f

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v2, v4, v5, v6}, Lww/p;->H(Ljava/lang/String;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/xiaomi/cam/watermark/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v4, "off"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/cam/watermark/a;->H0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x69f30ec5

    if-eq v4, v5, :cond_b

    const v5, -0xbd31f10

    const-string v6, "jsonObject.optString(KEY\u2026OCATION_DATA_ADDRESS, \"\")"

    const-string v7, "location_data_address"

    const-string v8, "jsonObject.optString(KEY.LOCATION_DATA_LATLNG, \"\")"

    const-string v9, "location_data_latlng"

    const-string v10, "jsonObject"

    const-string v11, ""

    if-eq v4, v5, :cond_7

    const v5, 0x4fca5d6a

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_3
    const-string v4, "location_address"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, v4}, Lcom/xiaomi/cam/watermark/a;->G0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v1

    iget-object v1, v1, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v4

    iget-object v4, v4, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/xiaomi/cam/watermark/a;->F0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v10}, Lfv/l;->o(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v10}, Lfv/l;->o(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string v4, "location_latlng"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/xiaomi/cam/watermark/a;->G0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v1

    iget-object v1, v1, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v4

    iget-object v4, v4, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/xiaomi/cam/watermark/a;->F0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v10}, Lfv/l;->o(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {v10}, Lfv/l;->o(Ljava/lang/String;)V

    throw v3

    :cond_b
    const-string v3, "custom_text"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v1

    invoke-virtual {v1, v2}, LGg/a0;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/xiaomi/cam/watermark/a;->D0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :goto_2
    return-void
.end method

.method public final W()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final X()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object v0

    iget-object v0, v0, Lcs/e;->c:Les/e;

    iget-object v0, v0, Les/e;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->c:Les/e;

    iget-object p0, p0, Les/e;->a:Ljava/util/LinkedHashMap;

    const-string v0, "orientation_border"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final Y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object v0

    iget-object v0, v0, Lcs/e;->c:Les/e;

    iget-object v0, v0, Les/e;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->c:Les/e;

    iget-object p0, p0, Les/e;->a:Ljava/util/LinkedHashMap;

    const-string v0, "orientation_horizontal"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final Z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object v0

    iget-object v0, v0, Lcs/e;->c:Les/e;

    iget-object v0, v0, Les/e;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->c:Les/e;

    iget-object p0, p0, Les/e;->a:Ljava/util/LinkedHashMap;

    const-string v0, "orientation_vertical"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final a()Les/a;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->a:Les/a;

    return-object p0
.end method

.method public final a0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 4

    iget-boolean p0, p0, Lcom/xiaomi/cam/watermark/a;->b:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p0, "/data/vendor/camera"

    const-string/jumbo v2, "watermarks"

    invoke-static {p0, v2}, Lcn/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearMiviData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "FileUtil"

    invoke-static {v2, p0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "clearMiviData: cost >: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WatermarkItem"

    invoke-static {v0, p0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b0(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroid/app/Application;Landroid/graphics/Bitmap;Las/b;I)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "srcBitmap"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0xf0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/cam/watermark/a;->d(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;Landroid/graphics/Bitmap;Las/b;ILjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->t()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d0()Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LZr/a;->i:Ljava/util/LinkedHashMap;

    iget-object p0, p0, LZr/a;->j:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcs/b;

    if-eqz p0, :cond_0

    sget-object v1, LZr/G;->a:LZr/G;

    invoke-virtual {p0, v0, v1}, Lcs/b;->a(Ljava/util/ArrayList;Lev/l;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    invoke-interface {v1}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable view is:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WaterMarkConfig"

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->L()LGg/X;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    iget-object p0, p0, Lcs/a;->h:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, LGg/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "customBackgroundTitle"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    iget-object p0, p0, Lcs/a;->m:Ljava/util/ArrayList;

    const-string v0, "livephoto"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final f(Z)V
    .locals 5

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const-string/jumbo v1, "userData/current/icon"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dirPath"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v2, "saveEnableCustomIcon: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "custom_icon_enable"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->f()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->y()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "enableCustomIconById id:"

    const-string v1, " type:"

    const-string v2, " e:"

    invoke-static {v0, p1, v1, p2, v2}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatermarkItem"

    invoke-static {v1, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "watermarkId"

    const-string v3, " "

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "g_force_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v4, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string/jumbo v1, "saveEnableGForceIcon: "

    invoke-static {v1, v4, v3, p3}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "custom_gforce_enable"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v2}, Lfv/l;->o(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    const-string v0, "mi_logo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveMiLogoSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mi_logo_switch"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "avatar_force_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v4, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v1, "saveEnableAvatarIcon: "

    invoke-static {v1, v4, v3, p3}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "custom_avatar_enable"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lfv/l;->o(Ljava/lang/String;)V

    throw v1

    :sswitch_3
    const-string/jumbo v0, "weather_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveWeatherSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "weather_switch"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, LZr/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs/a;

    invoke-interface {p1}, Lgs/a;->a()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1, p3}, Lgs/a;->e(Z)V

    goto :goto_1

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x15176a1c -> :sswitch_3
        0x3def7f3 -> :sswitch_2
        0x3ea1926e -> :sswitch_1
        0x615b6425 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->c()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final h(Z)V
    .locals 5

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const-string/jumbo v1, "userData/current/signature"

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dirPath"

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v2, "saveEnableCustomSignature: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "custom_signature_enable"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->h()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h0()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->z()Lcs/a;

    move-result-object v0

    iget-object v0, v0, Lcs/a;->b:Ljava/lang/String;

    const-string/jumbo v1, "wmSettingImg"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/cam/watermark/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->z()Lcs/a;

    move-result-object v0

    iget-object v0, v0, Lcs/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/cam/watermark/a;->h:Landroid/graphics/Bitmap;

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->h:Landroid/graphics/Bitmap;

    return-object p0

    :cond_3
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v1}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, LGg/a0;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string/jumbo v6, "wmId->"

    const-string v7, ", targetLocationOption->"

    const-string v8, ", locationLatlng isEmpty-> "

    invoke-static {v6, v1, v7, v0, v8}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationAddress isEmpty->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatermarkItem"

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "location_latlng"

    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "location_latlng_switch"

    if-nez v2, :cond_2

    invoke-static {v0, v5}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    return-void

    :cond_3
    const-string v2, "location_address"

    invoke-static {v0, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "location_address_switch"

    if-nez v6, :cond_4

    invoke-static {v0, v7}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {p0, v4}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    return-void

    :cond_5
    const-string v6, "location_address_list"

    invoke-static {v0, v6}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p0, v4}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    return-void

    :cond_6
    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0, v5}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v3}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    return-void

    :cond_8
    invoke-static {v0, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {v0, v7}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v3}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    return-void

    :cond_a
    invoke-static {v0, v6}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v3}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    :cond_b
    return-void
.end method

.method public final i0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->L()LGg/X;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->z()Lcs/a;

    move-result-object p0

    iget-object p0, p0, Lcs/a;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, LGg/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "wmName"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    iget-object v0, p0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "saveDynamicEffectSwitch: "

    const-string v2, " "

    invoke-static {v1, v0, v2, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "dynamic_effect_switch"

    invoke-virtual {p0, p1, v0}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j0()Les/e;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object p0

    iget-object p0, p0, Lcs/e;->c:Les/e;

    return-object p0
.end method

.method public final k(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "saveExifSwitch: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "exif_switch"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->d:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const-string v3, "jsonObject"

    if-eqz v1, :cond_1f

    const-string v4, "custom_gforce_enable"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, v2

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "g_force_icon"

    const-string/jumbo v6, "type_gforce_icon"

    invoke-virtual {p0, v5, v6, v4}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    const-string v4, "custom_gforce"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v8, v2

    :goto_1
    const-string v9, "direct"

    const/4 v7, 0x0

    const-string v5, "g_force_icon"

    const-string/jumbo v6, "type_gforce_icon"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/cam/watermark/a;->r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object v4, p0

    :goto_2
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    iget-object v0, p0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1e

    const-string v1, "drive_mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object p0, v2

    :goto_3
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v6

    goto :goto_5

    :cond_9
    :goto_4
    move v7, v5

    :goto_5
    xor-int/2addr v7, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "saveDriveModeSwitch: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v9, v8}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "drive_mode_switch"

    invoke-virtual {v0, v7, v8}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveMiLogo: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v8, v7}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type_drive_mode"

    const-string v1, "drive_mode_text"

    if-eqz p0, :cond_e

    invoke-static {p0}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v7

    invoke-virtual {v7, v6}, LZr/a;->b(Z)V

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgs/a;

    invoke-interface {v8}, Lgs/a;->a()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8, v5}, Lgs/a;->e(Z)V

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v1, v0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v7, v1, Lfs/n;

    if-eqz v7, :cond_d

    check-cast v1, Lfs/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, Lfs/o;->p:Ljava/lang/String;

    goto :goto_7

    :cond_e
    :goto_8
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0, v6}, Lgs/a;->e(Z)V

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v5}, LZr/a;->b(Z)V

    :cond_11
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    iget-object v0, p0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_1d

    const-string v1, "altitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, LGg/a0;->d:Lorg/json/JSONObject;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_12
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_a
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    if-eqz v2, :cond_15

    invoke-static {v2}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_b

    :cond_14
    move v0, v6

    goto :goto_c

    :cond_15
    :goto_b
    move v0, v5

    :goto_c
    xor-int/2addr v0, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saveAltitudeSwitch: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v7, v3}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "altitude_switch"

    invoke-virtual {p0, v0, v3}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveAltitude: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v3, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "type_altitude"

    const-string v0, "altitude_text"

    if-eqz v2, :cond_1a

    invoke-static {v2}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs/a;

    invoke-interface {v3}, Lgs/a;->a()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3, v5}, Lgs/a;->e(Z)V

    goto :goto_d

    :cond_18
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0, p0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/n;

    if-eqz v1, :cond_19

    check-cast v0, Lfs/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lfs/o;->p:Ljava/lang/String;

    goto :goto_e

    :cond_1a
    :goto_f
    invoke-virtual {v4}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, LZr/a;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0, v6}, Lgs/a;->e(Z)V

    goto :goto_10

    :cond_1c
    const-string p0, "location_off"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "noId"

    const-string/jumbo v0, "type_model"

    invoke-virtual {v4, p1, v0, p0}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1d
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_1e
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2

    :cond_1f
    invoke-static {v3}, Lfv/l;->o(Ljava/lang/String;)V

    throw v2
.end method

.method public l(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final m(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "mixId"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, LZr/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final m0()V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/cam/watermark/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/xiaomi/cam/watermark/a;->l0(Lcom/xiaomi/cam/watermark/a;Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/cam/watermark/a;->b:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->n0()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendDataToMivi: from path >: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WatermarkItem"

    invoke-static {v5, v2}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, LGg/s;->a:Z

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileUtil"

    invoke-static {v3, v2}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "/data/vendor/camera"

    invoke-virtual {v2, v9, v8}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 p0, 0x0

    const-string/jumbo v2, "sendDataToMivi: vendor path doesn\'t exist"

    invoke-static {v3, v2, p0}, LKu/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, LGg/s;->h(Ljava/nio/file/Path;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "video_watermarks"

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "watermarks"

    :goto_0
    invoke-interface {v2, v8}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const-string/jumbo v8, "watermarksPath"

    invoke-static {v2, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LGg/s;->f(Ljava/nio/file/Path;)V

    invoke-interface {v4}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    const-string/jumbo v8, "wmGroupPath"

    invoke-static {v2, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LGg/s;->f(Ljava/nio/file/Path;)V

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    const-string/jumbo v8, "wmDirName"

    invoke-static {v2, v8}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LGg/s;->f(Ljava/nio/file/Path;)V

    iget-boolean p0, p0, Lcom/xiaomi/cam/watermark/a;->c:Z

    invoke-static {v4, v2, p0}, LGg/s;->c(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendDataToMivi cost: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendDataToMivi: cost >: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "saveModelSwitch: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "model_switch"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->t()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n0()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/xiaomi/cam/watermark/a;->b:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_1

    const-string v0, ""

    move-wide/from16 v17, v2

    move-object/from16 v19, v4

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v8

    invoke-virtual {v8}, LZr/a;->A()Lcs/e;

    move-result-object v8

    invoke-virtual {v0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v9, "res"

    invoke-static {v8, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "userConfig"

    invoke-static {v0, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, LZr/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, LZr/a;->z()Lcs/a;

    move-result-object v10

    invoke-virtual {v10}, Lcs/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v10, :cond_2

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    iget v12, v1, LZr/a;->m:I

    if-le v11, v12, :cond_3

    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_3
    invoke-virtual {v1}, LZr/a;->z()Lcs/a;

    move-result-object v11

    invoke-virtual {v11}, Lcs/a;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, LZr/a;->e()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    iget-object v12, v1, LZr/a;->f:LPu/n;

    invoke-virtual {v12}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    const-string/jumbo v14, "version"

    invoke-virtual {v11, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v1}, LZr/a;->z()Lcs/a;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    iget-object v14, v12, Lcs/a;->e:Ljava/lang/String;

    if-eqz v14, :cond_14

    const-string v15, "name"

    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lcs/a;->b()Ljava/lang/String;

    move-result-object v14

    const-string v5, "id"

    invoke-virtual {v13, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lcs/a;->a()Ljava/lang/String;

    move-result-object v5

    const-string v14, "description"

    invoke-virtual {v13, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "gainmap_modify_version"

    iget v12, v12, Lcs/a;->k:I

    invoke-virtual {v13, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "metadata"

    invoke-virtual {v11, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v12, v1, LZr/a;->i:Ljava/util/LinkedHashMap;

    iget-object v13, v1, LZr/a;->j:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcs/b;

    if-eqz v12, :cond_4

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12}, Lcs/b;->c()Lfs/h;

    move-result-object v12

    invoke-virtual {v12, v6, v8, v0, v4}, Lfs/h;->b(Lorg/json/JSONArray;Lcs/e;LGg/a0;Ljava/nio/file/Path;)V

    const-string v0, "layout"

    invoke-virtual {v13, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    const-string v0, "layout_group"

    invoke-virtual {v11, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, LZr/a;->A()Lcs/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v0, Lcs/e;->b:Les/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v5, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbs/b;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    move-wide/from16 v17, v2

    iget-wide v2, v8, Lbs/b;->a:D

    const-string/jumbo v7, "size"

    invoke-virtual {v13, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v2, v8, Lbs/b;->b:Ljava/lang/String;

    const-string v3, "color"

    invoke-virtual {v13, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v8, Lbs/b;->c:Ljava/lang/String;

    const-string/jumbo v7, "typeface"

    invoke-virtual {v13, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v8, Lbs/b;->d:Ljava/lang/String;

    const-string/jumbo v7, "variation"

    invoke-virtual {v13, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v8, Lbs/b;->e:Ljava/lang/String;

    const-string/jumbo v7, "textAlign"

    invoke-virtual {v13, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "letterSpacing"

    move-object v7, v4

    move-object/from16 p0, v5

    iget-wide v4, v8, Lbs/b;->f:D

    invoke-virtual {v13, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v8, Lbs/b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "shadow"

    invoke-virtual {v13, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v8, Lbs/b;->h:Lbs/c;

    if-eqz v2, :cond_9

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v19, v7

    iget-object v7, v2, Lbs/c;->a:Lbs/d;

    move-object/from16 v20, v9

    iget v9, v7, Lbs/d;->a:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v7, v7, Lbs/d;->b:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v7, "start_point"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v7, v2, Lbs/c;->b:Lbs/d;

    iget v9, v7, Lbs/d;->a:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v7, v7, Lbs/d;->b:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v7, "end_point"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v7, v2, Lbs/c;->c:[I

    array-length v9, v7

    move-object/from16 v21, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_6

    aget v22, v21, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move/from16 v23, v7

    filled-new-array/range {v22 .. v22}, [Ljava/lang/Object;

    move-result-object v7

    move/from16 v22, v9

    const/4 v9, 0x1

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v9, "#%08X"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v23, 0x1

    move/from16 v9, v22

    goto :goto_2

    :cond_6
    const-string v7, "colors"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v2, Lbs/c;->d:[F

    if-eqz v5, :cond_8

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    array-length v9, v5

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_7

    aget v22, v21, v5

    move/from16 v23, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v23, 0x1

    goto :goto_3

    :cond_7
    const-string v5, "positions"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    iget-object v2, v2, Lbs/c;->e:Ljava/lang/String;

    const-string/jumbo v5, "tile"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "linear_gradient"

    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_9
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    :goto_4
    const-string/jumbo v2, "style"

    iget-object v4, v8, Lbs/b;->i:Lbs/a;

    if-eqz v4, :cond_a

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget v7, v4, Lbs/a;->a:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string/jumbo v9, "radius"

    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, v4, Lbs/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "blur_mask_filter"

    invoke-virtual {v13, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v4, v8, Lbs/b;->j:Lbs/e;

    if-eqz v4, :cond_b

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v4, Lbs/e;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v2, v4, Lbs/e;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v7, "width"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v4, Lbs/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "stroke"

    invoke-virtual {v13, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v5, p0

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    move-object/from16 v9, v20

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_c
    move-wide/from16 v17, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v9

    const-string v2, "fonts"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v0, Lcs/e;->a:Les/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v0, Les/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Les/a$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v3, Les/a$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, v3, Les/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, v3, Les/a$a;->f:Ljava/lang/String;

    const-string v7, "@algo=gradient_color"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lww/l;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "value"

    if-eqz v7, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "@img="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_d
    iget-boolean v5, v3, Les/a$a;->e:Z

    if-eqz v5, :cond_e

    iget-object v5, v3, Les/a$a;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_e
    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_6
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, v3, Les/a$a;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_f
    const-string v3, "foreground"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    :cond_10
    const-string v0, "background"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "wmRes"

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveLayout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WaterMarkConfig"

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filePath"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lww/a;->b:Ljava/nio/charset/Charset;

    invoke-static {v2, v0, v1}, Lav/j;->t(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    move-object/from16 v0, v20

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catchall_0
    move-exception v0

    throw v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendJsonToMivi: from path >: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v19

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WatermarkItem"

    invoke-static {v3, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, LGg/s;->a:Z

    if-nez v1, :cond_11

    goto/16 :goto_c

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileUtil"

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    const/4 v8, 0x0

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, "/data/vendor/camera"

    invoke-virtual {v1, v8, v6}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcn/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string/jumbo v0, "sendJsonToMivi: vendor path not exist"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, LKu/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_c

    :cond_12
    invoke-static {v7}, LGg/s;->h(Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v6, "video_watermarks"

    goto :goto_b

    :cond_13
    const-string/jumbo v6, "watermarks"

    :goto_b
    invoke-interface {v1, v6}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const-string/jumbo v6, "watermarksPath"

    invoke-static {v1, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LGg/s;->f(Ljava/nio/file/Path;)V

    invoke-interface {v7}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    const-string/jumbo v6, "wmGroupPath"

    invoke-static {v1, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LGg/s;->f(Ljava/nio/file/Path;)V

    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    const-string/jumbo v6, "wmDirName"

    invoke-static {v1, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LGg/s;->f(Ljava/nio/file/Path;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    const-string v7, "get(base, *subpaths)"

    invoke-static {v6, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, LGg/s;->d(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sendJsonToMivi cost: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v17

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendJsonToMivi: cost >: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const-string/jumbo v0, "wmName"

    invoke-static {v0}, Lfv/l;->o(Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16
.end method

.method public final o(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v2, "saveTimeSwitch: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p1}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "time_switch"

    invoke-virtual {v0, v1, v2}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->y()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o0(Les/a$a;)V
    .locals 3

    const-string v0, "bg"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object p1, p1, Les/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, LGg/a0;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->u()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmLayout"

    invoke-static {v0, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfs/h;

    const-string v1, "@background="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lfs/h;->q:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, LZr/a;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcs/b;

    new-instance v2, LZr/A;

    invoke-direct {v2, p1}, LZr/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcs/b;->a(Ljava/util/ArrayList;Lev/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs/a;

    instance-of v0, p1, Lfs/h;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lfs/h;

    sget-object v1, LZr/b;->a:LZr/b;

    invoke-virtual {p1, v0, v1}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0, p2}, Lgs/a;->e(Z)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lgs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lgs/a;->e(Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, LGg/a0;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, LZr/a;->A()Lcs/e;

    move-result-object v0

    iget-object v0, v0, Lcs/e;->a:Les/a;

    iget-object v0, v0, Les/a;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Les/a$a;

    iget-object v3, v3, Les/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Les/a$a;

    invoke-virtual {p0}, LZr/a;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    const-string v3, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmLayout"

    invoke-static {v2, v3}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lfs/h;

    iget-object v3, v0, Les/a$a;->a:Ljava/lang/String;

    const-string v4, "@background="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lfs/h;->q:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final q()LZr/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/cam/watermark/a;->f:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZr/a;

    return-object p0
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    iget-object v3, v2, LGg/a0;->f:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const-string/jumbo v5, "saveCustomIcon: "

    const-string v6, " "

    invoke-static {v5, v3, v6, p1}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v5, v3}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "custom_icon"

    invoke-virtual {v2, p1, v3}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v2, "userData/current/icon"

    invoke-static {p1, v2, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const/16 v6, 0x2f

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v4}, LZr/a;->B(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGg/s;->a(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [C

    aput-char v6, v0, v1

    invoke-static {p1, v0}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p0, v0}, LGg/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "userData/resource/icon"

    invoke-interface {v5, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [C

    aput-char v6, v8, v1

    invoke-static {p1, v8}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGg/s;->a(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [C

    aput-char v6, v0, v1

    invoke-static {p1, v0}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v2, v0}, LGg/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    const-string v0, "pathType=direct;path="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LZr/a;->B(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v4}, LZr/a;->B(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v4
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->f()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "setCustomIconById id:"

    const-string v1, " type:"

    const-string v2, " p:"

    invoke-static {v0, p1, v1, p2, v2}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pt:"

    const-string v2, " fg:"

    invoke-static {v0, p4, v1, p5, v2}, LO/f;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatermarkItem"

    invoke-static {v1, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "g_force_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveGForceIcon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom_gforce"

    invoke-virtual {v0, p4, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v0, "avatar_force_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveAvatarIcon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom_avatar"

    invoke-virtual {v0, p4, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "weather_icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveWeatherIcon: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "weather"

    invoke-virtual {v0, p4, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "prototype_diagram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    const-string/jumbo v1, "prototype_diagram_path"

    invoke-virtual {v0, p4, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_d

    invoke-static {p4}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v1, "userData/current"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "quote(...)"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "/"

    invoke-static {v2, v3, v3}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "^"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/([^/]+)/([^/]+\\.webp)$"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pattern"

    invoke-static {v2, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(...)"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "matcher(...)"

    invoke-static {v2, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move-object v3, v4

    goto :goto_1

    :cond_5
    new-instance v3, Lww/e;

    invoke-direct {v3, v2, p4}, Lww/e;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lww/e;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lww/e$a;

    invoke-virtual {v2, v0}, Lww/e$a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lww/e;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    check-cast v2, Lww/e$a;

    invoke-virtual {v2, v3}, Lww/e$a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, LPu/j;

    invoke-direct {v3, v0, v2}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_7

    iget-object v0, v3, LPu/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v3, LPu/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const-string/jumbo v3, "userData/resource"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    invoke-interface {v5, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v5, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGg/s;->a(Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, LGg/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v0, "direct"

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ";path="

    const-string v2, "pathType="

    if-eqz v0, :cond_8

    invoke-static {v2, p5, v1, p4}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "select"

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ";foreground="

    invoke-static {v2, p5, v1, p4, v0}, LF1/u2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_3
    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, LZr/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs/a;

    instance-of p2, p1, Lfs/g;

    if-eqz p2, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_b

    check-cast p1, Lfs/g;

    invoke-virtual {p1}, Lfs/g;->m()V

    goto :goto_4

    :cond_b
    check-cast p1, Lfs/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p1, Lfs/g;->n:Ljava/lang/String;

    goto :goto_4

    :cond_c
    return-void

    :cond_d
    :goto_5
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/cam/watermark/a;->g(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e5c054a -> :sswitch_3
        -0x15176a1c -> :sswitch_2
        0x3def7f3 -> :sswitch_1
        0x615b6425 -> :sswitch_0
    .end sparse-switch
.end method

.method public final s()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->h()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s0(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v2

    iget-object v3, v2, LGg/a0;->f:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    const-string/jumbo v5, "saveCustomSignature: "

    const-string v6, " "

    invoke-static {v5, v3, v6, p1}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v5, v3}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "custom_signature"

    invoke-virtual {v2, p1, v3}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v2, "userData/current/signature"

    invoke-static {p1, v2, v1}, Lww/p;->w(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/xiaomi/cam/watermark/a;->a:Ljava/nio/file/Path;

    const/16 v6, 0x2f

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v4}, LZr/a;->C(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGg/s;->a(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [C

    aput-char v6, v0, v1

    invoke-static {p1, v0}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p0, v0}, LGg/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "userData/resource/signature"

    invoke-interface {v5, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [C

    aput-char v6, v8, v1

    invoke-static {p1, v8}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGg/s;->a(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [C

    aput-char v6, v0, v1

    invoke-static {p1, v0}, Lww/p;->O(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LQu/u;->E0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v2, v0}, LGg/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    const-string v0, "pathType=direct;path="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LZr/a;->C(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, v4}, LZr/a;->C(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v4
.end method

.method public final t()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->L()LGg/X;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v3, v1, Lfs/b;

    if-eqz v3, :cond_1

    check-cast v1, Lfs/b;

    iget-object v2, v1, Lfs/b;->C:Ljava/lang/String;

    goto :goto_2

    :cond_1
    instance-of v3, v1, Lfs/h;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lfs/h;

    sget-object v4, LZr/e;->a:LZr/e;

    invoke-virtual {v1, v3, v4}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs/a;

    instance-of v4, v3, Lfs/b;

    if-eqz v4, :cond_3

    check-cast v3, Lfs/b;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    iget-object v3, v3, Lfs/b;->C:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_0

    :cond_6
    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    invoke-virtual {v0, v2}, LGg/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v2, "saveCustomText: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p2}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom_text"

    invoke-virtual {v0, p2, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, LZr/a;->D(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->i()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lgs/a;->e(Z)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u0(Ljava/lang/String;)V
    .locals 5

    const-string v0, "cvLensName"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LZr/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmImageView"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    invoke-static {v1, v2}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lfs/g;

    invoke-virtual {v1, p1}, Lfs/g;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LZr/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgs/a;

    invoke-static {v4, v2}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lfs/g;

    invoke-virtual {v4, v1}, Lfs/g;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "leica_lens_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, v0, LZr/a;->n:Ljava/lang/String;

    invoke-virtual {v0}, LZr/a;->p()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v2, v1, Lfs/g;

    if-eqz v2, :cond_3

    check-cast v1, Lfs/g;

    invoke-virtual {v1}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LZr/a;->n:Ljava/lang/String;

    const-string v4, "@type_leica_lens"

    invoke-static {v2, v4, v3}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfs/g;->n:Ljava/lang/String;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p1

    iget-object p1, p1, LZr/a;->n:Ljava/lang/String;

    invoke-static {p1}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    invoke-interface {v1}, Lgs/a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, p1}, Lgs/a;->e(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, LZr/a;->o()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->L()LGg/X;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->k()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v3, v1, Lfs/f;

    if-eqz v3, :cond_1

    check-cast v1, Lfs/f;

    iget-object v2, v1, Lfs/f;->B:Ljava/lang/String;

    goto :goto_2

    :cond_1
    instance-of v3, v1, Lfs/h;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lfs/h;

    sget-object v4, LZr/f;->a:LZr/f;

    invoke-virtual {v1, v3, v4}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgs/a;

    instance-of v4, v3, Lfs/f;

    if-eqz v4, :cond_3

    check-cast v3, Lfs/f;

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    iget-object v3, v3, Lfs/f;->B:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_5
    :goto_2
    if-eqz v2, :cond_0

    :cond_6
    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    invoke-virtual {v0, v2}, LGg/X;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0(ILjava/lang/String;FI)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->j()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v1, v0, Lfs/h;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v2, LZr/H;->a:LZr/H;

    invoke-virtual {v0, v1, v2}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v2, v1, Lfs/d;

    if-eqz v2, :cond_2

    check-cast v1, Lfs/d;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2, p3, p4}, Lfs/d;->o(ILjava/lang/String;FI)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lfs/d;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, p3, p4}, Lfs/d;->o(ILjava/lang/String;FI)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v2, v0, Lfs/j;

    if-eqz v2, :cond_1

    check-cast v0, Lfs/j;

    iget-object v1, v0, Lfs/j;->A:Ljava/lang/String;

    goto :goto_2

    :cond_1
    instance-of v2, v0, Lfs/h;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v3, LZr/g;->a:LZr/g;

    invoke-virtual {v0, v2, v3}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgs/a;

    instance-of v3, v2, Lfs/j;

    if-eqz v3, :cond_3

    check-cast v2, Lfs/j;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    iget-object v2, v2, Lfs/j;->A:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_0

    :cond_6
    if-nez v1, :cond_7

    const-string p0, "location_latlng"

    return-object p0

    :cond_7
    return-object v1
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 7

    const-string v0, "filterName"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, LZr/a;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcs/b;

    sget-object v3, LZr/p;->a:LZr/p;

    invoke-virtual {v2, v1, v3}, Lcs/b;->b(Ljava/util/ArrayList;Lev/l;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    const-string/jumbo v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    const-string v4, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmFilterTextView"

    invoke-static {v1, v4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lfs/e;

    iget-object v4, v1, Lfs/e;->A:Ljava/lang/String;

    const-string v5, "@filter="

    invoke-static {v4, v5, v2}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "${name}"

    invoke-static {v2, v4, p1}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v5, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "${uppercase_name}"

    invoke-static {v2, v6, v5}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "${lowercase_name}"

    invoke-static {v2, v3, v4}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfs/o;->p:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-static {p1}, Lww/p;->W(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LZr/a;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgs/a;

    const-string v5, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmImageView"

    invoke-static {v4, v5}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lfs/g;

    invoke-virtual {v4, v1}, Lfs/g;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, " "

    const-string v1, "_"

    invoke-static {p1, v0, v1}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "leica_looks_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v0, LZr/a;->o:Ljava/lang/String;

    invoke-virtual {v0}, LZr/a;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    instance-of v2, v1, Lfs/g;

    if-eqz v2, :cond_4

    check-cast v1, Lfs/g;

    invoke-virtual {v1}, Lfs/g;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, LZr/a;->o:Ljava/lang/String;

    const-string v4, "@type_leica_looks"

    invoke-static {v2, v4, v3}, Lww/l;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfs/g;->n:Ljava/lang/String;

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v6

    iget-object v6, v6, LZr/a;->o:Ljava/lang/String;

    const-string v2, "leica_looks_regular"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p1

    iget-object p1, p1, LZr/a;->o:Ljava/lang/String;

    invoke-static {p1}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    invoke-interface {v1}, Lgs/a;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Lgs/a;->d()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type_leica_looks_container"

    invoke-static {v2, v3}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lgs/a;->e(Z)V

    goto :goto_5

    :cond_7
    invoke-interface {v1, p1}, Lgs/a;->e(Z)V

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, LZr/a;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcs/b;

    sget-object v2, LZr/t;->a:LZr/t;

    invoke-virtual {v1, v0, v2}, Lcs/b;->a(Ljava/util/ArrayList;Lev/l;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v6, :cond_b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lgs/a;->e(Z)V

    goto :goto_7

    :cond_b
    invoke-interface {v0, p1}, Lgs/a;->e(Z)V

    goto :goto_7

    :cond_c
    return-void
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mix_text_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lfs/l;

    iget-object p0, v0, Lfs/l;->A:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, "off"

    :cond_2
    return-object p0
.end method

.method public final x0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v1, v0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v2, "saveGreetingText: "

    const-string v3, " "

    invoke-static {v2, v1, v3, p2}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "greeting_text"

    invoke-virtual {v0, p2, v1}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lww/p;->F(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, LZr/a;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgs/a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lgs/a;->e(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, LZr/a;->E(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->k()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgs/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lgs/a;->e(Z)V

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final y()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->t()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y0(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LZr/a;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, v0, LZr/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    iget-object v0, p0, LGg/a0;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "saveKeyLayout: "

    const-string v2, " "

    invoke-static {v1, v0, v2, p1}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_layout"

    invoke-virtual {p0, p1, v0}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo p0, "watermarkId"

    invoke-static {p0}, Lfv/l;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object p0

    invoke-virtual {p0}, LZr/a;->y()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    invoke-interface {v0}, Lgs/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationAddress"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    iget-object v3, v0, LGg/a0;->f:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    const-string/jumbo v4, "setLocationAddressType: "

    const-string v5, " 2"

    invoke-static {v4, v3, v5}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, LGg/a0;->b:Ljava/lang/String;

    invoke-static {v4, v3}, LKu/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "location_address_type"

    invoke-virtual {v0, v3, v4}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0, p2}, LGg/a0;->A(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->q()LZr/a;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, LZr/a;->r()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v9, v7, LZr/a;->a:Ljava/nio/file/Path;

    const-string v10, "fontsMap"

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v3, v0, Lfs/h;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lfs/h;

    sget-object v4, LZr/I;->a:LZr/I;

    invoke-virtual {v0, v3, v4}, Lfs/h;->j(Ljava/util/ArrayList;Lev/l;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    instance-of v3, v0, Lfs/j;

    if-eqz v3, :cond_2

    check-cast v0, Lfs/j;

    goto :goto_2

    :cond_2
    move-object v0, v6

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v7}, LZr/a;->A()Lcs/e;

    move-result-object v3

    iget-object v3, v3, Lcs/e;->b:Les/d;

    iget-object v3, v3, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, LZr/a;->d()Les/a$a;

    move-result-object v4

    invoke-static {v9}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v10}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lfs/j;->r(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Les/a$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfs/j;->C:Ljava/lang/String;

    invoke-virtual {v0}, Lfs/j;->p()V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lfs/j;

    if-eqz v1, :cond_0

    check-cast v0, Lfs/j;

    invoke-virtual {v7}, LZr/a;->A()Lcs/e;

    move-result-object v1

    iget-object v1, v1, Lcs/e;->b:Les/d;

    iget-object v3, v1, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, LZr/a;->d()Les/a$a;

    move-result-object v4

    invoke-static {v9}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v10}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lfs/j;->r(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Les/a$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfs/j;->C:Ljava/lang/String;

    invoke-virtual {v0}, Lfs/j;->p()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v7}, LZr/a;->s()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs/a;

    const-string v1, "null cannot be cast to non-null type com.xiaomi.json.parser.data.wmimp.view.WmMixTextView"

    invoke-static {v0, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfs/l;

    invoke-virtual {v7}, LZr/a;->A()Lcs/e;

    move-result-object v1

    iget-object v1, v1, Lcs/e;->b:Les/d;

    iget-object v3, v1, Les/d;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, LZr/a;->d()Les/a$a;

    move-result-object v4

    invoke-static {v9}, Lbv/a;->D(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v10}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lfs/l;->r(Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedHashMap;Les/a$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfs/l;->D:Ljava/lang/String;

    invoke-virtual {v0}, Lfs/l;->p()V

    goto :goto_3

    :cond_5
    const-string v0, ""

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/cam/watermark/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string/jumbo v0, "watermarkId"

    invoke-static {v0}, Lfv/l;->o(Ljava/lang/String;)V

    throw v6
.end method
