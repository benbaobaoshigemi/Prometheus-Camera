.class public final Lri/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;
    .locals 11

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_0

    const/16 v0, 0xe1

    :cond_0
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->C()I

    move-result v1

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/camera/cloudfilter/constant/CameraType;->CAMERA_FRONT_ID:Lcom/xiaomi/camera/cloudfilter/constant/CameraType;

    invoke-virtual {v2}, Lcom/xiaomi/camera/cloudfilter/constant/CameraType;->getValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-static {}, Lsi/i;->b()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const-string v5, " finalCameraId : "

    const-string v6, " cameraId : "

    const-string v7, "FilterManager"

    const/4 v8, 0x0

    if-nez v3, :cond_2

    const-string p0, "filterData list is null mode : "

    invoke-static {v0, v1, p0, v6, v5}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v9, LEs/C;

    const/16 v10, 0xb

    invoke-direct {v9, v10}, LEs/C;-><init>(I)V

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v9, Lri/d;

    invoke-direct {v9, p0}, Lri/d;-><init>(I)V

    invoke-interface {v3, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;

    return-object p0

    :cond_3
    const-string p0, "cloudFilterItem is null mode : "

    invoke-static {v0, v1, p0, v6, v5}, LB3/d;->e(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v7, p0, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "=(.([^;]+))"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(II)Lo3/b;
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportPictureCloudFilter"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->r2()V

    invoke-static {p0}, Lri/e;->a(I)Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lri/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lri/e;->e([Ljava/lang/String;)[F

    move-result-object v7

    new-instance v3, Lo3/b;

    invoke-virtual {v0}, Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;->getFilterId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lo3/b;-><init>(Ljava/lang/String;II[FI)V

    goto :goto_0

    :cond_0
    move v6, p1

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    sget p1, Li3/b;->o:I

    const p1, 0xffff

    and-int/2addr p0, p1

    const/4 p1, -0x1

    if-le p0, p1, :cond_2

    invoke-static {}, Lo3/d;->values()[Lo3/d;

    move-result-object p1

    array-length p1, p1

    if-lt p0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lo3/d;->values()[Lo3/d;

    move-result-object p1

    aget-object p0, p1, p0

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->L()Z

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v0

    invoke-static {p0, p1, v0, v6}, Lvi/e0;->g(Lo3/d;ZII)Lo3/b;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lo3/d;->U3:Lo3/d;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->L()Z

    move-result p1

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v0

    invoke-static {p0, p1, v0, v6}, Lvi/e0;->g(Lo3/d;ZII)Lo3/b;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v3
.end method

.method public static d(IIIZ)Lvu/d;
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportPictureCloudFilter"
        type = 0x0
    .end annotation

    move v6, p0

    new-instance v0, Lvu/d;

    invoke-direct {v0}, Lvu/d;-><init>()V

    sget-boolean v1, LJe/c;->k:Z

    sget-object v1, LJe/c$b;->a:LJe/c;

    iget-object v2, v1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LJe/c;->r2()V

    sget v1, Li3/b;->N:I

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Lri/e;->a(I)Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lri/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;->getFilterId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvu/d;->b:Ljava/lang/String;

    iput p2, v0, Lvu/d;->e:I

    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lvu/d;->d:I

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->c:Z

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->f:Z

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->h:Z

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->l:Z

    const/4 v5, 0x5

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->m:Z

    const/4 v5, 0x6

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lvu/d;->n:Z

    const/4 v5, 0x7

    aget-object v3, v3, v5

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lri/e;->e([Ljava/lang/String;)[F

    move-result-object v3

    iput-object v3, v0, Lvu/d;->i:[F

    iput-boolean v4, v0, Lvu/d;->j:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    const v1, 0xffff

    and-int/2addr v1, p0

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    invoke-static {}, Lo3/d;->values()[Lo3/d;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lo3/d;->values()[Lo3/d;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-static {v1, p3, p1, p2}, Lvi/e0;->g(Lo3/d;ZII)Lo3/b;

    move-result-object p1

    iget-object p3, p1, Lo3/b;->j:Ljava/lang/String;

    iput-object p3, v0, Lvu/d;->b:Ljava/lang/String;

    iput p2, v0, Lvu/d;->e:I

    iget p2, p1, Lo3/b;->i:I

    iput p2, v0, Lvu/d;->d:I

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/xiaomi/camera/effect/EffectController;->H(I)Z

    move-result p2

    iput-boolean p2, v0, Lvu/d;->c:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/xiaomi/camera/effect/EffectController;->I(I)Z

    move-result p2

    iput-boolean p2, v0, Lvu/d;->f:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/xiaomi/camera/effect/EffectController;->J(I)Z

    move-result p2

    iput-boolean p2, v0, Lvu/d;->h:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/xiaomi/camera/effect/EffectController;->G(I)Z

    move-result p2

    iput-boolean p2, v0, Lvu/d;->l:Z

    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/xiaomi/camera/effect/EffectController;->K(I)Z

    move-result p0

    iput-boolean p0, v0, Lvu/d;->m:Z

    iput-boolean v2, v0, Lvu/d;->n:Z

    iget-object p0, p1, Lo3/b;->l:[F

    iput-object p0, v0, Lvu/d;->i:[F

    invoke-static {v6, v0}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->applyRenderAttributes(ILvu/d;)V

    iput-boolean v2, v0, Lvu/d;->j:Z

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static e([Ljava/lang/String;)[F
    .locals 3

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static f(F)Ljava/lang/String;
    .locals 1

    const v0, 0x40401062    # 3.001f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const-string p0, "/mnt/vendor/persist/camera/"

    return-object p0

    :cond_0
    const-string p0, "/data/vendor/camera/"

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lri/e;->a(I)Lcom/xiaomi/camera/cloudfilter/entity/CloudFilterItem;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method
