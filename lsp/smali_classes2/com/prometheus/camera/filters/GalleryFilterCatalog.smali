.class public final Lcom/prometheus/camera/filters/GalleryFilterCatalog;
.super Ljava/lang/Object;
.source "GalleryFilterCatalog.java"


# static fields
.field private static final CAMERA_ID_OFFSET:I = 0x7d0

.field public static final PREFIX:Ljava/lang/String; = "GALLERY_"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBuiltInEffect(ILvu/d;)V
    .locals 8

    const/16 v2, 0x12

    if-lt p0, v2, :cond_0

    const/16 v2, 0x18

    if-gt p0, v2, :cond_0

    const v5, 0x3ecccccd    # 0.4f

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x3eb33333    # 0.35f

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 122
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    return-void

    :cond_0
    const/16 v2, 0x76

    const/4 v3, 0x1

    if-eq p0, v2, :cond_2

    const/16 v2, 0x77

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x3eb33333    # 0.35f

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 151
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto/16 :goto_0

    :pswitch_1
    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 146
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto/16 :goto_0

    :pswitch_2
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x3e99999a    # 0.3f

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 141
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto/16 :goto_0

    :pswitch_3
    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 138
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_0

    :pswitch_4
    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v7, 0x3e99999a    # 0.3f

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 135
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_0

    :pswitch_5
    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v7, 0x3eb33333    # 0.35f

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_0

    :pswitch_6
    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v7

    .line 129
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_0

    .line 158
    :cond_1
    iput-boolean v3, p1, Lvu/d;->m:Z

    goto :goto_0

    .line 155
    :cond_2
    :pswitch_7
    iput-boolean v3, p1, Lvu/d;->l:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2336
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static applyRenderAttributes(ILvu/d;)V
    .locals 9

    const v0, 0xffff

    and-int/2addr v0, p0

    .line 69
    invoke-static {}, Lo3/d;->values()[Lo3/d;

    move-result-object v1

    if-ltz v0, :cond_0

    .line 72
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 73
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lo3/d;->name()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/prometheus/camera/filters/CustomLutStore;->effectForStableId(Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-static {v0}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->cameraIdForKey(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    move v7, v0

    const/4 v8, 0x1

    packed-switch v1, :pswitch_data_0

    .line 98
    invoke-static {v7, p1}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->applyBuiltInEffect(ILvu/d;)V

    goto :goto_1

    .line 95
    :pswitch_0
    iput-boolean v8, p1, Lvu/d;->n:Z

    goto :goto_1

    .line 92
    :pswitch_1
    iput-boolean v8, p1, Lvu/d;->m:Z

    goto :goto_1

    .line 89
    :pswitch_2
    iput-boolean v8, p1, Lvu/d;->l:Z

    goto :goto_1

    :pswitch_3
    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 86
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_1

    :pswitch_4
    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 83
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    goto :goto_1

    :pswitch_5
    const v5, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 80
    invoke-static/range {v0 .. v6}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->setTextureEffect(Lvu/d;ZZZFFF)V

    .line 102
    :goto_1
    invoke-static {v7}, Lcom/prometheus/camera/filters/CustomLutStore;->grainForGalleryId(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iput-boolean v8, p1, Lvu/d;->f:Z

    .line 105
    :cond_1
    invoke-static {v7}, Lcom/prometheus/camera/filters/CustomLutStore;->diffusionForGalleryId(I)I

    move-result v0

    if-eq v0, v8, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    iput-boolean v8, p1, Lvu/d;->n:Z

    goto :goto_2

    .line 110
    :cond_3
    iput-boolean v8, p1, Lvu/d;->m:Z

    goto :goto_2

    .line 107
    :cond_4
    iput-boolean v8, p1, Lvu/d;->l:Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static cameraIdForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 43
    :cond_0
    const-string v1, "GALLERY_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, 0x7d0

    return p0

    :catch_0
    return v0
.end method

.method public static ids()[Ljava/lang/String;
    .locals 6

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    sget-object v1, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 15
    const-string v5, "GALLERY_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static indexForKey(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 33
    :cond_0
    const-string v1, "GALLERY_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 34
    :cond_1
    invoke-static {}, Lcom/prometheus/camera/filters/GalleryFilterCatalog;->ids()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 36
    aget-object v3, v1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static isGalleryKey(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 52
    const-string v0, "GALLERY_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static labelFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 56
    const-string p0, ""

    return-object p0

    .line 57
    :cond_0
    const-string v0, "GALLERY_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    sget-object v2, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 59
    sget-object v2, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    sget-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_LABELS:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static managedIds()[Ljava/lang/String;
    .locals 4

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 22
    :goto_0
    sget-object v2, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 23
    sget-object v2, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 24
    const-string v3, "GALLERY_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/prometheus/camera/filters/FilterContentContract;->MANAGEABLE:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static setTextureEffect(Lvu/d;ZZZFFF)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lvu/d;->c:Z

    .line 174
    iput-boolean p2, p0, Lvu/d;->f:Z

    .line 175
    iput-boolean p3, p0, Lvu/d;->h:Z

    const/4 p1, 0x6

    .line 176
    new-array p1, p1, [F

    const p2, 0x3fb33333    # 1.4f

    const/4 p3, 0x0

    aput p2, p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x1

    aput p2, p1, p3

    const p2, 0x3e4ccccd    # 0.2f

    const/4 p3, 0x2

    aput p2, p1, p3

    const/4 p2, 0x3

    aput p4, p1, p2

    const/4 p2, 0x4

    aput p5, p1, p2

    const/4 p2, 0x5

    aput p6, p1, p2

    iput-object p1, p0, Lvu/d;->i:[F

    return-void
.end method
