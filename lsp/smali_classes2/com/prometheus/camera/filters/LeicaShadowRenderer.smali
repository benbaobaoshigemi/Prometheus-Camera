.class public final Lcom/prometheus/camera/filters/LeicaShadowRenderer;
.super Ljava/lang/Object;
.source "LeicaShadowRenderer.java"


# static fields
.field private static final COVERAGE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prometheus/camera/filters/LeicaShadowRenderer;->COVERAGE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x11
        0x12
        0x13
        0x13
        0x14
        0x15
        0x16
        0x17
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
        0x22
        0x23
        0x24
        0x25
        0x26
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2d
        0x2e
        0x2f
        0x30
        0x32
        0x33
        0x34
        0x36
        0x38
        0x39
        0x3a
        0x3c
        0x3c
        0x3d
        0x3e
        0x3e
        0x3e
        0x3f
        0x40
        0x40
        0x40
        0x41
        0x42
        0x42
        0x42
        0x43
        0x44
        0x44
        0x44
        0x45
        0x46
        0x46
        0x46
        0x47
        0x48
        0x48
        0x48
        0x49
        0x4a
        0x4a
        0x4a
        0x4b
        0x4c
        0x4c
        0x4c
        0x4d
        0x4e
        0x4e
        0x4e
        0x4f
        0x50
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x62
        0x64
        0x66
        0x67
        0x68
        0x6a
        0x6c
        0x6d
        0x6e
        0x70
        0x72
        0x74
        0x76
        0x78
        0x7a
        0x7c
        0x7e
        0x80
        0x81
        0x82
        0x84
        0x85
        0x86
        0x87
        0x88
        0x8a
        0x8b
        0x8c
        0x8e
        0x90
        0x92
        0x93
        0x95
        0x96
        0x98
        0x9a
        0x9b
        0x9d
        0x9e
        0xa0
        0xa1
        0xa2
        0xa3
        0xa4
        0xa5
        0xa6
        0xa7
        0xa8
        0xa9
        0xaa
        0xab
        0xac
        0xad
        0xae
        0xaf
        0xb0
        0xb1
        0xb2
        0xb3
        0xb4
        0xb6
        0xb7
        0xb8
        0xba
        0xbc
        0xbd
        0xbe
        0xc0
        0xc1
        0xc3
        0xc4
        0xc5
        0xc7
        0xc8
        0xc9
        0xcb
        0xcc
        0xcd
        0xcf
        0xd0
        0xd2
        0xd3
        0xd4
        0xd6
        0xd8
        0xd9
        0xda
        0xdc
        0xde
        0xe0
        0xe1
        0xe2
        0xe3
        0xe5
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0xeb
        0xed
        0xee
        0xef
        0xf0
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf2
        0xf3
        0xf3
        0xf4
        0xf4
        0xf4
        0xf5
        0xf5
        0xf6
        0xf6
        0xf6
        0xf7
        0xf7
        0xf8
        0xf8
        0xf9
        0xf9
        0xf9
        0xfa
        0xfa
        0xfb
        0xfb
        0xfb
        0xfc
        0xfc
        0xfd
        0xfd
        0xfd
        0xfe
        0xfe
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 14

    .line 7
    move-object v0, p0

    move v8, p1

    move/from16 v9, p2

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const v4, 0x4018011c

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 9
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 10
    invoke-virtual {p0, v1, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 11
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 12
    const/high16 v6, 0x74000000

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 14
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    const/4 v10, 0x0

    aget v11, v3, v10

    int-to-float v11, v11

    const/4 v12, 0x1

    aget v3, v3, v12

    int-to-float v3, v3

    invoke-virtual {v7, v4, v11, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 16
    const/4 v1, 0x0

    invoke-virtual {v7, p0, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 17
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 20
    const v1, 0x3f7968bc

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 21
    const v1, 0x3f007782

    const v3, 0x4002c07c

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 22
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v6, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 23
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    mul-int v12, v8, v9

    new-array v13, v12, [I

    .line 25
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, v13

    move v3, p1

    move v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 26
    nop

    :goto_0
    if-ge v10, v12, :cond_0

    aget v0, v13, v10

    const v1, 0xffffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/prometheus/camera/filters/LeicaShadowRenderer;->COVERAGE:[I

    aget v2, v13, v10

    ushr-int/lit8 v2, v2, 0x18

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, v13

    move v3, p1

    move v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 28
    return-object v11
.end method
