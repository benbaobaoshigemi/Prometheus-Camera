.class public final Lq6/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/C;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lcom/android/camera/a;

.field public b:[I

.field public c:I

.field public d:Z


# direct methods
.method public static Af(Z)V
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/I;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/I;

    invoke-virtual {v1, v0}, Lr2/I;->m(I)Z

    move-result v2

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, p0}, Lr2/I;->n(IZ)V

    if-eqz p0, :cond_1

    invoke-static {}, LS6/e;->b()LS6/e;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lq6/X;->oa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, LS6/e;->Sh()V

    :cond_1
    invoke-static {}, LQ6/M0;->b()LQ6/M0;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0xef

    invoke-interface {p0, v1, v0}, LQ6/M0;->Jg(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static De(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common_tips"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    new-instance v1, Ljq/a;

    const-string v2, "mic_audio_tips"

    invoke-direct {v1, p0, v2}, Ljq/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static E9()Z
    .locals 4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/P;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/w;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LF1/w;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/x;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LF1/x;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/z;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, LF1/z;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH4/g0;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, LH4/g0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static G2(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configDualVideo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->f()Lv2/B;

    move-result-object v0

    const-string v1, "MERGED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Lv2/B;->q(I)V

    invoke-static {}, LQ6/d;->b()LQ6/d;

    move-result-object p0

    invoke-interface {p0}, LQ6/d;->Ui()V

    return-void
.end method

.method public static Kg(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lr2/w;->a:Z

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "d"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, Lr2/w;->a:Z

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/n;

    const/16 v0, 0xd

    invoke-direct {p1, v0}, LEs/n;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static L(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 12

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->i5()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v2, "pref_video_hdr10plus_operated"

    invoke-virtual {v0, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Ls2/a;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/a;

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v3

    check-cast v3, LA2/a$a;

    invoke-virtual {v3, v1}, LA2/a$a;->b(I)Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/a;

    const-string v3, "ConfigChangeImpl"

    if-eqz v0, :cond_7

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ls2/a;->t(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz p2, :cond_3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    move v7, v1

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result v8

    invoke-virtual {v0, v4}, Ls2/a;->s(I)Z

    move-result v4

    invoke-virtual {v0, p0}, Ls2/a;->getPersistValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v9, "checkHdr10PlusForConcert, smart scene on: "

    const-string v10, ", current scene: "

    const-string v11, ", last scene: "

    invoke-static {v9, v10, p1, v11, p3}, LB3/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hdr10plus on: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", hdr10plus mutex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    if-eqz v5, :cond_4

    if-nez v8, :cond_4

    invoke-virtual {v0, v6}, Ls2/a;->y(Z)V

    invoke-virtual {v2, v6}, Ls2/a;->y(Z)V

    xor-int/lit8 p0, v4, 0x1

    return p0

    :cond_4
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v0, v1}, Ls2/a;->y(Z)V

    invoke-virtual {v2, v1}, Ls2/a;->y(Z)V

    xor-int/lit8 p0, v4, 0x1

    return p0

    :cond_5
    if-nez v8, :cond_6

    if-eqz p0, :cond_8

    const-string/jumbo p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_6
    invoke-virtual {v0, v1}, Ls2/a;->y(Z)V

    invoke-virtual {v2, v1}, Ls2/a;->y(Z)V

    return v6

    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "checkHdr10PlusForConcert, configHdr10Plus: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", configHdr10PlusOfCamera: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return v1
.end method

.method public static Mc(I)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, LQ6/l1;->A8()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static P0()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoWatermark"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->E1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, LS8/d;->b(Z)LGg/P;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LGg/P;->c(Z)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/f;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static Te(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    const-string v1, "attr_feature_name"

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "attr_value"

    invoke-virtual {v0, p0, p1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static Ua(I)Z
    .locals 8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c1;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c1;

    const-class v2, Lr2/B0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/B0;

    const-class v3, Lr2/m0;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/m0;

    const-class v4, Lr2/G0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/G0;

    const-class v5, Lr2/L0;

    invoke-virtual {v0, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/L0;

    const-class v6, Lr2/I0;

    invoke-virtual {v0, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/I0;

    const-class v7, Lr2/D0;

    invoke-virtual {v0, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D0;

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v1

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v2

    invoke-virtual {v3, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v3

    invoke-virtual {v4, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v4

    invoke-virtual {v5, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v5

    invoke-virtual {v6, p0}, Lr2/I0;->isModified(I)Z

    move-result v6

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

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

.method public static Vg(Z)V
    .locals 3

    const-string/jumbo v0, "updateComponentPortraitStyleFilter: close = "

    invoke-static {v0, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/N;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/N;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lr2/N;->b:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v0, Lr2/N;->b:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v2, v0, Lr2/N;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p0}, Lr2/N;->q(IZ)V

    if-eqz p0, :cond_2

    invoke-static {}, LS6/e;->b()LS6/e;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lq6/X;->oa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, LS6/e;->Sh()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Xg(Z)V
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/S;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/S;

    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lr2/S;->a:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    :goto_0
    if-ne v2, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0, p0}, Lr2/S;->s(IZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static a0()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvLens"
        type = 0x2
    .end annotation

    const-string v0, "0"

    invoke-static {v0}, Lcom/android/camera/data/data/E;->w0(Ljava/lang/String;)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/G;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/y2;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LF1/y2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static dd()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoFilter"
        type = 0x2
    .end annotation

    sget v0, Li3/b;->N:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->L1(I)V

    return-void
.end method

.method public static g9(LQ6/p;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x22

    invoke-interface {p0, v2, v0, v0, v1}, LQ6/p;->I5(IZZ[Ljava/lang/Object;)V

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LZh/b$c;->i:LZh/b$c;

    invoke-virtual {p0, v0}, LZh/b$c;->c(Z)V

    :cond_0
    return-void
.end method

.method public static gd(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, LQ6/n1;->zd(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static hf(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_common"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    invoke-static {p1}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Liq/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static l0()Z
    .locals 4

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    iget-object v0, v0, LA2/a$a;->b:Lu2/Q;

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v1

    const/16 v2, 0xa9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v0, v2}, Lu2/Q;->c0(I)V

    const-string v0, "pref_video_speed_fast_key"

    invoke-virtual {v1, v0, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public static nd(I)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h1()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lj9/K;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lj9/K;-><init>(II)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public static oa()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/C;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LEs/C;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_video"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    invoke-static {p0}, Ldq/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "attr_video_quality"

    invoke-virtual {v0, p0, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void
.end method

.method public static pf(Z)V
    .locals 3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/c;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c;

    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lr2/c;->a:Landroid/util/SparseBooleanArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, v1, Lr2/c;->a:Landroid/util/SparseBooleanArray;

    :cond_0
    iget-object v2, v1, Lr2/c;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, p0}, Lr2/c;->q(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH3/p;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LH3/p;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static qg(Z)V
    .locals 4

    const-string/jumbo v0, "updateComponentFilter: close = "

    invoke-static {v0, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lv2/Q;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/Q;

    const-class v2, Lr2/t;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/t;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lv2/Q;->q(I)Z

    move-result v3

    if-ne v3, p0, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lv2/Q;->q(I)Z

    move-result v3

    if-ne v3, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, p0}, Lv2/Q;->s(IZ)V

    invoke-virtual {v1, v2, p0}, Lv2/Q;->s(IZ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lx4/G;->c(Z)V

    if-eqz p0, :cond_2

    invoke-static {}, LS6/e;->b()LS6/e;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, Lq6/X;->oa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, LS6/e;->Sh()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static re()V
    .locals 5

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LB9/c;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, LB9/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/r;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LEs/r;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH8/q;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, LH8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LH8/r;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, LH8/r;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/v;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, LE4/v;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LN4/b;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LN4/b;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public static ub(Lcom/android/camera/module/W;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/camera/module/VideoBase;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/W;->isRecording()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static xd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xad

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xae

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x1e

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/I;

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, LF1/I;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static z3()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFriendMode"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    iget-boolean v0, v0, Lt2/j;->m:Z

    xor-int/lit8 v1, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configFriendMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v2

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, LE3/n;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LE3/n;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    const-string v3, "key_multi_link_click"

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/X;

    invoke-interface {v0}, LQ6/X;->Ab()Z

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    new-instance v1, Lnq/a;

    const/4 v2, 0x0

    const-string v3, "click_menu_exit"

    const-string v4, "master"

    invoke-direct {v1, v3, v4, v2}, Lnq/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    return-void

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, Lq6/l;

    invoke-direct {v4, v1}, Lq6/l;-><init>(Z)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v0, :cond_2

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    const-string v1, "attr_feature_name"

    const-string v2, "click_remote_control"

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final Ac(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvType"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/m;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/m;

    invoke-virtual {v1, v0}, Lr2/m;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lr2/m;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lq6/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lq6/r;-><init>(Lq6/X;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final An(IZ)V
    .locals 7

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->A0(I)Z

    move-result v1

    invoke-static {v0}, Lcom/android/camera/data/data/w;->C0(I)Z

    move-result v2

    const-string v3, "ConfigChangeImpl"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v3}, Lq6/X;->k8(II)V

    goto/16 :goto_2

    :cond_2
    if-eqz v1, :cond_a

    if-nez v2, :cond_a

    invoke-static {v0, v5}, Lcom/android/camera/data/data/j;->M1(IZ)V

    goto/16 :goto_2

    :cond_3
    const-string p1, "configTrackFocus: MUTEX false"

    invoke-static {v3, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-static {v0, v5}, Lcom/android/camera/data/data/w;->a1(IZ)V

    goto :goto_2

    :cond_5
    const-class p1, Lu2/I;

    if-nez v1, :cond_6

    invoke-virtual {p0, v0, v4}, Lq6/X;->k8(II)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/I;

    invoke-virtual {p1, v0, v5}, Lu2/I;->q(IZ)V

    goto :goto_1

    :cond_6
    sget-boolean p2, LJe/c;->k:Z

    sget-object p2, LJe/c$b;->a:LJe/c;

    invoke-virtual {p2}, LJe/c;->u0()Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0xa2

    if-eq v0, p2, :cond_7

    const/16 p2, 0xb4

    if-ne v0, p2, :cond_9

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v0}, Lcom/android/camera/data/data/w;->F(I)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {v0, v5}, Lcom/android/camera/data/data/j;->M1(IZ)V

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v6, "configTrackFocusUI: "

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/I;

    invoke-virtual {p1, v0, v5}, Lu2/I;->q(IZ)V

    goto :goto_1

    :cond_9
    invoke-static {v0, v5}, Lcom/android/camera/data/data/j;->M1(IZ)V

    const-string p1, "configTrackFocus: false"

    invoke-static {v3, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    xor-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "attr_track_focus"

    invoke-static {p1, v1, p2}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    invoke-virtual {p0, v0, v5}, Lq6/X;->Lm(IZ)V

    return-void
.end method

.method public final B6(Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;ZZ)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/d;

    invoke-virtual {v0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/d;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/d;->rollbackData()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/data/observeable/d;->b:Lzs/y;

    const-string v0, "configVlogPro "

    const-string v1, "ConfigChangeImpl"

    invoke-static {v0, v1, p2}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    sget-object p2, LN6/h$a;->a:LN6/h;

    const-class p3, LQ6/x1;

    invoke-virtual {p2, p3}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, LC3/d;

    const/16 v0, 0xd

    invoke-direct {p3, v0}, LC3/d;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p2

    invoke-virtual {p2, p1}, LWh/b;->A(Ljava/lang/Object;)V

    const/16 p1, 0xdb

    invoke-virtual {p0, p1}, Lq6/X;->v(I)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string p1, "resetVlogPro"

    invoke-static {v1, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH3/m;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, LH3/m;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/B1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LCs/d;

    const/16 p3, 0xe

    invoke-direct {p2, p3}, LCs/d;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object p1, p0, Lq6/X;->a:Lcom/android/camera/a;

    const/16 p2, 0xdc

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/android/camera/a;->a0:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-virtual {p0, p2}, Lq6/X;->v(I)V

    return-void

    :cond_3
    :goto_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "configVlogPro exit background"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0, p2}, Lu2/Q;->c0(I)V

    return-void
.end method

.method public final Ba(Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSmartCompositon"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa3

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lw2/a;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw2/a;

    invoke-virtual {v1, v0, p1}, Lw2/a;->getComponentDataItem(ILjava/lang/String;)Lcom/android/camera/data/data/d;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v3, v1, Lw2/a;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "[configAISmartComposition]lastPictureRatio:"

    const-string v6, ",componentDataItem.mAspectRatio:"

    invoke-static {v5, v3, v6}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v2, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ConfigChangeImpl"

    invoke-static {v7, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_2

    invoke-virtual {p0, v0, v5}, Lq6/X;->Lm(IZ)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lh5/j;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/n;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, LCs/n;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    iget-object p0, v2, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    iput-object p0, v1, Lw2/a;->c:Ljava/lang/String;

    const-string p0, "icon"

    const-string v0, "attr_ai_stencil"

    const-string v1, "click"

    invoke-static {v0, p1, v1, p0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Be()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportXiaomiAmbilight"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->D2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v0, 0xbb

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/f;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Bp(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAIWatermark"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/a;->b()LQ6/a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lq6/X;->findBestWatermarkItem(I)V

    return-void

    :cond_0
    const/4 p0, 0x4

    invoke-interface {v0, p0}, LQ6/a;->fh(I)V

    :cond_1
    return-void
.end method

.method public final C8()V
    .locals 2

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LFn/x;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LFn/x;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Ce(Ljava/lang/String;)V
    .locals 8

    const-string v0, "configSecondScreenFlash: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    invoke-virtual {v0}, LA2/a$a;->a()Lr2/f1;

    move-result-object v0

    const-class v3, Lr2/U;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/U;

    invoke-static {p1}, Ln8/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x110

    const-string v4, "attr_flash_mode"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, LW9/O;->m(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "flash change"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LC4/M;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, LC4/M;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v3, "3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/e;->tip_flash_auto:I

    goto :goto_1

    :pswitch_1
    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/e;->tip_flash_torch:I

    goto :goto_1

    :pswitch_2
    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, LQh/e;->tip_flash_on:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/e;->tip_flash_off:I

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, p0, v0}, LQ6/l1;->b7(IZ)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Ci(I)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGradienter"
        type = 0x0
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/data/data/w;->T0(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->T0(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v0

    :goto_0
    const-string v2, "configGradienterSwitch: "

    const-string v3, "ConfigChangeImpl"

    invoke-static {v2, v3, v0}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v1, p1, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/features/mode/pro/rec/c;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/android/camera/features/mode/pro/rec/c;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "gradient"

    invoke-static {p1, v2, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    invoke-interface {p0, v0}, Lj6/i;->onGradienterSwitched(Z)V

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/W0;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/W0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, LQ6/W0;->ef()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final Co()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v0, 0xb7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0xbe

    if-eq p0, v0, :cond_3

    const/16 v0, 0xdb

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe5

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/w1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/l;

    const/16 v2, 0x13

    invoke-direct {v0, v2}, LE3/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/B1;->b()LQ6/B1;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, v1}, LQ6/B1;->un(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, LU6/c;->j()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/E;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, LC4/E;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, LQ6/l1;->Ao(ILjava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final D6()V
    .locals 14
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperEISOnly"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string/jumbo v2, "super_eis"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "configSuperEIS: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ConfigChangeImpl"

    invoke-static {v8, v6}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Lcom/android/camera/data/data/E;->C0(FI)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v8, Lr2/f0;

    invoke-virtual {v6, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/f0;

    const-string v8, ""

    if-nez v6, :cond_3

    move-object v9, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v6, v4}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const/16 v10, 0xda

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    invoke-static {v4, v11}, Lcom/android/camera/data/data/E;->F0(IZ)V

    filled-new-array {v10}, [I

    move-result-object v12

    invoke-interface {v1, v12}, LQ6/n1;->T0([I)V

    invoke-static {v4, v3}, Lcom/android/camera/data/data/w;->a1(IZ)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v4, v3}, Lcom/android/camera/data/data/E;->F0(IZ)V

    filled-new-array {v10}, [I

    move-result-object v12

    invoke-interface {v1, v12}, LQ6/n1;->T0([I)V

    invoke-static {v4, v11}, Lcom/android/camera/data/data/w;->a1(IZ)V

    invoke-static {v4}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4, v11}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_5
    invoke-static {}, Lq6/X;->l0()Z

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-static {}, Lq6/X;->dd()V

    invoke-static {v11}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v12, Lv2/f0;

    invoke-virtual {v1, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Z;

    invoke-virtual {v1, v4}, Lv2/Z;->isSwitchOn(I)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v1, v4}, Lv2/Z;->o(I)V

    :cond_6
    invoke-static {v4, v11}, Lcom/android/camera/data/data/E;->r0(IZ)V

    invoke-virtual {p0, v4}, Lq6/X;->p0(I)V

    invoke-static {v4}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v12, Lr2/Q;

    invoke-virtual {v1, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/Q;

    invoke-static {v4, v11}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-virtual {v1, v4}, Lr2/Q;->p(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v4, v12}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1, v11}, Lcom/android/camera/data/data/E;->y0(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v12, Lv2/n0;

    invoke-virtual {v1, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/n0;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/4 v12, 0x3

    invoke-virtual {p0, v12, v1}, Lq6/X;->g8(ILjava/lang/String;)V

    :cond_8
    invoke-static {v11}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v12, Lv2/x0;

    invoke-virtual {v1, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/x0;

    if-eqz v1, :cond_9

    sget-object v12, LX6/i;->a:LX6/j;

    invoke-interface {v12, v11}, LX6/j;->b(Z)I

    move-result v12

    const/16 v13, 0xd41

    invoke-virtual {v1, v13, v12}, Lv2/x0;->p(II)V

    :cond_9
    invoke-static {v11}, Lcom/android/camera/data/data/m;->F0(Z)V

    invoke-static {v11}, Lcom/android/camera/data/data/m;->Q0(Z)V

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->c2(Lj9/e;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v12, Ls2/c;

    invoke-virtual {v1, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls2/c;

    invoke-virtual {v1, v11}, Ls2/c;->u(Z)V

    :cond_a
    :goto_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v12, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v12}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v12, "attr_super_eis_pro"

    invoke-static {v7, v12, v1, v10}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    const/16 v1, 0xcc

    const/16 v7, 0xa2

    if-eq v4, v1, :cond_b

    const/16 v1, 0xce

    if-eq v4, v1, :cond_b

    if-eq v4, v7, :cond_b

    invoke-static {v4}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {v4}, Lcom/android/camera/data/data/w;->c0(I)Z

    goto :goto_2

    :cond_b
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1, v7}, Lu2/Q;->c0(I)V

    :goto_2
    invoke-virtual {p0, v7, v11}, Lq6/X;->Lm(IZ)V

    if-eqz v5, :cond_c

    const/16 p0, 0x8

    const v1, 0x7f1412ee

    invoke-interface {v0, p0, v1, v2}, LQ6/l1;->L1(IILjava/lang/String;)V

    :cond_c
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v6, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v6, v4}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "quality_fps_mutex"

    invoke-static {p0, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_e
    :goto_4
    return-void
.end method

.method public final D8()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Lcom/android/camera/data/data/E;->L0(F)V

    invoke-static {}, Lcom/android/camera/data/data/E;->o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/data/data/E;->P0(ILjava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->K0(I)V

    invoke-static {p0}, Lcom/android/camera/data/data/j;->O1(Z)V

    return-void
.end method

.method public final Ea()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/w;->i0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LFs/h;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LFs/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final El(IZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LK2/b;->b0()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    const-string v1, "FrontFoldedCapture"

    goto :goto_0

    :cond_1
    const-string v1, "FrontFoldedYouthDefault"

    goto :goto_0

    :cond_2
    const-string v1, "FrontFoldedMetrosexualDefault"

    goto :goto_0

    :cond_3
    const-string v1, "FrontFoldedProtogenicDefault"

    goto :goto_0

    :cond_4
    const-string v1, "FrontFoldedMoisteningDefault"

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    const-string v1, "FrontCapture"

    goto :goto_0

    :cond_6
    const-string v1, "FrontYouthDefault"

    goto :goto_0

    :cond_7
    const-string v1, "FrontMetrosexualDefault"

    goto :goto_0

    :cond_8
    const-string v1, "FrontProtogenicDefault"

    goto :goto_0

    :cond_9
    const-string v1, "FrontMoisteningDefault"

    :goto_0
    invoke-virtual {v0, v1}, Lv2/k0;->X(Ljava/lang/String;)V

    invoke-static {}, LQ6/k;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/q;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, LC4/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/features/mode/capture/D;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/features/mode/capture/D;-><init>(IZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final F3()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lcom/android/camera/data/data/j;->B0()V

    const-string v1, "configFrontPortraitCenter: true"

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v2, "pref_front_portrait_center"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE3/n;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LE3/n;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lq6/X;->Lm(IZ)V

    return-void
.end method

.method public final F5(I)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/j;->Z0()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K1(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K1(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/j;->Z0()Z

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configCenterMarkSwitch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, p1, :cond_3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string/jumbo v0, "safety_line"

    invoke-static {p0, v0, p1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/W0;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/W0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, LQ6/W0;->ib()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final F7(ILjava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v6, "REARx7"

    const-string v7, "REARx2"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v12

    if-eqz v12, :cond_23

    iget-object v13, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v13, :cond_23

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v13

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-virtual {v13}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/module/W;

    invoke-interface {v14}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v14

    invoke-interface {v14}, Lj6/f;->b()Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v14

    const-string v15, "ConfigChangeImpl"

    if-nez v14, :cond_2

    const-string v0, "ignore configSwitchUltraPixel"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v16, 0xbe

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v4, Lcom/android/camera/features/mode/capture/M;

    invoke-direct {v4, v14, v11}, Lcom/android/camera/features/mode/capture/M;-><init>(II)V

    invoke-virtual {v5, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v11, Lr2/c0;

    invoke-virtual {v5, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/c0;

    invoke-virtual {v13}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/module/W;

    invoke-interface {v13}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v13

    invoke-interface {v13}, Lj6/j;->c()Lj9/e;

    move-result-object v13

    invoke-static {}, Lq6/X;->oa()Z

    move-result v9

    const-string/jumbo v10, "ultra_pixel"

    move/from16 v18, v4

    const-string v4, "j"

    if-eq v1, v8, :cond_7

    const/4 v8, 0x3

    if-eq v1, v8, :cond_3

    goto/16 :goto_b

    :cond_3
    if-eqz v18, :cond_1f

    const-string v1, "configSwitchUltraPixel: MUTEX false"

    invoke-static {v15, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-object v1, v1, Lv2/D0;->v:[I

    iput-object v1, v0, Lq6/X;->b:[I

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Lq6/X;->Pf(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq6/X;->db(Z)V

    :goto_0
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LEs/j;

    const/16 v6, 0x13

    invoke-direct {v4, v6}, LEs/j;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v4, Lv2/F0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/F0;

    iget-object v1, v1, Lv2/F0;->a:Lv2/G0;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x3

    goto :goto_2

    :cond_5
    iget v1, v1, Lv2/G0;->e:I

    goto :goto_1

    :goto_2
    if-ne v1, v8, :cond_6

    invoke-virtual {v0, v14}, Lq6/X;->v(I)V

    goto :goto_3

    :cond_6
    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0, v14}, Lcom/android/camera/a;->v8(I)V

    :goto_3
    iget-object v0, v5, Lr2/c0;->b:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-interface {v12, v1, v10, v0}, LQ6/l1;->z1(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_7
    move/from16 v19, v8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "configSwitchUltraPixel: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v8, LC3/f;

    const/4 v15, 0x7

    invoke-direct {v8, v15}, LC3/f;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v14}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-static {v14, v1}, Lcom/android/camera/data/data/m;->R0(IZ)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v1

    invoke-interface {v1}, LQ6/p;->J9()Z

    invoke-interface {v1}, LQ6/p;->Cm()V

    :cond_8
    if-eqz v3, :cond_1a

    const-class v1, Lr2/S;

    const/4 v8, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x4

    goto :goto_4

    :pswitch_2
    const-string v15, "REARx5"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x3

    goto :goto_4

    :pswitch_3
    const-string v15, "REARx3"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_4

    :cond_b
    const/4 v8, 0x2

    goto :goto_4

    :pswitch_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v8, v19

    goto :goto_4

    :pswitch_5
    const-string v15, "REARx1"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_4
    packed-switch v8, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_6
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    invoke-virtual {v8, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/S;

    if-eqz v8, :cond_e

    invoke-virtual {v8, v14}, Lr2/S;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v15, "JPEG"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v8

    const v15, 0x7f140c81

    invoke-virtual {v8, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lr2/c0;->c:Ljava/lang/String;

    :cond_e
    :pswitch_7
    sget-object v8, LJe/c$b;->a:LJe/c;

    iget-object v8, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :pswitch_8
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    invoke-virtual {v8, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/S;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v14}, Lr2/S;->r(I)Z

    move-result v1

    invoke-static {v13}, Lj9/f;->R1(Lj9/e;)Z

    move-result v8

    if-nez v8, :cond_f

    if-eqz v1, :cond_10

    invoke-static {v13}, Lj9/f;->J4(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-static {}, Lcom/android/camera/data/data/m;->X0()V

    :cond_10
    invoke-virtual {v0, v4, v6}, Lq6/X;->a8(Ljava/lang/String;[I)V

    goto :goto_6

    :goto_5
    :pswitch_9
    filled-new-array/range {v16 .. v16}, [I

    move-result-object v8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v15

    invoke-virtual {v15, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/S;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v14}, Lr2/S;->r(I)Z

    move-result v1

    invoke-static {v13}, Lj9/f;->R1(Lj9/e;)Z

    move-result v15

    if-nez v15, :cond_12

    if-eqz v1, :cond_11

    invoke-static {v13}, Lj9/f;->J4(Lj9/e;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    invoke-static {}, Lcom/android/camera/data/data/m;->X0()V

    :cond_13
    invoke-virtual {v0, v4, v8}, Lq6/X;->a8(Ljava/lang/String;[I)V

    const/16 v1, 0xaf

    if-ne v14, v1, :cond_15

    invoke-static {v2}, Ln8/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v1, "off"

    :cond_14
    const-string v4, "attr_ultra_pixel"

    const/16 v6, 0xd1

    invoke-static {v1, v4, v14, v6}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_15
    :goto_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-object v4, v0, Lq6/X;->b:[I

    iput-object v4, v1, Lv2/D0;->v:[I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c0;

    invoke-virtual {v1, v2}, Lr2/c0;->S(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lq6/X;->e3(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/m0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/m0;

    const/16 v4, 0xa7

    if-ne v14, v4, :cond_16

    iget-boolean v4, v1, Lv2/h;->e0:Z

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Lv2/h;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v14, v4}, Lr2/m0;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v1, v14, v4}, Lr2/m0;->i(ILjava/lang/String;)V

    :cond_16
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v4, Lv2/f0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Z;

    invoke-virtual {v1, v14}, Lv2/Z;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v1, v14}, Lv2/Z;->o(I)V

    :cond_17
    const/16 v1, 0xa3

    if-ne v14, v1, :cond_1c

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b2()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/G;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/G;

    invoke-virtual {v1, v14}, Lr2/G;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "OFF"

    invoke-virtual {v1, v14, v4}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LE4/d;

    const/16 v6, 0x10

    invoke-direct {v4, v6}, LE4/d;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_18
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/B;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/B;

    invoke-virtual {v1, v14}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/data/data/m;->K0(Z)V

    :cond_19
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lg3/g;

    const/4 v8, 0x3

    invoke-direct {v4, v8}, Lg3/g;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/e;

    invoke-static {v1}, Lj9/f;->e5(Lj9/e;)Z

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/m;->V()Z

    move-result v4

    if-nez v4, :cond_1c

    if-nez v1, :cond_1c

    invoke-static/range {v19 .. v19}, Lcom/android/camera/data/data/m;->D0(Z)V

    const/4 v1, 0x0

    invoke-static {v14, v1}, Lcom/android/camera/data/data/m;->W0(IZ)V

    goto :goto_8

    :cond_1a
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-object v1, v1, Lv2/D0;->v:[I

    iput-object v1, v0, Lq6/X;->b:[I

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v4}, Lq6/X;->Pf(Ljava/lang/String;)V

    goto :goto_7

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lq6/X;->db(Z)V

    :goto_7
    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    :cond_1c
    :goto_8
    invoke-static {}, LS6/e;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lcom/android/camera/fragment/O0;

    const/4 v6, 0x2

    invoke-direct {v4, v9, v6}, Lcom/android/camera/fragment/O0;-><init>(ZI)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LEs/i;

    const/16 v6, 0x12

    invoke-direct {v4, v6}, LEs/i;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v14}, Lcom/android/camera/data/data/E;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Lq6/X;->Lm(IZ)V

    if-eqz v3, :cond_1e

    move/from16 v0, v19

    invoke-static {v10, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/camera/data/data/m;->D()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "200m_pixel_mode_capture_desc"

    invoke-static {v1, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_1d
    :goto_9
    const/16 v4, 0xa7

    goto :goto_a

    :cond_1e
    iget-object v0, v5, Lr2/c0;->b:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-interface {v12, v1, v10, v0}, LQ6/l1;->z1(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    if-ne v14, v4, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M_manual_"

    const-string/jumbo v4, "supreme_pixel"

    invoke-static {v0, v1, v4}, Liq/d;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_b
    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v0

    invoke-static {}, LS6/e;->b()LS6/e;

    if-eqz v3, :cond_20

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    invoke-interface {v0}, LQ6/p;->zp()V

    invoke-static {v0}, Lq6/X;->g9(LQ6/p;)V

    return-void

    :cond_20
    if-eqz v0, :cond_21

    if-nez v9, :cond_21

    invoke-interface {v0}, LQ6/p;->vg()V

    :cond_21
    if-nez v9, :cond_23

    const/16 v4, 0xa7

    if-eq v14, v4, :cond_22

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/p;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LC4/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_22
    invoke-interface {v12}, LQ6/l1;->Tf()V

    :cond_23
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x702778a3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0xc2
        0xb21
        0xef
        0xc9
        0xce
        0xbe
    .end array-data
.end method

.method public final Fc(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-eqz p4, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p3

    const-class p4, Lr2/f0;

    invoke-virtual {p3, p4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr2/f0;

    const-string p4, ""

    invoke-virtual {p3, p1, p4, v1}, Lr2/f0;->v(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr2/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    invoke-static {p2, p3, v0}, Lr2/f0;->C(Ljava/lang/String;Ljava/lang/String;Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lq6/X;->N1(Z)V

    invoke-static {p2, p3}, Lq6/X;->xd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final Fe()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isFoldingPhone"
        type = 0x0
    .end annotation

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {p0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object p0

    iget-object p0, p0, Loh/b;->o:Lcom/android/camera/module/W;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    invoke-interface {p0}, Lj6/i;->onFlatSelfieOnFolded()V

    :cond_0
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v0, Lcom/android/camera/fragment/smartComposition/cloud/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/smartComposition/cloud/h;-><init>(I)V

    invoke-static {p0, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final Fg()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lg2/a;->k()Lx2/b;

    move-result-object v0

    const-class v1, Lx2/a;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx2/a;

    invoke-virtual {v0, p0}, Lx2/a;->a(I)V

    invoke-static {}, LQ6/y0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/s;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC4/s;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/G1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LF1/G1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Fh()V
    .locals 12
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lj7/a;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/W;

    invoke-interface {v2}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v4, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v6, Lv2/f0;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/f0;

    invoke-virtual {v4, v2}, Lv2/Z;->o(I)V

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-static {v2}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, v5}, Lcom/android/camera/data/data/E;->F0(IZ)V

    move v4, v1

    :cond_2
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4, v5}, Lcom/android/camera/data/data/E;->v0(IZ)V

    move v4, v1

    :cond_3
    const/16 v6, 0xb4

    if-eq v2, v6, :cond_4

    const/16 v7, 0xa4

    if-ne v2, v7, :cond_5

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-class v8, Lr2/z0;

    invoke-virtual {v7, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/z0;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "macro"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v4, "wide"

    invoke-virtual {v7, v2, v4}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    move v4, v1

    :cond_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-class v8, Lr2/d;

    invoke-virtual {v7, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/d;

    invoke-virtual {v7, v2}, Lr2/d;->isSwitchOn(I)Z

    move-result v7

    xor-int/lit8 v8, v7, 0x1

    invoke-static {v2, v8}, Lcom/android/camera/data/data/m;->x0(IZ)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "configAiAudio:setAiAudioNewEnabled: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    const-string v11, "ConfigChangeImpl"

    invoke-static {v11, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v9, Lgq/h;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const-string v10, "key_common"

    iput-object v10, v9, Lgq/h;->a:Ljava/lang/String;

    new-instance v10, Lgq/f;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v11, v10, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v11, v10, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v11, v10, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v10, v9, Lgq/h;->b:Lgq/f;

    new-instance v10, LN7/a;

    invoke-direct {v10, v8, v2}, LN7/a;-><init>(ZI)V

    invoke-virtual {v9, v10}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lgq/h;->d()V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LC4/C;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, LC4/C;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LC4/E;

    invoke-direct {v9, v0}, LC4/E;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v3}, LJe/c;->u0()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v8, Lr2/b0;

    invoke-virtual {v3, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/b0;

    invoke-virtual {v3, v2}, Lr2/b0;->isSupportMode(I)Z

    move-result v3

    if-eqz v3, :cond_a

    if-ne v2, v6, :cond_6

    invoke-static {v2}, Lcom/android/camera/data/data/w;->F(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v5

    :goto_1
    const/16 v6, 0xa2

    if-ne v2, v6, :cond_7

    if-nez v7, :cond_7

    move v6, v1

    goto :goto_2

    :cond_7
    move v6, v5

    :goto_2
    if-nez v3, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    move v5, v1

    :cond_9
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v5}, Lq6/X;->An(IZ)V

    :cond_a
    if-eqz v4, :cond_b

    const-string v3, "ai_audio"

    invoke-static {v3, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lq6/X;->v(I)V

    :cond_b
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LC4/G;

    invoke-direct {v1, v0}, LC4/G;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public final G1()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAiEnhancedVideo"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configAiEnhancedVideo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v2

    const-string v3, "attr_video_ai"

    const/16 v4, 0xaf

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v5}, Lcom/android/camera/data/data/E;->r0(IZ)V

    filled-new-array {v4}, [I

    move-result-object v1

    invoke-interface {v2, v1}, LQ6/n1;->T0([I)V

    invoke-static {v3, v5}, Lq6/X;->hf(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/data/data/E;->r0(IZ)V

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-interface {v2, v4}, LQ6/n1;->T0([I)V

    invoke-static {v3, v1}, Lq6/X;->hf(Ljava/lang/String;Z)V

    invoke-static {}, Lq6/X;->l0()Z

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-static {v5}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {v0, v5}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->S0(I)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-static {}, Lq6/X;->dd()V

    invoke-virtual {p0, v0}, Lq6/X;->p0(I)V

    :goto_0
    const/16 v1, 0xcc

    const/16 v2, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xce

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lu2/Q;->c0(I)V

    :cond_3
    invoke-virtual {p0, v2, v5}, Lq6/X;->Lm(IZ)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Ga()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/y0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/m;

    invoke-direct {v1, p0}, Lq6/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LE4/m;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LE4/m;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LB9/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LB9/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Gl()Z
    .locals 2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0}, Lj6/j;->r()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final Gm()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LM6/t;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, LM6/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Go(Z)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa7

    const/16 v3, 0xa4

    if-eq v1, v2, :cond_1

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->M0()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/m0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/m0;

    iget-boolean v4, v4, Lv2/h;->U:Z

    if-nez v4, :cond_2

    if-eq v1, v3, :cond_2

    const/16 v4, 0xe1

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, LK2/e;->z()Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v1, v3, :cond_3

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LDn/D;

    const/16 v0, 0x17

    invoke-direct {p1, v0}, LDn/D;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_3
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/u1;

    invoke-direct {v4, v0}, LF1/u1;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v4

    sget-object v5, LN6/h$a;->a:LN6/h;

    const-class v6, LS6/h;

    invoke-virtual {v5, v6}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v5

    check-cast v5, LS6/h;

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    invoke-static {v1}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lq6/X;->Xa()Z

    move-result p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lq6/X;->vn()Z

    move-result p0

    :goto_0
    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    if-nez p0, :cond_6

    const/16 p0, 0x8

    invoke-interface {v4, p0, p1}, LQ6/l1;->fa(IZ)V

    return-void

    :cond_6
    invoke-interface {v4, v0, p1}, LQ6/l1;->fa(IZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final H5()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "ai_aduio_new_desc"

    invoke-interface {v0, v1}, LQ6/n1;->La(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->G(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final H8(I)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTilt"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    instance-of v1, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LK2/b;->b0()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->isSwitchOn(I)Z

    move-result v4

    const-string v5, "ConfigChangeImpl"

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p1, v8, :cond_6

    if-eq p1, v6, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "configTiltSwitch: MUTEX false"

    invoke-static {v5, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_5

    :goto_0
    return-void

    :cond_5
    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    move v4, v7

    :goto_1
    move v7, v8

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    const-string/jumbo v9, "tiltshift"

    if-nez v4, :cond_7

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, p1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    invoke-virtual {p0, v6}, Lq6/X;->e3(I)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0, v7}, Lcom/android/camera/data/data/j;->M1(IZ)V

    move v4, v8

    goto :goto_2

    :cond_7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v9, p1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->toSwitch(IZ)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/w;->C0(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v3, Lr2/b0;

    invoke-virtual {p1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/b0;

    invoke-virtual {p1}, Lr2/b0;->m()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {p0, v8}, Lcom/android/camera/data/data/j;->M1(IZ)V

    :cond_8
    move v4, v7

    :goto_2
    const-string p0, "configTiltSwitch: "

    invoke-static {p0, v5, v4}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :goto_3
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->x1()Z

    move-result p0

    if-eqz p0, :cond_a

    if-eqz v7, :cond_a

    if-eqz v4, :cond_9

    move v6, v8

    :cond_9
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LR3/b;

    const/4 v3, 0x2

    invoke-direct {p1, v6, v3, v2}, LR3/b;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    const/16 p0, 0xe4

    invoke-interface {v1, p0, v4}, LQ6/l1;->jo(IZ)V

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v4}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    const/4 p1, 0x5

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/effect/EffectController;->R([I)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p0}, Lq6/X;->g9(LQ6/p;)V

    :cond_b
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getAiSceneManager()Ll6/b;

    move-result-object p0

    invoke-virtual {p0}, Ll6/b;->h()Z

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/J;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, LEs/J;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final He(I)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMimoji4"
        type = 0x0
    .end annotation

    const-string/jumbo p0, "showMimojiPanel: "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Le3/j0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Le3/j0;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit8 p0, p0, 0x1

    :goto_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p0

    const-class v0, LFs/A;

    invoke-virtual {p0, v0}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p0

    check-cast p0, LFs/A;

    iput p1, p0, LFs/A;->f:I

    if-eqz p1, :cond_7

    const-string p0, "key_mimoji_show_avatar_list"

    if-eq p1, v1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "key_mimoji_show_filter_list"

    goto :goto_1

    :cond_4
    const-string p0, "key_mimoji_show_timbre_list"

    goto :goto_1

    :cond_5
    const-string p0, "key_mimoji_show_background_list"

    :cond_6
    :goto_1
    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, "key_mimoji_click"

    iput-object v2, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v2, Lgq/f;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v2, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v2, v0, Lgq/h;->b:Lgq/f;

    const-string v2, "attr_operate_state"

    invoke-virtual {v0, p0, v2}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    :cond_7
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/features/mode/capture/r;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/android/camera/features/mode/capture/r;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1
.end method

.method public final Hf()V
    .locals 3

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lq6/x;

    invoke-direct {v2, p0, v0}, Lq6/x;-><init>(Lq6/X;LQ6/n1;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Hp()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAIWatermark"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    const/16 v0, 0x49

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_0
    return-void
.end method

.method public final I6(ILjava/lang/String;)V
    .locals 12

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/D;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-virtual {p0}, Lq6/X;->T8()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/Q;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/Q;

    const/4 v7, 0x1

    if-eqz v4, :cond_0

    sget-object v8, Lga/A0;->w4:Lga/D0;

    invoke-virtual {v8}, Lga/D0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lj9/e;->Q0(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-class v8, Lv2/f0;

    if-eqz v4, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/f0;

    invoke-virtual {v4, v3}, Lv2/Z;->isSwitchOn(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    :cond_2
    :goto_1
    const/4 v4, 0x3

    const-string v9, "ConfigChangeImpl"

    const-string v10, "getAttachProtocol2(...)"

    const-class v11, Lg5/Y;

    if-eq p1, v4, :cond_6

    const-string p1, "configSmartComposition: (CHECK_TYPE_MANUALLY)"

    invoke-static {p1, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3, p2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    const/16 p1, 0xb25

    const-string v0, "menu_more"

    const/4 v2, 0x0

    invoke-static {v2, v0, v3, p1}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    const-string p1, "ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, LN6/h$a;->a:LN6/h;

    invoke-virtual {p1, v11}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p1, v10}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LEs/h;

    const/16 v0, 0x13

    invoke-direct {p2, v0}, LEs/h;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/i;

    const/16 v0, 0x11

    invoke-direct {p2, v0}, LEs/i;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p1, LN6/h$a;->a:LN6/h;

    invoke-virtual {p1, v11}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p1, v10}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lq6/d;

    invoke-direct {p2, p0, v1, v7}, Lq6/d;-><init>(Lq6/X;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    invoke-virtual {p1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/f0;

    invoke-virtual {p1, v3}, Lv2/Z;->isSwitchOn(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    invoke-virtual {p1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/f0;

    invoke-virtual {p1, v3}, Lv2/Z;->o(I)V

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    :cond_5
    if-eqz v6, :cond_8

    invoke-virtual {v6, v3}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "4x3"

    invoke-virtual {v6, v3, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "configSmartComposition: (CHECK_TYPE_MUTEX) OFF"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v9, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v3, p2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    sget-object p1, LN6/h$a;->a:LN6/h;

    invoke-virtual {p1, v11}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p1, v10}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LE4/e;

    const/16 v0, 0x12

    invoke-direct {p2, v0}, LE4/e;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, v3, p1}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_9
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/k;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, LEs/k;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LE4/i;

    const/16 v0, 0x12

    invoke-direct {p2, v0}, LE4/i;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/l;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, LEs/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lz3/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LH4/z;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, LH4/z;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public final I7()Z
    .locals 13

    const/16 v0, 0xc

    const/4 v1, 0x6

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LR3/c;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, LR3/c;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj9/e;

    const/16 v5, 0xa2

    if-eq v2, v5, :cond_1

    const/16 v6, 0xa4

    if-eq v2, v6, :cond_1

    invoke-static {v2}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {v2}, Lcom/android/camera/data/data/w;->c0(I)Z

    return v3

    :cond_1
    const-string v6, "hdr"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v8, Lr2/z;

    invoke-virtual {v6, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/z;

    invoke-virtual {v6, v2}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "off"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "attr_video_hdr"

    if-nez v8, :cond_8

    invoke-static {v10, v7}, Lq6/X;->hf(Ljava/lang/String;Z)V

    const-string v8, "ConfigChangeImpl"

    const-string/jumbo v10, "video Hdr mutex"

    invoke-static {v8, v10}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/m;->R()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v3}, Lcom/android/camera/data/data/m;->F0(Z)V

    move v2, v5

    :cond_2
    invoke-static {v2, v3}, Lcom/android/camera/data/data/E;->r0(IZ)V

    invoke-static {v5, v3}, Lcom/android/camera/data/data/j;->M1(IZ)V

    invoke-static {}, Lq6/X;->l0()Z

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-static {v3}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {v2, v3}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {v2, v3}, Lcom/android/camera/data/data/E;->E0(IZ)V

    invoke-static {v2}, Lcom/android/camera/data/data/w;->c0(I)Z

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v10, Lv2/f0;

    invoke-virtual {v8, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/Z;

    invoke-virtual {v8, v2}, Lv2/Z;->isSwitchOn(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v2}, Lv2/Z;->o(I)V

    :cond_3
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LF1/K1;

    invoke-direct {v10, v3}, LF1/K1;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    new-instance v11, LL9/b;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, LL9/b;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v2, v3}, Lcom/android/camera/data/data/j;->n(II)F

    move-result v4

    new-instance v10, LU4/d;

    invoke-direct {v10, v1}, LU4/d;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v8, LF1/K1;

    invoke-direct {v8, v0}, LF1/K1;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v8, Lv2/l0;

    invoke-virtual {v1, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/l0;

    iget v1, v1, Lv2/l0;->g:F

    cmpl-float v8, v4, v0

    if-gtz v8, :cond_4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    :cond_4
    invoke-static {v4, v2}, Lcom/android/camera/data/data/E;->C0(FI)V

    invoke-static {v4}, Lcom/android/camera/data/data/j;->I1(F)V

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lj9/f;->j4(Lj9/e;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, LU4/d;

    invoke-direct {v4, v1}, LU4/d;-><init>(I)V

    invoke-virtual {v8, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LF1/K1;

    invoke-direct {v4, v0}, LF1/K1;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget v4, Lur/i;->a:F

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v8

    invoke-virtual {v8}, Lu6/f;->f()I

    move-result v8

    invoke-virtual {v4, v8}, Lu6/f;->O(I)Lj9/e;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Lj9/e;->D()F

    move-result v4

    :goto_0
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpg-float v8, v1, v0

    if-gtz v8, :cond_7

    cmpg-float v0, v0, v4

    if-lez v0, :cond_9

    :cond_7
    invoke-static {v1, v2}, Lcom/android/camera/data/data/E;->C0(FI)V

    invoke-static {v1}, Lcom/android/camera/data/data/j;->I1(F)V

    goto :goto_1

    :cond_8
    invoke-static {v2, v7}, Lcom/android/camera/data/data/w;->a1(IZ)V

    invoke-static {v10, v3}, Lq6/X;->hf(Ljava/lang/String;Z)V

    :cond_9
    :goto_1
    invoke-static {v2}, Lcom/android/camera/data/data/w;->c0(I)Z

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/K;

    const/16 v4, 0x12

    invoke-direct {v1, v4, v3}, LEs/K;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lu2/Q;->c0(I)V

    invoke-virtual {p0, v2, v3}, Lq6/X;->Lm(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/h;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/h;

    invoke-virtual {p0}, Lv2/h;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne v2, v5, :cond_a

    invoke-virtual {v6, v2}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lv2/h;->k:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    iget v0, p0, Lv2/h;->k:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lv2/h;->i(ILjava/lang/String;)V

    :cond_a
    return v7
.end method

.method public final varargs Ic([Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    const/4 v3, 0x6

    array-length v4, v1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v8, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v8, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/W;

    invoke-interface {v8}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v8

    const/16 v9, 0xa9

    if-ne v8, v9, :cond_d

    sget-boolean v8, LJe/c;->k:Z

    sget-object v8, LJe/c$b;->a:LJe/c;

    invoke-virtual {v8}, LJe/c;->L0()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, LJe/c;->M0()Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_8

    :cond_3
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LF1/u1;

    invoke-direct {v9, v6}, LF1/u1;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v10, Lv2/L;

    invoke-virtual {v8, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/L;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v10

    const-class v11, Lv2/J;

    invoke-virtual {v10, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv2/J;

    const/16 v11, 0xa0

    invoke-virtual {v8, v11}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11}, Lv2/L;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "0"

    if-eqz v12, :cond_6

    invoke-virtual {v10, v11}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    move v12, v6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v12, 0x1

    :goto_2
    invoke-static {}, LQ6/Z0;->a()Ljava/util/Optional;

    move-result-object v14

    if-eqz v4, :cond_7

    aget-boolean v15, v1, v6

    goto :goto_3

    :cond_7
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v15

    new-instance v5, LI4/n;

    invoke-direct {v5, v3}, LI4/n;-><init>(I)V

    invoke-virtual {v15, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    :goto_3
    if-eqz v4, :cond_8

    aget-boolean v1, v1, v6

    goto :goto_4

    :cond_8
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH8/k;

    invoke-direct {v4, v3}, LH8/k;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_4
    invoke-virtual {v14}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v14}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ6/Z0;

    invoke-interface {v3}, LQ6/Z0;->isRecording()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v14}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ6/Z0;

    invoke-interface {v3}, LQ6/Z0;->isPrepareRecording()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    move v5, v6

    :goto_5
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LE4/o;

    const/4 v14, 0x7

    invoke-direct {v4, v14}, LE4/o;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v14, LT9/E;

    invoke-direct {v14, v2}, LT9/E;-><init>(I)V

    invoke-virtual {v4, v14}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v9, ""

    if-eqz v12, :cond_c

    if-nez v15, :cond_c

    if-nez v1, :cond_c

    if-eqz v5, :cond_c

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    invoke-virtual {v8, v11}, Lcom/android/camera/data/data/c;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v11}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v10, v11}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v9

    :goto_6
    invoke-virtual {v10, v11}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f12002e

    const/16 v5, 0xa

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    const v3, 0x7f140dd4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-interface {v7, v6, v1, v2, v0}, LQ6/l1;->M4(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-interface {v7, v2, v9, v9, v9}, LQ6/l1;->M4(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_8
    return-void
.end method

.method public final J0(I)Z
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ConfigChangeImpl"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "onThermalNotification isAlive false"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "onThermalNotification current module is null"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Lcom/android/camera/module/W;->isSelectingCapturedResult()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-interface {p0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lj6/j;->r0(I)V

    sget-object v0, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v4, v0, Lcom/android/camera/c;->c:I

    if-ne v4, v1, :cond_3

    const-string/jumbo v4, "thermalConstrained"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/camera/module/W;->thermalConstrained()V

    :cond_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/w;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/w;

    invoke-virtual {v4}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10

    iget-boolean v6, v4, Lr2/w;->c:Z

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v6

    const/16 v7, 0x42

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-interface {v6, v7}, Lj6/i;->updatePreferenceInWorkThread([I)V

    iget v0, v0, Lcom/android/camera/c;->c:I

    invoke-static {v0}, Lcom/android/camera/data/data/j;->P1(I)Z

    move-result v0

    const-string v6, "0"

    if-eqz v0, :cond_6

    const-string/jumbo v0, "thermalCloseFlash"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    invoke-virtual {v4, v0}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->O0()V

    :cond_5
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v6

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    const-string/jumbo v4, "updateFlashModeAndRefreshUI flashMode = "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "ModuleUtil"

    invoke-static {v8, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v2, v0}, Lcom/android/camera/data/data/m;->G0(ILjava/lang/String;)V

    :cond_8
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/w;

    iget-boolean v2, v2, Lr2/w;->f:Z

    const-string v4, "104"

    if-nez v2, :cond_9

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    move v2, v1

    goto :goto_1

    :cond_b
    move v2, v3

    :goto_1
    if-eq p1, v1, :cond_e

    if-eqz v2, :cond_e

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1}, Lu2/Q;->O()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1404bd

    invoke-static {p1, v1}, LF1/C4;->e(Landroid/content/Context;I)LPu/A;

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-boolean v1, LJe/d;->c:Z

    if-eqz v1, :cond_d

    const v1, 0x7f140c03

    goto :goto_2

    :cond_d
    const v1, 0x7f1404b6

    :goto_2
    invoke-static {p1, v1}, LF1/C4;->e(Landroid/content/Context;I)LPu/A;

    :cond_e
    :goto_3
    invoke-interface {p0}, Lcom/android/camera/module/W;->isDoingAction()Z

    move-result p1

    const/16 v1, 0xa

    if-eqz p1, :cond_f

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lj6/i;->updatePreferenceTrampoline([I)V

    goto :goto_4

    :cond_f
    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    filled-new-array {v1}, [I

    move-result-object p1

    invoke-interface {p0, p1}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :goto_4
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance p1, Lc6/m;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lc6/m;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return v3

    :cond_10
    :goto_5
    const-string p0, "onThermalNotification don\'t support hardware flash"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_11
    :goto_6
    const-string p0, "onThermalNotification current module has not ready"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final Jb(Lcom/android/camera/data/data/d;)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSmartCompositon"
        type = 0x2
    .end annotation

    const/16 v0, 0xb

    const/16 v1, 0x13

    const-string v2, "ai"

    const-string v3, "off"

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v4

    goto :goto_0

    :cond_1
    const/16 v4, 0xa3

    :goto_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lw2/a;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw2/a;

    invoke-virtual {v5, v4}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/Q;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/Q;

    invoke-virtual {v6, v4}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lw2/a;->c:Ljava/lang/String;

    :cond_3
    iget-object v6, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lh5/i;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LEs/g;

    invoke-direct {v7, v1}, LEs/g;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LE4/c;

    invoke-direct {v7, v1}, LE4/c;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object v1, v5, Lw2/a;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[configSmartComposition]lastPictureRatio:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",componentDataItem.mAspectRatio:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "ConfigChangeImpl"

    invoke-static {v9, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p1, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v7

    :goto_2
    iget-object v6, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lh5/j;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v6, LCs/n;

    const/16 v8, 0x9

    invoke-direct {v6, v8}, LCs/n;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lh5/j;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v8, LF1/D0;

    invoke-direct {v8, v0}, LF1/D0;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lh5/j;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v8, LF1/D0;

    invoke-direct {v8, v0}, LF1/D0;-><init>(I)V

    invoke-virtual {v6, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_3
    if-eqz v1, :cond_8

    invoke-virtual {p0, v4, v7}, Lq6/X;->Lm(IZ)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/h;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LEs/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lh5/j;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/i;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LEs/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_4
    iget-object p0, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    iget-object p0, p1, Lcom/android/camera/data/data/d;->b:Ljava/lang/String;

    iput-object p0, v5, Lw2/a;->c:Ljava/lang/String;

    :cond_9
    iget-object p0, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "attr_ai_composition"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string p1, "attr_creative_composition"

    goto :goto_5

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_b
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    const-string v0, "icon"

    const-string v1, "click"

    invoke-static {p1, p0, v1, v0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Ji()V
    .locals 3

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/u1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/u1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lw7/c;->d(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    const-class v0, Lt2/d;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/d;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final Jk()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v2, 0xa2

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa9

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb4

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa4

    if-eq p0, v2, :cond_1

    const/16 v2, 0xac

    if-eq p0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, LU6/c;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoBase;->getVideoSize()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/u1;

    invoke-direct {v3, v0}, LF1/u1;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->b6()Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->P()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->G0(Lj9/e;)I

    move-result v4

    const/16 v5, 0x1e00

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-lt v3, v5, :cond_8

    const/16 v3, 0x10e0

    if-lt v1, v3, :cond_8

    invoke-static {p0}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lj9/f;->S1()Z

    move-result p0

    if-nez p0, :cond_7

    const p0, 0x7f1414ca

    invoke-interface {v2, v0, p0}, LQ6/l1;->Lf(II)V

    :cond_7
    invoke-static {v4}, Lcom/android/camera/data/data/j;->E1(I)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v1, "pref_camcorder_tip_8k_max_video_duration_shown"

    invoke-virtual {p0, v1, v7}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, LWh/a;->g()LWh/a;

    invoke-virtual {p0, v1, v0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {p0}, LWh/a;->c()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140315

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8k_desc"

    invoke-interface {v2, v0, p0}, LQ6/l1;->ue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {p0}, Lcom/android/camera/data/data/m;->E(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {p0}, Lcom/android/camera/data/data/m;->c0(I)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    and-int/lit8 p0, v4, 0x20

    if-nez p0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v1, "pref_camcorder_tip_4k_120fps_max_video_duration_shown"

    invoke-virtual {p0, v1, v7}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, LWh/a;->g()LWh/a;

    invoke-virtual {p0, v1, v0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {p0}, LWh/a;->c()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140316

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "4k120fps_desc"

    invoke-interface {v2, v0, p0}, LQ6/l1;->ue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public final K2()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAmbientLighting"
        type = 0x2
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/C;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, LF1/C;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-string v1, "pref_ambient_light_desc_tip_enable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    invoke-interface {v0, p0}, LQ6/l1;->pa(Z)V

    invoke-static {v2}, Lcom/android/camera/data/data/E;->s0(Z)V

    return-void

    :cond_3
    invoke-interface {v0, v2}, LQ6/l1;->pa(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final L4()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMicroFilm"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/E;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC4/E;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/G;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "ConfigChangeImpl"

    const-string v1, "configIntoVlogProWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera"

    const-string v2, "com.xiaomi.milive.ui.LiveWorkspaceActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    const-string/jumbo v2, "vp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    sget-object v0, LOh/c;->e:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    const-string p0, "first_page_enter_draft"

    invoke-static {p0}, Lc8/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final L6(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCloneMode"
        type = 0x0
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configClone: mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/A;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/K3;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LF1/K3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v0, 0xb9

    invoke-virtual {p0, v0}, Lq6/X;->v(I)V

    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, LQ6/B;->Kk(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-static {}, LQ6/B;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH3/c;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, LH3/c;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Lq6/X;->v(I)V

    return-void
.end method

.method public final Lm(IZ)V
    .locals 1

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_1
    const-string p0, "ignore changeModeWithoutConfigureData "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ConfigChangeImpl"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final N1(Z)V
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-virtual {v0, v1}, Lr2/z;->u(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lq6/g;

    invoke-direct {v2, p1, v0}, Lq6/g;-><init>(ZLr2/z;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lr2/z;->y(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N9(F)V
    .locals 5

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->L4()Z

    move-result p0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p0, :cond_2

    cmpl-float p0, p1, v1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move p1, v1

    goto :goto_2

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    const v3, 0x40d55555

    invoke-static {p1, p0, v3, v2}, LMf/c;->d(FFFF)F

    move-result p1

    goto :goto_2

    :cond_2
    const/high16 p0, 0x41800000    # 16.0f

    cmpl-float v3, p1, p0

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v3, 0x40200000    # 2.5f

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_4

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4

    const/high16 p0, 0x3fc00000    # 1.5f

    div-float/2addr p0, p1

    :goto_1
    mul-float p1, p0, v2

    goto :goto_2

    :cond_4
    const p0, 0x3f733333    # 0.95f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_5

    cmpg-float p0, p1, v3

    if-gez p0, :cond_5

    const/high16 p0, 0x41400000    # 12.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x40a00000    # 5.0f

    div-float/2addr p0, p1

    const p1, 0x3eddddde

    add-float/2addr p0, p1

    goto :goto_1

    :cond_5
    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    :goto_2
    cmpl-float p0, p1, v1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    cmpl-float p0, p1, v0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 p0, 0x6

    goto :goto_4

    :cond_7
    :goto_3
    move p0, v1

    :goto_4
    invoke-static {p0}, Lcom/android/camera/data/data/E;->K0(I)V

    invoke-static {p1}, Lcom/android/camera/data/data/E;->L0(F)V

    invoke-static {}, LQ6/M0;->b()LQ6/M0;

    move-result-object p0

    if-eqz p0, :cond_8

    const/16 p1, 0xf3

    invoke-interface {p0, p1, v1}, LQ6/M0;->Jg(IZ)V

    :cond_8
    return-void
.end method

.method public final Nb(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperEISPro"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/E;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/E;

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_2
    const-string/jumbo p1, "super_eis_pro"

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lv2/E;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configSuperEISPro: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/G1;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, LF1/G1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    invoke-static {v0, v1}, Lcom/android/camera/data/data/j;->M1(IZ)V

    invoke-static {v0}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0, v1}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_3
    invoke-static {}, Lq6/X;->l0()Z

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-static {}, Lq6/X;->dd()V

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v2, Lv2/f0;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/Z;

    invoke-virtual {p1, v0}, Lv2/Z;->isSwitchOn(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Lv2/Z;->o(I)V

    :cond_4
    invoke-static {v0, v1}, Lcom/android/camera/data/data/E;->r0(IZ)V

    invoke-virtual {p0, v0}, Lq6/X;->p0(I)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->S0(I)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-static {v0}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v2, Lr2/Q;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/Q;

    invoke-static {v0, v1}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-virtual {p1, v0}, Lr2/Q;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v0, v1}, Lcom/android/camera/data/data/E;->t0(IZ)V

    :goto_1
    invoke-static {v1}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {v1}, Lcom/android/camera/data/data/m;->F0(Z)V

    invoke-static {v1}, Lcom/android/camera/data/data/m;->Q0(Z)V

    :cond_6
    const/16 p1, 0xcc

    const/16 v2, 0xa2

    if-eq v0, p1, :cond_7

    const/16 p1, 0xce

    if-eq v0, p1, :cond_7

    if-eq v0, v2, :cond_7

    invoke-static {v0}, Lcom/android/camera/data/data/w;->Y(I)Z

    const/16 p1, 0xac

    if-ne v0, p1, :cond_8

    :cond_7
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lu2/Q;->c0(I)V

    :cond_8
    invoke-virtual {p0, v2, v1}, Lq6/X;->Lm(IZ)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/l;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, LCs/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Nd(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->M()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/camera/data/data/w;->S0(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->S0(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/w;->M()Z

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configCenterMarkSwitch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, p1, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lq6/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lq6/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "center_mark"

    invoke-static {p0, v0, p1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/W0;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/W0;

    if-eqz p0, :cond_4

    invoke-interface {p0}, LQ6/W0;->n9()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final Nm()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMiLiveModule"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const-string v0, "mi_live_click_music"

    invoke-static {v0}, Lc8/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, LQa/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {v0}, LQa/i;->b(Landroid/app/Activity;)Lio/reactivex/internal/operators/single/a;

    move-result-object v0

    new-instance v1, LB4/e;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, LB4/e;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LF1/y3;

    const/4 v2, 0x5

    invoke-direct {p0, v2}, LF1/y3;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Lio/reactivex/w;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    return-void

    :cond_2
    invoke-virtual {p0}, Lq6/X;->ge()V

    return-void
.end method

.method public final O2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v5, p2

    const/4 v0, 0x0

    const/4 v6, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configFlash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v7

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v1

    check-cast v1, LA2/a$a;

    invoke-virtual {v1}, LA2/a$a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/w;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lr2/w;

    invoke-virtual {v13, v7}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    sget v8, LQh/e;->pref_camera_flashmode_title:I

    const v9, 0x7f140de6

    if-ne v8, v9, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lf2/a;->f:Lf2/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0, v0, v0, v0}, Lf2/a;->j(IZZZZ)V

    :cond_0
    sget-object v8, LF1/b4;->K:Landroid/os/Bundle;

    sget-object v8, LN6/h$a;->a:LN6/h;

    const-class v9, LQ6/X0;

    invoke-virtual {v8, v9}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LEs/C;

    invoke-direct {v9, v6}, LEs/C;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LJ9/e;

    invoke-direct {v9, v5, v6}, LJ9/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v5}, Ln8/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v8, 0xc1

    const-string v9, "attr_flash_mode"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v7 .. v12}, LW9/O;->m(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v8

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/w;

    const-class v9, Lr2/z;

    invoke-virtual {v1, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z;

    invoke-virtual {v1, v8, v4, v5}, Lr2/z;->v(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3, v8}, Lr2/w;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr2/w;->A(Ljava/lang/String;)[I

    move-result-object v3

    array-length v10, v3

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_2

    aget v12, v3, v11

    const/16 v14, 0xa0

    if-eq v12, v14, :cond_1

    if-eq v12, v8, :cond_1

    invoke-virtual {v1, v12, v4, v5}, Lr2/z;->v(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    add-int/2addr v11, v6

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LE4/i;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, LE4/i;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->b()LQ6/r1;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, LS6/a;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, LQ6/r1;->W8()V

    :cond_3
    const-string v1, "flash change"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa2

    if-ne v7, v1, :cond_4

    const/16 v1, 0xa3

    invoke-virtual {v13, v1, v5}, Lr2/w;->setComponentValue(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {v13, v7, v5}, Lr2/w;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v8

    if-eqz v9, :cond_5

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH3/p;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, LH3/p;-><init>(IB)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v10

    new-instance v0, Lq6/h;

    move-object v1, p0

    move-object/from16 v4, p1

    move v2, v7

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lq6/h;-><init>(Lq6/X;IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/i;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, LF1/i;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13, v7}, Lr2/w;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH4/q;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, LH4/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    if-eqz v8, :cond_8

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-nez p0, :cond_7

    const/16 p0, 0xc1

    invoke-static {v7, p0}, LW9/O;->f(II)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v13, v7}, Lr2/w;->C(I)I

    move-result p0

    invoke-virtual {v13, v7}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-interface {v8, p0, v0}, LQ6/l1;->b7(IZ)V

    :cond_7
    const-string p0, "107"

    invoke-static {v5, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/p;

    invoke-direct {v1, p0}, LEs/p;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/F;

    invoke-direct {v1, p0}, Lq6/F;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    return-void
.end method

.method public final O7()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedVideoLogFormat"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/y0;

    invoke-virtual {p0, v0}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LI4/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LI4/f;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "showLogLut"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/H1;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LF1/H1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Om(I)V
    .locals 13
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v0

    const-string v1, "persistFilter: filterId = "

    invoke-static {p1, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ConfigChangeImpl"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/camera/data/data/j;->L1(I)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    if-eq v0, p1, :cond_b

    if-eqz p1, :cond_0

    if-nez v0, :cond_5

    :cond_0
    const/16 v0, 0xb4

    if-eq v2, v0, :cond_1

    const/16 v0, 0xa4

    if-ne v2, v0, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-static {v2, v3}, Lcom/android/camera/data/data/w;->X0(IZ)V

    invoke-virtual {p0, v2, v3}, Lq6/X;->Lm(IZ)V

    :cond_2
    const/16 v0, 0xa9

    if-ne v2, v0, :cond_5

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->L0()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, LJe/c;->M0()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v6, Lv2/f0;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/Z;

    invoke-virtual {v4, v0}, Lv2/Z;->isSwitchOn(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-virtual {v4, v0}, Lv2/Z;->o(I)V

    :cond_4
    invoke-virtual {p0, v2, v3}, Lq6/X;->Lm(IZ)V

    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LF1/D0;

    const/16 v6, 0xf

    invoke-direct {v4, v6}, LF1/D0;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-static {v2}, Lcom/android/camera/data/data/j;->O0(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v4, Lv2/d0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-virtual {p0, v2, v3}, Lq6/X;->Lm(IZ)V

    :cond_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v4, Lv2/k0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v0, v0, Lv2/k0;->N:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v6, Lr2/K;

    invoke-virtual {v0, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/K;

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, "0"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lr2/t;->e:Ljava/util/List;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v8, Lr2/t;

    invoke-virtual {v0, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/Q;

    invoke-virtual {v0}, Lr2/a;->getItems()Ljava/util/List;

    move-result-object v8

    iget v9, v0, Lr2/a;->a:I

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v10

    invoke-virtual {v10, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/k0;

    new-instance v10, Lx4/D;

    iget-object v11, v4, Lv2/k0;->X:Lv2/I0;

    const-string v12, "19"

    invoke-direct {v10, v12, v11, v4, v3}, Lx4/D;-><init>(Ljava/lang/String;Lv2/I0;Lv2/k0;Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/K;

    invoke-virtual {v4, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v10, Lx4/D;->h:Lx4/F;

    if-nez v2, :cond_7

    invoke-virtual {v10}, Lx4/D;->s()V

    :cond_7
    iget-object v2, v10, Lx4/D;->h:Lx4/F;

    invoke-virtual {v10, v2}, Lx4/D;->t(Lx4/F;)V

    :cond_8
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v8}, Lr2/a;->n(ILjava/util/ArrayList;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/camera/data/data/j;->L1(I)V

    :cond_9
    invoke-static {}, LK2/b;->W()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lq6/X;->Fg()V

    invoke-virtual {p0, v3}, Lq6/X;->Go(Z)V

    :cond_a
    invoke-static {}, LQ6/J;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/n;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LCs/n;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFilter: filterId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/xiaomi/camera/effect/EffectController;->d0(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onFilterChanged: category = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Li3/b;->o:I

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lx4/G;->c(Z)V

    return-void
.end method

.method public final P2(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    iget-boolean v0, v0, Lr2/w;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lq6/X;->Kg(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/h;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, LEs/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final P3()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LU6/c;->h()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lj7/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "showDirectionAudioPanel"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/J;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LCs/J;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lj9/K;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj9/K;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lq6/X;->wf()V

    return-void
.end method

.method public final Pf(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lq6/X;->b:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lq6/X;->b:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_f

    aget v3, v3, v2

    const/16 v4, 0xbe

    if-eq v3, v4, :cond_e

    const/16 v4, 0xc4

    const/4 v6, 0x2

    if-eq v3, v4, :cond_d

    const/16 v4, 0xc9

    if-eq v3, v4, :cond_c

    const/16 v4, 0xce

    if-eq v3, v4, :cond_a

    const/16 v4, 0xd4

    if-eq v3, v4, :cond_7

    const/16 v4, 0xed

    if-eq v3, v4, :cond_6

    const/16 v4, 0xef

    if-eq v3, v4, :cond_5

    const/16 v4, 0x10b

    if-eq v3, v4, :cond_4

    const/16 v4, 0xb21

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lq6/X;->N1(Z)V

    const/16 v3, 0xb

    aput v3, v0, v2

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v5, v1}, Lq6/X;->Kg(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    aput v3, v0, v2

    goto :goto_2

    :cond_3
    const/16 v3, 0x95

    aput v3, v0, v2

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lq6/X;->Vg(Z)V

    const/16 v3, 0x91

    aput v3, v0, v2

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lq6/X;->Af(Z)V

    const/16 v3, 0xd

    aput v3, v0, v2

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lq6/X;->Xg(Z)V

    const/16 v3, 0x2c

    aput v3, v0, v2

    goto :goto_2

    :cond_7
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/k0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/k0;

    invoke-virtual {v3}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, v3, Lv2/k0;->d0:Z

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    iput-boolean v1, v3, Lv2/k0;->d0:Z

    :cond_9
    :goto_1
    aput v6, v0, v2

    goto :goto_2

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lq6/X;->c4(IZ)V

    const-string v3, "j"

    if-eq p1, v3, :cond_b

    const/16 v3, 0x31

    aput v3, v0, v2

    goto :goto_2

    :cond_b
    const/16 v3, 0x32

    aput v3, v0, v2

    goto :goto_2

    :cond_c
    invoke-static {v1}, Lq6/X;->pf(Z)V

    const/16 v3, 0x24

    aput v3, v0, v2

    goto :goto_2

    :cond_d
    invoke-static {v1}, Lq6/X;->qg(Z)V

    aput v6, v0, v2

    goto :goto_2

    :cond_e
    invoke-virtual {p0, v1}, Lq6/X;->db(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    iput-object v5, p0, Lq6/X;->b:[I

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LM6/m;

    const/16 v1, 0xd

    invoke-direct {p1, v0, v1}, LM6/m;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Po()V
    .locals 13

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/4 v2, 0x5

    const/16 v3, 0xf

    const/16 v4, 0x11

    const/4 v5, 0x1

    sget v6, Lcom/android/camera/module/Y;->a:I

    invoke-static {v6}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v6

    const-class v7, Lr2/I0;

    const-class v8, Lr2/D0;

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    invoke-static {}, LQ6/f1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v10, LC3/c;

    invoke-direct {v10, v4}, LC3/c;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/w1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v10, LC3/d;

    invoke-direct {v10, v3}, LC3/d;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/G1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v10, LE4/K;

    invoke-direct {v10, v4}, LE4/K;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v6, Lr2/Z;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/Z;

    const/16 v10, 0xe1

    invoke-virtual {v6, v10}, Lcom/android/camera/data/data/c;->reset(I)V

    const-class v11, Lr2/t;

    invoke-virtual {v4, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr2/t;

    invoke-virtual {v11, v10}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-static {v9}, Lcom/android/camera/data/data/j;->L1(I)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v11

    new-instance v12, LF1/z2;

    invoke-direct {v12, v3}, LF1/z2;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-class v3, Lr2/N;

    invoke-virtual {v4, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/N;

    invoke-virtual {v3, v10}, Lcom/android/camera/data/data/c;->reset(I)V

    const-class v3, Lr2/O;

    invoke-virtual {v4, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/O;

    invoke-virtual {v3, v10}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-static {}, LQ6/B0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v11, LB3/b;

    const/4 v12, 0x7

    invoke-direct {v11, v12}, LB3/b;-><init>(I)V

    invoke-virtual {v3, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LS6/e;->a()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v11

    new-instance v12, LH4/P;

    invoke-direct {v12, v2}, LH4/P;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS6/e;

    invoke-interface {v2}, LS6/e;->Sh()V

    :cond_0
    const-class v2, Lr2/l0;

    invoke-virtual {v4, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/l0;

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v10}, Lv2/B0;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v10}, Lv2/B0;->reset(I)V

    invoke-static {}, LV6/d;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v11, LCs/i;

    invoke-direct {v11, v2, v1}, LCs/i;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/D0;

    invoke-virtual {v2, v10}, Lcom/android/camera/data/data/c;->reset(I)V

    sget-object v3, LN6/h$a;->a:LN6/h;

    const-class v8, LQ6/K;

    invoke-virtual {v3, v8}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ6/K;

    invoke-interface {v3, v9}, LQ6/K;->resetEvValue(Z)V

    :cond_2
    invoke-static {}, LQ6/U0;->a()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ6/U0;

    invoke-interface {v3, v2}, LQ6/U0;->id(Lcom/android/camera/data/data/c;)V

    :cond_3
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LCs/l;

    invoke-direct {v3, v0}, LCs/l;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a3()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, LQ6/f1;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I0;

    invoke-virtual {v0, v10}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10}, Lr2/I0;->reset(I)V

    invoke-virtual {v6, v10}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3, v2, v0}, Lq6/X;->w6(ILjava/lang/String;Ljava/lang/String;Lr2/I0;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->M0()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LU6/a;

    invoke-direct {v0, v2}, LU6/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, LS6/c;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/r1;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, LF1/r1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_2

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/c1;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lr2/B0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lr2/L0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v2, Lr2/m0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/c;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/c;

    const/16 v3, 0xa9

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/c;->reset(I)V

    add-int/2addr v9, v5

    goto :goto_0

    :cond_7
    invoke-static {}, LQ6/B0;->b()LQ6/B0;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0, v0}, LQ6/B0;->Zi(Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lg2/a;->k()Lx2/b;

    move-result-object p0

    const-string v2, "pref_camera_manual_workspace_used_index_key"

    invoke-virtual {p0, v2, v9}, LWh/a;->j(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v2

    const-class v3, LT9/I;

    invoke-virtual {v2, v3}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v2

    check-cast v2, LT9/I;

    invoke-virtual {v2}, LT9/a;->d()LT9/r;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move v9, p0

    :goto_1
    invoke-static {}, LQ6/A0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, LC3/i;

    invoke-direct {v3, v9, v5, v2}, LC3/i;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, LKh/c;

    invoke-direct {v2, v0}, LKh/c;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    :goto_2
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/j;->x0()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_b

    const/16 v0, 0xc1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, LQ6/n1;->T0([I)V

    :cond_b
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/l0;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LF1/l0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_c
    if-eqz p0, :cond_d

    const/16 v0, 0x94

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, LQ6/n1;->T0([I)V

    :cond_d
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/E;

    invoke-direct {v0, v1}, LEs/E;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "ConfigChangeImpl"

    const-string v0, "onClick trackManuallyResetDialogOk"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v0, 0xa7

    const-string v1, "reset_params_click"

    invoke-static {v0, v1, p0}, Liq/d;->f(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final Q5(I)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSpeechShutter"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/p0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/p0;

    iget-boolean v0, v0, Lv2/p0;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    const-class v3, Lu2/E;

    if-eq p1, v1, :cond_1

    invoke-static {p0}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/E;

    invoke-virtual {v1, p0, p1}, Lu2/E;->toSwitch(IZ)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu2/E;

    iput-boolean p1, v1, Lu2/E;->c:Z

    const-string/jumbo v1, "speech_shutter_desc"

    invoke-static {v1, p1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/E;

    invoke-virtual {p1, p0, v2}, Lu2/E;->toSwitch(IZ)V

    move p1, v2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result p1

    :goto_0
    const-string v1, "configSpeechShutterSwitch: "

    const-string v3, "ConfigChangeImpl"

    invoke-static {v1, v3, p1}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xd2

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    invoke-static {}, LQ6/d;->b()LQ6/d;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v0}, LQ6/d;->wo(ZZ)V

    :cond_4
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/c1;

    invoke-virtual {p0, p1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/c1;

    if-eqz p0, :cond_5

    invoke-interface {p0, v2}, LQ6/c1;->j4(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final Q7()V
    .locals 8

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "updateMasterLiveZoomInOut: "

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget v0, p0, Lu2/Q;->u:I

    invoke-virtual {p0, v0}, Lu2/Q;->E(I)I

    move-result p0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/d0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/d0;

    invoke-static {p0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/d0;

    invoke-static {p0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lv2/d0;->m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v4, "pref_master_live_adverse_key"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    const/4 v7, 0x1

    xor-int/2addr v1, v7

    invoke-virtual {v6, v4, v1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Lv2/d0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LV6/a;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/b1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LF1/b1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "click"

    const-string/jumbo v0, "switch direction"

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Q8(Landroid/view/MotionEvent;F)Z
    .locals 6

    invoke-virtual {p0}, Lq6/X;->y9()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    instance-of v0, p0, Lcom/android/camera/module/FakerModule;

    if-nez v0, :cond_7

    instance-of p0, p0, Lcom/android/camera/features/mode/ai/AiModule;

    if-eqz p0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/c0;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, LH4/c0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, LK2/b;->W()Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, LU4/g;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, LU4/g;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LO5/a;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, LO5/a;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez p0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    invoke-static {v2}, LK2/b;->o(I)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_7

    :cond_4
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/v1;

    const/4 v3, 0x0

    invoke-direct {p1, v3}, LF1/v1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    move p1, v1

    :goto_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/F;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, LEs/F;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v2

    :cond_6
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/E;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LEs/E;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string/jumbo p0, "slide"

    const-string p1, "menu_more"

    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7
    :goto_1
    return v1
.end method

.method public final Qi()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF1/h;

    invoke-direct {v5, v3}, LF1/h;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF1/i;

    invoke-direct {v5, v3}, LF1/i;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v4, LF1/m;

    invoke-direct {v4, v3}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v4, 0xe7

    if-eq p0, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {}, LK2/b;->W()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, LQ5/J;->f()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    const-string v5, "pref_camera_global_guide_hidden"

    invoke-virtual {v4, v5, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {}, LU6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v5, Lv2/d0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/d0;

    iget-boolean v4, v4, Lv2/d0;->d:Z

    if-eqz v4, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    move v3, v4

    goto :goto_1

    :pswitch_0
    const-string v3, "3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :pswitch_1
    const-string v3, "2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_1

    :pswitch_2
    const-string v3, "1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_1

    :pswitch_3
    const-string v5, "0"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v3, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f1409db

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f1409de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1409e2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f1409e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_9

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LK4/q;

    invoke-direct {v1, p0, v2}, LK4/q;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final Qj(I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isDualCameraShineVideoBokeh"
        type = 0x0
    .end annotation

    const/16 p0, 0xa2

    if-ne p1, p0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->L()V

    :cond_0
    return-void
.end method

.method public final Ql([I)V
    .locals 0

    iput-object p1, p0, Lq6/X;->b:[I

    return-void
.end method

.method public final Qn()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "showAmbilightPanel: "

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/l0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LF1/l0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "icon"

    const-string v1, "attr_template"

    const-string v2, "click"

    invoke-static {v1, p0, v2, v0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Qp()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->y()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/camera/data/data/w;->f0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConfigChangeImpl"

    const-string v2, "reCheckExposureFeedbackConfig: configExposureFeedbackSwitch"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->o3(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final R1(I)V
    .locals 14
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiScene"
        type = 0x0
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v3

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0xc9

    const-string v7, "ConfigChangeImpl"

    const/4 v8, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v8, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v3, "configAiSceneSwitch: MUTEX false"

    invoke-static {v7, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/android/camera/data/data/m;->y0(IZ)V

    filled-new-array {v6}, [I

    move-result-object v2

    invoke-interface {v4, v2}, LQ6/n1;->T0([I)V

    goto/16 :goto_1

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "configAiSceneSwitch: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "aiScene"

    const-string v9, "aiCC"

    const/4 v10, 0x0

    if-nez v3, :cond_4

    invoke-static {v2, v0}, Lcom/android/camera/data/data/m;->y0(IZ)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v2

    if-lt v2, v0, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v9, v10}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v7, v10}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v11

    new-instance v12, LC4/p;

    const/16 v13, 0x11

    invoke-direct {v12, v13}, LC4/p;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v2, v5}, Lcom/android/camera/data/data/m;->y0(IZ)V

    invoke-interface {v4, v5}, LQ6/n1;->N7(I)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v2

    if-lt v2, v0, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v9, v10}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, v7, v10}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    const/16 v3, 0x21

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5, v5, v7}, LQ6/p;->I5(IZZ[Ljava/lang/Object;)V

    const/16 v3, 0x20

    new-array v7, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5, v5, v7}, LQ6/p;->I5(IZZ[Ljava/lang/Object;)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->m1()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, LZh/b$c;->h:LZh/b$c;

    invoke-virtual {v2, v5}, LZh/b$c;->c(Z)V

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lq6/X;->a0()V

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/E;->x()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k;

    const/16 v3, 0xab

    const-string v7, "4"

    invoke-virtual {v2, v3, v7}, Lv2/k;->setComponentValue(ILjava/lang/String;)V

    invoke-interface {v1}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v2

    const/16 v3, 0x95

    const/16 v7, 0x30

    const/16 v9, 0x5c

    filled-new-array {v7, v9, v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lj6/i;->updatePreferenceTrampoline([I)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, LQ6/p;->vg()V

    :cond_8
    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC4/q;

    const/16 v7, 0x13

    invoke-direct {v3, v7}, LC4/q;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, LQ6/C;->e9()V

    :cond_9
    filled-new-array {v6}, [I

    move-result-object v2

    invoke-interface {v4, v2}, LQ6/n1;->T0([I)V

    :goto_1
    invoke-interface {v1}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v2

    const/16 v3, 0x24

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v2, v3}, Lj6/i;->updatePreferenceTrampoline([I)V

    invoke-interface {v1}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->V()Lj9/a;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lj9/a;->p0()I

    :cond_a
    if-ne p1, v0, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    invoke-virtual {p1}, Lv2/D0;->D()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move v5, v0

    :cond_c
    xor-int/lit8 p1, v5, 0x1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lr2/c0;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_d

    const-string v0, "OFF"

    :cond_d
    invoke-virtual {p0, v8, v0, p1}, Lq6/X;->F7(ILjava/lang/String;Z)V

    :cond_e
    :goto_2
    return-void
.end method

.method public final R4()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureVlogProMode"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object v0

    const-string/jumbo v1, "vlogpro"

    invoke-interface {v0, v1}, LQ6/L0;->A3(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/f;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LEs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "ConfigChangeImpl"

    const-string v1, "configIntoVlogProWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    const/16 v1, -0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lzs/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lzs/c;->D()V

    iget-object v0, v0, Lzs/c;->k:Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;

    iget-object v0, v0, Lcom/xiaomi/microfilm/vlogpro/vp/VPItem;->a:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_vlog2_click"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    new-instance v1, Loq/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "click_workspace_into"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Loq/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera"

    const-string v2, "com.xiaomi.microfilm.vlogpro.vp.VPWorkspaceActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    const-string/jumbo v2, "vp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    sget-object v0, LOh/c;->e:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public final R7(Z)V
    .locals 3

    invoke-static {}, Lvr/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->Y0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const/16 v1, 0xab

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/B;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lq6/X;->c4(IZ)V

    :cond_2
    return-void
.end method

.method public final Ra(IZ)V
    .locals 1

    const/16 v0, 0xe5

    if-eqz p2, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget p2, p1, Lu2/Q;->u:I

    invoke-virtual {p1, p2}, Lu2/Q;->E(I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LB3/b;

    const/16 p2, 0xf

    invoke-direct {p1, p2}, LB3/b;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/b1;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, LF1/b1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/g;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, LEs/g;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "click"

    const-string p1, "attr_street_style"

    const-string/jumbo p2, "special"

    invoke-static {p2, p1, p0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget p2, p0, Lu2/Q;->u:I

    invoke-virtual {p0, p2}, Lu2/Q;->E(I)I

    move-result p0

    if-eq p0, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {}, LQ6/J;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/android/camera/features/mode/capture/M;

    const/4 v0, 0x3

    invoke-direct {p2, p1, v0}, Lcom/android/camera/features/mode/capture/M;-><init>(II)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Rd(IZ)V
    .locals 17
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    move/from16 v8, p1

    const/16 v11, 0xf

    const/16 v12, 0x12

    const/4 v13, 0x0

    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "reConfigAiAudio: E"

    const-string v14, "ConfigChangeImpl"

    invoke-static {v14, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lj7/a;->g()Z

    move-result v2

    const/16 v0, 0xa4

    const/16 v1, 0xb4

    if-eq v8, v1, :cond_1

    if-ne v8, v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/d;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/d;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/c;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/c;

    invoke-static {v8}, Lcom/android/camera/data/data/m;->G(I)Z

    move-result v6

    invoke-virtual {v4, v8}, Lr2/d;->p(I)Z

    move-result v16

    move-object v7, v5

    invoke-virtual {v7, v8}, Lv2/c;->isSwitchOn(I)Z

    move-result v5

    const/16 v15, 0xa2

    if-eq v8, v15, :cond_6

    if-eq v8, v0, :cond_3

    if-eq v8, v1, :cond_3

    const/16 v0, 0xe3

    if-eq v8, v0, :cond_2

    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    sget v0, LQh/e;->dir_audio_type_audio_track:I

    goto :goto_2

    :cond_3
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->v0()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v0, LQh/e;->pref_dir_audio_type:I

    goto :goto_2

    :cond_4
    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->V4()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, LQh/e;->dir_audio_type_audio_track:I

    goto :goto_2

    :cond_5
    sget v0, LQh/e;->pref_camera_rec_type_audio_zoom:I

    goto :goto_2

    :cond_6
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->O()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, LQh/e;->pref_video_ai_audio_single:I

    goto :goto_2

    :cond_7
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->u0()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, LQh/e;->dir_audio_type_audio_track:I

    goto :goto_2

    :cond_8
    sget v0, LQh/e;->pref_camera_rec_type_audio_zoom:I

    :goto_2
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v15

    move-object v1, v4

    move v4, v6

    move v6, v0

    new-instance v0, Lq6/A;

    move-object v9, v1

    move-object v10, v7

    move-object/from16 v1, p0

    move/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lq6/A;-><init>(Lq6/X;ZZZZIZ)V

    invoke-virtual {v15, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-boolean v2, v9, Lr2/d;->k:Z

    invoke-static {v8}, Lcom/android/camera/data/data/w;->A0(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/android/camera/data/data/w;->B0(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v15, 0x1

    goto :goto_3

    :cond_9
    move v15, v13

    :goto_3
    if-eqz v2, :cond_d

    if-eqz p2, :cond_b

    if-eqz v16, :cond_a

    invoke-static {}, LV6/c;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/c;

    invoke-direct {v2, v11}, LE4/c;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE3/n;

    invoke-direct {v2, v12}, LE3/n;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k3()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static/range {p1 .. p2}, Lcom/android/camera/data/data/j;->f1(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LCs/S;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, LCs/S;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LDn/D;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, LDn/D;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {v8, v13}, LF1/l4;->c(IZ)V

    goto :goto_4

    :cond_b
    invoke-virtual {v9, v8}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-virtual {v10, v8}, Lcom/android/camera/data/data/c;->reset(I)V

    iget-object v0, v1, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-static {v8, v13}, LF1/l4;->c(IZ)V

    :cond_c
    :goto_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/e;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LEs/e;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v15, :cond_11

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Lq6/P;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_5

    :cond_d
    if-eqz p2, :cond_10

    if-eqz v16, :cond_e

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE3/n;

    invoke-direct {v2, v12}, LE3/n;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v2, Lq6/Q;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v2}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_e
    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->k3()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static/range {p1 .. p2}, Lcom/android/camera/data/data/j;->f1(IZ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/g;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, LEs/g;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/d;

    invoke-direct {v2, v12}, LE4/d;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_f
    iget-object v0, v1, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    invoke-virtual {v9}, Lr2/d;->q()Z

    move-result v0

    invoke-static {v8, v0}, LF1/l4;->c(IZ)V

    :cond_10
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LB9/c;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LB9/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_11
    :goto_5
    if-nez p2, :cond_12

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/f;

    invoke-direct {v1, v11}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/N;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LH4/N;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/p;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC4/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_12
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF4/f;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LF4/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "reConfigAiAudio: X"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v14, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final Rk(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;
    .locals 10

    invoke-static {}, Lg2/a;->k()Lx2/b;

    move-result-object v0

    const-string v1, "pref_camera_manual_workspace_used_index_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v2, LT9/I;

    invoke-virtual {v1, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, LT9/I;

    invoke-virtual {v1}, LT9/a;->d()LT9/r;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/module/Y;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, v1, LT9/r;->j:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1409c9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1409b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f140576

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    invoke-static {}, LQ6/D;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LCs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1402e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f14120b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LG6/a;

    invoke-direct {v5, p0, p1, p2}, LG6/a;-><init>(Lq6/X;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    const/high16 p2, 0x1040000

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, LG6/b;

    const/16 p0, 0x9

    invoke-direct {v9, p3, p0}, LG6/b;-><init>(Ljava/lang/Object;I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lvr/w;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    return-object p0
.end method

.method public final Rn()V
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->r0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->Q5(I)V

    :cond_0
    return-void
.end method

.method public final S0()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioSingle"
        type = 0x0
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lj7/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const-string v1, "ai_audio_single"

    invoke-static {v1, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    const-string v1, "ai_aduio_single_desc"

    invoke-static {v1, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/camera/data/data/E;->t(I)Z

    move-result v2

    const-string v3, "configAiAudioSingle -> enable = "

    invoke-static {v3, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ConfigChangeImpl"

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lgq/h;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v5, "key_common"

    iput-object v5, v3, Lgq/h;->a:Ljava/lang/String;

    new-instance v5, Lgq/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v5, v3, Lgq/h;->b:Lgq/f;

    xor-int/2addr v0, v2

    invoke-static {v0}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object v5

    const-string v7, "attr_ai_audio_single"

    invoke-virtual {v3, v5, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Liq/c;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v5}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v3}, Lgq/h;->d()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v5, Lv2/c;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xa2

    if-eq p0, v5, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    const-string v2, "ON"

    goto :goto_0

    :cond_3
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v3, p0, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :goto_1
    const-string v2, "configAiAudioSingle:setAiAudioSingleEnabled: "

    invoke-static {v2, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/camera/data/data/E;->t(I)Z

    invoke-interface {v1}, LQ6/l1;->setShow()V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/K3;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LF1/K3;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final S4()V
    .locals 2

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->y()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string v1, "config showSetting"

    invoke-static {p0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/a;->Vg()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final S6()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportLiveShot"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lvr/l;->a()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    return-void
.end method

.method public final Sk()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/b;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/b;

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LI1/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    const-string v3, "reCheckAiAudio:SupportAiAudioNew "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->G(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "3d record"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "audio zoom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final T2()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configESPDisplay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigChangeImpl"

    invoke-static {v5, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/data/data/m;->E0(Z)V

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0xb5

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-interface {v4, v5}, LQ6/n1;->T0([I)V

    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "attr_espdisplay"

    invoke-static {v4, v6, v5}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->S4()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, LQ6/S0;->b()LQ6/S0;

    move-result-object v4

    if-eqz v4, :cond_6

    if-nez v2, :cond_3

    invoke-static {}, LY2/j;->d()LY2/j;

    move-result-object v5

    invoke-virtual {v5}, LY2/j;->a()V

    iget-object v6, v5, LY2/j;->a:Lio/reactivex/disposables/b;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lio/reactivex/disposables/b;->a()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v5, v5, LY2/j;->a:Lio/reactivex/disposables/b;

    invoke-interface {v5}, Lio/reactivex/disposables/b;->c()V

    :cond_2
    invoke-static {v0}, LK2/j;->i(Z)V

    invoke-interface {v4, v1}, LQ6/S0;->Gf(I)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, LQ6/S0;->cancel()V

    :goto_0
    sget-object v4, Lcom/android/camera/guide/a;->i:Lcom/android/camera/guide/a$b;

    invoke-virtual {v4}, Lcom/android/camera/guide/a$b;->a()Lcom/android/camera/guide/a;

    move-result-object v4

    invoke-static {}, LK2/j;->c()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "switchEspDisplay : "

    invoke-static {v5, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "DualScreenManager"

    invoke-static {v6, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_5

    invoke-static {}, LKy/c;->h()I

    move-result v2

    invoke-static {v2, v1}, Lcom/android/camera/guide/a;->k(IZ)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lph/b;->b()Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/camera/guide/a;->d(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/camera/guide/a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, LKy/c;->h()I

    move-result v2

    invoke-virtual {v4, v2, v1}, Lcom/android/camera/guide/a;->h(IZ)V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF4/e;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v0}, LF4/e;-><init>(IB)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1}, Lq6/X;->xm(Z)V

    return-void
.end method

.method public final T5(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configMeter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/F;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/F;

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/D0;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->f3()V

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Fg()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq6/X;->Go(Z)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/g;

    const/16 v0, 0xd

    invoke-direct {p1, v1, v0}, LE3/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final T8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object p0

    invoke-interface {p0}, Lj6/j;->c()Lj9/e;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lj9/f;->u0(Lj9/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final Tp()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->G0(Lj9/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/data/data/m;->u0(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/android/camera/data/data/r;->q(II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, LQ6/n1;->dj()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v2, "pref_camcorder_tip_4khdr10p_max_video_duration_shown"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-static {v2, v1}, LF1/K2;->c(Ljava/lang/String;Z)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140316

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "4khdr10p_desc"

    invoke-interface {v0, v1, p0}, LQ6/l1;->ue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final V2(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCinematicDollySupported"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    const/16 v3, 0xe3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/n;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/n;

    invoke-virtual {v3, v2, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lq6/X;->p0(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/Q;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/Q;

    invoke-virtual {v2, v1}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.39x1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.39x1_new"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2, v1}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/android/camera/data/data/m;->S0(I)V

    invoke-static {v1}, Lcom/android/camera/data/data/m;->w0(I)V

    new-instance v2, LEs/d;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LEs/d;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq6/X;->N9(F)V

    :cond_5
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const-class v2, Lv2/o;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/o;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2, v1}, Lcom/android/camera/data/data/E;->C0(FI)V

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/j;->I1(F)V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_7
    :goto_1
    const-string p0, "ConfigChangeImpl"

    const-string p1, "current Module is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final V3()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportGifVideoSegment"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v1, LFs/A;

    invoke-virtual {v0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    invoke-virtual {v0}, LFs/A;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configGif: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LL9/v;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LL9/v;-><init>(ZI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xa2

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-interface {v0, v1}, LQ6/n1;->T0([I)V

    :cond_1
    invoke-static {}, LQ6/r1;->b()LQ6/r1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, LS6/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, LS6/a;->Lo(II)Z

    :cond_2
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lq6/X;->v(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final Vb()Z
    .locals 0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public final Vd()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isRemoteOnlineSupported"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, LQ6/l1;->Ne(I)V

    return-void
.end method

.method public final Vl(Ljava/lang/String;)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvLens"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/camera/data/data/E;->w0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/r;->g()Z

    move-result v3

    const-string v4, "none"

    const-string v5, "1000"

    const-string v6, "click"

    if-eqz v3, :cond_3

    sget-object v3, Ln8/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object v3

    const-string v7, "1"

    invoke-static {v3, v7}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v4, "swirly_bokeh"

    goto :goto_0

    :cond_1
    const-string v7, "2"

    invoke-static {v3, v7}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "soft_focus"

    :cond_2
    :goto_0
    const-string v3, "attr_beauty_lens_id"

    invoke-static {v4, v3, v6}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, p1

    :goto_1
    const-string v3, "attr_cv_lens"

    invoke-static {v4, v3, v6}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, LQ6/C;->e9()V

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/camera/data/data/j;->W0()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lq6/X;->d7(I)V

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/camera/data/data/r;->a()I

    move-result v2

    if-gt v2, v6, :cond_a

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/Q;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/Q;

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/G;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/G;

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_a
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1, v7}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH3/m;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, LH3/m;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LCs/v;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LCs/v;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-virtual {p0, v1, v7}, Lq6/X;->Lm(IZ)V

    invoke-static {}, Lcom/android/camera/data/data/r;->a()I

    move-result p0

    if-le p0, v6, :cond_c

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    const/16 v0, 0x30

    const/16 v1, 0x95

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_c
    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "5"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class p1, Lr2/Q;

    invoke-virtual {p0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/Q;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    iget v0, p1, Lu2/Q;->u:I

    invoke-virtual {p1, v0}, Lu2/Q;->E(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2.39x1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f141376

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    const-string v0, "cvlens"

    invoke-interface {p1, v7, p0, v0}, LQ6/l1;->Jd(ILjava/lang/CharSequence;Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public final Vm(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, LQ6/B0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/i1;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p2}, LF1/i1;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Wb()I
    .locals 2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final Wc(Z)V
    .locals 4

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/camera/a;->a0:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lo9/a;->a:Lo9/b;

    invoke-interface {v0}, Lo9/b;->a()Lp9/v;

    move-result-object v0

    invoke-interface {v0, p1}, Lp9/v;->h(Z)LE4/s;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {p0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object p0

    const-string v1, "LcLooksDescFragment"

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f150165

    invoke-virtual {v0, v2}, Landroidx/fragment/app/g;->Cq(I)V

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p0, 0x0

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v1, v3}, Landroidx/fragment/app/a;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->n(Z)I

    if-eqz p1, :cond_2

    const-string p0, "attr_filter_info"

    goto :goto_0

    :cond_2
    const-string p0, "attr_bokeh_info"

    :goto_0
    const/4 p1, 0x0

    const-string v0, "attr_feature_name"

    invoke-static {p0, v0, p1}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final X(ILjava/lang/String;Ljava/lang/String;Lr2/f0;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportVideoSAT"
        type = 0x0
    .end annotation

    invoke-static {p1, p2}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p3}, Lcom/android/camera/data/data/j;->Q1(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lq6/p;

    invoke-direct {v0, p1, p2, p3, p4}, Lq6/p;-><init>(ILjava/lang/String;Ljava/lang/String;Lr2/f0;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->O()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->S()Lj9/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->Z()Lj9/e;

    move-result-object p0

    :goto_0
    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p2

    invoke-virtual {p4, p1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lg9/f;->h5(ILj9/e;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->O()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->G()I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0}, Lu6/f;->k()I

    move-result p0

    :goto_1
    invoke-virtual {p4, p0, p3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    goto :goto_4

    :cond_3
    if-eqz p0, :cond_8

    cmpl-float p0, p2, v0

    if-lez p0, :cond_8

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object v0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->H5()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->r()I

    move-result v0

    invoke-virtual {p4, v0, p3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    iget-object v3, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I5()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->M()I

    move-result v0

    invoke-virtual {p4, v0, p3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result v0

    invoke-static {}, Lur/i;->i()F

    move-result v3

    invoke-virtual {p0}, LJe/c;->u()Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    cmpl-float v0, p2, v3

    if-lez v0, :cond_7

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr p0, v3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_7

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    :cond_8
    :goto_4
    const/16 p0, 0xb4

    if-ne p1, p0, :cond_9

    invoke-static {p1, v1}, Lcom/android/camera/data/data/j;->j1(IZ)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    const/16 p0, 0xa4

    if-ne p1, p0, :cond_b

    :cond_a
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    iget-object p0, p0, Lu6/f;->a:Lu6/b;

    iget p0, p0, Lu6/b;->a:I

    invoke-virtual {p4, p0, p3}, Lr2/f0;->F(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "not support: "

    const-string p2, ", switch to wide"

    invoke-static {p0, p3, p2}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "ConfigChangeImpl"

    invoke-static {p3, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/camera/data/data/E;->a(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class p2, Lr2/z0;

    invoke-virtual {p0, p2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/z0;

    const-string/jumbo p2, "wide"

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final X1()V
    .locals 4

    const-string v0, "ConfigChangeImpl"

    const-string v1, "configBack"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_b

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_a

    const/16 v2, 0xb9

    if-eq v1, v2, :cond_9

    const/16 v2, 0xbd

    if-eq v1, v2, :cond_8

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_7

    const/16 v2, 0xd9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xdb

    if-eq v1, v2, :cond_5

    const/16 v2, 0xb6

    if-eq v1, v2, :cond_4

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd4

    if-eq v1, v2, :cond_2

    const/16 v0, 0xd5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/k;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LEs/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {}, LQ6/G0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/s;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC4/s;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, v2, v3}, Lq6/X;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v2, v3}, Lq6/X;->s3(Lcom/android/camera/fragment/film/FilmItem;Z)V

    return-void

    :cond_2
    const-string p0, "configFilmDreamBack"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/S;->b()LQ6/S;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, LQ6/S;->s()V

    return-void

    :cond_3
    invoke-static {}, Lq6/X;->re()V

    return-void

    :cond_4
    invoke-static {}, LHp/a;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LHs/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LHs/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_5
    const-string p0, "configVlogProBack"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/B1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/q;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LC4/q;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_6
    const-string p0, "configTimeBackflowBack"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/V;->b()LQ6/V;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, LQ6/V;->s()V

    return-void

    :cond_7
    :pswitch_3
    invoke-static {}, Lq6/X;->re()V

    return-void

    :cond_8
    invoke-static {}, LQ6/G;->b()LQ6/G;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, LQ6/G;->onBackPressed()V

    return-void

    :cond_9
    const-string p0, "configCloneModeBack"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance v0, Lgq/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "key_clone"

    iput-object v1, v0, Lgq/h;->a:Ljava/lang/String;

    new-instance v1, Lgq/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v1, v0, Lgq/h;->b:Lgq/f;

    const-string v1, "attr_operate_state"

    const-string/jumbo v2, "value_clone_click_back"

    invoke-virtual {v0, v2, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgq/h;->d()V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, LQ6/B;->r9(Z)V

    return-void

    :cond_a
    const-string p0, "configVVBack"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LT6/g;->b()LT6/g;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-interface {p0}, LT6/g;->s()V

    return-void

    :cond_b
    invoke-static {}, LU6/c;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {}, LU6/c;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    :goto_0
    return-void

    :cond_e
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/i;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LE4/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xce
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Xa()Z
    .locals 9

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/Z;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/Z;

    const-class v3, Lr2/t;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/t;

    const-class v4, Lr2/l0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/l0;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/j0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/j0;

    const-class v6, Lr2/D0;

    invoke-virtual {v0, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/D0;

    const-class v7, Lr2/N;

    invoke-virtual {v0, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/N;

    const-class v8, Lr2/O;

    invoke-virtual {v0, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/O;

    invoke-virtual {v2, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v2

    invoke-virtual {v3, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v3

    invoke-virtual {v4, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v4

    invoke-virtual {v5, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v5

    invoke-virtual {v6, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v6

    invoke-virtual {v7, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result v7

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->isModified(I)Z

    move-result p0

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public final Xp()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDocumentMode"
        type = 0x0
    .end annotation

    const/16 v0, 0x10

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->F0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    const/16 v2, 0xba

    if-ne v1, v2, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LC4/s;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, LC4/s;-><init>(IB)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF1/G1;

    invoke-direct {v1, v0}, LF1/G1;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y6()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/w;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->o7(I)V

    :cond_0
    return-void
.end method

.method public final Y8()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedVideoLogFormat"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string v0, "removeLogLutPanel"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/v;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LE4/v;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Z4(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configTimerSwitch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lr2/a0;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/a0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w0;

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/w0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/w0;

    :goto_1
    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v3

    const/16 v4, 0xe6

    if-eq v3, v4, :cond_3

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lq6/T;

    invoke-direct {v4, v2, v1}, Lq6/T;-><init>(ZLv2/w0;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v5

    const/16 v6, 0xe2

    const-string v7, "attr_timer_changed"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-static/range {v5 .. v10}, LW9/O;->m(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    const/16 p0, 0xa0

    invoke-virtual {v1, p0, v8}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    sget-object p0, LF1/b4;->K:Landroid/os/Bundle;

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class p1, LQ6/X0;

    invoke-virtual {p0, p1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/C;

    invoke-direct {p1, v0}, LEs/C;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/camera/features/mode/capture/N;

    const/4 v0, 0x2

    invoke-direct {p1, v8, v0}, Lcom/android/camera/features/mode/capture/N;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final Zb()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    if-ltz p0, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 p0, p0, 0x8

    shl-int/lit8 v1, p0, 0x8

    const/16 v2, 0x700

    if-ne v1, v2, :cond_1

    const-string p0, "2.8K"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lr2/j1;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f140803

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/features/mode/capture/y;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/camera/features/mode/capture/y;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final Zk()V
    .locals 3

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "host_name"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v1, 0xe2

    if-eq p0, v1, :cond_0

    const/4 p0, 0x4

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, LQ6/l1;->Ob(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final Zl()V
    .locals 1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    iget-object p0, p0, Lq6/X;->b:[I

    iput-object p0, v0, Lv2/D0;->v:[I

    return-void
.end method

.method public final a2()V
    .locals 7

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    const-string v3, "[VideoSwitch] updateVideoPrompter"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v3

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LP2/b;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, LP2/b;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :cond_2
    const-string p0, "[VideoSwitch] updateVideoPrompter no necessary"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateVideoPrompter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "video_prompter"

    invoke-static {v2, v5, v4}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LEs/r;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, LEs/r;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LD8/h;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, LD8/h;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LL9/t;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, LL9/t;-><init>(ZI)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xac

    if-ne v1, v2, :cond_5

    invoke-static {v0}, Lcom/android/camera/data/data/m;->Q0(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lu2/Q;->c0(I)V

    invoke-virtual {p0, v2, v0}, Lq6/X;->Lm(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a3(Ljava/lang/String;Z)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSimpleAiBeauty"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v0, v0, Lv2/k0;->S:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-nez p2, :cond_2

    invoke-static {v2}, Lcom/android/camera/data/data/m;->A0(I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    invoke-virtual {v1, p1}, Lv2/k0;->X(Ljava/lang/String;)V

    invoke-static {}, LQ6/x0;->b()LQ6/x0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, LQ6/x0;->gf(Z)V

    :cond_1
    invoke-static {}, LQ6/x0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LH3/p;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, LH3/p;-><init>(IB)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-static {p2}, Lcom/android/camera/data/data/m;->B0(Z)V

    invoke-static {}, Lx4/G;->d()V

    invoke-static {}, Lcom/android/camera/data/data/m;->f()I

    move-result p1

    if-eqz p2, :cond_3

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1, v0}, Lq6/X;->El(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final varargs a8(Ljava/lang/String;[I)V
    .locals 7

    array-length v0, p2

    new-array v0, v0, [I

    iput-object p2, p0, Lq6/X;->b:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_8

    aget v3, p2, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown mutex element"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    const/16 v3, 0x95

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_1
    invoke-static {v4}, Lq6/X;->Vg(Z)V

    const/16 v3, 0x91

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v5, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v5}, Lu2/Q;->E(I)I

    move-result v3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/I;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/I;

    invoke-virtual {v5, v3}, Lr2/I;->m(I)Z

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, LS6/e;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LV9/l3;

    const/16 v6, 0x8

    invoke-direct {v5, p0, v6}, LV9/l3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget v3, Lcom/android/camera/module/Y;->a:I

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/e;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/e;

    const-string v6, "pref_ambient_lighting_none"

    invoke-virtual {v5, v3, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v4}, Lx4/G;->a(Z)V

    :goto_1
    const/16 v3, 0x63

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_3
    invoke-static {v4}, Lq6/X;->Af(Z)V

    const/16 v3, 0xd

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_4
    invoke-static {v4}, Lq6/X;->Xg(Z)V

    const/16 v3, 0x2c

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_5
    const/16 v3, 0x4a

    aput v3, v0, v2

    goto/16 :goto_3

    :sswitch_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v6, Lv2/k0;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/k0;

    invoke-virtual {v3}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, v3, Lv2/k0;->d0:Z

    if-ne v6, v4, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v4, v3, Lv2/k0;->d0:Z

    :cond_2
    :goto_2
    aput v5, v0, v2

    goto/16 :goto_3

    :sswitch_7
    invoke-virtual {p0, v4, v4}, Lq6/X;->c4(IZ)V

    const/16 v3, 0x31

    aput v3, v0, v2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-ne v4, v5, :cond_7

    move-object v4, v3

    check-cast v4, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v5

    invoke-interface {v5}, Lj6/j;->V()Lj9/a;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lxm/o;

    move-result-object v5

    iget-object v5, v5, Lxm/o;->l:Landroid/view/Surface;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v3

    invoke-interface {v3}, Lj6/j;->V()Lj9/a;

    move-result-object v3

    invoke-virtual {v3}, Lj9/a;->m1()V

    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v3, v5, :cond_4

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sSDKScheduler:Lio/reactivex/v;

    new-instance v5, LAs/b;

    const/4 v6, 0x7

    invoke-direct {v5, v4, v6}, LAs/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v5}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/features/mode/capture/CaptureModule;->getLiveShotManager()Lxm/o;

    move-result-object v3

    invoke-virtual {v3, v1}, Lxm/o;->g5(Z)V

    goto :goto_3

    :sswitch_8
    invoke-static {v4}, Lq6/X;->pf(Z)V

    const/16 v3, 0x24

    aput v3, v0, v2

    goto :goto_3

    :sswitch_9
    invoke-static {v4}, Lq6/X;->qg(Z)V

    aput v5, v0, v2

    goto :goto_3

    :sswitch_a
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Lr2/z;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/z;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v5

    invoke-virtual {v3, v5}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v5

    invoke-virtual {v3, v5}, Lr2/z;->u(I)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Lq6/X;->N1(Z)V

    :cond_6
    const/16 v3, 0xb

    aput v3, v0, v2

    goto :goto_3

    :sswitch_b
    invoke-static {p1, v4}, Lq6/X;->Kg(Ljava/lang/String;Z)V

    const/16 v3, 0xa

    aput v3, v0, v2

    goto :goto_3

    :sswitch_c
    invoke-virtual {p0, v4}, Lq6/X;->db(Z)V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/x;

    const/16 p2, 0xb

    invoke-direct {p1, v0, p2}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_c
        0xc1 -> :sswitch_b
        0xc2 -> :sswitch_a
        0xc4 -> :sswitch_9
        0xc9 -> :sswitch_8
        0xce -> :sswitch_7
        0xd4 -> :sswitch_6
        0xe3 -> :sswitch_5
        0xed -> :sswitch_4
        0xef -> :sswitch_3
        0xf6 -> :sswitch_2
        0x10b -> :sswitch_1
        0xb21 -> :sswitch_0
    .end sparse-switch
.end method

.method public final aa()Z
    .locals 0

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final af(Z)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAIWatermark"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/a;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xcd

    if-ne v0, v6, :cond_8

    invoke-virtual {v2, v4}, Lv2/a;->s(Z)V

    invoke-virtual {v2}, Lv2/a;->p()LN1/n;

    move-result-object p1

    if-ne v0, v6, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v1, 0x3

    if-eqz p1, :cond_3

    iget v0, p1, LN1/n;->b:I

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v0

    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    invoke-static {}, LQ6/b;->b()LQ6/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, LQ6/b;->r5()V

    :cond_5
    invoke-virtual {p0, v4}, Lq6/X;->Bp(Z)V

    invoke-virtual {p0}, Lq6/X;->Hp()V

    goto :goto_2

    :cond_6
    invoke-static {}, LQ6/a;->b()LQ6/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, LQ6/a;->l8(LN1/n;)V

    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Lq6/X;->e3(I)V

    return-void

    :cond_8
    invoke-virtual {v2, v0}, Lv2/a;->n(I)Z

    move-result v6

    iget v7, v2, Lv2/a;->h:I

    if-ne v7, v1, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    if-nez v1, :cond_a

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/Q;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/Q;

    invoke-virtual {v1, v0}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "4x3"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v3

    if-eqz v1, :cond_b

    if-nez v3, :cond_b

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_a

    goto :goto_4

    :cond_a
    move v0, v5

    goto :goto_5

    :cond_b
    :goto_4
    move v0, v4

    :goto_5
    if-eqz v6, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Lq6/X;->Bp(Z)V

    invoke-virtual {v2, v5}, Lv2/a;->s(Z)V

    return-void

    :cond_c
    if-eqz v6, :cond_d

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "ai_watermark"

    const v3, 0x7f140215

    invoke-interface {v0, v5, v3, v1}, LQ6/l1;->L1(IILjava/lang/String;)V

    :cond_d
    if-nez p1, :cond_f

    iget-boolean p1, v2, Lv2/a;->e:Z

    if-eqz v6, :cond_f

    if-eqz p1, :cond_f

    invoke-static {}, LQ6/b;->b()LQ6/b;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, LQ6/b;->r5()V

    :cond_e
    invoke-virtual {p0, v4}, Lq6/X;->Bp(Z)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final ag(F)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/j;->P0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->y9()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lq6/X;->E9()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lq6/I;

    invoke-direct {v0, p1}, Lq6/I;-><init>(F)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final al(Landroid/content/Context;)Lmiuix/appcompat/app/h;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lq6/X;->Rk(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/h;

    move-result-object p0

    return-object p0
.end method

.method public final b4()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportHandGesture"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-class v1, Lu2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu2/w;

    iget-boolean v0, v0, Lu2/w;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "hand_gesture_desc"

    const/4 v2, 0x0

    const v3, 0x7f1407df

    invoke-interface {p0, v2, v3, v0}, LQ6/l1;->Rf(IILjava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/w;

    iput-boolean v2, p0, Lu2/w;->b:Z

    :cond_0
    return-void
.end method

.method public final b5()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureLiveVVMode"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/L0;->b()LQ6/L0;

    move-result-object v0

    const-string/jumbo v1, "vlog2"

    invoke-interface {v0, v1}, LQ6/L0;->A3(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ConfigChangeImpl"

    const-string v1, "configIntoWorkspace"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->nn()Landroidx/fragment/app/w;

    move-result-object v0

    const v1, 0xfffc

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->E(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/microfilm/vlog/vv/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/xiaomi/microfilm/vlog/vv/j;->c:Lcom/android/camera/fragment/j;

    iget-object v0, v0, Lcom/xiaomi/microfilm/vlog/vv/j;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/j;->k(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/microfilm/vlog/vv/k;

    invoke-virtual {v0}, Lcom/xiaomi/microfilm/vlog/vv/k;->D()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    const-class v2, Lcom/xiaomi/microfilm/vlog/vv/VVWorkspaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    sget-object v0, LOh/c;->e:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public final b8()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvType"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/m;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/m;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lr2/m;->q(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr2/m;->getDisableReasonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/K;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LV9/K;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lr2/m;->n()Lcom/android/camera/data/data/d;

    move-result-object p0

    if-eqz p0, :cond_4

    iget p0, p0, Lcom/android/camera/data/data/d;->k:I

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    :goto_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lh9/F;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lh9/F;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bn()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMimoji4"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->h1()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v1, LFs/A;

    invoke-virtual {v0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LFs/A;->a(Ljava/lang/Integer;)Lcom/xiaomi/mimoji/common/bean/MimojiItem;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mimoji/common/bean/AvatarItem;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    const/16 v3, 0xb8

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v2, 0xcb

    if-ne p0, v2, :cond_3

    :cond_1
    invoke-virtual {v0}, LFs/A;->g()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/mimoji/common/bean/AvatarItem;->Z()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE3/c;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LE3/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c0(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isLowbatteryCutoff"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lq6/L;

    invoke-direct {v0, p1}, Lq6/L;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLowBatteryNotification isAlive="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",moduleExist="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c4(IZ)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportLiveShot"
        type = 0x0
    .end annotation

    invoke-static {}, Lvr/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lq6/t;

    invoke-direct {v0, p1, p2}, Lq6/t;-><init>(IZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c7()V
    .locals 9

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/y0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/y0;

    invoke-virtual {v1, v0}, Lv2/y0;->n(I)Lz8/e;

    move-result-object v0

    invoke-virtual {v1}, Lv2/y0;->m()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaomi/microfilm/vlog/vv/v;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ltz v1, :cond_a

    if-lt v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    iget v5, p0, Lq6/X;->c:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v5, :cond_6

    iput v1, p0, Lq6/X;->c:I

    sget-object v5, Lwu/a;->d:Lwu/a$g;

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lq6/X;->d:Z

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, LC3/k;

    const/4 v8, 0x5

    invoke-direct {v3, v8}, LC3/k;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9/e;

    invoke-static {p0}, Lj9/f;->O4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lwu/a$k;

    sget-object v3, Lwu/a;->g:Lwu/a$j;

    invoke-direct {p0, v5, v3}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lwu/a$k;->c:Lwu/a$k;

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lq6/X;->d:Z

    if-nez v3, :cond_5

    iput-boolean v6, p0, Lq6/X;->d:Z

    new-instance p0, Lwu/a$k;

    sget-object v3, Lwu/a;->c:Lwu/a$f;

    invoke-direct {p0, v5, v3}, Lwu/a$k;-><init>(Lwu/a;Lwu/a;)V

    goto :goto_0

    :cond_5
    move-object p0, v7

    :goto_0
    if-eqz p0, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v4, p0}, Lcom/android/camera/module/W;->updateColorSpace(Lwu/a$k;)V

    :cond_6
    if-nez v1, :cond_7

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0, v7, v7}, Lcom/xiaomi/camera/effect/EffectController;->c0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p0

    sget v0, Li3/b;->N:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    goto :goto_3

    :cond_7
    sget p0, Lz8/e;->a:I

    sub-int v3, v2, p0

    if-lt v1, v3, :cond_8

    invoke-static {}, Lz8/e;->e()Ljava/util/ArrayList;

    move-result-object v0

    sub-int/2addr p0, v2

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/b;

    iget p0, p0, Li3/b;->j:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-static {v6, p0}, Li3/b;->c(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/effect/EffectController;->a0(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Lz8/e;->d(I)Lz8/f;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object v0, p0, Lz8/f;->d:Lz8/f$a;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lz8/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lz8/f;->d:Lz8/f$a;

    iget-object p0, p0, Lz8/f$a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object p0, v7

    :goto_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v7, p0}, Lcom/xiaomi/camera/effect/EffectController;->c0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    :goto_2
    const-string/jumbo p0, "setProVideoLogLut index is "

    const-string v0, ", but mVideoLogLutWorkSpace is "

    invoke-static {v1, v2, p0, v0}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final ce()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/h;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, LF1/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9/e;

    invoke-static {v0}, Lj9/f;->e5(Lj9/e;)Z

    move-result v0

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    const-class v2, Lv2/k0;

    const/16 v3, 0xa3

    if-ne v1, v3, :cond_0

    sget-object v1, Lo9/a;->a:Lo9/b;

    invoke-interface {v1}, Lo9/b;->e()Lp9/t;

    move-result-object v1

    invoke-interface {v1}, Lp9/t;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/android/camera/data/data/m;->m0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/C1;

    const/16 v3, 0xe

    invoke-direct {v1, p0, v3}, LF1/C1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    invoke-virtual {p0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/k0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/k0;->c0:Z

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-object v1, v0, Lv2/k0;->f0:Ljava/util/List;

    iget v2, v0, Lv2/k0;->j:I

    iget-object v0, v0, Lv2/k0;->c:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lq6/X;->ja(ILjava/util/List;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LC4/p;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final ch()V
    .locals 5

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/n0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n0;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-virtual {v0, v1}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/c;->getComponentDataItem(ILjava/lang/String;)Lcom/android/camera/data/data/d;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LLu/d;

    invoke-direct {v3, v0, v1}, LLu/d;-><init>(Lv2/n0;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/E1;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, LF1/E1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/J;

    invoke-direct {v3, v0, v1}, Lq6/J;-><init>(Lv2/n0;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/d;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/K;

    invoke-direct {v1, p0}, Lq6/K;-><init>(Lq6/X;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lq6/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final cj(I)V
    .locals 8

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/q;

    invoke-direct {v1, p1}, Lq6/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lr2/i1;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_e

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    aget v0, v0, v1

    const/16 v4, 0xb0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0xe5

    const/16 v6, 0xd1

    if-ne p1, v6, :cond_3

    if-eq v0, v5, :cond_6

    :cond_3
    if-ne p1, v5, :cond_4

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0xce

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_5

    const/16 v5, 0xfe

    if-eq v0, v5, :cond_7

    invoke-static {v0}, Lr2/i1;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p1, v7, :cond_a

    :cond_6
    :goto_0
    move v0, v4

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v3

    goto :goto_1

    :cond_8
    invoke-static {}, Lvr/l;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p1, v6, :cond_9

    goto :goto_0

    :cond_9
    if-ne p1, v5, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    const/4 v2, 0x3

    if-nez v1, :cond_c

    if-eq v0, v4, :cond_b

    invoke-virtual {p0, v0, v2}, Lq6/X;->q(II)V

    :cond_b
    invoke-virtual {p0, p1, v3}, Lq6/X;->q(II)V

    return-void

    :cond_c
    invoke-virtual {p0, p1, v3}, Lq6/X;->q(II)V

    if-eq v0, v4, :cond_d

    invoke-virtual {p0, v0, v2}, Lq6/X;->q(II)V

    :cond_d
    :goto_2
    return-void

    :cond_e
    invoke-virtual {p0, p1, v3}, Lq6/X;->q(II)V

    return-void
.end method

.method public final cm(I)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedPeakingMF"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->h0(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, p1, :cond_3

    xor-int/lit8 p1, v1, 0x1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/x;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/x;

    if-nez v1, :cond_1

    const-string v3, "ON"

    goto :goto_0

    :cond_1
    const-string v3, "OFF"

    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xc7

    const-string v4, "manual_focus_peak"

    invoke-static {v2, v4, v0, v3}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    if-nez v1, :cond_2

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/K;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LEs/K;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    move v1, p1

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/m;->m()I

    move-result p1

    invoke-static {p1}, Ljm/b;->d(I)I

    move-result p1

    const/4 v0, 0x4

    if-eq v0, p1, :cond_4

    const/4 v2, 0x3

    if-ne v2, p1, :cond_5

    :cond_4
    const/4 v1, 0x0

    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    iput-boolean v1, v2, Lcom/xiaomi/camera/effect/EffectController;->n:Z

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/camera/effect/EffectController;->R([I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configFocusPeakSwitch: switchOn = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " finalSwitchOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " focusMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/w;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LF1/w;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/x;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LF1/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/camera/features/mode/portrait/f;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v0}, Lcom/android/camera/features/mode/portrait/f;-><init>(ZI)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/l;

    const/16 v0, 0x13

    invoke-direct {p1, v0}, LCs/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/n;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LCs/n;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final cp()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH3/m;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LH3/m;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d5(II)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "configRotationChange: show="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", degree="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/16 v3, 0x5a

    if-eq p2, v3, :cond_3

    const/16 v3, 0xb4

    if-eq p2, v3, :cond_0

    const/16 v3, 0x10e

    if-eq p2, v3, :cond_3

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0, v2, v2}, LQ6/s0;->Yi(ZZ)V

    :cond_1
    if-eqz v0, :cond_6

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {v0, v1, v2}, LQ6/s0;->Yi(ZZ)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0, v2, v2}, LQ6/s0;->Yi(ZZ)V

    :cond_4
    if-eqz p0, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-interface {p0, v1, v2}, LQ6/s0;->Yi(ZZ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final d7(I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPortraitRepair"
        type = 0x2
    .end annotation

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->W0()Z

    move-result v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/J;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/J;

    const-string v3, "OFF"

    const-string v4, "2"

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_2
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LD8/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LD8/h;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "portrait_repair"

    invoke-static {p1, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v5}, Lr2/J;->toSwitch(IZ)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/E;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lq6/X;->a0()V

    :cond_5
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LEs/r;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LEs/r;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lq6/X;->Lm(IZ)V

    :goto_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/K3;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, LF1/K3;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final db(Z)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportCvType"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget v0, p0, Lu2/Q;->u:I

    invoke-virtual {p0, v0}, Lu2/Q;->E(I)I

    move-result p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/m;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/m;

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->F3()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lr2/m;->q(I)Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Lr2/m;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/p;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LEs/p;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v0, p0, p1}, Lr2/m;->r(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e3(I)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportTimerBurst"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    const-class v0, Lt2/d;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt2/d;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "ConfigChangeImpl"

    if-ne p1, v2, :cond_0

    if-eqz v1, :cond_0

    const-string p1, "configTimerBurst: MUTEX false"

    invoke-static {v3, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p1

    const-class v2, Lw7/c;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw7/c;

    const-string v2, "OFF"

    invoke-virtual {p0, v0, v2}, Lt2/d;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/v;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, LCs/v;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/H1;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, LF1/H1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-string v0, "pref_camera_timer_burst"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {p1}, Lw7/c;->e()V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG3/h;

    const/16 v0, 0x14

    invoke-direct {p1, v0}, LG3/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/x;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, LC4/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "configTimerBurst: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF4/e;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LF4/e;-><init>(IB)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final e8()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v1, 0xb7

    if-eq p0, v1, :cond_2

    const/16 v1, 0xbe

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa1

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lt2/a;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/a;

    invoke-virtual {v1, p0}, Lt2/a;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LQh/c;->pref_live_duration_prompt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "live_duration"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p0}, LQ6/l1;->rl(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final e9()V
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->Q()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, LK2/e;->z()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string v3, "pref_camera_manual_description_tip"

    invoke-virtual {p0, v3, v0}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa7

    const/16 v5, 0xa9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    const/16 v4, 0xe3

    if-eq v3, v4, :cond_2

    const/16 v4, 0xe1

    if-eq v3, v4, :cond_2

    move p0, v0

    :cond_2
    if-ne v3, v5, :cond_3

    invoke-virtual {v1}, LJe/c;->L0()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, LJe/c;->M0()Z

    move-result v1

    if-nez v1, :cond_3

    move p0, v0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/E;->x()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    move p0, v3

    :cond_4
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-static {v1}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr p0, v1

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/u1;

    invoke-direct {v2, v0}, LF1/u1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v2

    if-eqz v2, :cond_6

    xor-int/2addr v1, v3

    and-int/2addr p0, v1

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    :goto_0
    invoke-interface {v2, v0}, LQ6/l1;->lq(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final ea()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioTrack"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/W2;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, LF1/W2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f0;

    invoke-virtual {v1, v0}, Lr2/f0;->r(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    :goto_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LU4/e;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3, p0}, LU4/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final eq()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/data/w;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->Nd(I)V

    :cond_0
    return-void
.end method

.method public final f3()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH4/v;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, LH4/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final f4()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v1

    const-string v2, "configLofic: "

    const-string v3, "ConfigChangeImpl"

    invoke-static {v2, v3, v1}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/f0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v5, Lv2/f0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/Z;

    invoke-virtual {v4, v0}, Lv2/Z;->isSwitchOn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Lv2/Z;->o(I)V

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_0
    invoke-static {v0, v2}, Lcom/android/camera/data/data/E;->E0(IZ)V

    invoke-static {v0}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_1
    invoke-static {v2}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    :cond_2
    if-eqz v1, :cond_3

    const-string v1, "on"

    goto :goto_0

    :cond_3
    const-string v1, "auto"

    :goto_0
    const-string v3, "click"

    const-string v4, "lofic_hdr"

    invoke-static {v1, v4, v3}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LC3/d;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, LC3/d;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, v2}, Lq6/X;->Lm(IZ)V

    return-void
.end method

.method public final f6()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xd6

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->P()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->G0(Lj9/e;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/data/data/r;->j(Lj9/e;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/f0;

    invoke-virtual {v1, v0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "8,24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/u1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LF1/u1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140319

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "super_night_video_4k_desc"

    invoke-interface {v0, v1, p0}, LQ6/l1;->ue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final f8(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configVideoSubQuality: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigChangeImpl"

    invoke-static {v5, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v4

    check-cast v4, LA2/a$a;

    iget-object v4, v4, LA2/a$a;->b:Lu2/Q;

    iget v5, v4, Lu2/Q;->u:I

    invoke-virtual {v4, v5}, Lu2/Q;->E(I)I

    move-result v5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/f0;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/f0;

    const-class v8, Ls2/c;

    invoke-virtual {v6, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls2/c;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v9

    const-class v10, Lv2/f0;

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/f0;

    invoke-virtual {v6}, Ls2/c;->p()Z

    move-result v11

    invoke-static {v5}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v12

    invoke-virtual {v9, v5}, Lv2/Z;->isSwitchOn(I)Z

    move-result v13

    const/4 v14, 0x0

    invoke-static {v5, v14}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v15

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v17

    iget-object v2, v7, Lr2/f0;->g:Lr2/h0;

    iget-object v14, v7, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {v14, v5}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lr2/j1;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v5, v1, v14}, LOh/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v19, v4

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lcom/android/camera/data/data/j;->M1(IZ)V

    goto :goto_1

    :cond_1
    move-object/from16 v19, v4

    :goto_1
    invoke-virtual {v7, v5}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v1}, Lr2/h0;->setComponentValue(ILjava/lang/String;)V

    const-string v2, "8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v21, v11

    const-string v11, "6"

    if-eqz v20, :cond_a

    const-string v8, "120"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v5}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    move/from16 v20, v12

    const-class v12, Lr2/Q;

    invoke-virtual {v8, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/Q;

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-virtual {v8, v5}, Lr2/Q;->p(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v5, v12}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    move/from16 v20, v12

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->t0(IZ)V

    :goto_2
    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->E0(IZ)V

    goto :goto_3

    :cond_3
    move/from16 v20, v12

    :goto_3
    sget-object v8, LJe/c$b;->a:LJe/c;

    invoke-virtual {v8}, LJe/c;->a0()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v12

    invoke-virtual {v12, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv2/Z;

    if-eqz v10, :cond_4

    invoke-virtual {v10, v5}, Lv2/Z;->isSwitchOn(I)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v10, v5}, Lv2/Z;->o(I)V

    :cond_4
    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v10

    new-instance v12, LH4/N;

    move/from16 v22, v13

    const/4 v13, 0x4

    invoke-direct {v12, v13}, LH4/N;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj9/e;

    const/16 v12, 0xe3

    if-ne v5, v12, :cond_5

    invoke-static {v10}, Lj9/f;->u2(Lj9/e;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    invoke-static {v10}, Lj9/f;->c2(Lj9/e;)Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/data/data/j;->N1(I)V

    :cond_6
    invoke-virtual {v0}, Lq6/X;->D8()V

    iget-object v8, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T1()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/camera/module/Y;->k()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, LWh/a;->g()LWh/a;

    invoke-static {v5}, Lcom/android/camera/data/data/j;->G(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v8}, LWh/a;->c()V

    :cond_8
    :goto_4
    move-object/from16 v26, v4

    move-object/from16 v24, v9

    move/from16 v23, v15

    :cond_9
    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_a
    move/from16 v20, v12

    move/from16 v22, v13

    const-string v12, "3001"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v12

    if-nez v12, :cond_c

    :goto_6
    goto :goto_4

    :cond_c
    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v13

    check-cast v13, LA2/a$a;

    iget-object v13, v13, LA2/a$a;->b:Lu2/Q;

    move/from16 v23, v15

    iget v15, v13, Lu2/Q;->u:I

    invoke-virtual {v13, v15}, Lu2/Q;->E(I)I

    move-result v15

    invoke-static {}, Lq6/X;->l0()Z

    move-result v24

    if-eqz v24, :cond_d

    iget v15, v13, Lu2/Q;->u:I

    invoke-virtual {v13, v15}, Lu2/Q;->E(I)I

    move-result v15

    :cond_d
    sget-boolean v13, LJe/c;->k:Z

    sget-object v13, LJe/c$b;->a:LJe/c;

    move-object/from16 v24, v9

    iget-object v9, v13, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C6()Z

    move-result v9

    if-nez v9, :cond_e

    const/4 v9, 0x0

    invoke-static {v15, v9}, Lcom/android/camera/data/data/E;->t0(IZ)V

    :cond_e
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/module/W;

    invoke-interface {v9}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v9

    invoke-interface {v9}, Lj6/j;->c()Lj9/e;

    move-result-object v9

    invoke-static {v9}, Lj9/f;->k(Lj9/e;)I

    move-result v9

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v25

    move-object/from16 v26, v4

    invoke-virtual/range {v25 .. v25}, Lu6/f;->v()I

    move-result v4

    iget-object v13, v13, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    if-ne v9, v4, :cond_12

    invoke-static {v15}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v9

    if-gez v4, :cond_f

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9}, Lu6/f;->k()I

    move-result v9

    invoke-virtual {v4, v9}, Lu6/f;->O(I)Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->U0(Lj9/e;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->y5()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I5()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lur/i;->i()F

    move-result v4

    goto :goto_7

    :cond_10
    invoke-static {}, Lur/i;->h()F

    move-result v4

    :goto_7
    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->I5()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9}, Lu6/f;->M()I

    move-result v9

    goto :goto_8

    :cond_11
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9}, Lu6/f;->r()I

    move-result v9

    :goto_8
    invoke-static {v15}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v25

    cmpl-float v4, v25, v4

    if-ltz v4, :cond_14

    const/4 v4, -0x1

    if-eq v9, v4, :cond_14

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4, v9}, Lu6/f;->O(I)Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->U0(Lj9/e;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    goto :goto_9

    :cond_12
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->U0(Lj9/e;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    const/16 v4, 0xb4

    if-eq v15, v4, :cond_13

    const/16 v4, 0xa4

    if-ne v15, v4, :cond_14

    :cond_13
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v9, Lr2/z0;

    invoke-virtual {v4, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/z0;

    const-string/jumbo v9, "wide"

    invoke-virtual {v4, v15, v9}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_14
    :goto_9
    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-virtual {v0}, Lq6/X;->D8()V

    invoke-static {}, Lq6/X;->dd()V

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {v15, v4}, Lcom/android/camera/data/data/E;->r0(IZ)V

    invoke-static {v15, v4}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v9

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/f0;

    invoke-virtual {v9, v15}, Lv2/Z;->o(I)V

    invoke-static {v15, v4}, Lcom/android/camera/data/data/E;->E0(IZ)V

    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v4

    invoke-virtual {v4}, Lu6/f;->P()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->c2(Lj9/e;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls2/c;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ls2/c;->u(Z)V

    goto :goto_a

    :cond_15
    const/4 v9, 0x0

    :goto_a
    const v4, 0x7f140f38

    invoke-interface {v12, v9, v4}, LQ6/l1;->Lf(II)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v26, v4

    move-object/from16 v24, v9

    move/from16 v23, v15

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {v5}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {}, LB2/c;->j()I

    move-result v4

    invoke-static {v4}, Lr2/f0;->B(I)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/f0;

    invoke-virtual {v4, v5}, Lv2/Z;->o(I)V

    :cond_17
    sget-object v4, LJe/c$b;->a:LJe/c;

    iget-object v4, v4, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v4}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C5()Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v7, Lr2/f0;->d:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_18

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_5

    :cond_18
    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-virtual {v0}, Lq6/X;->D8()V

    goto/16 :goto_5

    :cond_19
    const-string v4, "5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->F0(IZ)V

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v0, v5, v12}, Lq6/X;->p5(IZ)V

    :cond_1a
    invoke-virtual {v0, v14, v1}, Lq6/X;->ic(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v5, v1, v14, v4}, Lq6/X;->Fc(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v8, Lv2/X;

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/X;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const/16 v8, 0x1e

    goto :goto_c

    :cond_1b
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v8}, Lr2/j1;->g(II)I

    move-result v8

    invoke-static {v5}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v9

    if-eqz v9, :cond_1c

    if-eqz v4, :cond_1c

    invoke-virtual {v4, v8}, Lv2/X;->p(I)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/E;->y0(IZ)V

    :cond_1c
    invoke-static {v5}, Lcom/android/camera/data/data/E;->K(I)Z

    move-result v9

    if-eqz v9, :cond_1f

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v8}, Lv2/X;->p(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v4, 0xb4

    if-eq v5, v4, :cond_1d

    goto :goto_d

    :cond_1d
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v8, Lv2/Y;

    invoke-virtual {v4, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/Y;

    if-nez v4, :cond_1e

    goto :goto_d

    :cond_1e
    const-string v8, "OFF"

    invoke-virtual {v4, v5, v8}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_1f
    :goto_d
    iget v4, v6, Ls2/c;->b:I

    invoke-virtual {v6, v4}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "ON"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/K1;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, LF1/K1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LR3/c;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, LR3/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual/range {v19 .. v19}, Lu2/Q;->C()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/e;

    invoke-virtual {v6, v5, v2, v1}, Ls2/c;->t(IILj9/e;)V

    :cond_21
    invoke-static {}, Lcom/android/camera/data/data/m;->c()V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lq6/W;

    invoke-direct {v2, v0, v5, v7, v3}, Lq6/W;-><init>(Lq6/X;ILr2/f0;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v7, v5}, Lr2/f0;->r(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v7, v5}, Lr2/f0;->u(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    move-object/from16 v2, v26

    goto :goto_f

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Lr2/f0;->u(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :goto_f
    invoke-virtual {v0, v5, v2, v1, v7}, Lq6/X;->X(ILjava/lang/String;Ljava/lang/String;Lr2/f0;)V

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v12}, Lq6/X;->Lm(IZ)V

    if-eqz v21, :cond_23

    invoke-virtual {v6}, Ls2/c;->p()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "dolly_mutex"

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_23
    const/4 v4, 0x1

    :goto_10
    if-eqz v20, :cond_24

    invoke-static {v5}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "super_eis_mutex"

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_24
    if-eqz v22, :cond_25

    move-object/from16 v9, v24

    invoke-virtual {v9, v5}, Lv2/Z;->isSwitchOn(I)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "macro_mutex"

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_25
    if-eqz v23, :cond_26

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "beauty_mutex"

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_26
    if-eqz v16, :cond_28

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_11

    :cond_27
    const-string/jumbo v0, "video_filter_mutex"

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_28
    :goto_11
    if-eqz v17, :cond_29

    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "video_bokeh_pro_mutex"

    invoke-static {v0, v4}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_29
    return-void
.end method

.method public final findBestWatermarkItem(I)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAIWatermark"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lo5/K;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lo5/K;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final fk()V
    .locals 2

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, Lg5/Y;

    invoke-virtual {p0, v0}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, "getAttachProtocol2(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LEs/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LEs/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final fn(III)V
    .locals 3

    invoke-static {p1}, Lcom/android/camera/data/data/E;->u0(I)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFlare: flare = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->E()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/camera/data/data/w;->X0(IZ)V

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v2, Lr2/I0;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/I0;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    invoke-virtual {p1, v2}, Lr2/I0;->reset(I)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/W;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object p1

    invoke-interface {p1}, Lj6/j;->c()Lj9/e;

    move-result-object p1

    invoke-static {p1}, Lj9/f;->u2(Lj9/e;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/E;->a(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq6/X;->N9(F)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/W;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p1

    const/16 v2, 0xe7

    invoke-interface {p1, v2}, Lj6/i;->onShineChanged(I)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/W;

    invoke-interface {p1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    :cond_4
    if-eq p2, p3, :cond_5

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, p1, v1}, Lq6/X;->Lm(IZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final g5()V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->U(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/H;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/H;

    invoke-virtual {v2, p0, v1}, Lr2/H;->toSwitch(IZ)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    sget-object v2, LN6/h$a;->a:LN6/h;

    const-class v3, LQ6/a1;

    invoke-virtual {v2, v3}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v2

    check-cast v2, LQ6/a1;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LC3/c;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, LC3/c;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {v2, v1}, LQ6/a1;->Rl(Z)V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    const v3, 0x7f141028

    const-string v4, "motion_detection"

    invoke-interface {p0, v0, v3, v4}, LQ6/l1;->L1(IILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setMotionDetectionState:    "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    iget v0, p0, Lu2/Q;->u:I

    invoke-virtual {p0, v0}, Lu2/Q;->E(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->U(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "click"

    const-string v1, "attr_motion_detection"

    invoke-static {p0, v1, v0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g7(I)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportUltraWideBokeh"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-string v2, "pref_ultra_wide_bokeh_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const v6, 0x7f14142f

    const-string v7, "ConfigChangeImpl"

    const-string/jumbo v8, "ultra_wide_bokeh"

    if-eq p1, v5, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p1, "configSwitchUltraWideBokeh: MUTEX false"

    invoke-static {v7, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v2, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    invoke-interface {v0, v3, v6, v8}, LQ6/l1;->L1(IILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LEs/p;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LEs/p;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v9, "configSwitchUltraWideBokeh: "

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v7, "M_portrait_"

    const-string v9, "attr_whole_body"

    invoke-static {p1, v7, v9}, Liq/d;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v2, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    invoke-interface {v0, v3, v6, v8}, LQ6/l1;->L1(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v8, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v2, v5}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    const/16 p1, 0x8

    const v1, 0x7f141430

    invoke-interface {v0, p1, v1, v8}, LQ6/l1;->L1(IILjava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lq6/X;->a0()V

    :cond_4
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LEs/o;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LEs/o;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lq6/X;->Lm(IZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final g8(ILjava/lang/String;)V
    .locals 12

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/n0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/n0;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LL9/k;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0, v3}, LL9/k;-><init>(ILcom/android/camera/data/data/c;Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-static {v1}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p1

    invoke-virtual {v0, p1}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lv2/n0;->e:Ljava/lang/String;

    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LEs/l;

    const/16 v1, 0x13

    invoke-direct {p2, v1}, LEs/l;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LN4/b;

    const/16 v1, 0xc

    invoke-direct {p2, v1}, LN4/b;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LL9/k;

    const/4 v1, 0x1

    invoke-direct {p2, v1, v0, v2}, LL9/k;-><init>(ILcom/android/camera/data/data/c;Z)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LL9/k;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0, v2}, LL9/k;-><init>(ILcom/android/camera/data/data/c;Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_3
    iget-boolean p1, v0, Lv2/n0;->d:Z

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/f0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f0;

    const-string v6, ""

    if-nez v4, :cond_4

    move-object v7, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-static {v1}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v9, Lv2/f0;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/Z;

    invoke-virtual {v8, v1}, Lv2/Z;->isSwitchOn(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8, v1}, Lv2/Z;->o(I)V

    move p1, v3

    :cond_5
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->K()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    const-string/jumbo p1, "ultra_pixel_mutex"

    invoke-static {p1, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    move p1, v3

    :cond_7
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    const-class v9, Lv2/s0;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/s0;

    const/16 v9, 0xa0

    if-eqz v8, :cond_8

    iget-boolean v10, v8, Lv2/s0;->a:Z

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/camera/data/data/j;->c1()Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "OFF"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LFn/x;

    const/16 v11, 0xb

    invoke-direct {v10, v11}, LFn/x;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v10, LE3/c;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, LE3/c;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_8
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    const-class v10, Lr2/n;

    invoke-virtual {v8, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/n;

    if-eqz v8, :cond_9

    iget-boolean v10, v8, Lr2/n;->a:Z

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/j;->s0()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string/jumbo v10, "simple"

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LE3/l;

    const/16 v10, 0x11

    invoke-direct {v9, v10}, LE3/l;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_9
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    const-class v9, Lr2/T;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/T;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "off"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v8, v1, v10}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, LD4/b;

    const/16 v11, 0x13

    invoke-direct {v10, v8, v11}, LD4/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    invoke-virtual {v8, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/f0;

    invoke-virtual {v5, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5, v1}, Lv2/n0;->o(II)Z

    move-result v5

    if-eqz v5, :cond_b

    move p1, v3

    :cond_b
    invoke-virtual {v0, v1}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v0, v1, v2}, Lv2/n0;->p(II)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_1

    :cond_c
    move v8, v2

    goto :goto_2

    :cond_d
    :goto_1
    move v8, v3

    :goto_2
    invoke-static {v1}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v9

    if-eq v8, v9, :cond_e

    move p1, v3

    :cond_e
    invoke-virtual {p0, v1, v8}, Lq6/X;->ke(IZ)V

    invoke-static {v1, v5, p2, v3}, Lq6/X;->L(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_3

    :cond_f
    invoke-static {v1}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result p2

    if-eqz p2, :cond_10

    move p1, v3

    :cond_10
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p2

    invoke-static {p2, v2}, Lcom/android/camera/data/data/E;->y0(IZ)V

    const/4 p2, 0x0

    invoke-static {v1, p2, p2, v2}, Lq6/X;->L(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_11

    move p1, v3

    :cond_11
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p2

    invoke-virtual {p2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr2/f0;

    invoke-virtual {p2, v1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    if-eqz v5, :cond_12

    if-eqz p2, :cond_12

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v5}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v5, v1}, Lv2/n0;->o(II)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, p2, v1}, Lv2/n0;->o(II)Z

    move-result p2

    if-nez p2, :cond_12

    :goto_3
    move p1, v3

    :cond_12
    if-eqz p1, :cond_13

    invoke-virtual {p0, v1, v2}, Lq6/X;->Lm(IZ)V

    goto :goto_4

    :cond_13
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LL9/k;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0, v2}, LL9/k;-><init>(ILcom/android/camera/data/data/c;Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_4
    if-nez v4, :cond_14

    goto :goto_5

    :cond_14
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "quality_fps_mutex"

    invoke-static {p0, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_15
    :goto_6
    return-void
.end method

.method public final gc(IZ)V
    .locals 5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/I;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr2/I;->n(IZ)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Lcom/android/camera/data/data/E;->r0(IZ)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LCs/l;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, LCs/l;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/l1;->Qh()V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {p1, v1}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LCs/l;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, LCs/l;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LEs/G;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LEs/G;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, LQ6/l1;->Qh()V

    :cond_1
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LCs/d;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LCs/d;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k0;

    iget-boolean v2, v2, Lv2/k0;->s:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lq6/X;->N1(Z)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, LF1/y2;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LF1/y2;-><init>(I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v0, :cond_4

    invoke-interface {v0}, LQ6/l1;->Qh()V

    :cond_4
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/f0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/Z;

    invoke-virtual {p0, p1}, Lv2/Z;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-virtual {p0, p1}, Lv2/Z;->o(I)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/f;

    const/16 v2, 0x15

    invoke-direct {v0, v2}, LCs/f;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    invoke-static {p1}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-static {p1, v1}, Lcom/android/camera/data/data/w;->X0(IZ)V

    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->l0()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lcom/android/camera/data/data/E;->L(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N1(I)V

    :cond_6
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LG3/h;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LG3/h;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final ge()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, LK2/b;->b()Z

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    const-class v2, Lcom/android/camera/fragment/music/LiveMusicActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lvr/m;->q(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    sget-object v0, LOh/c;->j:LOh/c;

    invoke-virtual {p0, v0}, Lcom/android/camera/a;->G2(LOh/c;)V

    return-void
.end method

.method public final h0()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->W(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "closeOpenGate "

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/Q;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lq6/X;->x5(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final h5()V
    .locals 6

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/z;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z;

    invoke-virtual {v1, v0}, Lr2/z;->m(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "configHdr: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigChangeImpl"

    invoke-static {v5, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lr2/z;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->I7()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/w;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/w;

    invoke-virtual {v1, v0, v3}, Lr2/w;->N(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH4/K;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, LH4/K;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    instance-of v1, v1, Lcom/android/camera/Camera;

    if-eqz v1, :cond_3

    const-string v1, "normal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-wide/16 v4, 0xa3

    invoke-static {v4, v5}, LPh/h;->j(J)V

    :cond_3
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LDs/g;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v5}, LDs/g;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LKh/c;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, LKh/c;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lq6/n;

    invoke-direct {v4, v3, v0}, Lq6/n;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lq6/o;

    invoke-direct {v4, p0, v3}, Lq6/o;-><init>(Lq6/X;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Lq6/X;->Mc(I)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LEs/G;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, LEs/G;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->T()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z;

    iget-boolean v1, v1, Lr2/z;->f:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lq6/X;->Lm(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final h6()V
    .locals 5

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v1, v0, Lv2/k0;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "pref_old_beautify_level_key_capture"

    invoke-static {v2, p0}, Lcom/android/camera/data/data/j;->J1(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, v0, Lv2/k0;->m:Z

    if-eqz v1, :cond_6

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v3, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Z4()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pref_beautify_skin_smooth_ratio_key"

    invoke-static {v2, v3}, Lcom/android/camera/data/data/j;->J1(ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    invoke-static {v3, v2}, Lcom/android/camera/data/data/m;->W0(IZ)V

    invoke-virtual {v0, v3, v2}, Lv2/k0;->T(IZ)V

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->Z4()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/camera/data/data/m;->a1(Z)V

    :cond_2
    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D5()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/android/camera/data/data/j;->O1(Z)V

    :cond_3
    iget-boolean v0, v0, Lv2/k0;->l:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lq6/X;->dd()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq6/X;->N9(F)V

    :cond_4
    invoke-static {v2}, Lx4/G;->b(Z)V

    invoke-static {}, LQ6/M0;->b()LQ6/M0;

    move-result-object p0

    if-eqz p0, :cond_5

    const/16 v0, 0xf3

    invoke-interface {p0, v0, v2}, LQ6/M0;->Jg(IZ)V

    :cond_5
    invoke-static {v2}, Lx4/G;->c(Z)V

    invoke-static {}, LQ6/x0;->b()LQ6/x0;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0}, LQ6/x0;->l()V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-boolean p0, v0, Lv2/k0;->l:Z

    if-eqz p0, :cond_7

    invoke-static {}, Lq6/X;->dd()V

    :cond_7
    return-void
.end method

.method public final hc(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isTopTextureBeautyMode"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->Q1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v0, 0xa3

    if-ne p0, v0, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->O()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/camera/features/mode/portrait/f;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/camera/features/mode/portrait/f;-><init>(ZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hd()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTimestop"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/B;->b()LQ6/B;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, LN6/h$a;->a:LN6/h;

    const-class v2, LQ6/A;

    invoke-virtual {v1, v2}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/K3;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LF1/K3;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    const-string v2, "TIMEFREEZE"

    invoke-interface {v0, v2, v1}, LQ6/B;->Kk(Ljava/lang/String;Z)V

    const/16 v0, 0xd5

    invoke-virtual {p0, v0}, Lq6/X;->v(I)V

    return-void
.end method

.method public final hi(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/S;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/S;

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lr2/S;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC3/f;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, LC3/f;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/E;

    invoke-direct {v3, p0, p1, v1, v0}, Lq6/E;-><init>(Lq6/X;Ljava/lang/String;Lr2/S;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final hk()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "getVideoDurationUnlimitedMask"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/f0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "8,60"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->G0(Lj9/e;)I

    move-result v0

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/u1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/u1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LK4/l;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, LK4/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final hm()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAIWatermark"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LFs/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LFs/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final hn()V
    .locals 1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-class v0, Lu2/P;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/P;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu2/P;->G(Z)V

    return-void
.end method

.method public final i6(I)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Lr2/w;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/w;

    invoke-virtual {p0, p1}, Lr2/w;->P(I)V

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/L0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/L0;

    const-class v2, Lr2/B0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B0;

    invoke-virtual {v1, p1}, Lr2/L0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lr2/L0;->i(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lr2/B0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lr2/B0;->i(ILjava/lang/String;)V

    iget-boolean v1, v1, Lr2/L0;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lr2/B0;->e:Z

    if-eqz v1, :cond_1

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lr2/B0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x9efa3e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/c;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, v1}, Lr2/w;->setComponentValue(ILjava/lang/String;)V

    :cond_7
    :goto_1
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/F;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, LEs/F;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final i8()V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSubtitle"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->S(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configVideoSubtitle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ConfigChangeImpl"

    invoke-static {v5, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lgq/h;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v5, "key_common"

    iput-object v5, v3, Lgq/h;->a:Ljava/lang/String;

    new-instance v5, Lgq/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v5, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v5, v3, Lgq/h;->b:Lgq/f;

    invoke-static {v4}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attr_video_subtitle"

    invoke-virtual {v3, v4, v5}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Liq/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v3}, Lgq/h;->d()V

    const/16 v3, 0xa2

    const/16 v4, 0xdc

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-static {v1, v5}, Lcom/android/camera/data/data/E;->E0(IZ)V

    filled-new-array {v4}, [I

    move-result-object v2

    invoke-interface {v0, v2}, LQ6/n1;->T0([I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/data/data/E;->E0(IZ)V

    filled-new-array {v4}, [I

    move-result-object v2

    invoke-interface {v0, v2}, LQ6/n1;->T0([I)V

    const/16 v0, 0xd6

    if-eq v1, v0, :cond_3

    invoke-static {v1}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-static {v3}, Lcom/android/camera/data/data/m;->S0(I)V

    invoke-static {}, Lq6/X;->l0()Z

    invoke-virtual {p0, v1}, Lq6/X;->p0(I)V

    :cond_3
    :goto_1
    const/16 v0, 0xcc

    if-eq v1, v0, :cond_4

    const/16 v0, 0xce

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, v3}, Lu2/Q;->c0(I)V

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lq6/X;->Lm(IZ)V

    invoke-static {v1}, Lcom/android/camera/data/data/E;->S(I)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, LQ6/g1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/n;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LEs/n;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final ic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, p1}, Lr2/j1;->g(II)I

    move-result p1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p2

    const-class v0, Lv2/n0;

    invoke-virtual {p2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv2/n0;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-virtual {p2, v0}, Lv2/n0;->isSupportMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lv2/n0;->o(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, "configVideoQuality smartScene not support : "

    const-string v0, "ConfigChangeImpl"

    invoke-static {p1, p2, v0}, LF1/j3;->f(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lq6/X;->g8(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-virtual {p2, v0}, Lv2/n0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lv2/n0;->p(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lq6/X;->ke(IZ)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final ih()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    const-string v3, "[VideoSwitch] configVideoRecordSwitched: "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-static {v0}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-virtual {p0}, Lq6/X;->D8()V

    return-void
.end method

.method public final io()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportDualVideoCameraChoose"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LQ5/C;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LQ5/C;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final j2(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lq6/X;->g8(ILjava/lang/String;)V

    return-void
.end method

.method public final j9()V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/G1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LF1/G1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final ja(ILjava/util/List;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const-string v1, "ConfigChangeImpl"

    const-string/jumbo v2, "showOrHideShine"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k0;

    invoke-virtual {v2, p1, p2, p3}, Lv2/k0;->S(ILjava/util/List;Ljava/lang/String;)V

    const/16 p1, 0xa2

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eq v0, p1, :cond_2

    const/16 v3, 0xcc

    if-eq v0, v3, :cond_1

    const/16 v3, 0xce

    if-eq v0, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lq6/X;->l0()Z

    move v3, p3

    goto :goto_0

    :cond_2
    move v3, p2

    :goto_0
    invoke-static {}, LN6/l;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LB3/b;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, LB3/b;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v4, v2, Lv2/k0;->e:Ljava/lang/String;

    iget-boolean v5, v2, Lv2/k0;->q:Z

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-boolean v2, v2, Lv2/k0;->a0:Z

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    return-void

    :cond_4
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-static {v4}, Lj9/f;->a4(Lj9/e;)Z

    move-result v4

    const-string/jumbo v5, "video_beautify"

    invoke-static {v5, p3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {p0, v0, p2}, Lq6/X;->gc(IZ)V

    goto :goto_2

    :cond_5
    move v3, p3

    :cond_6
    :goto_2
    if-nez v2, :cond_b

    if-eqz v4, :cond_b

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->L()V

    xor-int/2addr v1, p3

    invoke-static {p1, v1}, Lcom/android/camera/data/data/m;->W0(IZ)V

    invoke-static {p3}, Lx4/G;->b(Z)V

    if-eqz v3, :cond_8

    invoke-static {}, Lq6/X;->dd()V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LI4/r;

    const/16 v4, 0x9

    invoke-direct {v2, p0, v4}, LI4/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/x0;->b()LQ6/x0;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, LQ6/x0;->l()V

    :cond_7
    invoke-static {p2}, Lx4/G;->b(Z)V

    invoke-static {p2}, Lx4/G;->c(Z)V

    :cond_8
    if-eqz v3, :cond_a

    if-ne v0, p1, :cond_9

    invoke-virtual {p0, p3, p2}, Lq6/X;->jh(ZZ)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p1}, Lq6/X;->v(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p3, p2}, Lq6/X;->jh(ZZ)V

    :cond_b
    :goto_3
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/g;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, LEs/g;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final jc()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSpeechShutter"
        type = 0x0
    .end annotation

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/c1;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LL9/h;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LL9/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final jh(ZZ)V
    .locals 5

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_2

    const/16 v2, 0xbe

    if-eq v0, v2, :cond_2

    const/16 v2, 0xe3

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_3

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p2

    new-instance v1, LC4/p;

    const/16 v3, 0x12

    invoke-direct {v1, v3}, LC4/p;-><init>(I)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/j;->z1()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Lq6/X;->gc(IZ)V

    if-eqz p1, :cond_5

    const-string/jumbo p2, "video_beautify"

    invoke-static {p2, v2}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    invoke-static {v0, v2}, Lcom/android/camera/data/data/w;->a1(IZ)V

    :cond_5
    :goto_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    invoke-virtual {p2}, Lu2/Q;->C()I

    move-result p2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/f0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    iget v4, v4, Lu2/Q;->u:I

    invoke-virtual {v3, v0, p2, v4, v1}, Lr2/f0;->J(IIILj9/e;)V

    :cond_6
    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v0, v0, Lv2/k0;->q:Z

    if-nez v0, :cond_8

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 p1, 0x3

    :goto_4
    invoke-virtual {p2, p1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void
.end method

.method public final k2()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/h;

    invoke-direct {v2, v0}, LF1/h;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/i;

    invoke-direct {v2, v0}, LF1/i;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF1/m;

    invoke-direct {v1, v0}, LF1/m;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/16 v0, 0xa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0xa7

    const/16 v1, 0xaf

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->v5()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Lr2/c0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/c0;

    if-eqz p0, :cond_3

    iget-boolean p0, p0, Lr2/c0;->p:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/camera/data/data/m;->D()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->C()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/v;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LE4/v;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final k5()V
    .locals 13

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    const-string v3, "ConfigChangeImpl"

    const/4 v4, 0x0

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "ON"

    const-string v2, "OFF"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "configNewMacroMode: OFF"

    invoke-static {v3, v5}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v3

    invoke-static {v1, v4}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v5

    invoke-static {v5, v4}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_1
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/W;

    invoke-interface {v5}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v5

    invoke-interface {v5}, Lj6/j;->c()Lj9/e;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {p0, v7}, Lq6/X;->N1(Z)V

    :cond_2
    const/16 v6, 0xa2

    if-eqz v0, :cond_4

    if-eq v1, v6, :cond_3

    const/16 v8, 0xa9

    if-ne v1, v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-static {v4}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-virtual {p0}, Lq6/X;->D8()V

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    :cond_5
    invoke-static {v1, v4}, Lcom/android/camera/data/data/w;->X0(IZ)V

    invoke-virtual {p0}, Lq6/X;->Y8()V

    invoke-virtual {p0, v4}, Lq6/X;->db(Z)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/W;

    invoke-virtual {p0, v1}, Lq6/X;->Qj(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    const-class v9, Lr2/G;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/G;

    invoke-virtual {v8, v1}, Lr2/G;->isSwitchOn(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v8, v1, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LCs/v;

    const/16 v10, 0xc

    invoke-direct {v9, v10}, LCs/v;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    const-string v8, "macro"

    invoke-static {v8, v7}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v8

    const-class v9, Lr2/z;

    invoke-virtual {v8, v9}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr2/z;

    const-class v10, Lr2/w;

    invoke-virtual {v8, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr2/w;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v10

    const-class v11, Lv2/f0;

    invoke-virtual {v10, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv2/f0;

    const-string v11, "m"

    if-eqz v0, :cond_9

    invoke-virtual {v10, v1, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v5}, Lj9/f;->A1(Lj9/e;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eq v1, v6, :cond_7

    const/16 v6, 0xc2

    const/16 v10, 0xb21

    filled-new-array {v6, v10}, [I

    move-result-object v6

    invoke-virtual {p0, v11, v6}, Lq6/X;->a8(Ljava/lang/String;[I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    iget-object v10, p0, Lq6/X;->b:[I

    iput-object v10, v6, Lv2/D0;->v:[I

    :cond_7
    invoke-static {v1, v4}, Lcom/android/camera/data/data/w;->a1(IZ)V

    invoke-static {v4}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/data/data/E;->y0(IZ)V

    :cond_8
    const/4 v6, 0x3

    invoke-virtual {p0, v6, v2}, Lq6/X;->I6(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    invoke-static {v5}, Lj9/f;->A1(Lj9/e;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-eq v1, v6, :cond_a

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    iget-object v6, v6, Lv2/D0;->v:[I

    iput-object v6, p0, Lq6/X;->b:[I

    invoke-virtual {p0, v11}, Lq6/X;->Pf(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v1, v6}, Lr2/w;->N(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v11, LF1/H1;

    const/16 v12, 0x13

    invoke-direct {v11, v12}, LF1/H1;-><init>(I)V

    invoke-virtual {v6, v11}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_a
    invoke-static {v1, v7}, Lcom/android/camera/data/data/w;->a1(IZ)V

    invoke-virtual {v10, v1, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v10, LG3/h;

    const/16 v11, 0x15

    invoke-direct {v10, v11}, LG3/h;-><init>(I)V

    invoke-virtual {v6, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    const-string v6, "attr_switch_macro"

    const/16 v10, 0x209

    invoke-static {v2, v6, v1, v10}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {p0, v1, v4}, Lq6/X;->Lm(IZ)V

    invoke-static {v5}, Lj9/f;->A1(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0xa3

    if-ne v1, p0, :cond_c

    invoke-virtual {v9, v1}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, v1, p0}, Lr2/w;->N(ILjava/lang/String;)Z

    :cond_c
    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object p0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_d

    invoke-interface {p0}, LQ6/p;->zp()V

    invoke-interface {p0}, LQ6/p;->Cm()V

    :cond_d
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/D0;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_e
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LI4/g;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, LI4/g;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, LQ6/r1;->b()LQ6/r1;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, LS6/a;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    move v4, v7

    :cond_f
    if-eqz p0, :cond_10

    if-nez v0, :cond_10

    invoke-interface {p0}, LQ6/p;->vg()V

    :cond_10
    if-nez v0, :cond_13

    if-nez v4, :cond_13

    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result p0

    if-nez p0, :cond_12

    const/16 p0, 0xac

    if-ne v1, p0, :cond_11

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->c1()Z

    move-result p0

    if-nez p0, :cond_12

    :cond_11
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LC4/p;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, LC4/p;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_12
    if-eqz v3, :cond_13

    invoke-interface {v3}, LQ6/l1;->Tf()V

    :cond_13
    :goto_1
    invoke-static {v1}, Lq6/X;->nd(I)V

    return-void

    :cond_14
    :goto_2
    const-string p0, "ignore configNewMacroMode"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final k7()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportRecommendLandscapeTips"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1411ee

    const-string v1, "recommend_landscape_desc"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, LQ6/l1;->Rf(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final k8(II)V
    .locals 10

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lq6/X;->H8(I)V

    invoke-static {v0}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Z;

    invoke-virtual {v1, v0}, Lv2/Z;->o(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {p1, v2}, Lcom/android/camera/data/data/E;->F0(IZ)V

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1, v2}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_2
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/f0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/f0;

    invoke-virtual {v2, p1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xa2

    if-eq p1, v4, :cond_3

    const/16 v5, 0xb4

    if-ne p1, v5, :cond_9

    invoke-static {}, Lcom/android/camera/data/data/E;->E()Z

    move-result v5

    if-nez v5, :cond_9

    :cond_3
    const-class v5, Ls2/c;

    invoke-virtual {v1, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls2/c;

    invoke-virtual {v5, p1}, Ls2/c;->isSwitchOn(I)Z

    move-result v6

    const-string/jumbo v7, "track_focus_desc"

    const-string v8, "audio_track_desc"

    const/4 v9, 0x5

    if-eqz v6, :cond_4

    iget-boolean v5, v5, Ls2/c;->h:Z

    if-eqz v5, :cond_5

    invoke-static {p1}, Ls2/c;->m(I)[I

    move-result-object v5

    aget v5, v5, v3

    const/16 v6, 0x3c

    if-lt v5, v6, :cond_4

    goto :goto_0

    :cond_4
    const-class v5, Lr2/b0;

    invoke-virtual {v1, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/b0;

    invoke-virtual {v5, v2}, Lr2/b0;->n(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    :goto_0
    if-ne p2, v9, :cond_6

    invoke-static {v8, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    invoke-static {v7, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    const-class v2, Ls2/a;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls2/a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ls2/a;->q(I)Z

    move-result v1

    if-eqz v1, :cond_9

    if-ne p2, v9, :cond_8

    invoke-static {v8, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    invoke-static {v7, v3}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_9
    :goto_1
    invoke-virtual {p0, v0}, Lq6/X;->p0(I)V

    if-ne v0, v4, :cond_a

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    :cond_a
    invoke-static {p1, v3}, Lcom/android/camera/data/data/j;->M1(IZ)V

    const-string p0, "ConfigChangeImpl"

    const-string p1, "configTrackFocus: true"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ke(IZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p2

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/android/camera/data/data/E;->y0(IZ)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-virtual {p0}, Lq6/X;->h6()V

    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-static {p1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v0}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/camera/data/data/E;->G0(Z)V

    :cond_1
    invoke-static {p1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, v0}, Lcom/android/camera/data/data/E;->F0(IZ)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0, v0}, Lcom/android/camera/data/data/E;->y0(IZ)V

    return-void
.end method

.method public final kk()V
    .locals 0

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lx9/c;->b(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final kn(Z)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lj9/L;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj9/L;-><init>(ZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "mic_jam_tip"

    invoke-static {p0}, Lq6/X;->De(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final lc()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->t(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    move-result p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "ConfigChangeImpl"

    const-string v1, "reCheckAiAudioSingle:alertAiAudioSingleBGHint"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final m3()V
    .locals 5

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k0;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/W;

    invoke-interface {v3}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v3

    invoke-interface {v3}, Lj6/j;->d0()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lv2/k0;->L(IZ)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v3}, Lq6/X;->gc(IZ)V

    invoke-static {v1, v3}, Lcom/android/camera/data/data/j;->M1(IZ)V

    :cond_1
    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->L()V

    const/4 v4, 0x1

    invoke-static {v4}, Lx4/G;->b(Z)V

    if-nez v2, :cond_4

    invoke-static {}, Lq6/X;->dd()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->c()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->e4(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lq6/X;->N9(F)V

    :cond_2
    invoke-static {}, LQ6/x0;->b()LQ6/x0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, LQ6/x0;->l()V

    :cond_3
    invoke-static {v3}, Lx4/G;->b(Z)V

    invoke-static {v3}, Lx4/G;->c(Z)V

    :cond_4
    if-nez v2, :cond_7

    const/16 v0, 0xa2

    if-eq v1, v0, :cond_6

    const/16 v2, 0xbe

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lq6/X;->v(I)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, v4, v3}, Lq6/X;->jh(ZZ)V

    return-void

    :cond_7
    invoke-virtual {p0, v4, v3}, Lq6/X;->jh(ZZ)V

    return-void
.end method

.method public final mj()V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v1

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v3

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-interface {v3}, LQ6/n1;->dj()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/m;->N()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p0, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result v3

    if-nez v3, :cond_2

    const p0, 0x7f141477

    invoke-interface {v0, v2, p0}, LQ6/l1;->Lf(II)V

    return-void

    :cond_2
    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->d6()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-nez p0, :cond_3

    const p0, 0x7f1414c8

    invoke-interface {v0, v2, p0}, LQ6/l1;->Lf(II)V

    return-void

    :cond_3
    invoke-static {v1}, Lj9/f;->N4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f141497

    invoke-interface {v0, v2, p0}, LQ6/l1;->Lf(II)V

    return-void

    :cond_4
    invoke-static {v1}, Lj9/f;->K4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/j;->E0()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f141495

    invoke-interface {v0, v2, p0}, LQ6/l1;->Lf(II)V

    return-void

    :cond_5
    invoke-static {v1}, Lj9/f;->M4(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p0

    if-eqz p0, :cond_6

    const p0, 0x7f141496

    invoke-interface {v0, v2, p0}, LQ6/l1;->Lf(II)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final mn()V
    .locals 3

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/x;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final no(IZ)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T1()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz p2, :cond_2

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_2

    invoke-static {p1}, Lcom/android/camera/data/data/m;->W(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lq6/X;->h0()V

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lq6/X;->Lm(IZ)V

    return-void
.end method

.method public final o3(I)V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LF1/m;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/w;->f0(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    xor-int/lit8 p1, v1, 0x1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/r;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/r;

    if-nez v1, :cond_1

    const-string v1, "ON"

    goto :goto_0

    :cond_1
    const-string v1, "OFF"

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x102

    const-string v3, "exposure_feedback"

    invoke-static {v1, v3, v0, v2}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    move v1, p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "configExposureFeedbackSwitch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    iput-boolean v1, p1, Lcom/xiaomi/camera/effect/EffectController;->o:Z

    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/effect/EffectController;->R([I)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/w;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, LF1/w;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/x;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, LF1/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lq6/k;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lq6/k;-><init>(ZI)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/J;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, LCs/J;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LC4/M;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, LC4/M;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final o4(ILjava/lang/String;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/16 v9, 0x12

    const/4 v10, 0x1

    const/16 v11, 0x10

    invoke-virtual {v1}, Lq6/X;->aa()Z

    move-result v12

    if-eqz v12, :cond_46

    const-string v12, "icon"

    const-string v13, "click"

    const-string v14, "ON"

    const/16 v16, 0xb4

    const-string v15, "OFF"

    const-class v0, Lr2/f0;

    const/16 v18, 0x5

    const-class v2, Lr2/W;

    const-class v7, Lr2/X;

    const-class v4, Lr2/w;

    const-string v5, "ConfigChangeImpl"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_17

    :sswitch_0
    invoke-virtual {v1, v10, v6}, Lq6/X;->Vm(ILjava/lang/String;)V

    return-void

    :sswitch_1
    invoke-virtual {v1}, Lq6/X;->f4()V

    return-void

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configMimojiModeValue: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->h1()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_17

    :cond_0
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v2, LFs/A;

    invoke-virtual {v0, v2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, LFs/A;

    iput-object v6, v0, LFs/A;->r:Ljava/lang/String;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LE4/K;

    invoke-direct {v2, v9}, LE4/K;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC3/f;

    invoke-direct {v2, v11}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v2

    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v2

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/i;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/i;

    const/16 v2, 0xb8

    invoke-virtual {v0, v2, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LKs/b;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LEs/A;

    invoke-direct {v2, v6, v3}, LEs/A;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v8}, Lq6/X;->He(I)Z

    return-void

    :sswitch_3
    invoke-static {}, Lcom/android/camera/data/data/m;->R()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    const-string v3, "configFastMotionVideo: targetValue="

    invoke-static {v3, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/camera/data/data/m;->F0(Z)V

    invoke-virtual {v1}, Lq6/X;->Wb()I

    move-result v3

    if-nez v0, :cond_1

    invoke-static {v3, v8}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {v1}, Lq6/X;->h6()V

    invoke-virtual {v1, v3}, Lq6/X;->p0(I)V

    invoke-static {v8}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {v3, v8}, Lcom/android/camera/data/data/E;->M0(IZ)V

    invoke-static {v8}, Lcom/android/camera/data/data/m;->Q0(Z)V

    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0xa9

    goto :goto_0

    :cond_2
    const/16 v0, 0xa2

    :goto_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, v0}, Lu2/Q;->c0(I)V

    invoke-virtual {v1, v0, v8}, Lq6/X;->Lm(IZ)V

    const-string/jumbo v0, "time_lapse"

    invoke-static {v0, v2}, Lq6/X;->Te(Ljava/lang/String;Z)V

    return-void

    :sswitch_4
    invoke-virtual {v1}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v5, Lv2/l;

    invoke-virtual {v2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/l;

    invoke-static {v6, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v14, v15

    :goto_1
    invoke-virtual {v2, v0, v14}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LEs/b;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, LEs/b;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LE4/e;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, LE4/e;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v0}, Lv2/l;->isSwitchOn(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/G;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/G;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v0, v15}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LB3/b;

    invoke-direct {v6, v9}, LB3/b;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v5, "-1.0"

    invoke-static {v5}, Lcom/android/camera/data/data/m;->T0(Ljava/lang/String;)V

    invoke-static {}, LQ6/w1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LEs/l;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, LEs/l;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LN4/b;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, LN4/b;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LEs/E;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, LEs/E;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/N;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/N;

    sget v6, Li3/b;->S:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    const-class v6, Lr2/D0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/D0;

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    sget-object v5, LN6/h$a;->a:LN6/h;

    const-class v6, LQ6/K;

    invoke-virtual {v5, v6}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LCs/l;

    const/16 v9, 0x17

    invoke-direct {v7, v9}, LCs/l;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/U0;->a()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LEs/b;

    invoke-direct {v7, v3}, LEs/b;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-class v3, LQ6/f1;

    invoke-virtual {v5, v3}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v3

    check-cast v3, LQ6/f1;

    if-eqz v3, :cond_4

    invoke-interface {v3}, LQ6/f1;->co()V

    goto :goto_2

    :cond_4
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Lr2/Z;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/Z;

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    const-class v6, Lr2/I0;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/I0;

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lr2/I0;->reset(I)V

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5, v6, v3}, Lq6/X;->w6(ILjava/lang/String;Ljava/lang/String;Lr2/I0;)V

    :goto_2
    invoke-static {}, LQ6/n;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LF1/H1;

    const/16 v7, 0x15

    invoke-direct {v5, v7}, LF1/H1;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v5, Lr2/l0;

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/l0;

    invoke-virtual {v3, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3, v0}, Lur/i;->k(FI)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/data/data/m;->T0(Ljava/lang/String;)V

    invoke-static {}, LQ6/w1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LE4/c;

    invoke-direct {v5, v9}, LE4/c;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v5, LFs/h;

    invoke-direct {v5, v11}, LFs/h;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_3
    invoke-virtual {v1, v0, v8}, Lq6/X;->Lm(IZ)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/w;

    invoke-virtual {v2, v0}, Lv2/l;->isSwitchOn(I)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lr2/w;->M(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LCs/v;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, LCs/v;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    invoke-virtual {v2, v0}, Lv2/l;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "car_pan_on"

    goto :goto_4

    :cond_7
    const-string v1, "car_pan_off"

    :goto_4
    const-string v2, "attr_car_pan"

    const/16 v3, 0x108

    invoke-static {v1, v2, v0, v3}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    return-void

    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configSuperMoon: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v0, :cond_46

    invoke-virtual {v1}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_17

    :cond_8
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/V;

    invoke-direct {v3, v0}, Lq6/V;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lv2/s0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/s0;

    if-nez v0, :cond_9

    goto/16 :goto_17

    :cond_9
    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lv2/s0;->isSwitchOn(I)Z

    move-result v0

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/V3;

    invoke-direct {v3, v11}, LF1/V3;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LKh/c;

    const/16 v7, 0xe

    invoke-direct {v3, v7}, LKh/c;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/camera/module/G0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/camera/module/G0;-><init>(ZI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/F;

    invoke-direct {v2, v7}, LEs/F;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Ldq/e;->c(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_super_moon"

    invoke-static {v1, v0, v13, v12}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configDepthExpand: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expand"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LL9/v;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, LL9/v;-><init>(ZI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/n;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/n;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    if-eqz v0, :cond_a

    iget-boolean v2, v2, Lr2/n;->a:Z

    if-eqz v2, :cond_a

    move v8, v10

    :cond_a
    invoke-virtual {v1, v11, v8}, Lq6/X;->c4(IZ)V

    if-eqz v0, :cond_b

    const-string v0, "depth_fusion"

    goto :goto_5

    :cond_b
    const-string/jumbo v0, "shallow_depth"

    :goto_5
    const-string v1, "attr_extended_depth"

    invoke-static {v1, v0, v13, v12}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_7
    invoke-virtual {v1}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_c

    goto/16 :goto_17

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configTilt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v2, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    const-string/jumbo v0, "tiltshift"

    const/4 v2, 0x0

    invoke-static {v6, v0, v2}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0, v10}, Lcom/android/camera/module/Camera2Module;->onTiltShiftSwitched(Z)V

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/effect/EffectController;->R([I)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-static {v0}, Lq6/X;->g9(LQ6/p;)V

    return-void

    :sswitch_8
    invoke-virtual {v1, v6}, Lq6/X;->Z4(Ljava/lang/String;)V

    return-void

    :sswitch_9
    invoke-static {v6}, Lq6/X;->G2(Ljava/lang/String;)V

    return-void

    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configDocumentModeValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/p;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/p;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void

    :sswitch_b
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/X;

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v4

    check-cast v4, LA2/a$a;

    iget-object v4, v4, LA2/a$a;->b:Lu2/Q;

    iget v7, v4, Lu2/Q;->u:I

    invoke-virtual {v4, v7}, Lu2/Q;->E(I)I

    move-result v4

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/W;

    invoke-virtual {v0, v4}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "configSlowQuality: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lgq/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v5, "key_slow_motion_mode"

    iput-object v5, v2, Lgq/h;->a:Ljava/lang/String;

    new-instance v5, Lgq/f;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v5, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v5, v2, Lgq/h;->b:Lgq/f;

    new-instance v5, LT7/a;

    invoke-direct {v5, v0, v6}, LT7/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    invoke-virtual {v3, v4, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v8}, Lq6/X;->Lm(IZ)V

    return-void

    :sswitch_c
    invoke-virtual {v1, v6, v8}, Lq6/X;->x5(Ljava/lang/String;Z)V

    return-void

    :sswitch_d
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v2

    check-cast v2, LA2/a$a;

    iget-object v2, v2, LA2/a$a;->b:Lu2/Q;

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {v6}, Lr2/j1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lr2/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, LOh/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v2, v8}, Lcom/android/camera/data/data/j;->M1(IZ)V

    :cond_d
    invoke-virtual {v0, v2}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "configVideoQuality: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lq6/X;->of(Ljava/lang/String;)V

    const/16 v4, 0xd6

    const-string/jumbo v5, "super_night_video_4k_desc"

    if-ne v2, v4, :cond_e

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/data/data/r;->j(Lj9/e;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "8,24"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v5, v10}, Lq6/X;->gd(Ljava/lang/String;Z)V

    const-string v5, "4K_video_24fps"

    invoke-static {v4, v5, v4}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-static {v5, v8}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :goto_6
    invoke-virtual {v1, v2, v3, v6, v0}, Lq6/X;->X(ILjava/lang/String;Ljava/lang/String;Lr2/f0;)V

    invoke-virtual {v1, v2, v8}, Lq6/X;->Lm(IZ)V

    return-void

    :sswitch_e
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/W;

    invoke-virtual {v2}, Lr2/W;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v10, :cond_f

    goto/16 :goto_17

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configFPS960: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "slow_motion_480"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "slow_motion_3840"

    if-nez v3, :cond_10

    const-string/jumbo v3, "slow_motion_960"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "slow_motion_960_direct"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "slow_motion_1920"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const-string v3, "960fps_desc"

    invoke-static {v3, v10}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_11
    const/16 v3, 0xac

    invoke-virtual {v2, v3, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v8}, Lq6/X;->Lm(IZ)V

    invoke-virtual {v0, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/X;

    invoke-virtual {v2, v3}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Lr2/X;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v1}, Lq6/X;->Wb()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v2, 0xcc

    const-string v3, "attr_slow_motion_3840"

    invoke-static {v1, v3, v0, v2}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    return-void

    :sswitch_f
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/m;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/m;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v6}, Lr2/m;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v2, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v2}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {v1, v0, v8}, Lq6/X;->Lm(IZ)V

    return-void

    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configBeautyMode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v1}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_17

    :cond_12
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/h;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/h;

    invoke-virtual {v0, v6}, Lr2/h;->n(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-object v1, v0, Lv2/k0;->g:Lj9/e;

    invoke-static {v1}, Lj9/f;->d5(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "female"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "FrontTextureCapture"

    const-string v3, "FrontClassicalCapture"

    if-eqz v1, :cond_13

    move-object v1, v3

    goto :goto_7

    :cond_13
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v3}, Lv2/k0;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v5, v3

    goto :goto_8

    :cond_14
    invoke-virtual {v0, v2}, Lv2/k0;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v5, v2

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    :goto_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->P1()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_16

    invoke-virtual {v0, v1}, Lv2/k0;->X(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    invoke-virtual {v0, v5, v1}, Lv2/k0;->P(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_9
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->Q1()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, LJe/c;->P1()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    invoke-static {}, Lq6/X;->oa()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, LQ6/k;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LB9/c;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, LB9/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_19
    invoke-virtual {v0}, LJe/c;->P1()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/r;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LEs/r;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1a
    invoke-static {v8}, Lx4/G;->b(Z)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, LQ6/p;->J9()Z

    return-void

    :sswitch_11
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v2, Lt2/g;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/g;

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v2

    check-cast v2, LA2/a$a;

    iget-object v2, v2, LA2/a$a;->b:Lu2/Q;

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configLiveVideoQuality: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lq6/X;->of(Ljava/lang/String;)V

    const/16 v3, 0xa0

    invoke-virtual {v0, v3, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v8}, Lq6/X;->Lm(IZ)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/o0;

    move/from16 v2, v18

    invoke-direct {v1, v2}, LF1/o0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/d;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LCs/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configReferenceLineType: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_17

    :cond_1b
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v2, Lt2/b;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/b;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Lt2/b;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v2, "pref_camera_referenceline_type_key"

    invoke-virtual {v0, v2, v6}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->r()Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_17

    :cond_1c
    invoke-static {}, LQ6/X;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lo5/L;

    invoke-direct {v1, v6, v10}, Lo5/L;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v2, v1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr_reference_line_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/W0;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v0

    check-cast v0, LQ6/W0;

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v8}, Lcom/android/camera/data/data/w;->T0(Z)V

    invoke-interface {v0}, LQ6/W0;->ef()V

    invoke-static {v10}, Lcom/android/camera/data/data/w;->T0(Z)V

    invoke-interface {v0}, LQ6/W0;->ef()V

    return-void

    :cond_1d
    invoke-interface {v0}, LQ6/W0;->ef()V

    return-void

    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configWaterSwitch: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v0

    const-class v2, Lt2/h;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/h;

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v2

    check-cast v2, LA2/a$a;

    iget-object v2, v2, LA2/a$a;->b:Lu2/Q;

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v3

    invoke-virtual {v0, v3, v6}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v2}, LWh/a;->g()LWh/a;

    const-string/jumbo v0, "true"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v4

    invoke-static {v4}, LS8/d;->b(Z)LGg/P;

    move-result-object v4

    invoke-virtual {v4, v0}, LGg/P;->c(Z)V

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz v0, :cond_1f

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->X()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {v8}, Lcom/android/camera/data/data/m;->K0(Z)V

    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v4

    if-eqz v4, :cond_1e

    const/16 v5, 0xce

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-interface {v4, v5}, LQ6/n1;->T0([I)V

    :cond_1e
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LH3/m;

    invoke-direct {v5, v11}, LH3/m;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/B;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/B;

    invoke-virtual {v4}, Lr2/B;->m()V

    :cond_1f
    if-eqz v0, :cond_20

    invoke-static {}, Lcom/android/camera/data/data/j;->q0()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "pref_camera_crop_preferred_key"

    invoke-static {v4, v8}, LF1/K2;->c(Ljava/lang/String;Z)V

    :cond_20
    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "attr_watermark_video"

    goto :goto_a

    :cond_21
    const-string v4, "attr_watermark"

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "panel_menu"

    invoke-static {v4, v5, v13, v6}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/data/E;->V()Z

    move-result v5

    if-eqz v0, :cond_23

    const-string/jumbo v6, "watermark_off"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    if-eqz v5, :cond_23

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    iget-object v5, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v5, L弭弡弣彠弣弧彠弪弫弸弧弭弫彠弖弻弯张強弻弯张;

    if-eqz v5, :cond_22

    const-string/jumbo v5, "watermark_leica_100th"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    :cond_22
    const-string v5, "pref_camera_watermark_type_key"

    const-string/jumbo v6, "watermark_regular"

    invoke-virtual {v2, v5, v6}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v2}, LWh/a;->c()V

    :cond_23
    if-eqz v0, :cond_24

    const-string/jumbo v2, "watermark_leica"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "watermark_film"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    sget-object v2, Lyi/c$a;->a:Lyi/c;

    invoke-virtual {v2}, Lyi/c;->a()V

    :cond_25
    invoke-virtual {v1}, Lq6/X;->Vb()Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_17

    :cond_26
    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/W;

    invoke-virtual {v1}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LEs/O;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, LEs/O;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-interface {v2}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->r()Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_17

    :cond_27
    invoke-interface {v2}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->V()Lj9/a;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lj9/a;->C()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v2, v0}, Lj9/m0;->j1(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_28
    invoke-static {}, LN6/b;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LF1/r1;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, LF1/r1;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->E1()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {}, Lcom/android/camera/data/data/j;->C1()Z

    move-result v2

    if-eqz v2, :cond_46

    if-eqz v0, :cond_29

    invoke-static/range {v16 .. v16}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move/from16 v0, v16

    invoke-static {v0, v8}, Lcom/android/camera/data/data/w;->X0(IZ)V

    goto :goto_b

    :cond_29
    move/from16 v0, v16

    move v10, v8

    :goto_b
    invoke-virtual {v1, v3, v8}, Lq6/X;->Lm(IZ)V

    if-eqz v10, :cond_46

    if-ne v3, v0, :cond_46

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/C;

    const/16 v7, 0x15

    invoke-direct {v1, v7}, LC4/C;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "configVideoSubFps: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v2

    check-cast v2, LA2/a$a;

    iget-object v2, v2, LA2/a$a;->b:Lu2/Q;

    iget v5, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v5}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v5

    invoke-virtual {v5, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/f0;

    iget-object v11, v7, Lr2/f0;->g:Lr2/h0;

    const-class v12, Ls2/c;

    invoke-virtual {v5, v12}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ls2/c;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v13, Lv2/f0;

    invoke-virtual {v5, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lv2/f0;

    invoke-virtual {v12}, Ls2/c;->p()Z

    move-result v17

    invoke-static {v2}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v18

    invoke-virtual {v14, v2}, Lv2/Z;->isSwitchOn(I)Z

    move-result v19

    invoke-static {}, Lcom/android/camera/data/data/j;->z1()Z

    move-result v20

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v5

    if-eqz v5, :cond_2a

    move/from16 v21, v10

    goto :goto_c

    :cond_2a
    move/from16 v21, v8

    :goto_c
    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v22

    iget-object v5, v11, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v5, v2}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v2, v5, v6}, LOh/a;->c(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2b

    invoke-static {v2, v8}, Lcom/android/camera/data/data/j;->M1(IZ)V

    :cond_2b
    invoke-virtual {v1, v2, v5, v6, v8}, Lq6/X;->Fc(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v2}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v23, v10

    iget-object v10, v7, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {v10, v2, v6}, Lr2/g0;->setComponentValue(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v5}, Lq6/X;->ic(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb4

    if-ne v2, v10, :cond_2c

    invoke-static {v2}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual {v1}, Lq6/X;->c7()V

    :cond_2c
    const/16 v10, 0xe3

    if-ne v2, v10, :cond_2d

    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v10

    new-instance v3, LH3/p;

    invoke-direct {v3, v9, v8}, LH3/p;-><init>(IB)V

    invoke-virtual {v10, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2d
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/f0;

    iget-object v9, v3, Lr2/f0;->g:Lr2/h0;

    iget-object v9, v9, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v9, v2}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "120"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    const-string v10, "8"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v9

    const-class v10, Lr2/Q;

    invoke-virtual {v9, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lr2/Q;

    invoke-virtual {v9, v2}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v24

    if-eqz v24, :cond_2e

    invoke-static {v2, v8}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-virtual {v9, v2}, Lr2/Q;->p(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    goto :goto_d

    :cond_2e
    const-string v8, "2.39x1_new"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual {v9, v2}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v2, v8}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_d

    :cond_2f
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/camera/data/data/E;->t0(IZ)V

    :goto_d
    invoke-static {v2, v8}, Lcom/android/camera/data/data/E;->E0(IZ)V

    invoke-static {}, Lcom/android/camera/module/Y;->k()Z

    move-result v8

    if-nez v8, :cond_31

    invoke-static {}, Lcom/android/camera/module/Y;->e()Z

    move-result v8

    if-eqz v8, :cond_30

    goto :goto_e

    :cond_30
    move-object/from16 v25, v0

    goto :goto_10

    :cond_31
    :goto_e
    const/16 v8, 0x18

    const/16 v9, 0x1e

    const/16 v10, 0x3c

    move-object/from16 v25, v0

    const/16 v0, 0x78

    filled-new-array {v8, v9, v10, v0}, [I

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_f
    const/4 v0, 0x4

    if-ge v10, v0, :cond_33

    aget v0, v8, v10

    iget-object v1, v3, Lr2/f0;->e:Lj9/e;

    move-object/from16 v26, v3

    const/16 v3, 0x8

    invoke-static {v3, v0, v1}, Lj9/f;->g1(IILj9/e;)Z

    move-result v1

    if-eqz v1, :cond_32

    if-le v0, v9, :cond_32

    move v9, v0

    :cond_32
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v26

    goto :goto_f

    :cond_33
    const/16 v0, 0x78

    if-eq v9, v0, :cond_34

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-static {v2}, Lcom/android/camera/data/data/j;->G(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    :cond_34
    :goto_10
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    invoke-virtual {v0, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/Z;

    if-eqz v0, :cond_35

    invoke-virtual {v0, v2}, Lv2/Z;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0, v2}, Lv2/Z;->o(I)V

    :cond_35
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/camera/data/data/j;->N1(I)V

    goto :goto_11

    :cond_36
    move-object/from16 v25, v0

    :goto_11
    invoke-static {v5, v6}, Lr2/j1;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v8

    new-instance v0, Ll6/C;

    move-object v1, v4

    const/4 v4, 0x1

    move-object v9, v1

    move-object v5, v7

    move-object/from16 v7, v25

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ll6/C;-><init>(Ljava/lang/Object;IIILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f0;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lr2/j1;->d(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/data/data/r;->m(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v7

    invoke-virtual {v7}, Lu2/Q;->O()Z

    move-result v7

    if-nez v7, :cond_37

    invoke-static {}, LK2/b;->a0()Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_12

    :cond_37
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    invoke-virtual {v7, v9}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, LCs/v;

    const/16 v9, 0xd

    invoke-direct {v8, v9}, LCs/v;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_38
    :goto_12
    iget-object v4, v4, Lr2/f0;->d:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_39

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_39

    goto :goto_13

    :cond_39
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {v1}, Lq6/X;->h6()V

    invoke-static {v8}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-virtual {v1}, Lq6/X;->D8()V

    sget-boolean v4, LJe/c;->k:Z

    sget-object v4, LJe/c$b;->a:LJe/c;

    invoke-virtual {v4}, LJe/c;->a0()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v13}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/Z;

    if-eqz v4, :cond_3a

    invoke-virtual {v4, v2}, Lv2/Z;->isSwitchOn(I)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v4, v2}, Lv2/Z;->o(I)V

    :cond_3a
    :goto_13
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "60"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lq6/X;->p5(IZ)V

    :cond_3b
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v4, Lv2/X;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/X;

    invoke-static {v2}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    if-eqz v0, :cond_3c

    invoke-virtual {v0, v3}, Lv2/X;->p(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/camera/data/data/E;->y0(IZ)V

    :cond_3c
    invoke-static {v2}, Lcom/android/camera/data/data/E;->K(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v3}, Lv2/X;->p(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/16 v0, 0xb4

    if-eq v2, v0, :cond_3d

    goto :goto_14

    :cond_3d
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v3, Lv2/Y;

    invoke-virtual {v0, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/Y;

    if-nez v0, :cond_3e

    goto :goto_14

    :cond_3e
    invoke-virtual {v0, v2, v15}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_3f
    :goto_14
    invoke-static {}, Lcom/android/camera/data/data/m;->c()V

    invoke-virtual {v5, v2}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v11, v0, v5}, Lq6/X;->X(ILjava/lang/String;Ljava/lang/String;Lr2/f0;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lq6/X;->Lm(IZ)V

    if-eqz v17, :cond_40

    invoke-virtual {v12}, Ls2/c;->p()Z

    move-result v0

    if-nez v0, :cond_40

    const-string v0, "dolly_mutex"

    move/from16 v1, v23

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    goto :goto_15

    :cond_40
    move/from16 v1, v23

    :goto_15
    if-eqz v18, :cond_41

    invoke-static {v2}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-nez v0, :cond_41

    const-string/jumbo v0, "super_eis_mutex"

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_41
    if-eqz v19, :cond_42

    invoke-virtual {v14, v2}, Lv2/Z;->isSwitchOn(I)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "macro_mutex"

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_42
    if-eqz v20, :cond_43

    invoke-static {}, Lcom/android/camera/data/data/j;->z1()Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "beauty_mutex"

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_43
    if-eqz v21, :cond_45

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_16

    :cond_44
    const-string/jumbo v0, "video_filter_mutex"

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_45
    :goto_16
    if-eqz v22, :cond_46

    invoke-static {}, Lcom/android/camera/data/data/j;->x1()Z

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "video_bokeh_pro_mutex"

    invoke-static {v0, v1}, Lq6/X;->gd(Ljava/lang/String;Z)V

    return-void

    :sswitch_15
    invoke-virtual {v1, v6}, Lq6/X;->f8(Ljava/lang/String;)V

    return-void

    :sswitch_16
    invoke-virtual {v1, v6}, Lq6/X;->rb(Ljava/lang/String;)V

    :cond_46
    :goto_17
    return-void

    :sswitch_data_0
    .sparse-switch
        0xab -> :sswitch_16
        0xad -> :sswitch_15
        0xae -> :sswitch_14
        0xb8 -> :sswitch_13
        0xb9 -> :sswitch_12
        0xbb -> :sswitch_11
        0xbc -> :sswitch_10
        0xbe -> :sswitch_f
        0xcc -> :sswitch_e
        0xd0 -> :sswitch_d
        0xd2 -> :sswitch_c
        0xd5 -> :sswitch_b
        0xdd -> :sswitch_a
        0xde -> :sswitch_9
        0xe2 -> :sswitch_8
        0xe4 -> :sswitch_7
        0xe8 -> :sswitch_6
        0xfa -> :sswitch_5
        0x108 -> :sswitch_4
        0x10e -> :sswitch_3
        0x202 -> :sswitch_2
        0xb23 -> :sswitch_1
        0xd40 -> :sswitch_0
    .end sparse-switch
.end method

.method public final o7(I)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    const-class v0, Lu2/G;

    if-eq p1, p0, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/w;->z0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/G;

    invoke-virtual {p1, p0}, Lu2/G;->n(Z)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "click"

    const-string v1, "attr_tap_shoot"

    invoke-static {p1, v1, v0}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu2/G;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lu2/G;->n(Z)V

    move p0, p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/data/data/w;->z0()Z

    move-result p0

    :goto_0
    const-string p1, "configTapShootSwitch: "

    const-string v0, "ConfigChangeImpl"

    invoke-static {p1, v0, p0}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final oj(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "show cinemaster popup"

    goto :goto_0

    :cond_0
    const-string v1, "hide cinemaster popup"

    :goto_0
    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v1, LH3/p;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v0}, LH3/p;-><init>(IB)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->W4()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    invoke-virtual {p1}, Lu2/Q;->Q()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Ls2/b;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls2/b;

    invoke-virtual {p1, v0}, Ls2/b;->r(Z)V

    :cond_2
    :goto_1
    invoke-static {}, LQ6/v;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LCs/n;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LCs/n;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LFn/x;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, LFn/x;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/D0;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, LF1/D0;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_2
    new-instance p0, Lgq/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "key_multi_link_click"

    iput-object p1, p0, Lgq/h;->a:Ljava/lang/String;

    new-instance p1, Lgq/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lgq/h;->b:Lgq/f;

    new-instance p1, Lnq/c;

    const-string v0, "attr_multi_link_home"

    const-string v1, "M_cinemaster_"

    invoke-direct {p1, v0, v1}, Lnq/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgq/h;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgq/h;->d()V

    return-void
.end method

.method public final p0(I)V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lg3/g;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lg3/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/S;

    invoke-direct {v1, p1}, Lq6/S;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LG4/g;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, LG4/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final p5(IZ)V
    .locals 4

    const-string v0, "configOpenGate "

    invoke-static {v0, p2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class p2, Lr2/Q;

    invoke-virtual {p0, p2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/Q;

    if-eqz p0, :cond_0

    iget-boolean p2, p0, Lr2/Q;->f:Z

    if-eqz p2, :cond_0

    const-string p2, "pro_video_opengate_on_hint"

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lq6/X;->gd(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lr2/Q;->f:Z

    :cond_0
    invoke-static {}, Lq6/X;->dd()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, LWh/a;->g()LWh/a;

    invoke-static {p1}, Lcom/android/camera/data/data/j;->G(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {p0}, LWh/a;->c()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lq6/X;->h0()V

    return-void
.end method

.method public final p7()V
    .locals 1

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->a2()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lq6/X;->zh()V

    return-void
.end method

.method public final pi([F)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVolumeOverhighTip"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->J5()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lj7/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, LU6/c;->h()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/data/data/j;->f1(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVolumeValue: left = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v0, LEq/b;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, LEq/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    :goto_0
    return-void
.end method

.method public final pq(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lq6/X;->gc(IZ)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF1/m;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LF1/m;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC4/k;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LC4/k;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/j;->l0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Lcom/android/camera/data/data/m;->W0(IZ)V

    invoke-static {v0}, Lcom/android/camera/data/data/m;->a1(Z)V

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/k0;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/k0;

    invoke-static {p1}, Lcom/android/camera/data/data/j;->O1(Z)V

    invoke-virtual {p0, v0, v0}, Lq6/X;->jh(ZZ)V

    const/4 p0, 0x4

    const-string p1, "8"

    invoke-virtual {v1, p0, p1}, Lv2/k0;->Q(ILjava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LCs/l;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, LCs/l;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final q(II)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    sget-object v14, LZ5/m;->j:LZ5/m;

    const-string v15, "ON"

    const-string/jumbo v4, "video_prompter"

    const-string v2, "none"

    const-string v8, "quality_fps_mutex"

    const-class v6, Ls2/c;

    const-class v11, Lv2/n0;

    const-string v12, ""

    const-class v7, Lr2/f0;

    const-class v3, Lv2/f0;

    const-string v9, "click"

    const/4 v13, 0x0

    const-string v10, "ConfigChangeImpl"

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    :sswitch_0
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    const-string v9, "configSuperNightVideo: targetValue="

    invoke-static {v9, v4}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v10, v9, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0xd41

    const-string v14, "attr_super_night"

    invoke-static {v9, v14, v1, v10}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-static {v4}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f0;

    if-nez v4, :cond_0

    move-object v7, v12

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {v2, v13}, Lcom/android/camera/data/data/E;->y0(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/n0;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lq6/X;->g8(ILjava/lang/String;)V

    :cond_1
    invoke-static {v1, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/Z;

    invoke-virtual {v2, v1}, Lv2/Z;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Lv2/Z;->o(I)V

    :cond_2
    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-static {v13}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-virtual {v0}, Lq6/X;->D8()V

    invoke-virtual {v0, v1}, Lq6/X;->p0(I)V

    invoke-static {v13}, Lcom/android/camera/data/data/m;->F0(Z)V

    invoke-static {v13}, Lcom/android/camera/data/data/m;->Q0(Z)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->P()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->c2(Lj9/e;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    invoke-virtual {v2, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls2/c;

    invoke-virtual {v2, v13}, Ls2/c;->u(Z)V

    :cond_3
    invoke-static {}, LQ6/H0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LF4/f;

    const/16 v6, 0xb

    invoke-direct {v3, v6}, LF4/f;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {v1}, Lcom/android/camera/data/data/w;->c0(I)Z

    invoke-static {v1}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lu2/Q;->c0(I)V

    invoke-virtual {v0, v1, v13}, Lq6/X;->Lm(IZ)V

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {v8, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    return-void

    :sswitch_1
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_16

    :cond_5
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/w;->i0()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configProPhotoBt2020Switch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa7

    if-ne v1, v3, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-string v6, "pref_pro_photo_bt2020"

    invoke-virtual {v3, v6, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_6
    if-eqz v2, :cond_7

    const-string v2, "off"

    goto :goto_2

    :cond_7
    const-string v2, "on"

    :goto_2
    const-string v3, "panel_menu"

    const-string v4, "bt_2020"

    invoke-static {v4, v2, v9, v3}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pro_mode_bt2020"

    invoke-static {v2, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LEs/f;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, LEs/f;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, v13}, Lq6/X;->Lm(IZ)V

    return-void

    :sswitch_2
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_16

    :cond_8
    const-string v0, "pref_camera_second_screen_tap_shoot_key"

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    invoke-static {}, LK2/j;->c()Z

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v0, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_second_screen_tap_shoot"

    invoke-static {v0, v1, v9}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v0, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    goto :goto_3

    :cond_a
    invoke-static {}, LK2/j;->c()Z

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v13

    :goto_3
    const-string v0, "configSecondScreenTapShootSwitch: "

    invoke-static {v0, v10, v13}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :sswitch_3
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_16

    :cond_b
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1, v13}, Lcom/android/camera/data/data/E;->v0(IZ)V

    const-string v2, "configCloseFocus: false"

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    invoke-static {v1, v5}, Lcom/android/camera/data/data/E;->v0(IZ)V

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/Z;

    invoke-virtual {v2, v1}, Lv2/Z;->o(I)V

    :cond_d
    invoke-static {v1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {v1, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    :cond_e
    invoke-static {v1, v13}, Lcom/android/camera/data/data/j;->M1(IZ)V

    invoke-virtual {v0}, Lq6/X;->D8()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, LWh/a;->g()LWh/a;

    const-string v3, "pref_camera_crop_preferred_key"

    invoke-virtual {v2, v3, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v2}, LWh/a;->c()V

    const-string v2, "configCloseFocus: true"

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LEs/F;

    const/16 v6, 0xb

    invoke-direct {v3, v6}, LEs/F;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v3, 0xa2

    invoke-virtual {v0, v3, v13}, Lq6/X;->Lm(IZ)V

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_near_object_focus"

    const/4 v9, 0x0

    invoke-static {v0, v1, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_4
    invoke-virtual {v0}, Lq6/X;->P3()V

    return-void

    :sswitch_5
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lq6/r;

    invoke-direct {v2, v0, v13}, Lq6/r;-><init>(Lq6/X;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_6
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/i;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LE4/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_7
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LHs/c;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LHs/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_8
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE3/k;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LE3/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_9
    invoke-virtual {v0, v1, v13}, Lq6/X;->An(IZ)V

    return-void

    :sswitch_a
    invoke-static {}, Lcom/android/camera/data/data/w;->e0()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-string v4, "pref_audio_map_key"

    invoke-virtual {v3, v4, v2}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF1/H1;

    const/16 v6, 0x12

    invoke-direct {v4, v6}, LF1/H1;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAudioMapOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v10, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "attr_audio_map"

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Ln6/c;

    invoke-direct {v2, v1, v5}, Ln6/c;-><init>(ZI)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_b
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/w;->g0(I)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    const/16 v4, 0xa4

    if-eq v1, v4, :cond_10

    const/16 v4, 0xa7

    if-eq v1, v4, :cond_f

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_10

    goto :goto_5

    :cond_f
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v4, "pref_camera_pro_video_histogram_photo_key"

    invoke-virtual {v1, v4, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    goto :goto_5

    :cond_10
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const-string v4, "pref_camera_pro_video_histogram_video_key"

    invoke-virtual {v1, v4, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :goto_5
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LCs/S;

    const/16 v6, 0x15

    invoke-direct {v4, v6}, LCs/S;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lo5/z;

    invoke-direct {v1, v2, v5}, Lo5/z;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_histogram"

    const/4 v9, 0x0

    invoke-static {v0, v1, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_c
    invoke-static {}, Lcom/android/camera/data/data/E;->N()Z

    move-result v0

    xor-int/2addr v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configProVideoRecordingSimple "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v2, "pref_pro_video_recording_simple"

    invoke-virtual {v1, v2, v0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/L0;

    invoke-direct {v2, v0, v5}, Lcom/android/camera/fragment/L0;-><init>(ZI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LQ5/x;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LQ5/x;-><init>(ZI)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "attr_disp"

    invoke-static {v0, v1, v9}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_d
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/O;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LEs/O;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_e
    const-string v1, "configMultiCamReselect: "

    invoke-static {v10, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/q;

    const/16 v4, 0x12

    invoke-direct {v1, v4}, LC4/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_f
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LHs/c;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LHs/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_10
    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v3

    const-string v4, "configMenuSlowMotionVideo: targetValue="

    invoke-static {v4, v2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/camera/data/data/m;->Q0(Z)V

    if-nez v1, :cond_11

    invoke-static {v13}, Lcom/android/camera/data/data/E;->G0(Z)V

    invoke-static {v3, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {v0, v3}, Lq6/X;->p0(I)V

    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-static {v13}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {v3, v13}, Lcom/android/camera/data/data/E;->M0(IZ)V

    invoke-static {v13}, Lcom/android/camera/data/data/m;->F0(Z)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LF1/z2;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, LF1/z2;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v3}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/Q;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/Q;

    invoke-static {v3, v13}, Lcom/android/camera/data/data/E;->t0(IZ)V

    invoke-virtual {v4, v3}, Lr2/Q;->p(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_11
    if-nez v1, :cond_12

    const/16 v5, 0xac

    goto :goto_6

    :cond_12
    const/16 v5, 0xa2

    :goto_6
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1, v5}, Lu2/Q;->c0(I)V

    invoke-virtual {v0, v5, v13}, Lq6/X;->Lm(IZ)V

    const-string/jumbo v0, "slow_motion"

    invoke-static {v0, v2}, Lq6/X;->Te(Ljava/lang/String;Z)V

    return-void

    :sswitch_11
    invoke-virtual {v0, v1}, Lq6/X;->Q5(I)V

    return-void

    :sswitch_12
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_16

    :cond_13
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "configVideoLogSwitch: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v9, v2, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    invoke-virtual {v4, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f0;

    if-nez v4, :cond_14

    move-object v7, v12

    goto :goto_7

    :cond_14
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-static {v1, v9}, Lcom/android/camera/data/data/w;->X0(IZ)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "M_proVideo_"

    const-string v11, "log"

    invoke-static {v9, v10, v11}, Liq/d;->g(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, LE3/c;

    const/16 v11, 0x10

    invoke-direct {v10, v11}, LE3/c;-><init>(I)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_15

    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    invoke-virtual {v9}, LJe/c;->E1()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {v5}, Lr5/a;->c(Z)Z

    move-result v9

    if-eqz v9, :cond_15

    move v9, v5

    goto :goto_8

    :cond_15
    move v9, v13

    :goto_8
    if-nez v2, :cond_1c

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/W;

    if-nez v2, :cond_16

    goto/16 :goto_9

    :cond_16
    invoke-static {v1}, Lcom/android/camera/data/data/E;->a(I)V

    invoke-static {}, Lq6/X;->dd()V

    invoke-static {v13}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-interface {v2}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    invoke-static {v2}, Lj9/f;->m4(Lj9/e;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v10, Lr2/z0;

    invoke-virtual {v2, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/z0;

    const-string/jumbo v10, "wide"

    invoke-virtual {v2, v1, v10}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_17
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/Z;

    invoke-virtual {v2, v1}, Lv2/Z;->isSwitchOn(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v2, v1}, Lv2/Z;->o(I)V

    :cond_18
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/y0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/y0;

    invoke-virtual {v2, v13}, Lv2/y0;->p(I)V

    const-string v2, "-1"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/E;->u0(I)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls2/c;

    invoke-virtual {v3, v13}, Ls2/c;->u(Z)V

    :cond_19
    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->T1()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lq6/X;->N9(F)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v6, Lr2/A0;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/A0;

    iget-boolean v3, v3, Lr2/A0;->e:Z

    if-eqz v3, :cond_1b

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v6, Lr2/D0;

    invoke-virtual {v3, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/D0;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_1b
    invoke-virtual {v2}, LJe/c;->E1()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v5}, Lr5/a;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lq6/X;->P0()V

    :cond_1c
    :goto_9
    invoke-virtual {v0, v1, v13}, Lq6/X;->Lm(IZ)V

    if-eqz v9, :cond_1d

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF4/e;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v13}, LF4/e;-><init>(IB)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1d
    if-nez v4, :cond_1e

    goto :goto_a

    :cond_1e
    invoke-virtual {v4, v1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    :goto_a
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {v8, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    return-void

    :sswitch_13
    invoke-virtual {v0, v1}, Lq6/X;->o3(I)V

    return-void

    :sswitch_14
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_16

    :cond_1f
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "configSecondScreenVideoPrompter: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v4, v9}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/android/camera/data/data/E;->M0(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LF4/g;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, LF4/g;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lo5/i;

    invoke-direct {v4, v2, v5}, Lo5/i;-><init>(ZI)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_50

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0xac

    if-ne v1, v2, :cond_20

    invoke-static {v13}, Lcom/android/camera/data/data/m;->Q0(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lu2/Q;->c0(I)V

    invoke-virtual {v0, v3, v13}, Lq6/X;->Lm(IZ)V

    :cond_20
    invoke-static {v1}, Lcom/android/camera/data/data/w;->Y(I)Z

    return-void

    :sswitch_15
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "configMacroMode: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v2

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/data/data/E;->J(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4, v13}, Lcom/android/camera/data/data/E;->y0(IZ)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    invoke-virtual {v4, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/n0;

    if-eqz v4, :cond_22

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v0}, Lq6/X;->Wb()I

    const-string v6, "0"

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v7

    invoke-virtual {v4, v7, v6}, Lv2/n0;->setComponentValue(ILjava/lang/String;)V

    :cond_22
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v4

    invoke-static {v4, v13}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_23
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    invoke-interface {v4}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v4

    invoke-interface {v4}, Lj6/j;->c()Lj9/e;

    move-result-object v4

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/data/data/m;->r0(ILj9/e;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v0, v5}, Lq6/X;->N1(Z)V

    :cond_24
    if-nez v1, :cond_26

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v6

    const/16 v7, 0xa2

    if-eq v6, v7, :cond_25

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v6

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_26

    :cond_25
    invoke-virtual {v0}, Lq6/X;->h6()V

    invoke-static {v13}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-virtual {v0}, Lq6/X;->D8()V

    :cond_26
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v6

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/module/W;

    invoke-virtual {v0, v6}, Lq6/X;->Qj(I)V

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    const-string v6, "macro"

    invoke-static {v6, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    const-class v7, Lr2/z;

    invoke-virtual {v6, v7}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/z;

    const-class v8, Lr2/w;

    invoke-virtual {v6, v8}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/w;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v8

    invoke-virtual {v8, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/Z;

    const-string v8, "m"

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v9

    invoke-virtual {v3, v9, v15}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v4}, Lj9/f;->A1(Lj9/e;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v3

    const/16 v9, 0xa2

    if-eq v3, v9, :cond_29

    const/16 v3, 0xc2

    const/16 v9, 0xb21

    filled-new-array {v3, v9}, [I

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lq6/X;->a8(Ljava/lang/String;[I)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    iget-object v8, v0, Lq6/X;->b:[I

    iput-object v8, v3, Lv2/D0;->v:[I

    goto :goto_b

    :cond_27
    invoke-static {v4}, Lj9/f;->A1(Lj9/e;)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v9

    const/16 v10, 0xa2

    if-eq v9, v10, :cond_28

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v9

    iget-object v9, v9, Lv2/D0;->v:[I

    iput-object v9, v0, Lq6/X;->b:[I

    invoke-virtual {v0, v8}, Lq6/X;->Pf(Ljava/lang/String;)V

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v8

    invoke-virtual {v7, v8}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v9

    invoke-virtual {v6, v9, v8}, Lr2/w;->N(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v8

    new-instance v9, LH3/m;

    const/16 v10, 0xe

    invoke-direct {v9, v10}, LH3/m;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_28
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v8

    invoke-virtual {v3, v8}, Lv2/Z;->o(I)V

    :cond_29
    :goto_b
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v8, LEs/J;

    const/16 v9, 0x12

    invoke-direct {v8, v9}, LEs/J;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v3

    invoke-virtual {v0, v3, v13}, Lq6/X;->Lm(IZ)V

    invoke-static {v4}, Lj9/f;->A1(Lj9/e;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v4, 0xa3

    if-ne v3, v4, :cond_2a

    invoke-virtual {v7, v3}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lr2/w;->N(ILjava/lang/String;)Z

    :cond_2a
    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v3

    if-nez v1, :cond_2c

    if-eqz v3, :cond_2b

    invoke-interface {v3}, LQ6/p;->zp()V

    invoke-interface {v3}, LQ6/p;->Cm()V

    :cond_2b
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/D0;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, LF1/D0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LR6/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/K;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v13}, LEs/K;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2c
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LH4/T;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, LH4/T;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, LQ6/r1;->b()LQ6/r1;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-interface {v4}, LS6/a;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2d

    move v13, v5

    :cond_2d
    if-eqz v3, :cond_2e

    if-nez v1, :cond_2e

    invoke-interface {v3}, LQ6/p;->vg()V

    :cond_2e
    if-nez v1, :cond_50

    if-nez v13, :cond_50

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v0

    const/16 v1, 0xac

    if-ne v0, v1, :cond_2f

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->c1()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_2f
    invoke-static {}, LV6/e;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/p;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, LC4/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_30
    if-eqz v2, :cond_50

    invoke-interface {v2}, LQ6/l1;->Tf()V

    return-void

    :cond_31
    :goto_c
    const-string v0, "ignore configMacroMode"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_16
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1}, Lv2/D0;->D()Z

    move-result v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lv2/D0;->I(Z)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LEs/e;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LEs/e;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_32

    const-string v1, "REARx5"

    goto :goto_d

    :cond_32
    const-string v1, "REARx7"

    :goto_d
    invoke-virtual {v0, v5, v1, v5}, Lq6/X;->F7(ILjava/lang/String;Z)V

    return-void

    :sswitch_17
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/android/camera/data/data/w;->d1()Z

    move-result v1

    if-nez v1, :cond_33

    goto/16 :goto_16

    :cond_33
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/android/camera/data/data/w;->S()Z

    move-result v1

    if-nez v1, :cond_34

    const-string v2, "hand_gesture_desc"

    invoke-static {v2, v5}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_34
    xor-int/lit8 v2, v1, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v4

    const-class v5, Lu2/w;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu2/w;

    invoke-virtual {v4, v3, v2}, Lu2/w;->toSwitch(IZ)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu2/w;

    iput-boolean v2, v3, Lu2/w;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "attr_palm_shutter"

    invoke-static {v3, v4, v9}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lq6/i;

    invoke-direct {v3, v1}, Lq6/i;-><init>(Z)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configSwitchHandGesture: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/O;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, LEs/O;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_18
    invoke-virtual {v0}, Lq6/X;->aa()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_36

    goto/16 :goto_16

    :cond_36
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->r()Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_16

    :cond_37
    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v2

    xor-int/2addr v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configCinematicAspectRatio: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/camera/data/data/E;->t0(IZ)V

    const/16 v3, 0xab

    if-eq v1, v3, :cond_3a

    const/16 v4, 0xa3

    if-eq v1, v4, :cond_3a

    const/16 v3, 0xad

    if-ne v1, v3, :cond_38

    goto :goto_e

    :cond_38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "attr_video_ratio_movie"

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C6()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {v1}, Lcom/android/camera/data/data/m;->S0(I)V

    :cond_39
    invoke-static {v1}, Lcom/android/camera/data/data/m;->w0(I)V

    invoke-virtual {v0, v1, v13}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_3a
    :goto_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "attr_picture_ration_movie"

    const/4 v9, 0x0

    invoke-static {v1, v2, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v5}, Lq6/X;->x5(Ljava/lang/String;Z)V

    return-void

    :sswitch_19
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    const-class v2, Lt2/d;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/d;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v6

    const-string v7, "pref_camera_timer_burst"

    invoke-virtual {v6, v7, v4}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, LL9/M;

    const/4 v8, 0x2

    invoke-direct {v7, v3, v8}, LL9/M;-><init>(ZI)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v3, :cond_3b

    goto :goto_f

    :cond_3b
    const-string v15, "OFF"

    :goto_f
    invoke-virtual {v1, v2, v15}, Lt2/d;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "attr_timer_burst"

    const/4 v9, 0x0

    invoke-static {v1, v3, v9}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa3

    if-ne v2, v1, :cond_3c

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF4/g;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LF4/g;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3c
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/v;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LCs/v;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lo5/i;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Lo5/i;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lo5/j;

    invoke-direct {v1, v4, v5}, Lo5/j;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/G;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_1a
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_16

    :cond_3d
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ6/i0;

    const/4 v3, -0x2

    const/4 v4, 0x7

    invoke-interface {v1, v4, v3}, LQ6/i0;->d(II)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    const-string/jumbo v4, "showOrHideStreetWorkspace: "

    invoke-static {v4, v10, v3}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_40

    const-string v1, "attr_custom_street"

    const/16 v3, 0xe1

    invoke-static {v3, v1, v2}, Liq/d;->f(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LCs/d;

    const/16 v4, 0xf

    invoke-direct {v2, v4}, LCs/d;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v0

    if-eq v0, v3, :cond_3e

    goto :goto_10

    :cond_3e
    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/A;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LV9/A;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/y2;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LF1/y2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/p;->b()LQ6/p;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-interface {v0}, LQ6/p;->zp()V

    invoke-interface {v0}, LQ6/p;->Cm()V

    :cond_3f
    :goto_10
    invoke-static {}, LR6/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/K;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v13}, LEs/K;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/A0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/A0;

    const/16 v1, 0x20

    iput v1, v0, Lv2/A0;->b:I

    return-void

    :cond_40
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/f;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LCs/f;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/z2;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LF1/z2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_1b
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_16

    :cond_41
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ6/i0;

    const/16 v1, 0xd0

    const/4 v4, 0x7

    invoke-interface {v0, v4, v1}, LQ6/i0;->d(II)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const-string/jumbo v2, "showOrHideStreetFocus: "

    invoke-static {v2, v10, v1}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_42

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/d;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, LEs/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/A;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LV9/A;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/S;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LCs/S;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LR6/a;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/K;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v13}, LEs/K;-><init>(IB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v0, "icon"

    const-string v1, "attr_focus_distance"

    const-string v2, "enter"

    invoke-static {v1, v2, v9, v0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LDn/D;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LDn/D;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_1c
    iget-object v1, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v1, :cond_50

    invoke-static {}, LK2/b;->R()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    iget-boolean v1, v1, Lt2/j;->o:Z

    xor-int/2addr v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configSwitchGalleryPreview: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v2

    iput-boolean v1, v2, Lt2/j;->o:Z

    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    invoke-virtual {v0, v14}, LY2/f;->g(LZ5/m;)Z

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/P3;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LF1/P3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LFs/h;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LFs/h;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_11

    :cond_43
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/R3;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, LF1/R3;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC3/d;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, LC3/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_44
    :goto_11
    const-string v0, "notebook"

    const-string/jumbo v1, "watch_shot_exchange"

    invoke-static {v0, v1, v9}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_1d
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/u;

    invoke-direct {v3, v0, v1}, Lq6/u;-><init>(Lq6/X;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_1e
    iget-object v1, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v1, :cond_50

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    iget-boolean v1, v1, Lt2/j;->p:Z

    xor-int/2addr v1, v5

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v2

    iput-boolean v1, v2, Lt2/j;->p:Z

    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    sget-object v1, LZ5/m;->a:LZ5/m;

    invoke-virtual {v0, v1}, LY2/f;->g(LZ5/m;)Z

    return-void

    :sswitch_1f
    const-string v0, "configFlatSelfie"

    invoke-static {v10, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/s;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/M;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LC4/M;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_20
    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    if-eqz v0, :cond_50

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    iget-boolean v1, v1, Lt2/j;->n:Z

    xor-int/2addr v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configGallery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v2

    iput-boolean v1, v2, Lt2/j;->n:Z

    invoke-virtual {v0, v14}, LY2/f;->g(LZ5/m;)Z

    return-void

    :sswitch_21
    iget-object v1, v0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v1, :cond_45

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v1

    iget-boolean v1, v1, Lt2/j;->q:Z

    xor-int/2addr v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configSwitchFlip: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/camera/data/data/A;->h(Z)V

    iget-object v0, v0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->m:LY2/f;

    sget-object v1, LZ5/m;->k:LZ5/m;

    invoke-virtual {v0, v1}, LY2/f;->g(LZ5/m;)Z

    :cond_45
    invoke-static {}, LK2/b;->X()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "down"

    goto :goto_12

    :cond_46
    const-string/jumbo v0, "up"

    :goto_12
    const-string/jumbo v1, "split_screen_exchange"

    invoke-static {v0, v1, v9}, Liq/d;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_22
    invoke-virtual {v0, v1}, Lq6/X;->Ci(I)V

    return-void

    :sswitch_23
    invoke-virtual {v0, v1}, Lq6/X;->H8(I)V

    return-void

    :sswitch_24
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_16

    :cond_47
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/u;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/u;

    const/16 v4, 0xa3

    if-eq v2, v4, :cond_48

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v13

    goto :goto_13

    :cond_48
    iget-boolean v2, v3, Lv2/u;->a:Z

    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "configColorEnhance: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v4

    if-eq v1, v5, :cond_49

    goto :goto_14

    :cond_49
    const-string v1, "attr_operate_state"

    const-string v6, "pro_color"

    if-eqz v2, :cond_4a

    iput-boolean v13, v3, Lv2/u;->a:Z

    iput-boolean v13, v3, Lv2/u;->b:Z

    const/16 v2, 0x8

    invoke-interface {v4, v2}, LQ6/l1;->N6(I)V

    new-instance v2, Lgq/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v6, v2, Lgq/h;->a:Ljava/lang/String;

    new-instance v3, Lgq/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v3, v2, Lgq/h;->b:Lgq/f;

    const-string/jumbo v3, "value_pro_color_close"

    invoke-virtual {v2, v3, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    goto :goto_14

    :cond_4a
    iput-boolean v5, v3, Lv2/u;->a:Z

    iput-boolean v5, v3, Lv2/u;->b:Z

    invoke-interface {v4, v13}, LQ6/l1;->N6(I)V

    new-instance v2, Lgq/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v6, v2, Lgq/h;->a:Ljava/lang/String;

    new-instance v3, Lgq/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v3, v2, Lgq/h;->b:Lgq/f;

    const-string/jumbo v3, "value_pro_color_open"

    invoke-virtual {v2, v3, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    :goto_14
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LHs/c;

    const/16 v6, 0xb

    invoke-direct {v2, v6}, LHs/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    const/16 v1, 0x4a

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-interface {v0, v1}, Lj6/i;->updatePreferenceInWorkThread([I)V

    return-void

    :sswitch_25
    invoke-virtual {v0}, Lq6/X;->S4()V

    return-void

    :sswitch_26
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-static {}, Lcom/android/camera/data/data/j;->b1()Z

    move-result v1

    const-string v2, "pref_cv_watermark_key"

    const-string v3, "pref_dualcamera_watermark_last_key"

    const-string v4, "pref_time_watermark_last_key"

    const-string v6, "pref_camera_watermark_type_last_key"

    if-nez v1, :cond_4b

    invoke-static {}, Lr5/a;->b()LGg/P;

    move-result-object v1

    invoke-virtual {v1}, LGg/P;->g()Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0, v4, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0, v3, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v0, v6, v12}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v0, v2, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    const-string v1, "pref_cv_watermark_time"

    invoke-virtual {v0, v1, v5}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    const-string v1, "pref_cv_watermark_location"

    invoke-virtual {v0, v1, v5}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_4b
    invoke-static {}, Lcom/android/camera/data/data/j;->r1()Z

    move-result v1

    xor-int/2addr v5, v1

    const-string v7, "pref_dualcamera_watermark_key"

    const-string v8, "pref_camera_watermark_type_key"

    if-eqz v1, :cond_4c

    invoke-virtual {v0, v7, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "configWatermarkSwitch: KEY_TIME_WATERMARK and KEY_DEVICE_WATERMARK is all turned off"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v10, v1, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "watermark_off"

    invoke-virtual {v0, v8, v1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0, v6, v1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    goto :goto_15

    :cond_4c
    const-string/jumbo v1, "watermark_regular"

    invoke-virtual {v0, v8, v1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0, v6, v1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    :goto_15
    const-string v1, "pref_time_watermark_key"

    invoke-virtual {v0, v1, v5}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0, v4, v5}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0, v2, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "configWatermarkSwitch: KEY_WATERMARK_TYPE: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v12}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " KEY_WATERMARK_LAST_TYPE: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v12}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " KEY_TIME_WATERMARK: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " KEY_DEVICE_WATERMARK: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " KEY_TIME_WATERMARK_LAST: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " KEY_DEVICE_WATERMARK_LAST: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v13}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :sswitch_27
    invoke-virtual {v0}, Lq6/X;->i8()V

    return-void

    :sswitch_28
    invoke-virtual {v0}, Lq6/X;->D6()V

    return-void

    :sswitch_29
    invoke-virtual {v0}, Lq6/X;->X1()V

    return-void

    :sswitch_2a
    invoke-virtual {v0}, Lq6/X;->u2()V

    return-void

    :sswitch_2b
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_4d

    goto/16 :goto_16

    :cond_4d
    invoke-virtual {v0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "configVideoPrompter: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v3, v4, v9}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lcom/android/camera/data/data/E;->M0(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LB9/c;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, LB9/c;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_4e

    invoke-static {v1}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LEs/r;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, LEs/r;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4e
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LH4/C;

    const/4 v6, 0x2

    invoke-direct {v4, v2, v6}, LH4/C;-><init>(ZI)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez v2, :cond_50

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v2

    if-eqz v2, :cond_50

    const/16 v2, 0xac

    if-ne v1, v2, :cond_50

    invoke-static {v13}, Lcom/android/camera/data/data/m;->Q0(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const/16 v3, 0xa2

    invoke-virtual {v1, v3}, Lu2/Q;->c0(I)V

    invoke-virtual {v0, v3, v13}, Lq6/X;->Lm(IZ)V

    return-void

    :sswitch_2c
    invoke-virtual {v0, v1}, Lq6/X;->g7(I)V

    return-void

    :sswitch_2d
    invoke-virtual {v0, v1}, Lq6/X;->d7(I)V

    return-void

    :sswitch_2e
    invoke-virtual {v0, v1}, Lq6/X;->R1(I)V

    return-void

    :sswitch_2f
    invoke-virtual {v0, v1}, Lq6/X;->o7(I)V

    return-void

    :sswitch_30
    invoke-virtual {v0, v1}, Lq6/X;->cm(I)V

    return-void

    :sswitch_31
    invoke-virtual {v0}, Lq6/X;->ce()V

    return-void

    :sswitch_32
    invoke-virtual {v0, v1}, Lq6/X;->F5(I)V

    return-void

    :sswitch_33
    invoke-virtual {v0}, Lq6/X;->h5()V

    return-void

    :sswitch_34
    invoke-virtual {v0}, Lq6/X;->R4()V

    return-void

    :sswitch_35
    invoke-virtual {v0}, Lq6/X;->g5()V

    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/O;

    const/16 v4, 0x12

    invoke-direct {v1, v4}, LEs/O;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_36
    invoke-virtual {v0, v1}, Lq6/X;->Nd(I)V

    return-void

    :sswitch_37
    invoke-virtual {v0}, Lq6/X;->S0()V

    return-void

    :sswitch_38
    invoke-virtual {v0}, Lq6/X;->T2()V

    return-void

    :sswitch_39
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_16

    :cond_4f
    const-string/jumbo v0, "showOrHideManualPictureStyle"

    invoke-static {v10, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/J;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LEs/J;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_3a
    invoke-virtual {v0}, Lq6/X;->y2()V

    return-void

    :sswitch_3b
    invoke-virtual {v0}, Lq6/X;->Fh()V

    return-void

    :sswitch_3c
    invoke-virtual {v0}, Lq6/X;->G1()V

    return-void

    :sswitch_3d
    invoke-virtual {v0}, Lq6/X;->b5()V

    return-void

    :sswitch_3e
    invoke-virtual {v0, v1}, Lq6/X;->e3(I)V

    return-void

    :sswitch_3f
    invoke-virtual {v0}, Lq6/X;->u5()V

    return-void

    :sswitch_40
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH4/q;

    const/16 v11, 0x10

    invoke-direct {v2, v0, v11}, LH4/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_41
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LF1/H1;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LF1/H1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_42
    invoke-virtual {v0}, Lq6/X;->x4()V

    return-void

    :sswitch_43
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LS3/d;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, LS3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_44
    invoke-virtual {v0}, Lq6/X;->se()V

    return-void

    :sswitch_45
    invoke-virtual {v0}, Lq6/X;->V3()V

    return-void

    :sswitch_46
    invoke-virtual {v0, v13}, Lq6/X;->He(I)Z

    return-void

    :sswitch_47
    invoke-virtual {v0}, Lq6/X;->F3()V

    return-void

    :sswitch_48
    invoke-virtual {v0}, Lq6/X;->L4()V

    return-void

    :sswitch_49
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/d;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, LE4/d;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_4a
    invoke-static {}, Lq6/X;->z3()V

    return-void

    :sswitch_4b
    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_50
    :goto_16
    return-void

    :cond_51
    const-string/jumbo v0, "showOrHideManualPictureStyleNew"

    invoke-static {v10, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "attr_custom_picturestyle_new"

    const/16 v3, 0xa7

    invoke-static {v3, v0, v2}, Liq/d;->f(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LCs/J;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, LCs/J;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lj9/K;

    const/16 v2, 0xc4

    invoke-direct {v1, v2, v5}, Lj9/K;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :sswitch_4c
    invoke-virtual {v0, v5}, Lq6/X;->oj(Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x91 -> :sswitch_4c
        0x92 -> :sswitch_4b
        0x93 -> :sswitch_4a
        0x96 -> :sswitch_49
        0x97 -> :sswitch_48
        0x98 -> :sswitch_47
        0xa1 -> :sswitch_46
        0xa2 -> :sswitch_45
        0xa3 -> :sswitch_44
        0xa4 -> :sswitch_43
        0xa6 -> :sswitch_42
        0xa7 -> :sswitch_41
        0xa8 -> :sswitch_40
        0xa9 -> :sswitch_3f
        0xaa -> :sswitch_3e
        0xac -> :sswitch_3d
        0xaf -> :sswitch_3c
        0xb2 -> :sswitch_3b
        0xb3 -> :sswitch_3a
        0xb4 -> :sswitch_39
        0xb5 -> :sswitch_38
        0xb6 -> :sswitch_37
        0xb7 -> :sswitch_36
        0xbd -> :sswitch_35
        0xbf -> :sswitch_34
        0xc2 -> :sswitch_33
        0xc3 -> :sswitch_32
        0xc4 -> :sswitch_31
        0xc7 -> :sswitch_30
        0xc8 -> :sswitch_2f
        0xc9 -> :sswitch_2e
        0xcd -> :sswitch_2d
        0xcf -> :sswitch_2c
        0xd3 -> :sswitch_2b
        0xd4 -> :sswitch_31
        0xd7 -> :sswitch_2a
        0xd9 -> :sswitch_29
        0xda -> :sswitch_28
        0xdc -> :sswitch_27
        0xdf -> :sswitch_26
        0xe0 -> :sswitch_25
        0xe3 -> :sswitch_24
        0xe4 -> :sswitch_23
        0xe5 -> :sswitch_22
        0xe9 -> :sswitch_21
        0xea -> :sswitch_20
        0xeb -> :sswitch_1f
        0xec -> :sswitch_1e
        0xed -> :sswitch_1d
        0xee -> :sswitch_1c
        0xef -> :sswitch_31
        0xf0 -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xf9 -> :sswitch_19
        0xfb -> :sswitch_18
        0xfc -> :sswitch_17
        0xfe -> :sswitch_16
        0xff -> :sswitch_15
        0x100 -> :sswitch_14
        0x102 -> :sswitch_13
        0x104 -> :sswitch_12
        0x106 -> :sswitch_11
        0x10d -> :sswitch_10
        0x200 -> :sswitch_f
        0x201 -> :sswitch_e
        0x203 -> :sswitch_d
        0x205 -> :sswitch_c
        0x206 -> :sswitch_b
        0x207 -> :sswitch_a
        0x208 -> :sswitch_9
        0x20b -> :sswitch_8
        0x20c -> :sswitch_7
        0x20d -> :sswitch_6
        0x20e -> :sswitch_5
        0x210 -> :sswitch_4
        0x212 -> :sswitch_3
        0xb20 -> :sswitch_3b
        0xb24 -> :sswitch_2
        0xb29 -> :sswitch_1
        0xd41 -> :sswitch_0
    .end sparse-switch
.end method

.method public final q5(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configHdr: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigChangeImpl"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/z;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z;

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lr2/z;->setComponentValue(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lq6/X;->I7()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lq6/X;->a:Lcom/android/camera/a;

    instance-of v2, v2, Lcom/android/camera/Camera;

    if-eqz v2, :cond_3

    const-string v2, "normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "auto"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-wide/16 v2, 0xa3

    invoke-static {v2, v3}, LPh/h;->j(J)V

    :cond_3
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LL9/g;

    const/16 v4, 0x11

    invoke-direct {v3, p1, v4}, LL9/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LDn/D;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, LDn/D;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/B;

    invoke-direct {v3, p1, v0}, Lq6/B;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lq6/C;

    invoke-direct {v3, p0, p1}, Lq6/C;-><init>(Lq6/X;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v0}, Lq6/X;->Mc(I)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, LB3/b;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, LB3/b;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->T()Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0xaf

    if-ne v0, p1, :cond_4

    iget-boolean p1, v1, Lr2/z;->f:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lq6/X;->Lm(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final q8(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v0, LQ6/k0;

    invoke-virtual {p0, v0}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p0

    check-cast p0, LQ6/k0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LQ6/k0;->onKaleidoscopeChanged(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lx4/G;->c(Z)V

    return-void
.end method

.method public final qb()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSpeechShutter"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LFn/D;

    const/16 v2, 0xf

    invoke-direct {v1, v0, v2}, LFn/D;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final rb(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "configDualVideoRecordType: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/C;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/C;

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {p1}, Lq6/X;->G2(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/C;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MERGED"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "STANDALONE"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv2/C;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lv2/C;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lv2/C;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lv2/C;->d:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LV9/M;

    const/4 v0, 0x3

    invoke-direct {p1, v1, v0}, LV9/M;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, Lf2/e;->c:Lf2/e;

    const/4 p1, 0x1

    const v0, 0x7f060be1

    invoke-virtual {p0, v0, p1}, Lf2/e;->a(IZ)I

    move-result p0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lq6/U;

    invoke-direct {v0, v2, p0}, Lq6/U;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LEs/p;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, LEs/p;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final registerProtocol()V
    .locals 2

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/C;

    invoke-virtual {v0, v1, p0}, LN6/h;->a(Ljava/lang/Class;LN6/a;)V

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    return-void
.end method

.method public final rg()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isCinemasterSupported"
        type = 0x0
    .end annotation

    invoke-static {}, LU6/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC4/p;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LC4/p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lq6/X;->Lm(IZ)V

    return-void
.end method

.method public final rk()V
    .locals 5

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->y()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    sget-object v1, Lr2/i1;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v3, 0xd1

    if-eq v1, v3, :cond_3

    const/16 v3, 0xe4

    const/4 v4, 0x2

    if-eq v1, v3, :cond_2

    invoke-static {v1}, Lr2/i1;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v4}, Lq6/X;->q(II)V

    return-void

    :cond_2
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w5()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v4}, Lq6/X;->q(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final s2()V
    .locals 2

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/b;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LEs/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final s3(Lcom/android/camera/fragment/film/FilmItem;Z)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFilmMode"
        type = 0x1
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    const-string v2, "configFilm: start="

    const-string v3, "ConfigChangeImpl"

    if-nez p1, :cond_0

    invoke-static {v2, v3, p2}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v4, ", filmItem.id="

    invoke-static {v2, v4, p2}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0xbd

    const/16 v3, 0xcf

    const/16 v4, 0xd4

    const/16 v5, 0xd9

    const/16 v6, 0xd0

    if-eqz p2, :cond_7

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p2

    invoke-virtual {p2, p1}, LWh/b;->A(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v0, p2

    goto :goto_2

    :pswitch_0
    const-string/jumbo v0, "video_f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_2

    :pswitch_1
    const-string/jumbo v0, "video_e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_2
    const-string/jumbo v0, "video_d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_3
    const-string/jumbo v0, "video_c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_4
    const-string/jumbo v0, "video_b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_5
    const-string/jumbo v1, "video_a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_6
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p0

    const-class p1, Lcom/android/camera/data/observeable/a;

    invoke-virtual {p0, p1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/observeable/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_7
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p1

    const-class p2, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, p2}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->reset()V

    invoke-virtual {p0, v4}, Lq6/X;->v(I)V

    return-void

    :pswitch_8
    invoke-virtual {p0, v6}, Lq6/X;->v(I)V

    return-void

    :pswitch_9
    sget-object p0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sput-object p0, LC4/c;->a:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LE3/i;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, LE3/i;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_a
    invoke-virtual {p0, v3}, Lq6/X;->v(I)V

    return-void

    :pswitch_b
    invoke-virtual {p0, v2}, Lq6/X;->v(I)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    if-eq v1, v2, :cond_a

    if-eq v1, v5, :cond_a

    if-eq v1, v3, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v4, :cond_a

    const/16 p1, 0xd5

    if-eq v1, p1, :cond_a

    :cond_9
    :goto_3
    return-void

    :cond_a
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p1

    if-eqz p1, :cond_b

    if-ne v1, v6, :cond_b

    invoke-interface {p1, v0}, LQ6/l1;->a7(Z)V

    const-wide/16 v0, -0x1

    const/16 p2, 0x8

    const v2, 0x7f140744

    invoke-interface {p1, v0, v1, p2, v2}, LQ6/l1;->np(JII)V

    :cond_b
    const/16 p1, 0xd3

    invoke-virtual {p0, p1}, Lq6/X;->v(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1afced9d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final se()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPrivacyWatermark"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LHp/b;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, LXh/a;->b()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_1

    invoke-static {}, LXh/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, LE4/e;

    const/16 v1, 0x13

    invoke-direct {p0, v1}, LE4/e;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-static {}, Lci/d;->b()Lci/b;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "pref_privacy_watermark_enabled"

    invoke-virtual {v1, v3, v4}, Lbi/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/fragment/O0;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/fragment/O0;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LEs/i;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, LEs/i;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {}, LXh/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa3

    const-string v2, "attr_privacy_watermark_mode"

    invoke-static {v0, v2, p0, v1}, LW9/O;->n(Ljava/lang/Object;Ljava/lang/String;II)V

    return-void
.end method

.method public final sp(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/y;

    invoke-direct {v1, p0, p1}, Lq6/y;-><init>(Lq6/X;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final tq(Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedBeautyLens"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/E;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k;

    const/16 v3, 0xab

    invoke-virtual {v2, v3, p1}, Lv2/k;->setComponentValue(ILjava/lang/String;)V

    const-string v2, "attr_beauty_lens_id"

    const-string v3, "click"

    invoke-static {p1, v2, v3}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, LQ6/C;->e9()V

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x95

    const/16 v3, 0x5c

    const/16 v4, 0x30

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lq6/X;->R1(I)V

    const-string p0, "pref_beautify_skin_smooth_ratio_key"

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/camera/data/data/j;->J1(ILjava/lang/String;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v1, Lv2/Q;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/Q;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    const/16 v0, 0xd

    const/4 v1, 0x2

    filled-new-array {v0, v1, v4, v3, v2}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceInWorkThread([I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    filled-new-array {v4, v3, v2}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f141376

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "12"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/Q;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/Q;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2.39x1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LZh/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LZh/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LF1/y;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, LF1/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_4
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lq6/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq6/z;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final u2()V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedCclock"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/m;->M(I)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/i;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/i;

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    invoke-virtual {v6, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/i;

    invoke-virtual {v6}, Lr2/i;->n()I

    move-result v6

    and-int/lit8 v7, v6, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/j;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LEs/j;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_5

    const/4 p0, 0x1

    if-eq v6, p0, :cond_4

    const/4 p0, 0x2

    if-eq v6, p0, :cond_3

    const/16 p0, 0x8

    if-eq v6, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/l;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LEs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/k;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LEs/k;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_4
    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/i;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LE4/i;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_5
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v6

    invoke-virtual {v6, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/i;

    invoke-virtual {v5, v1, v3}, Lr2/i;->toSwitch(IZ)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v2, :cond_e

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v5, Lr2/f0;

    invoke-virtual {v2, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/f0;

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, LE4/K;

    const/16 v7, 0x10

    invoke-direct {v6, v7}, LE4/K;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v5

    const-class v6, Lv2/k0;

    invoke-virtual {v5, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/k0;

    iget-boolean v6, v5, Lv2/k0;->s:Z

    if-nez v6, :cond_6

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->d0()Z

    move-result v0

    invoke-virtual {v5, v1, v0}, Lv2/k0;->L(IZ)Z

    move-result v0

    invoke-virtual {p0}, Lq6/X;->h6()V

    if-eqz v0, :cond_6

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_6
    invoke-virtual {p0}, Lq6/X;->D8()V

    invoke-virtual {v2, v1}, Lr2/f0;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Lr2/i;->g:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v2, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {v5, v1}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lr2/j1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v6

    :goto_1
    invoke-static {v0, v5}, Lr2/j1;->f(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v4, v4, Lr2/i;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    goto :goto_2

    :cond_8
    const-string v4, "8,60"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "8,120"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "3001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_a
    :goto_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v4, Lv2/f0;

    invoke-virtual {v0, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/Z;

    invoke-virtual {v0, v1}, Lv2/Z;->isSwitchOn(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v1}, Lv2/Z;->o(I)V

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_b
    invoke-static {v1}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v1, v3}, Lcom/android/camera/data/data/E;->F0(IZ)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LCs/l;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, LCs/l;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LC3/f;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, LC3/f;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v4, LF1/r1;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, LF1/r1;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_c
    invoke-static {v1, v3}, Lcom/android/camera/data/data/E;->E0(IZ)V

    invoke-static {v1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v1, v3}, Lcom/android/camera/data/data/E;->v0(IZ)V

    :cond_d
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/z0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z0;

    const-string/jumbo v2, "wide"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {v1, v3}, Lcom/android/camera/data/data/w;->X0(IZ)V

    :cond_e
    const/16 v0, 0xe3

    if-ne v1, v0, :cond_f

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-string v2, "pref_cinematic_intell_dolly_in_anime"

    invoke-virtual {v0, v2, v3}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_f
    invoke-static {}, LQ6/N;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LH4/K;

    const/16 v4, 0xe

    invoke-direct {v2, v4}, LH4/K;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/x;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/V3;

    const/16 v4, 0xf

    invoke-direct {v2, v4}, LF1/V3;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LF1/l0;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, LF1/l0;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1, v3}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_10
    :goto_3
    const-string p0, "ConfigChangeImpl"

    const-string v0, "current Module is null!"

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final u5()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "ConfigChangeImpl"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object p0

    invoke-interface {p0}, Lj6/f;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->M(Landroid/content/Context;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "configPanoramaDirection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/O0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH4/z;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LH4/z;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LCs/l;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "current Module is null!"

    invoke-static {v1, p0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ui()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGradienter"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/w;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->Ci(I)V

    :cond_0
    return-void
.end method

.method public final unRegisterProtocol()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/C;

    invoke-virtual {v0, v1, p0}, LN6/h;->b(Ljava/lang/Class;LN6/a;)V

    return-void
.end method

.method public final uo()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportAiEnhancedVideo"
        type = 0x2
    .end annotation

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->u(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/n;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LEs/n;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs updatePreferenceInWorkThread([I)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LFn/P;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, LFn/P;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final v(I)V
    .locals 1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu2/Q;->c0(I)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object p1

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_0
    const-string p0, "ignore changeMode "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ConfigChangeImpl"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final v3(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LE4/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LE4/a;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj9/e;

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_3

    :cond_1
    invoke-static {p0}, Lj9/f;->k4(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v1, Lr2/f0;

    invoke-virtual {p1, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/f0;

    iget-object v1, p1, Lr2/f0;->g:Lr2/h0;

    iget-object v1, v1, Lr2/h0;->a:Lr2/f0;

    invoke-virtual {v1, v0}, Lr2/f0;->s(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {p1, v0}, Lr2/g0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lr2/f0;->C(Ljava/lang/String;Ljava/lang/String;Lj9/e;)Z

    move-result v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v2

    invoke-virtual {v2}, Lu6/f;->f()I

    move-result v2

    iget p0, p0, Lj9/e;->e:I

    if-eq v2, p0, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lu6/f;->O(I)Lj9/e;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lr2/f0;->C(Ljava/lang/String;Ljava/lang/String;Lj9/e;)Z

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    invoke-static {v1, p1}, Lq6/X;->xd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final v4(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq6/H;

    invoke-direct {v1, p0, p1}, Lq6/H;-><init>(Lq6/X;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final v5()V
    .locals 4

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa2

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xac

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xba

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/u1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LF1/u1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    invoke-static {v1}, Lq6/X;->nd(I)V

    invoke-interface {v0}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->c()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->A1(Lj9/e;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/z;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    invoke-virtual {v1, v2}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lq6/X;->N1(Z)V

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object p0

    const/16 v0, 0xb

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-interface {p0, v0}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final v8()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/camera/module/W;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/M;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LF1/M;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final vn()Z
    .locals 5

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_4

    invoke-static {}, Lg2/a;->k()Lx2/b;

    move-result-object v3

    const-string v4, "pref_camera_manual_workspace_used_index_key"

    invoke-virtual {v3, v4, v2}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lq6/X;->Ua(I)Z

    move-result p0

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LL9/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LL9/p;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return p0

    :cond_1
    if-eq v0, v1, :cond_2

    :goto_0
    return v2

    :cond_2
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v3, LT9/I;

    invoke-virtual {v1, v3}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, LT9/I;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, LT9/a;->getWorkspaceDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, LT9/I;->z()V

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    new-instance v4, Lq6/s;

    invoke-direct {v4, p0, v1, v0}, Lq6/s;-><init>(Lq6/X;LT9/I;I)V

    const/4 p0, 0x0

    invoke-virtual {v1, v3, p0, v4}, LT9/I;->y(ILcom/android/camera/fragment/t;Lio/reactivex/functions/d;)V

    return v2

    :cond_4
    invoke-static {v0}, Lq6/X;->Ua(I)Z

    move-result p0

    return p0
.end method

.method public final vo()Z
    .locals 4

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v2, 0xa2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, LU6/c;->h()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoBase;->getSensorSwitch()I

    move-result p0

    const-string v0, "[VideoSwitch] recheckIfVideoRecordSwitch: sensorSwitch = "

    invoke-static {p0, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ConfigChangeImpl"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final w0(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lq6/X;->y9()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lq6/X;->E9()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LQ6/K0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lq6/c;

    invoke-direct {v0, p1}, Lq6/c;-><init>(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w6(ILjava/lang/String;Ljava/lang/String;Lr2/I0;)V
    .locals 4

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v1

    new-instance v2, Lq6/e;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, p2}, Lq6/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/J;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LFs/h;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LFs/h;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-static {}, LQ6/n;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LC3/c;

    const/16 v2, 0xf

    invoke-direct {v0, v2}, LC3/c;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {p0}, Lq6/X;->e9()V

    invoke-virtual {p0}, Lq6/X;->Fg()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lq6/X;->Go(Z)V

    invoke-static {}, LQ6/B0;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lq6/f;

    invoke-direct {v2, p4, p3, v1}, Lq6/f;-><init>(Lr2/I0;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lq6/X;->f3()V

    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance p4, LV9/X;

    const/4 v0, 0x1

    invoke-direct {p4, p2, v0}, LV9/X;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p3

    const-class p4, Lv2/l;

    invoke-virtual {p3, p4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv2/l;

    invoke-virtual {p3, v1}, Lv2/l;->isSwitchOn(I)Z

    move-result p4

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p4, :cond_2

    const-string p4, "OFF"

    invoke-virtual {p3, v1, p4}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p3

    const-class p4, Lr2/l0;

    invoke-virtual {p3, p4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr2/l0;

    invoke-virtual {p3, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-static {p3, v1}, Lur/i;->k(FI)F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/camera/data/data/m;->T0(Ljava/lang/String;)V

    invoke-static {}, LQ6/w1;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance p4, LF1/r1;

    const/16 v2, 0x11

    invoke-direct {p4, v2}, LF1/r1;-><init>(I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p3

    new-instance p4, LH4/K;

    const/16 v2, 0xc

    invoke-direct {p4, v2}, LH4/K;-><init>(I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v1, p1}, Lq6/X;->Lm(IZ)V

    :cond_2
    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->A()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class p1, Lv2/h;

    invoke-virtual {p0, p1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/h;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, ""

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lv2/h;->k:F

    :goto_0
    invoke-static {p1, p0, p2}, LCs/Q;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lv2/h;->j:F

    goto :goto_0

    :goto_1
    invoke-static {}, LR6/a;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LDs/g;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, LDs/g;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    return-void
.end method

.method public final wf()V
    .locals 2

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "showOrHideAudioGain: "

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LH3/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LH3/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final wg()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedPeakingMF"
        type = 0x0
    .end annotation

    invoke-virtual {p0}, Lq6/X;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    invoke-interface {v1}, Lj6/f;->y()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/camera/data/data/w;->h0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConfigChangeImpl"

    const-string v2, "reCheckFocusPeakConfig: configFocusPeakSwitch"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lq6/X;->cm(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final wh()V
    .locals 3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "ConfigChangeImpl"

    const-string/jumbo v0, "showMasterLivePanel: "

    invoke-static {p0, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/E;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, LEs/E;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "icon"

    const-string v0, "expand_cinematography"

    const/4 v1, 0x0

    const-string v2, "click"

    invoke-static {v0, v1, v2, p0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final x4()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportIDCardMode"
        type = 0x0
    .end annotation

    const-string v0, "ConfigChangeImpl"

    const-string v1, "configIDCard"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LF1/r1;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, LF1/r1;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    iput v2, v1, Lv2/D0;->u:I

    const-string v1, "goto_id_card"

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/data/data/E;->C0(FI)V

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lu2/Q;->c0(I)V

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {v1}, Lcom/android/camera/module/loader/base/StartControl;->create(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setViewConfigType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setResetType(I)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/base/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/base/StartControl;

    move-result-object v0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->I7(Lcom/android/camera/module/loader/base/StartControl;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "ignore changeMode 182"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final x5(Ljava/lang/String;Z)V
    .locals 20

    move-object/from16 v0, p0

    const/16 v1, 0x14

    const/16 v2, 0x13

    const/16 v4, 0xc

    const-string v8, "2.39x1"

    const/16 v9, 0x12

    const-string v10, "16x9"

    invoke-virtual {v0}, Lq6/X;->aa()Z

    move-result v11

    const-string v12, "ConfigChangeImpl"

    const/4 v13, 0x0

    if-eqz v11, :cond_34

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/W;

    invoke-interface {v11}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v14

    invoke-interface {v14}, Lj6/j;->r()Z

    move-result v14

    if-nez v14, :cond_1

    const-string v0, "configRatio:frame unAvailable "

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v12, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v11}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v14

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v15

    const-class v6, Lr2/Q;

    invoke-virtual {v15, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr2/Q;

    if-eqz p2, :cond_2

    invoke-virtual {v6, v14}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v15

    const-class v5, Lv2/m;

    invoke-virtual {v15, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/m;

    invoke-virtual {v5, v14}, Lv2/m;->isSwitchOn(I)Z

    move-result v15

    move-object/from16 v3, p1

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    if-eqz v15, :cond_3

    invoke-virtual {v5, v14, v13}, Lv2/m;->m(IZ)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v5

    new-instance v15, LEs/e;

    invoke-direct {v15, v9}, LEs/e;-><init>(I)V

    invoke-virtual {v5, v15}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    move-object v15, v3

    :goto_0
    invoke-static {v14}, Lcom/android/camera/data/data/E;->A(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_4

    invoke-static {v15, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v14, v13}, Lcom/android/camera/data/data/E;->t0(IZ)V

    :cond_4
    move-object v15, v10

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move/from16 v3, p2

    :goto_1
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/E;->F()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/camera/data/data/E;->q0()V

    invoke-virtual {v6, v14}, Lr2/Q;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v15

    :cond_6
    const/4 v5, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_2
    move v9, v5

    goto/16 :goto_3

    :sswitch_0
    const-string v9, "20.5x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v9, v1

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    move v9, v2

    goto/16 :goto_3

    :sswitch_2
    const-string v10, "19.5x9"

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto :goto_2

    :sswitch_3
    const-string v9, "full_3x2"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_2

    :cond_9
    const/16 v9, 0x11

    goto/16 :goto_3

    :sswitch_4
    const-string v9, "22x10"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_2

    :cond_a
    const/16 v9, 0x10

    goto/16 :goto_3

    :sswitch_5
    const-string v9, "16x10"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    const/16 v9, 0xf

    goto/16 :goto_3

    :sswitch_6
    const-string v9, "7x10"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_2

    :cond_c
    const/16 v9, 0xe

    goto/16 :goto_3

    :sswitch_7
    const-string v9, "21x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_2

    :cond_d
    const/16 v9, 0xd

    goto/16 :goto_3

    :sswitch_8
    const-string v9, "20x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_2

    :cond_e
    move v9, v4

    goto/16 :goto_3

    :sswitch_9
    const-string v9, "19x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_2

    :cond_f
    const/16 v9, 0xb

    goto/16 :goto_3

    :sswitch_a
    const-string v9, "18x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v9, 0xa

    goto/16 :goto_3

    :sswitch_b
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_c
    const-string v9, "15x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v9, 0x8

    goto/16 :goto_3

    :sswitch_d
    const-string v9, "9x8"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    goto/16 :goto_2

    :cond_13
    const/4 v9, 0x7

    goto :goto_3

    :sswitch_e
    const-string v9, "7x5"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_2

    :cond_14
    const/4 v9, 0x6

    goto :goto_3

    :sswitch_f
    const-string v9, "3x2"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    goto/16 :goto_2

    :cond_15
    const/4 v9, 0x5

    goto :goto_3

    :sswitch_10
    const-string v9, "1x1"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    goto/16 :goto_2

    :cond_16
    const/4 v9, 0x4

    goto :goto_3

    :sswitch_11
    const-string v9, "21.35x9"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    goto/16 :goto_2

    :cond_17
    const/4 v9, 0x3

    goto :goto_3

    :sswitch_12
    const-string v9, "10x16.38"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    goto/16 :goto_2

    :cond_18
    const/4 v9, 0x2

    goto :goto_3

    :sswitch_13
    const-string v9, "10x15.80"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19

    goto/16 :goto_2

    :cond_19
    const/4 v9, 0x1

    goto :goto_3

    :sswitch_14
    const-string v9, "10x15.30"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_2

    :cond_1a
    move v9, v13

    :cond_1b
    :goto_3
    packed-switch v9, :pswitch_data_0

    move v1, v13

    move v2, v1

    goto/16 :goto_6

    :pswitch_0
    const/16 v5, 0xa3

    if-ne v14, v5, :cond_23

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v9

    invoke-virtual {v9}, Lu6/f;->P()Lj9/e;

    move-result-object v9

    invoke-static {v9}, Lj9/f;->A4(Lj9/e;)Z

    move-result v9

    if-nez v9, :cond_23

    invoke-virtual {v0}, Lq6/X;->aa()Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v0}, Lq6/X;->Vb()Z

    move-result v9

    if-nez v9, :cond_1c

    goto/16 :goto_5

    :cond_1c
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/module/r;

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v10

    invoke-interface {v10}, Lj6/j;->r()Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_5

    :cond_1d
    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v10

    if-eq v10, v5, :cond_1e

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v10

    const/16 v7, 0xa8

    if-eq v10, v7, :cond_1e

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v7

    const/16 v10, 0xe6

    if-eq v7, v10, :cond_1e

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v7

    const/16 v10, 0xab

    if-eq v7, v10, :cond_1e

    goto :goto_5

    :cond_1e
    invoke-static {}, Lvr/l;->a()Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_5

    :cond_1f
    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v7

    if-nez v7, :cond_20

    goto :goto_5

    :cond_20
    invoke-static {}, Lvr/l;->a()Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v7, "configLiveShotSwitch: MUTEX false"

    invoke-static {v12, v7}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v13}, Lcom/android/camera/data/data/m;->K0(Z)V

    :cond_21
    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v7

    if-ne v7, v5, :cond_22

    invoke-static {}, Lj9/f;->C()I

    move-result v5

    const/16 v7, 0xfa

    if-ne v5, v7, :cond_22

    invoke-virtual {v9}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v5

    invoke-virtual {v0, v5, v13}, Lq6/X;->Lm(IZ)V

    goto :goto_4

    :cond_22
    invoke-virtual {v9}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v5

    const/16 v7, 0x31

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-interface {v5, v7}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :goto_4
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v5

    new-instance v7, LEs/K;

    invoke-direct {v7, v1, v13}, LEs/K;-><init>(IB)V

    invoke-virtual {v5, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LC4/k;

    invoke-direct {v5, v2}, LC4/k;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_23
    :goto_5
    :pswitch_1
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_6
    if-eqz v1, :cond_24

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v5, Lv2/a;

    invoke-virtual {v1, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/a;

    invoke-virtual {v1, v13}, Lv2/a;->s(Z)V

    :cond_24
    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0xd1

    filled-new-array {v1}, [I

    move-result-object v2

    aget v2, v2, v13

    if-eq v2, v1, :cond_25

    goto :goto_7

    :cond_25
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget-object v1, v1, Lv2/D0;->v:[I

    iput-object v1, v0, Lq6/X;->b:[I

    if-eqz v1, :cond_26

    const-string v1, "j"

    invoke-virtual {v0, v1}, Lq6/X;->Pf(Ljava/lang/String;)V

    :cond_26
    invoke-static {}, Lcom/android/camera/data/data/m;->Y0()V

    :goto_7
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v13}, Lv2/D0;->I(Z)V

    invoke-static {v14}, Lcom/android/camera/data/data/E;->a(I)V

    :cond_27
    if-nez v3, :cond_28

    const-string v1, "configRatio: "

    invoke-virtual {v1, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v14, v15}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    :cond_28
    invoke-static {}, Lcom/android/camera/data/data/E;->H()Z

    move-result v1

    const-string v2, "4x3"

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/android/camera/data/data/r;->g()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lcom/android/camera/data/data/r;->h()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Lq6/X;->a0()V

    :cond_29
    const/16 v1, 0xa7

    if-ne v14, v1, :cond_2a

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LEs/k;

    invoke-direct {v3, v4}, LEs/k;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2a
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "2.39x1_new"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_9

    :cond_2b
    :goto_8
    move-object/from16 v17, v15

    goto :goto_a

    :cond_2c
    :goto_9
    invoke-static {v14, v13}, Lcom/android/camera/data/data/E;->F0(IZ)V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v3, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C6()Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-static {v14}, Lcom/android/camera/data/data/m;->S0(I)V

    :cond_2d
    iget-object v1, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->P()Lj9/e;

    move-result-object v1

    invoke-static {v1}, Lj9/f;->c2(Lj9/e;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Ls2/c;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls2/c;

    invoke-virtual {v1, v13}, Ls2/c;->u(Z)V

    :cond_2e
    const/4 v1, 0x1

    invoke-static {v14, v1}, Lcom/android/camera/data/data/E;->t0(IZ)V

    goto :goto_8

    :goto_a
    const/16 v15, 0xd2

    const-string v16, "attr_picture_ration"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, LW9/O;->m(IILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v15, v17

    const/16 v1, 0xe3

    if-ne v14, v1, :cond_2f

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v3, "pref_cinematic_intell_dolly_in_anime"

    invoke-virtual {v1, v3, v13}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_2f
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/l;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/l;

    if-eqz v1, :cond_30

    invoke-interface {v11}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lv2/l;->isSwitchOn(I)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LH3/c;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, LH3/c;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_30
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LEs/C;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, LEs/C;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-static {v13}, Lcom/android/camera/data/data/m;->Q0(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lu2/Q;->c0(I)V

    :cond_31
    invoke-virtual {v0}, Lq6/X;->T8()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "OFF"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lq6/X;->I6(ILjava/lang/String;)V

    :cond_32
    const-string v1, "open_gate"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1}, Lq6/X;->p5(IZ)V

    :cond_33
    invoke-static {v14}, Lcom/android/camera/data/data/w;->c0(I)Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1, v14}, Lu2/Q;->c0(I)V

    invoke-virtual {v0, v14, v13}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_34
    :goto_b
    const-string v0, "configRatio:ignore "

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v12, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x632a7832 -> :sswitch_14
        -0x632a7797 -> :sswitch_13
        -0x632a03cb -> :sswitch_12
        -0x54cab90e -> :sswitch_11
        0xc6aa -> :sswitch_10
        0xce2d -> :sswitch_f
        0xdd34 -> :sswitch_e
        0xe4b9 -> :sswitch_d
        0x171be5 -> :sswitch_c
        0x171fa6 -> :sswitch_b
        0x172728 -> :sswitch_a
        0x172ae9 -> :sswitch_9
        0x177d7f -> :sswitch_8
        0x178140 -> :sswitch_7
        0x1ac900 -> :sswitch_6
        0x2ccd452 -> :sswitch_5
        0x2d91a57 -> :sswitch_4
        0x4f5a407d -> :sswitch_3
        0x56d670f0 -> :sswitch_2
        0x57f29bdb -> :sswitch_1
        0x580c7606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final xk(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v0

    invoke-interface {v0}, Lj6/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/j;->A(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, LQ6/C;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LC4/p;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, LC4/p;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    const/16 v3, 0xe7

    if-ne v2, v3, :cond_2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/d0;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/d0;

    invoke-virtual {v3, v2, p1}, Lv2/d0;->setComponentValue(ILjava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/android/camera/data/data/E;->a(I)V

    const-string v2, "2"

    const-string v3, "pref_master_live_adverse_key"

    if-nez v1, :cond_3

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-string v4, "pref_master_live_current_range_key"

    invoke-virtual {v1, v4}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    invoke-virtual {v1, v3}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/w;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/w;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/c;->getPersistValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/w;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v4, Lr2/z0;

    invoke-virtual {v1, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z0;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lq6/X;->Lm(IZ)V

    return-void

    :cond_5
    :goto_0
    const-string p0, "ConfigChangeImpl"

    const-string p1, "current Module is null!"

    invoke-static {p0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final xm(Z)V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/W;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/android/camera/data/data/m;->P()Z

    move-result v2

    if-eqz p1, :cond_4

    if-eqz v2, :cond_2

    const p1, 0x7f1413f8

    goto :goto_0

    :cond_2
    const p1, 0x7f1413f7

    :goto_0
    iget-object v3, p0, Lq6/X;->a:Lcom/android/camera/a;

    invoke-static {}, LK2/j;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f140d8e

    goto :goto_1

    :cond_3
    const v4, 0x7f1413f2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lq6/X;->a:Lcom/android/camera/a;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, LQ6/l1;->de(Ljava/lang/String;Z)V

    :cond_4
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LF1/u1;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, LF1/u1;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v2, Lr2/q;

    invoke-virtual {p1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/q;

    iget p1, p1, Lr2/q;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    invoke-static {v1}, Lq6/X;->ub(Lcom/android/camera/module/W;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez p0, :cond_5

    move v2, v3

    :cond_5
    invoke-interface {v0, v2}, LQ6/l1;->pb(Z)V

    return-void

    :cond_6
    invoke-interface {v0, v2}, LQ6/l1;->pb(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final y2()V
    .locals 3

    invoke-static {}, LQ6/z;->b()LQ6/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ6/z;->onCloneGuideClicked()V

    :cond_0
    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "ConfigChangeImpl"

    const-string v1, "configCloneUseGuide"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v0, 0xb9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xbd

    const-string/jumbo v1, "value_m_film_user_guide"

    if-eq p0, v0, :cond_4

    const/16 v0, 0xcf

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd5

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/y2;

    const/16 v2, 0xe

    invoke-direct {v0, v2}, LF1/y2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/f;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, LCs/f;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LCs/d;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, LCs/d;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_5
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LEs/G;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LEs/G;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, LC4/c;->a:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_6

    const-string/jumbo v1, "value_clone_click_photo_guide"

    goto :goto_1

    :cond_6
    sget-object p0, LC4/c;->a:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_7

    const-string/jumbo v1, "value_clone_click_video_guide"

    goto :goto_1

    :cond_7
    sget-object p0, LC4/c;->a:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    if-ne p0, v0, :cond_8

    const-string/jumbo v1, "value_clone_click_freeze_frame_guide"

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-string p0, "attr_user_guide"

    const-string v0, "click"

    invoke-static {v1, p0, v0}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y9()Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xa2

    if-eq p0, v1, :cond_5

    const/16 v1, 0xa3

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa7

    if-eq p0, v1, :cond_4

    const/16 v1, 0xb3

    if-eq p0, v1, :cond_a

    const/16 v1, 0xd9

    if-eq p0, v1, :cond_a

    const/16 v1, 0xdb

    if-eq p0, v1, :cond_a

    const/16 v1, 0xe0

    if-eq p0, v1, :cond_a

    const/16 v1, 0xe2

    if-eq p0, v1, :cond_a

    const/16 v1, 0xe5

    if-eq p0, v1, :cond_a

    const/16 v1, 0xfe

    if-eq p0, v1, :cond_a

    const/16 v1, 0xbd

    if-eq p0, v1, :cond_a

    const/16 v1, 0xbe

    if-eq p0, v1, :cond_3

    const/16 v1, 0xcb

    if-eq p0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd4

    if-eq p0, v1, :cond_a

    const/16 v1, 0xd5

    if-eq p0, v1, :cond_a

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_0

    :cond_1
    :pswitch_0
    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C4()Z

    move-result p0

    if-eqz p0, :cond_7

    goto/16 :goto_1

    :cond_2
    :pswitch_1
    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object p0

    const-class v1, LFs/A;

    invoke-virtual {p0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object p0

    check-cast p0, LFs/A;

    invoke-virtual {p0}, LFs/A;->c()Z

    move-result p0

    if-eqz p0, :cond_7

    goto/16 :goto_1

    :cond_3
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v1, LDs/o;

    invoke-virtual {p0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LF1/S3;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, LF1/S3;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {}, LDs/n;->a()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LH4/N;

    invoke-direct {v4, v0}, LH4/N;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, LDs/p;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LH8/x;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, LH8/x;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez p0, :cond_a

    if-nez v3, :cond_a

    if-eqz v1, :cond_7

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    const-class v1, Lw7/c;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw7/c;

    invoke-virtual {p0}, Lw7/c;->b()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->X()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, LN6/h$a;->a:LN6/h;

    const-class v1, LN6/k;

    invoke-virtual {p0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LN6/k;

    invoke-interface {p0}, LN6/k;->Sp()V

    return v2

    :cond_7
    :goto_0
    invoke-static {}, LQ6/t0;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LU6/a;

    const/4 v3, 0x4

    invoke-direct {v1, v3}, LU6/a;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {}, LV6/b;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v3, LU4/d;

    invoke-direct {v3, v0}, LU4/d;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {}, LU6/c;->i()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {}, LU6/c;->b()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-static {}, LU6/c;->l()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    return v0

    :cond_a
    :goto_1
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xce
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final yh()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedColorEnhance"
        type = 0x2
    .end annotation

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->y4(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/u;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/u;

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result p0

    const/16 v1, 0xa3

    const/4 v2, 0x0

    if-eq p0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p0, v2

    goto :goto_0

    :cond_2
    iget-boolean p0, v0, Lv2/u;->a:Z

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v2}, LQ6/l1;->N6(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final ym()V
    .locals 5
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFilmMode"
        type = 0x0
    .end annotation

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/W;

    invoke-interface {p0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p0

    const/16 v1, 0xd0

    const/16 v2, 0xcf

    const/16 v3, 0xd4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne p0, v3, :cond_3

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v1

    const-class v3, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1, v3}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LF1/u1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LF1/u1;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, LQ6/l1;->a7(Z)V

    if-ne p0, v2, :cond_5

    const p0, 0x7f14073f

    goto :goto_0

    :cond_5
    const p0, 0x7f140744

    :goto_0
    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3, v1, p0}, LQ6/l1;->np(JII)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final yn()V
    .locals 2

    invoke-static {}, LQ6/l1;->b()LQ6/l1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq6/X;->a:Lcom/android/camera/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LE4/e;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LE4/e;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z4()V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoLogLofic"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->i()Lai/a;

    move-result-object v0

    check-cast v0, LA2/a$a;

    iget-object v0, v0, LA2/a$a;->b:Lu2/Q;

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    const-class v2, Lv2/Y;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/Y;

    invoke-static {v0}, Lcom/android/camera/data/data/E;->K(I)Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    const-string v4, "configLogLoficChange: isOpen "

    invoke-static {v4, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ConfigChangeImpl"

    invoke-static {v7, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Lv2/Y;->toSwitch(IZ)V

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/android/camera/data/data/E;->a(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/z0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/z0;

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/c;->reset(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/L0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/L0;

    invoke-virtual {v1, v0}, Lr2/L0;->reset(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/B0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/B0;

    invoke-virtual {v1, v0}, Lr2/B0;->reset(I)V

    :cond_0
    invoke-virtual {p0, v0, v5}, Lq6/X;->Lm(IZ)V

    if-nez v2, :cond_1

    invoke-static {}, LQ6/l1;->a()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF4/e;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, LF4/e;-><init>(IB)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "on"

    goto :goto_0

    :cond_2
    const-string p0, "off"

    :goto_0
    const-string v0, "icon"

    const-string v1, "attr_lofic_hdr"

    const-string v2, "click"

    invoke-static {v1, p0, v2, v0}, Liq/d;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z6(Lcom/xiaomi/microfilm/vlog/vv/VVItem;ZZ)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFeatureLiveVVMode"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->e()Ly2/a;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/c;

    invoke-virtual {v0, v1}, Ly2/a;->a(Ljava/lang/Class;)Ly2/c;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/c;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/c;->rollbackData()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/data/observeable/c;->b:Lcom/xiaomi/microfilm/vlog/vv/I;

    const-string v0, "configLiveVV "

    const-string v1, "ConfigChangeImpl"

    invoke-static {v0, v1, p2}, LF1/Q2;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    sget-object p2, LN6/h$a;->a:LN6/h;

    const-class p3, LT6/e;

    invoke-virtual {p2, p3}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object p2

    check-cast p2, LT6/e;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, LT6/e;->c()V

    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p2

    invoke-virtual {p2, p1}, LWh/b;->A(Ljava/lang/Object;)V

    const/16 p1, 0xb3

    invoke-virtual {p0, p1}, Lq6/X;->v(I)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LFn/x;

    const/16 p3, 0xf

    invoke-direct {p2, p3}, LFn/x;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LH3/m;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, LH3/m;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p1

    const-class p2, Lcom/xiaomi/microfilm/vlog/vv/VVItem;

    invoke-virtual {p1, p2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/microfilm/vlog/vv/VVItem;

    invoke-static {}, LT6/g;->b()LT6/g;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, LT6/g;->I()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lq6/X;->a:Lcom/android/camera/a;

    const/16 p2, 0xd1

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/android/camera/a;->a0:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lq6/X;->v(I)V

    return-void

    :cond_5
    :goto_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "configLiveVV exit background"

    invoke-static {v1, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0, p2}, Lu2/Q;->c0(I)V

    return-void
.end method

.method public final zh()V
    .locals 7

    invoke-virtual {p0}, Lq6/X;->Vb()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ConfigChangeImpl"

    const-string v3, "[VideoSwitch] updateVideoPrompter"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lq6/X;->Wb()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result v3

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LU4/h;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, LU4/h;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :cond_2
    const-string p0, "[VideoSwitch] updateVideoPrompter no necessary"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateVideoPrompter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x0

    const-string/jumbo v5, "video_prompter"

    invoke-static {v2, v5, v4}, Liq/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LQ6/n1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LHs/c;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, LHs/c;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/android/camera/data/data/w;->Y(I)Z

    invoke-static {}, LQ6/r1;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LEs/d;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, LEs/d;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4
    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v2

    new-instance v4, LH4/s;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, LH4/s;-><init>(ZI)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/m;->e0()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xac

    if-ne v1, v2, :cond_5

    invoke-static {v0}, Lcom/android/camera/data/data/m;->Q0(Z)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lu2/Q;->c0(I)V

    invoke-virtual {p0, v2, v0}, Lq6/X;->Lm(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final zn(I)V
    .locals 16
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoMasterFilter"
        type = 0x2
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/camera/data/data/j;->Z()I

    move-result v2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v4, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v4}, Lu2/Q;->E(I)I

    move-result v3

    invoke-static {v1}, Lcom/android/camera/data/data/j;->N1(I)V

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v4

    const-class v5, Lr2/f0;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr2/f0;

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v8, v1, 0xff

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/16 v11, 0xa7

    const/4 v12, 0x0

    if-ne v7, v9, :cond_2

    if-eq v8, v11, :cond_1

    const/16 v7, 0xa8

    if-ne v8, v7, :cond_2

    :cond_1
    move v7, v10

    goto :goto_1

    :cond_2
    move v7, v12

    :goto_1
    sget-boolean v9, LJe/c;->k:Z

    sget-object v9, LJe/c$b;->a:LJe/c;

    iget-object v13, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v13}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->V7()Z

    move-result v13

    const/16 v15, 0x49

    if-eqz v13, :cond_6

    if-eqz v7, :cond_5

    if-ne v8, v11, :cond_3

    const-string v13, "lut_cc"

    goto :goto_2

    :cond_3
    const-string v13, "lut_nc"

    :goto_2
    if-ne v8, v11, :cond_4

    move v14, v15

    goto :goto_3

    :cond_4
    const/16 v14, 0x48

    :goto_3
    invoke-static {v13, v14}, Lcom/xiaomi/camera/mivi/filter/MIVILutSaver;->saveFilmFilterLutWithCloudId(Ljava/lang/String;I)V

    goto :goto_4

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lri/e;->g(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v1}, Lsi/i;->c(I)V

    :cond_6
    :goto_4
    if-eqz v7, :cond_8

    if-ne v8, v11, :cond_7

    move v8, v15

    goto :goto_5

    :cond_7
    const/16 v8, 0x48

    goto :goto_5

    :cond_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lri/e;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    and-int/lit16 v8, v1, 0xfff

    :cond_9
    :goto_5
    invoke-static {}, LDs/a;->a()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDs/a;

    invoke-interface {v0}, Lrs/a;->ll()V

    return-void

    :cond_a
    invoke-virtual {v0}, Lq6/X;->v8()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/module/W;

    invoke-interface {v7}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v7

    invoke-interface {v7}, Lj6/f;->b()Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_8

    :cond_b
    const/4 v7, 0x0

    if-eqz v8, :cond_c

    invoke-virtual {v0, v3, v10}, Lq6/X;->gc(IZ)V

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/W;

    invoke-virtual {v0, v3}, Lq6/X;->Qj(I)V

    invoke-static {}, Lcom/android/camera/data/data/j;->l0()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v3, v7}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v0}, Lq6/X;->h6()V

    :cond_c
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v11

    if-eqz v11, :cond_d

    const/16 v13, 0x107

    filled-new-array {v13}, [I

    move-result-object v13

    invoke-interface {v11, v13}, LQ6/n1;->T0([I)V

    :cond_d
    invoke-static {v3, v7}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v7

    if-nez v7, :cond_f

    if-eqz v8, :cond_e

    if-nez v2, :cond_f

    :cond_e
    if-ne v2, v8, :cond_15

    :cond_f
    const/16 v7, 0xc8

    if-eq v8, v7, :cond_15

    if-eq v8, v7, :cond_14

    if-eqz v8, :cond_14

    if-eq v2, v7, :cond_10

    if-nez v2, :cond_14

    :cond_10
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/module/W;

    invoke-interface {v2}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v2

    invoke-interface {v2}, Lj6/j;->c()Lj9/e;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v7, v2, Lj9/e;->X3:Ljava/lang/Boolean;

    if-nez v7, :cond_13

    iget-object v7, v2, Lj9/e;->M3:Ljava/util/ArrayList;

    if-nez v7, :cond_11

    sget-object v7, Lga/w0;->z2:Lga/D0;

    invoke-virtual {v2, v7}, Lj9/e;->X0(Lga/D0;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v2, Lj9/e;->M3:Ljava/util/ArrayList;

    :cond_11
    iget-object v7, v2, Lj9/e;->M3:Ljava/util/ArrayList;

    if-eqz v7, :cond_12

    const/16 v11, 0x500

    const/16 v13, 0x1e

    invoke-static {v11, v13}, Lr2/j1;->g(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lj9/e;->X3:Ljava/lang/Boolean;

    goto :goto_6

    :cond_12
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v7, v2, Lj9/e;->X3:Ljava/lang/Boolean;

    :cond_13
    :goto_6
    iget-object v2, v2, Lj9/e;->X3:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    if-nez v8, :cond_16

    iget-object v2, v9, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->C5()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    invoke-virtual {v0, v3, v12}, Lq6/X;->Lm(IZ)V

    :cond_16
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/xiaomi/camera/effect/EffectController;->d0(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMasterFilter: filterId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ConfigChangeImpl"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "onFilterChanged: category = 0, newIndex = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Li3/b;->o:I

    const v7, 0xffff

    and-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    invoke-interface {v0}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-interface {v0, v1}, Lj6/i;->onShineChanged(I)V

    if-nez v4, :cond_17

    goto :goto_7

    :cond_17
    invoke-virtual {v4, v3}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "quality_fps_mutex"

    invoke-static {v0, v10}, Lq6/X;->gd(Ljava/lang/String;Z)V

    :cond_18
    :goto_8
    return-void
.end method
