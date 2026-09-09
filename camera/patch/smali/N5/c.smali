.class public final LN5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN5/c$a;
    }
.end annotation


# static fields
.field public static final a:LN5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LN5/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LN5/c;->a:LN5/c;

    return-void
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(...)"

    invoke-static {v3, v5}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "|||"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v3, v7, v8}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v7}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v4}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_6

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string/jumbo v12, "|||"

    const/4 v13, 0x0

    const/16 v16, 0x3e

    invoke-static/range {v11 .. v16}, LQu/u;->C0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    const/16 v16, 0x0

    const-string/jumbo v13, "|||"

    const/16 v17, 0x3e

    move-object v12, v3

    invoke-static/range {v12 .. v17}, LQu/u;->C0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lev/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static b(Lcom/xiaomi/cam/watermark/a;Z)V
    .locals 6

    const-string v0, "item"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/cam/watermark/a;->l(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->S()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v1

    invoke-virtual {v1}, LGg/a0;->o()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x5f

    const/4 v5, 0x6

    invoke-static {v3, v4, v0, v5}, Lww/p;->H(Ljava/lang/String;CII)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "substring(...)"

    invoke-static {v3, v4}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v4, "off"

    invoke-static {v2, v4}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "location_latlng"

    invoke-static {v2, v4}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "location_address"

    invoke-static {v2, v4}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/xiaomi/cam/watermark/a;->m(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object v0, Lt5/a$b;->a:Lt5/a;

    iget-object v0, v0, Lt5/a;->f:Ljava/lang/String;

    const-string v1, "getLatlngString(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "complete_address"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object p2, Lt5/a$b;->a:Lt5/a;

    iget-object p2, p2, Lt5/a;->i:Ljava/lang/String;

    const-string v0, "getCompleteAddress(...)"

    invoke-static {p2, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object p2, p0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p2, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object p2, Lt5/a$b;->a:Lt5/a;

    iget-object p2, p2, Lt5/a;->h:Ljava/lang/String;

    const-string v0, "getSimpleAddress(...)"

    invoke-static {p2, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "LocationUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p2

    const-string v0, "pref_wm_normal_latlng_cache"

    invoke-virtual {p2, v0, p0}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v3, "pref_wm_normal_address_cache"

    invoke-virtual {v0, v3, p0}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    const v0, 0x3ca3d70a    # 0.02f

    invoke-static {p1, p2, p0, v0}, LN5/c;->f(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_3

    const-string p0, "getNormalLocationAddress is hitTargetAddressCache."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    const-string p1, "getNormalLocationAddress: lastLocationAddress isEmpty->"

    invoke-static {p1, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public static e(ZLcom/xiaomi/cam/watermark/a;Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lt5/a;->q:Lio/reactivex/internal/schedulers/n;

    sget-object v1, Lt5/a$b;->a:Lt5/a;

    iget-object v2, v1, Lt5/a;->e:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lt5/a;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v1, Lt5/a;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    invoke-virtual {p0}, LGg/a0;->l()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, LS8/d;->b(Z)LGg/P;

    move-result-object p0

    invoke-virtual {p0}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object p0

    invoke-virtual {p0}, LGg/a0;->l()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move p1, v2

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr p1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x2

    if-lt p1, p0, :cond_5

    invoke-static {v0, v1}, LI4/t;->a(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_2
    if-ltz v0, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    move-object p0, v3

    :goto_4
    const-string p1, "getCloudWmTagLocationText(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string p1, "pref_wm_tag_latlng_list_cache"

    invoke-virtual {p0, p1, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    const-string v0, "pref_wm_tag_address_list_cache"

    invoke-virtual {p1, v0, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    const v0, 0x399d4952    # 3.0E-4f

    invoke-static {p2, p0, p1, v0}, LN5/c;->f(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    return-object p0

    :cond_9
    :goto_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    const-string p1, "pref_wm_normal_latlng_cache"

    invoke-virtual {p0, p1, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p1

    const-string v0, "pref_wm_normal_address_cache"

    invoke-virtual {p1, v0, v3}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    const v0, 0x3ca3d70a    # 0.02f

    invoke-static {p2, p0, p1, v0}, LN5/c;->f(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_a

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "LocationUtil"

    const-string v0, "getTagLocationAddress is hitTargetAddressCache."

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-object p0
.end method

.method public static f(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "LocationUtil"

    const-string p2, "curLocation is null, skip hitTargetAddressCache."

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float p0, v3

    const-string/jumbo v3, "|||"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {p1, v4, v5}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, LQu/u;->O0(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v5}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v3}, LQu/u;->O0(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lww/k;->m(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lww/k;->m(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v7, p3

    if-gtz v7, :cond_7

    cmpg-float v6, v6, p3

    if-gtz v6, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    :goto_3
    move v3, v4

    goto :goto_2

    :cond_8
    :goto_4
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LH6/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lh6/b;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->k0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/app/Application;ZLandroid/location/Location;Ljava/lang/String;)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, LS8/d;->b(Z)LGg/P;

    move-result-object v3

    invoke-virtual {v3}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string/jumbo v4, "saveLocationDataToUserConfig->isAllowShowLocation->"

    invoke-static {v4, v0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "LocationUtil"

    invoke-static {v6, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "location_data_complete_address"

    const-string v5, "location_data_address"

    const-string v7, "location_data_latlng"

    const-string v8, ""

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v5}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v4}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saveLocationDataToUserConfig->locationLatlng and locationAddress is empty!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {v1}, LAi/a;->d(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    const-string/jumbo v0, "saveLocationDataToUserConfig->getLatlngStringCache"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    :cond_2
    invoke-virtual {v3}, Lcom/xiaomi/cam/watermark/a;->w()Ljava/lang/String;

    move-result-object v9

    const-string v10, "location_address_list"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const-string v11, "getApplication(...)"

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v11}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v1, v10}, LN5/c;->d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v10, v1}, LN5/c;->e(ZLcom/xiaomi/cam/watermark/a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9, v11}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v1, v10}, LN5/c;->d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12, v11}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "complete_address"

    invoke-static {v12, v1, v11}, LN5/c;->d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v10, v1}, LN5/c;->e(ZLcom/xiaomi/cam/watermark/a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    if-nez v1, :cond_5

    new-array v1, v2, [Ljava/lang/Object;

    const-string v10, "curLocation is null, skip saveTargetAddressCache."

    invoke-static {v6, v10, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v13, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_6

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v13

    const-string v14, "pref_wm_normal_latlng_cache"

    invoke-virtual {v13, v14, v8}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v15

    const-string v12, "pref_wm_normal_address_cache"

    invoke-virtual {v15, v12, v8}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {v15}, Lfv/l;->e(Ljava/lang/Object;)V

    const v2, 0x3ca3d70a    # 0.02f

    invoke-static {v1, v13, v15, v2}, LN5/c;->f(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    invoke-static {v1, v9, v14, v12, v2}, LN5/c;->a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "pref_wm_tag_latlng_list_cache"

    const-string v12, "pref_wm_tag_address_list_cache"

    const/4 v13, 0x1

    invoke-static {v1, v10, v2, v12, v13}, LN5/c;->a(Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->G()Z

    move-result v1

    if-nez v1, :cond_7

    move-object v11, v8

    goto :goto_2

    :cond_7
    move-object v8, v9

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    move v2, v13

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    move v1, v13

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a

    move v12, v13

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    const-string/jumbo v9, "saveLocationDataToUserConfig->locationLatlng isEmpty->"

    const-string v10, ", locationAddress isEmpty->"

    const-string v13, ", locationCompleteAddress isEmpty->"

    invoke-static {v9, v10, v2, v1, v13}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/xiaomi/cam/watermark/a;->M()LGg/a0;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v5}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v4}, LGg/a0;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final h(Landroid/location/Location;)LN5/c$a;
    .locals 5

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-static {p0}, LN5/c;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LS8/d;->b(Z)LGg/P;

    move-result-object v2

    invoke-virtual {v2}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/cam/watermark/a;->w()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "location_address_list"

    invoke-static {v2, v4}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, LS8/d;->b(Z)LGg/P;

    move-result-object v1

    invoke-virtual {v1}, LGg/P;->a()Lcom/xiaomi/cam/watermark/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/cam/watermark/a;->Q0()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v2, "complete_address"

    invoke-static {v1, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1, v2}, LN5/c;->d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {p0, p1, v3}, LN5/c;->d(Landroid/content/Context;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1, v3, p1}, LN5/c;->e(ZLcom/xiaomi/cam/watermark/a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {}, LN5/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, p1, v2}, LN5/c;->i(Landroid/app/Application;ZLandroid/location/Location;Ljava/lang/String;)V

    new-instance p0, LN5/c$a;

    invoke-direct {p0, v0, v1, v2}, LN5/c$a;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
