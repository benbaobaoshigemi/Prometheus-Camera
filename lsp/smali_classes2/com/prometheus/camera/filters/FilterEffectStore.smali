.class public final Lcom/prometheus/camera/filters/FilterEffectStore;
.super Ljava/lang/Object;
.source "FilterEffectStore.java"


# static fields
.field private static final DIFFUSION_NAMES:[Ljava/lang/String;

.field private static final GRAIN_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    const-string v0, "\u4e2d"

    const-string v1, "\u5f3a"

    const-string v2, "\u65e0"

    const-string v3, "\u8f7b"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/FilterEffectStore;->GRAIN_NAMES:[Ljava/lang/String;

    .line 12
    const-string v0, "\u9ed1\u67d4"

    const-string v1, "\u767d\u67d4"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/FilterEffectStore;->DIFFUSION_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diffusion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->diffusion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static diffusionNames()[Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/prometheus/camera/filters/FilterEffectStore;->DIFFUSION_NAMES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static effect(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->effect(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static effectForGalleryId(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, 0x238d

    if-lt p1, v0, :cond_1

    const/16 v0, 0x23ef

    if-gt p1, v0, :cond_1

    add-int/lit16 p1, p1, -0x238c

    .line 78
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->stableIdForRuntimeSlot(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 80
    invoke-static {p1}, Lcom/prometheus/camera/filters/PresetLutStore;->userSlotForRuntimeSlot(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->idForSlot(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GALLERY_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    .line 86
    :cond_3
    invoke-static {p0, v0}, Lcom/prometheus/camera/filters/FilterEffectStore;->effect(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    :goto_2
    return p0
.end method

.method public static effectName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEffectStore;->summary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static grain(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterCatalogStore;->grain(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static grainNames()[Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/prometheus/camera/filters/FilterEffectStore;->GRAIN_NAMES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static names()[Ljava/lang/String;
    .locals 6

    .line 64
    const-string v4, "\u9ed1\u67d4"

    const-string v5, "\u767d\u67d4"

    const-string v0, "\u65e0"

    const-string v1, "\u9897\u7c92 \u00b7 \u8f7b"

    const-string v2, "\u9897\u7c92 \u00b7 \u4e2d"

    const-string v3, "\u9897\u7c92 \u00b7 \u5f3a"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readLegacy(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "effect_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Base64;->getUrlEncoder()Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Base64$Encoder;->withoutPadding()Ljava/util/Base64$Encoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static setEffect(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    if-ltz p2, :cond_1

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    .line 70
    invoke-static {p0, p1, p2, v0}, Lcom/prometheus/camera/filters/FilterEffectStore;->setEffects(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v1

    .line 71
    invoke-static {p0, p1, v0, p2}, Lcom/prometheus/camera/filters/FilterEffectStore;->setEffects(Landroid/content/Context;Ljava/lang/String;II)V

    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u672a\u77e5\u9644\u52a0\u6548\u679c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEffects(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/filters/FilterCatalogStore;->setEffects(Landroid/content/Context;Ljava/lang/String;II)V

    .line 51
    invoke-static {p1}, Lcom/prometheus/camera/filters/CustomLutStore;->slotForStableId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/filters/CustomLutStore;->mirrorLegacyEffects(Landroid/content/Context;III)V

    :cond_0
    return-void
.end method

.method public static summary(II)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 41
    sget-object v1, Lcom/prometheus/camera/filters/FilterEffectStore;->GRAIN_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-ltz p1, :cond_1

    .line 43
    sget-object v1, Lcom/prometheus/camera/filters/FilterEffectStore;->DIFFUSION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 44
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9897\u7c92\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/prometheus/camera/filters/FilterEffectStore;->GRAIN_NAMES:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u00b7 \u67d4\u5149\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/prometheus/camera/filters/FilterEffectStore;->DIFFUSION_NAMES:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static summary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEffectStore;->grain(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterEffectStore;->diffusion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/prometheus/camera/filters/FilterEffectStore;->summary(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static supports(Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterCatalogStore;->supportsEffects(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
