.class final Lcom/prometheus/camera/rev/LutThumbnail;
.super Ljava/lang/Object;
.source "LutThumbnail.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static render([I[III)[I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 6
    array-length v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_8

    mul-int v6, v4, v4

    mul-int/2addr v6, v4

    .line 7
    array-length v7, v1

    if-ne v6, v7, :cond_8

    mul-int v6, v2, v3

    array-length v7, v1

    if-ne v6, v7, :cond_8

    rem-int v6, v2, v4

    if-nez v6, :cond_8

    rem-int v6, v3, v4

    if-nez v6, :cond_8

    .line 11
    div-int v3, v2, v4

    .line 12
    array-length v6, v0

    new-array v6, v6, [I

    const/4 v8, 0x0

    .line 13
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_7

    .line 14
    aget v9, v0, v8

    ushr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v10, v12

    ushr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    mul-int/2addr v13, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    and-int/lit16 v14, v9, 0xff

    mul-int/2addr v14, v11

    int-to-float v14, v14

    div-float/2addr v14, v12

    float-to-int v12, v10

    float-to-int v15, v13

    float-to-int v7, v14

    const/high16 v16, -0x1000000

    and-int v9, v9, v16

    const/4 v5, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ge v5, v0, :cond_6

    const/4 v0, 0x0

    move-object/from16 v16, v6

    move/from16 v17, v8

    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x2

    if-ge v6, v8, :cond_5

    add-int v8, v7, v6

    .line 23
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v18, v0

    move/from16 v19, v9

    const/4 v0, 0x0

    :goto_3
    const/4 v9, 0x2

    if-ge v0, v9, :cond_4

    add-int v9, v15, v0

    .line 25
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 26
    div-int v21, v8, v3

    mul-int v21, v21, v4

    add-int v21, v21, v9

    mul-int v21, v21, v2

    rem-int v9, v8, v3

    mul-int/2addr v9, v4

    add-int v21, v21, v9

    move/from16 v20, v3

    const/4 v3, 0x2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_3

    add-int v3, v12, v9

    .line 28
    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v23, v4

    int-to-float v4, v12

    sub-float v4, v10, v4

    if-nez v9, :cond_0

    sub-float v4, v22, v4

    :cond_0
    move/from16 v24, v8

    int-to-float v8, v15

    sub-float v8, v13, v8

    if-nez v0, :cond_1

    sub-float v8, v22, v8

    :cond_1
    mul-float/2addr v4, v8

    int-to-float v8, v7

    if-nez v6, :cond_2

    sub-float v8, v14, v8

    sub-float v22, v22, v8

    goto :goto_5

    :cond_2
    sub-float v22, v14, v8

    :goto_5
    mul-float v4, v4, v22

    add-int v3, v21, v3

    .line 32
    aget v3, v1, v3

    mul-int/lit8 v8, v5, 0x8

    ushr-int/2addr v3, v8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float v18, v18, v3

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v23

    move/from16 v8, v24

    const/4 v3, 0x2

    goto :goto_4

    :cond_3
    move/from16 v23, v4

    move/from16 v24, v8

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v20

    goto :goto_3

    :cond_4
    move/from16 v20, v3

    move/from16 v23, v4

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v18

    move/from16 v9, v19

    goto :goto_2

    :cond_5
    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v19, v9

    .line 36
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v3, v5, 0x8

    shl-int/2addr v0, v3

    or-int v9, v19, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v6, v16

    move/from16 v8, v17

    move/from16 v3, v20

    goto/16 :goto_1

    :cond_6
    move/from16 v20, v3

    move/from16 v23, v4

    move-object/from16 v16, v6

    move/from16 v17, v8

    move/from16 v19, v9

    .line 38
    aput v19, v16, v17

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_7
    move-object/from16 v16, v6

    return-object v16

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported LUT dimensions: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
