.class public final Lcom/prometheus/camera/filters/OnlineLeicaRenderer;
.super Ljava/lang/Object;
.source "OnlineLeicaRenderer.java"


# static fields
.field private static final ALPHA_LUT:[I

.field private static final CACHE_DIR:Ljava/lang/String; = "prometheus/by_leica/v2"

.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static final CANVAS_CONTRACT:Ljava/lang/String; = "reference=1732x160;normal=648..1239;whiteShadow=634..1206"

.field private static final FONT_ASSET:Ljava/lang/String; = "prometheus_runtime/MiSans Latin VF.ttf"

.field private static final FONT_SHA256:Ljava/lang/String; = "C815CEF93EA0398B8E8DC6A5A1F25597BD1D54600CF46C8B60419E5445312308"

.field private static final HEX_COLOR:Ljava/util/regex/Pattern;

.field private static final LEICA_SUFFIX:Ljava/util/regex/Pattern;

.field private static final MODEL_KEY:Ljava/lang/String; = "watermark_device_name"

.field private static final NORMAL_LEFT:I = 0x288

.field private static final NORMAL_RIGHT:I = 0x4d7

.field private static final PHASE_Y:F = -0.2f

.field private static final PIPELINE_VERSION:Ljava/lang/String; = "desktopvf-455.3-141.665-s0.9849-v4"

.field private static final PREFS:Ljava/lang/String; = "prometheus_camera_settings"

.field private static final PRESETS_KEY:Ljava/lang/String; = "watermark_custom_presets"

.field private static final PREWARM:Ljava/util/concurrent/ExecutorService;

.field private static final PUBLICATION_DIR:Ljava/lang/String; = "prometheus/by_leica/current"

.field private static final REFERENCE_HEIGHT:F = 160.0f

.field private static final REFERENCE_TEXT:Ljava/lang/String; = "17 Ultra"

.field private static final REFERENCE_WIDTH:F = 1732.0f

.field private static final SOURCE_ROOT:Ljava/lang/String; = "cloud_watermark_material/17_ultra_by_leica"

.field private static final SOURCE_SET_SHA256:Ljava/lang/String; = "0AB4BF2B4FBE0A1DF157D2518E20842A2F81ED8ABD9A60A3C042144D9970A479"

.field private static final TAG:Ljava/lang/String; = "OnlineLeicaRenderer"

.field private static final TEXT_LEFT:F = 706.75f

.field private static final TEXT_SIZE:F = 141.665f

.field private static final TEXT_TOP:F = 29.375f

.field private static final UNIFORM_SCALE:F = 0.9849f

.field private static final WEIGHT:F = 455.3f

.field private static final WHITESPACE:Ljava/util/regex/Pattern;

.field private static final WHITE_SHADOW_LEFT:I = 0x27a

.field private static final WHITE_SHADOW_RIGHT:I = 0x4b6

.field private static final XIAOMI_PREFIX:Ljava/util/regex/Pattern;

.field private static volatile applicationContext:Landroid/content/Context;

.field private static volatile listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static volatile pathLogCount:I

.field private static volatile pathProbeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-string v0, "xiaomi_([0-9A-Fa-f]{6})\\.webp"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->HEX_COLOR:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "(?i)\\s*by\\s*leica\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "(?i)^\\s*xiaomi\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->XIAOMI_PREFIX:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->PREWARM:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->CACHE_LOCK:Ljava/lang/Object;

    const/16 v0, 0x100

    .line 80
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->ALPHA_LUT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x52
        0x53
        0x54
        0x55
        0x56
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7d
        0x7e
        0x7f
        0x80
        0x84
        0x88
        0x8c
        0x90
        0x92
        0x94
        0x96
        0x98
        0x9a
        0x9c
        0x9e
        0xa0
        0xa2
        0xa4
        0xa5
        0xa7
        0xa9
        0xab
        0xac
        0xae
        0xb0
        0xb1
        0xb2
        0xb3
        0xb5
        0xb6
        0xb7
        0xb8
        0xb9
        0xba
        0xbb
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xca
        0xcb
        0xcc
        0xcd
        0xce
        0xce
        0xcf
        0xd0
        0xd1
        0xd3
        0xd4
        0xd6
        0xd7
        0xd9
        0xda
        0xdc
        0xdd
        0xdf
        0xe0
        0xe1
        0xe2
        0xe3
        0xe4
        0xe5
        0xe6
        0xe8
        0xe9
        0xea
        0xeb
        0xec
        0xed
        0xee
        0xef
        0xef
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf3
        0xf4
        0xf4
        0xf5
        0xf6
        0xf6
        0xf7
        0xf7
        0xf8
        0xf9
        0xf9
        0xfa
        0xfb
        0xfb
        0xfc
        0xfc
        0xfd
        0xfe
        0xfe
        0xff
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->schedulePrewarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->activeModelName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->persistedSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Ljava/util/regex/Pattern;
    .locals 1

    .line 33
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->ensureCached(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->publishCommit(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static activeModelName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 254
    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->canonicalSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    const-string v0, "prometheus_camera_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "watermark_device_name"

    const/4 v1, 0x0

    .line 256
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->persistedSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    move-object p0, p1

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "Effective model display name is empty"

    if-nez p1, :cond_3

    .line 274
    sget-object p1, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    .line 276
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 269
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static applyAlphaLut(Landroid/graphics/Bitmap;)V
    .locals 12

    .line 655
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 656
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 657
    new-array v11, v10, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 658
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    .line 660
    aget v1, v11, v0

    .line 661
    sget-object v2, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->ALPHA_LUT:[I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    aget v2, v2, v3

    .line 662
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 663
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 662
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 665
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method

.method private static cachedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 344
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desktopvf-455.3-141.665-s0.9849-v4\nC815CEF93EA0398B8E8DC6A5A1F25597BD1D54600CF46C8B60419E5445312308\n0AB4BF2B4FBE0A1DF157D2518E20842A2F81ED8ABD9A60A3C042144D9970A479\nreference=1732x160;normal=648..1239;whiteShadow=634..1206\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".webp"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static canonicalSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 282
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 283
    :cond_0
    sget-object v1, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 284
    sget-object v1, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->XIAOMI_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 285
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " by Leica"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static colorFor(Ljava/lang/String;)I
    .locals 2

    .line 669
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, -0x1000000

    return p0

    .line 670
    :cond_0
    const-string v0, "white"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 671
    :cond_1
    const-string v0, "yellow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, -0x100

    return p0

    .line 672
    :cond_2
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->HEX_COLOR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

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

.method public static compose(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_5

    .line 562
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 566
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    .line 565
    invoke-static {v3, v2, v4}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->createTextPaint(Landroid/content/res/AssetManager;Ljava/lang/String;F)Landroid/graphics/Paint;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const-string v5, "17 Ultra"

    .line 568
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    const v5, 0x3f7fdd98

    mul-float/2addr v4, v5

    .line 569
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 570
    const-string v6, "white_shadow"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v6, 0x3f77c517

    mul-float/2addr v4, v6

    .line 574
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    .line 575
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    if-lez v6, :cond_4

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 580
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 582
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 583
    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz v2, :cond_1

    const/16 v12, 0x27a

    goto :goto_1

    :cond_1
    const/16 v12, 0x288

    :goto_1
    if-eqz v2, :cond_2

    const/16 v14, 0x4b6

    goto :goto_2

    :cond_2
    const/16 v14, 0x4d7

    :goto_2
    add-int/2addr v4, v14

    .line 587
    new-instance v15, Landroid/graphics/Rect;

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v15, v11, v11, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v10, v11, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 587
    invoke-virtual {v8, v0, v15, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/lit16 v12, v5, 0x6c4

    .line 591
    invoke-static {v3, v1, v10, v12}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->renderNormalLayer(Landroid/graphics/Paint;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 594
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x4d7

    add-int/2addr v5, v3

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v10, 0x288

    invoke-direct {v2, v10, v11, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v10, 0x27a

    invoke-direct {v3, v10, v11, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 594
    invoke-virtual {v8, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 600
    invoke-virtual {v8, v1, v2, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 604
    new-instance v1, Landroid/graphics/Rect;

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v14, v11, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v2, v4, v11, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    invoke-virtual {v8, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v7

    .line 577
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rendered watermark width is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Model name is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyAtomic(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot clear temporary publication "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 452
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x4000

    .line 454
    :try_start_0
    new-array v1, v1, [B

    .line 456
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 457
    :cond_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 459
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 461
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 462
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot replace publication "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 464
    :cond_4
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-void

    .line 465
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot commit publication "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    .line 459
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 460
    throw p1

    :catchall_2
    move-exception p1

    .line 459
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method

.method private static createTextPaint(Landroid/content/res/AssetManager;Ljava/lang/String;F)Landroid/graphics/Paint;
    .locals 3

    .line 613
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "prometheus_runtime/MiSans Latin VF.ttf"

    invoke-direct {v0, p0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v1, 0x43e3a666    # 455.3f

    .line 615
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 614
    const-string v2, "\'wght\' %.1f, \'wdth\' 100"

    invoke-static {p0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p0

    .line 616
    invoke-virtual {p0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p0

    .line 617
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 618
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p0, 0x430daa3d

    mul-float/2addr p0, p2

    .line 619
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 620
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 621
    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->colorFor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 622
    const-string p0, "_shadow"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 623
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    const/high16 p1, -0x1000000

    if-ne p0, p1, :cond_0

    const p0, -0x7f000001

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr p2, p1

    const/4 p1, 0x0

    .line 625
    invoke-virtual {v0, p2, p1, p1, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_1
    return-object v0
.end method

.method private static decodePackagedSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cannot decode "

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cloud_watermark_material/17_ultra_by_leica/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 524
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v1

    .line 525
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 528
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 529
    throw p1
.end method

.method private static deleteTree(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 548
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 549
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 551
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 552
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%02x"

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 556
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static digest([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 508
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 unavailable"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static digestFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x4000

    .line 495
    :try_start_1
    new-array p0, p0, [B

    .line 497
    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 501
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 499
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 500
    throw p0

    :catch_0
    move-exception p0

    .line 491
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 unavailable"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static eligibilityDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 116
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object p0

    .line 118
    :cond_0
    const-string v1, "prometheus_camera_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "watermark_device_name"

    const/4 v2, 0x0

    .line 119
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->persistedSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method private static ensureCached(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unable to delete temporary cache "

    const-string v1, "Cached WebP validation failed: "

    const-string v2, "Atomic cache publish failed: "

    const-string v3, "Unable to delete temporary cache "

    const-string v4, "Cannot create renderer cache "

    const-string v5, "Cannot replace invalid cache "

    .line 297
    invoke-static {p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validateAssetName(Ljava/lang/String;)V

    .line 298
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "prometheus/by_leica/v2"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    invoke-static {v6, p1, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->cachedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 300
    sget-object v8, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 301
    :try_start_0
    invoke-static {v7}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validBitmap(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 302
    monitor-exit v8

    return-object v7

    .line 304
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 307
    :cond_2
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_4

    .line 308
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 309
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->decodePackagedSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 313
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 315
    :try_start_1
    invoke-static {p0, v4, p1, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->compose(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 316
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    :try_start_3
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, p2, v6, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 322
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 326
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 329
    invoke-static {v7}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validBitmap(Ljava/io/File;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_7

    .line 334
    :try_start_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p0, :cond_5

    .line 335
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    .line 337
    const-string p0, "OnlineLeicaRenderer"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object v7

    .line 330
    :cond_7
    :try_start_6
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 320
    :cond_9
    :try_start_7
    new-instance p2, Ljava/io/IOException;

    const-string v0, "WebP compression failed"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p2

    .line 324
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 325
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    const/4 p0, 0x0

    .line 334
    :goto_2
    :try_start_9
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p0, :cond_a

    .line 335
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_b

    .line 337
    const-string p0, "OnlineLeicaRenderer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->warn(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_b
    throw p1

    :catchall_3
    move-exception p0

    .line 340
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 515
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized installPrewarm(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;

    monitor-enter v0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->applicationContext:Landroid/content/Context;

    .line 199
    sget-object p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v0

    return-void

    .line 200
    :cond_1
    :try_start_1
    sget-object p0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->applicationContext:Landroid/content/Context;

    .line 201
    const-string v1, "prometheus_camera_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$1;

    invoke-direct {v2, p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$1;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 209
    sget-object v2, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v1, 0x0

    .line 210
    invoke-static {p0, v1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->schedulePrewarm(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isActiveLeica(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 102
    :goto_0
    const-string v0, "prometheus_camera_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "watermark_device_name"

    const/4 v2, 0x0

    .line 103
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isLeicaName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static isLeicaName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 172
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->LEICA_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static persistedSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 292
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static publishCommit(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 353
    invoke-virtual/range {p2 .. p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 354
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 355
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "prometheus/by_leica"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "models"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "desktopvf-455.3-141.665-s0.9849-v4\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-static {v5}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 359
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create by-LEICA publication root "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 363
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ".next-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-static {v6}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 368
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "prometheus/by_leica/v2"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "schema\t2\nmodel\t"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x9

    const/16 v10, 0x20

    .line 370
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\npipeline\tdesktopvf-455.3-141.665-s0.9849-v4\nfont\tC815CEF93EA0398B8E8DC6A5A1F25597BD1D54600CF46C8B60419E5445312308\nsource\t0AB4BF2B4FBE0A1DF157D2518E20842A2F81ED8ABD9A60A3C042144D9970A479\ncanvas\treference=1732x160;normal=648..1239;whiteShadow=634..1206\n"

    .line 371
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    array-length v10, v1

    const/4 v11, 0x0

    move v13, v11

    :goto_1
    if-ge v11, v10, :cond_5

    aget-object v14, v1, v11

    .line 377
    const-string v15, ".webp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v16, v1

    move v0, v9

    move v1, v12

    goto :goto_2

    .line 378
    :cond_2
    invoke-static {v14}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validateAssetName(Ljava/lang/String;)V

    .line 379
    invoke-static {v7, v0, v14}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->cachedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 380
    invoke-static {v15}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validBitmap(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 383
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v6, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 384
    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v15, v9, v12}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->copyAtomic(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 385
    invoke-static {v12}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->validBitmap(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    const-string v0, "asset\t"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {v12}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->digestFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move v9, v0

    move v12, v1

    move-object/from16 v1, v16

    move-object/from16 v0, p1

    goto :goto_1

    .line 386
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unpublished by-LEICA variant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing cached by-LEICA variant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v13, :cond_b

    .line 393
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 394
    new-instance v7, Ljava/io/File;

    const-string v8, "manifest.tsv"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->writeAtomic(Ljava/io/File;[B)V

    .line 395
    new-instance v7, Ljava/io/File;

    const-string v8, "manifest.commit"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    invoke-static {v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->digest([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 395
    invoke-static {v7, v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->writeAtomic(Ljava/io/File;[B)V

    .line 397
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, ".previous-"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    invoke-static {v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    .line 399
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 400
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot detach old by-LEICA transaction"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_7
    :goto_3
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 403
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 404
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot publish complete by-LEICA transaction"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_9
    invoke-static {v0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    if-eqz p3, :cond_a

    .line 408
    invoke-static {v2, v3, v5}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->publishCurrentTransaction(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    :cond_a
    return-void

    .line 392
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No by-LEICA variants to publish"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create by-LEICA staging directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static publishCurrentTransaction(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/File;

    const-string v1, "current"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".current-next-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 416
    invoke-static {v1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 418
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 420
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 421
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    .line 423
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 422
    invoke-static {v4, v5, v6}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->copyAtomic(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".current-previous-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 428
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot detach current by-LEICA transaction"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 430
    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 431
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 432
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot publish current by-LEICA transaction"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 434
    :cond_5
    invoke-static {p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->deleteTree(Ljava/io/File;)V

    return-void

    .line 419
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Archived by-LEICA transaction is unreadable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 417
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot create current transaction stage"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static renderNormalLayer(Landroid/graphics/Paint;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 632
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 634
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 636
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const v4, 0x3f7fdd98

    .line 637
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 638
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const v5, 0x4430ccc3

    sub-float/2addr v5, v4

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const v4, 0x41ec9fcd

    sub-float/2addr v4, v2

    invoke-virtual {v1, p1, v5, v4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 641
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 643
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 644
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 645
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const v1, -0x41b33333    # -0.2f

    int-to-float p2, p2

    mul-float/2addr p2, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p2, v1

    const/4 v1, 0x0

    .line 646
    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 647
    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v0, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 649
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 650
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->applyAlphaLut(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public static resolvePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 183
    :goto_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->activeModelName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 186
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->ensureCached(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to build by-LEICA asset for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static schedulePrewarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 215
    sget-object v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->PREWARM:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shouldResolvePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 129
    sget v0, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->pathProbeCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->pathProbeCount:I

    const/16 v1, 0x14

    const-string v2, "OnlineLeicaRenderer"

    if-ge v0, v1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "watermark path probe selected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->isActiveLeica(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0x5c

    const/16 v1, 0x2f

    .line 136
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 137
    const-string p2, "cloud_watermark_material/"

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_6

    if-lez p2, :cond_2

    add-int/lit8 v3, p2, -0x1

    .line 140
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x19

    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-lez p2, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 145
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 149
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 150
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 152
    const-string v1, "_by_leica"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "xiaomi_"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ".webp"

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    .line 155
    sget v3, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->pathLogCount:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->pathLogCount:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_5

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resolve watermark template model="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "prometheus_camera_settings"

    .line 158
    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "watermark_device_name"

    const/4 v4, 0x0

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Lcom/prometheus/camera/filters/OnlineLeicaRenderer;->persistedSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " source="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-static {v2, p0}, Lcom/prometheus/camera/rev/PhoenixFileLogger;->info(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method private static validBitmap(Ljava/io/File;)Z
    .locals 6

    .line 533
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 535
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 537
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez p0, :cond_1

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private static validateAssetName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    const-string v0, "xiaomi_[A-Za-z0-9_]+\\.webp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 542
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected by-LEICA asset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeAtomic(Ljava/io/File;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 473
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 474
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 478
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot replace transaction file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 482
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot commit transaction file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 476
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 477
    throw p0
.end method
