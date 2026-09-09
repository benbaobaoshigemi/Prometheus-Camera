.class public final Lcom/prometheus/camera/settings/WatermarkAssetRouter;
.super Ljava/lang/Object;
.source "WatermarkAssetRouter.java"


# static fields
.field private static final FOREGROUND:Ljava/util/regex/Pattern;

.field private static final HEX_COLOR:Ljava/util/regex/Pattern;

.field private static final OFFICIAL_LEICA_ASSETS:Ljava/lang/String; = "cloud_watermark_material/17_ultra_by_leica/"

.field private static final SUFFIX_PREFIX:Ljava/lang/String; = "prometheus_leica_suffix_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "xiaomi_([0-9A-Fa-f]{6})\\.webp"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->HEX_COLOR:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "(?:^|;)foreground=(\\d+)(?:;|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->FOREGROUND:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static activeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 206
    const-string v0, "prometheus_camera_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "watermark_device_name"

    const-string v1, "14 Ultra"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static colorFor(Ljava/lang/String;)I
    .locals 2

    .line 305
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    .line 308
    :cond_0
    const-string v0, "white"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 311
    :cond_1
    const-string v0, "yellow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, -0x100

    return p0

    .line 314
    :cond_2
    sget-object v0, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->HEX_COLOR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private static compose(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x44d88000    # 1732.0f

    div-float/2addr v2, v3

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x44220000    # 648.0f

    mul-float/2addr v4, v2

    .line 279
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const v5, 0x4430c000    # 707.0f

    mul-float/2addr v5, v2

    .line 280
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const v6, 0x449ae000    # 1239.0f

    mul-float/2addr v6, v2

    .line 281
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/high16 v7, 0x42540000    # 53.0f

    mul-float/2addr v2, v7

    .line 282
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v7, 0x41f00000    # 30.0f

    mul-float/2addr v7, v3

    .line 283
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 284
    new-instance v8, Landroid/graphics/Paint;

    const/16 v9, 0x81

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 285
    new-instance v9, Landroid/graphics/Typeface$Builder;

    const-string v10, "/system/fonts/MiSansLatinVF.ttf"

    invoke-direct {v9, v10}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v10, "\'wght\' 450"

    invoke-virtual {v9, v10}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v9, 0x430b0000    # 139.0f

    mul-float/2addr v9, v3

    .line 286
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 287
    invoke-static/range {p2 .. p2}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->colorFor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    const-string v9, "_shadow"

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v3, v9

    .line 289
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    const/high16 v10, -0x1000000

    if-ne v9, v10, :cond_0

    const v9, -0x7f000001

    goto :goto_0

    :cond_0
    const/high16 v9, -0x80000000

    :goto_0
    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10, v10, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 291
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 292
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v1, v10, v9, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    .line 294
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v2

    add-int/2addr v11, v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 295
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 296
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 297
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v14, v10, v10, v4, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 p2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v15, v10, v10, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v0, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 298
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    iget v11, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual {v12, v1, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    .line 300
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v6, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v9, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v2, v5, v10, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p2
.end method

.method private static containsUnspacedModel(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 156
    instance-of v0, p0, Lorg/json/JSONArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 157
    check-cast p0, Lorg/json/JSONArray;

    move v0, v1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 159
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->containsUnspacedModel(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 164
    check-cast p0, Lorg/json/JSONObject;

    .line 165
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "model"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "text"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@model=@{series}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 168
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->containsUnspacedModel(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method private static copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cloud_watermark_material/leitzphone_powered_by_xiaomi/xiaomi_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "prometheus_leitz_full_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/nio/file/CopyOption;

    sget-object v1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static ensureLeitzAssets(Landroid/content/Context;Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "74380B"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "B66E18"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "CE9238"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "DE1010"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "E2433B"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "E6A54F"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "F4CA32"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "F6C566"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "FFE099"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "FFF383"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "black"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "white"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "yellow"

    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "black_shadow"
    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "CCFFFFFF_shadow"
    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    const-string v0, "white_shadow"
    invoke-static {p0, p1, v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->copyLeitzAsset(Landroid/content/Context;Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method

.method private static ensureSuffixAssets(Landroid/content/Context;Ljava/nio/file/Path;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "prometheus/watermark-suffix"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 263
    const-string v5, "prometheus_leica_suffix_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, ".webp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_4

    .line 264
    :cond_1
    invoke-interface {p1, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 265
    new-array v6, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    goto :goto_4

    .line 266
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "prometheus/watermark-suffix/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 268
    :try_start_0
    new-array v6, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v6, 0x2000

    .line 269
    :try_start_1
    new-array v6, v6, [B

    .line 271
    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {v5, v6, v2, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    .line 272
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p0

    if-eqz v5, :cond_5

    .line 266
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static modelUsesLeadingSpace(Ljava/nio/file/Path;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->containsUnspacedModel(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static postProcessMivi(Landroid/content/Context;Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 13

    .line 43
    const-string v0, "WatermarkAssetRouter"

    .line 0
    const-string v1, "Transformed "

    const-string v2, "No model nodes transformed in "

    .line 43
    invoke-static {p0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->activeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 44
    const-string v4, "leitzphone powered by xiaomi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, p2}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->ensureLeitzAssets(Landroid/content/Context;Ljava/nio/file/Path;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/prometheus/camera/settings/DeviceNameRouting;->isLeica(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v5

    .line 48
    :cond_1
    :try_start_0
    invoke-static {p0, p2}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->ensureSuffixAssets(Landroid/content/Context;Ljava/nio/file/Path;)V

    .line 49
    :goto_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v6, "wmRes"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, ""

    invoke-static {v3}, Lcom/prometheus/camera/settings/DeviceNameRouting;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "config.json"

    invoke-interface {p2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->modelUsesLeadingSpace(Ljava/nio/file/Path;)Z

    move-result v11

    move-object v6, p0

    move-object v7, v4

    move-object v12, p2

    invoke-static/range {v6 .. v12}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->transformNode(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/file/Path;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x2

    .line 54
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".prometheus.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 56
    new-array v4, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v2, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    .line 58
    :try_start_1
    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v4, p2, v5

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, p2, v2

    invoke-static {v3, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/nio/file/AtomicMoveNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 61
    :catch_0
    :try_start_2
    new-array p2, v2, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, p2, v5

    invoke-static {v3, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 63
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Leica model nodes in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 52
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "MiVi semantic transform failed for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public static renderDynamic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "Cannot decode "

    const-string v1, "cloud_watermark_material/17_ultra_by_leica/"

    .line 229
    invoke-static {p1}, Lcom/prometheus/camera/settings/DeviceNameRouting;->isLeica(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->activeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    .line 233
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 235
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 237
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 242
    :try_start_1
    invoke-static {p1}, Lcom/prometheus/camera/settings/DeviceNameRouting;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->compose(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    throw p0

    .line 239
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to render "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WatermarkAssetRouter"

    invoke-static {p2, p1, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private static replaceWithBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    .line 214
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v0, p2, v1

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    .line 215
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Bitmap compression failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resolveForegroundToken(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->FOREGROUND:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 181
    :goto_0
    const-string v0, "background"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 182
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    const-string v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string p0, "foreground"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const-string p0, "white"

    return-object p0
.end method

.method private static resolveLeitzAsset(Ljava/nio/file/Path;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pathType=direct;path=prometheus_leitz_full_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x15

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->resolveForegroundToken(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "@color="

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(?i)[0-9a-f]{8}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "(?i)[0-9a-f]{6}"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    # Native templates may encode these colors as RGB instead of asset names.
    const-string p2, "000000"
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :check_white
    const-string p1, "black"
    goto :color_name_ready
    :check_white
    const-string p2, "FFFFFF"
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p2
    if-eqz p2, :color_name_ready
    const-string p1, "white"
    :color_name_ready
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "prometheus_leitz_full_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".webp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Missing copied LEITZ full asset: "
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resolveSuffixAsset(Ljava/nio/file/Path;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-static {p1, p2, p3}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->resolveForegroundToken(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "@color="

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[^a-z0-9]+"

    const-string v0, "_"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "^_+|_+$"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 195
    const-string p1, "white"

    .line 197
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "prometheus_leica_suffix_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".webp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x0

    .line 199
    new-array p2, p2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    return-object p1

    .line 200
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Missing module-provided Leica suffix asset "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static transformNode(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/file/Path;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 78
    instance-of v1, v0, Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 79
    check-cast v0, Lorg/json/JSONArray;

    move v1, v2

    .line 81
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->transformNode(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/file/Path;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 87
    :cond_1
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    return v2

    .line 90
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    .line 91
    const-string v1, "background"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v4, "@background="

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v1, p3

    goto :goto_1

    :cond_3
    const/16 v4, 0xc

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    :goto_1
    const-string v11, "childViews"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_b

    const/4 v4, 0x0

    move-object v13, v4

    move v4, v2

    .line 100
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v5

    const-string v14, "id"

    if-ge v4, v5, :cond_5

    .line 101
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 102
    const-string v6, "logo"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v13, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 106
    :cond_5
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    move/from16 v16, v2

    .line 108
    :goto_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 109
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 110
    instance-of v9, v10, Lorg/json/JSONObject;

    const-string v8, "prometheus_leica_suffix"

    if-eqz v9, :cond_6

    move-object v4, v10

    check-cast v4, Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v4, p0

    move-object v5, v10

    move-object/from16 v6, p2

    move-object v7, v1

    move-object/from16 p1, v12

    move-object v12, v8

    move-object/from16 v8, p4

    move/from16 v17, v9

    move/from16 v9, p5

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v10, p6

    .line 117
    invoke-static/range {v4 .. v10}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->transformNode(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/file/Path;)I

    move-result v4

    add-int v16, v16, v4

    .line 118
    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v17, :cond_9

    .line 120
    move-object v10, v0

    check-cast v10, Lorg/json/JSONObject;

    .line 121
    const-string v0, "model"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v13, :cond_9

    const-string v0, "leitzphone powered by xiaomi"

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    # The LEITZ bitmap already contains the complete model identity. Clear a
    # previous by-Leica text value when republishing an existing MIVI document.
    const-string v0, "text"
    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "path"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v10, p2

    move-object/from16 v8, p6

    invoke-static {v8, v10, v1, v4}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->resolveLeitzAsset(Ljava/nio/file/Path;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pathType=direct;path="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_8

    const-string v4, " "

    goto :goto_4

    :cond_8
    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "text"

    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "path"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v10, p2

    move-object/from16 v8, p6

    invoke-static {v8, v10, v1, v4}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->resolveSuffixAsset(Ljava/nio/file/Path;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pathType=direct;path="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "setting_optional_type"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v15, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_9
    move-object/from16 v10, p2

    move-object/from16 v9, p4

    move-object/from16 v8, p6

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    move-object/from16 v0, v18

    goto/16 :goto_3

    :cond_a
    move-object/from16 v10, p2

    move-object/from16 v9, p4

    move-object/from16 v8, p6

    .line 135
    invoke-virtual {v0, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move/from16 v2, v16

    goto :goto_6

    :cond_b
    move-object/from16 v10, p2

    move-object/from16 v9, p4

    move-object/from16 v8, p6

    .line 138
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 139
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 140
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 141
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 142
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 143
    instance-of v4, v5, Lorg/json/JSONObject;

    if-nez v4, :cond_c

    instance-of v4, v5, Lorg/json/JSONArray;

    if-eqz v4, :cond_d

    :cond_c
    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object v7, v1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 144
    invoke-static/range {v4 .. v10}, Lcom/prometheus/camera/settings/WatermarkAssetRouter;->transformNode(Landroid/content/Context;Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLjava/nio/file/Path;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_d
    move-object/from16 v10, p2

    move-object/from16 v9, p4

    move-object/from16 v8, p6

    goto :goto_7

    :cond_e
    return v2
.end method
