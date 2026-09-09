.class public interface abstract Lq8/t;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public e(Landroid/view/View;Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v1, p2

    const-string v0, "leftPaint"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "topPaint"

    move-object/from16 v8, p9

    invoke-static {v8, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rightPaint"

    move-object/from16 v6, p10

    invoke-static {v6, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomPaint"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v10, v0, v3

    div-float v11, v2, v3

    sub-float/2addr v2, v0

    div-float v12, v2, v3

    const/4 v13, 0x0

    cmpl-float v2, p6, v13

    const/4 v14, 0x0

    if-lez v2, :cond_0

    and-int/lit8 v2, p3, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_0
    invoke-virtual {v1, v2, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v2, v14

    sub-float/2addr v2, v12

    const/4 v3, 0x0

    add-float v4, v0, v12

    move/from16 v5, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_0
    :goto_0
    cmpl-float v2, p4, v13

    if-lez v2, :cond_1

    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    const/high16 v2, -0x3d4c0000    # -90.0f

    :try_start_1
    invoke-virtual {v1, v2, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v2, v14

    sub-float/2addr v2, v12

    const/4 v3, 0x0

    add-float v4, v0, v12

    move/from16 v5, p4

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_1
    :goto_1
    cmpl-float v2, p5, v13

    if-lez v2, :cond_2

    and-int/lit8 v2, p3, 0x2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v5, p5

    move v4, v0

    move-object v6, v8

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_2
    move v4, v0

    :goto_2
    cmpl-float v0, p7, v13

    if-lez v0, :cond_3

    const/16 v0, 0x8

    and-int/lit8 v2, p3, 0x8

    if-eq v2, v0, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    const/high16 v0, 0x43340000    # 180.0f

    :try_start_3
    invoke-virtual {v1, v0, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v5, p7

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_3
    return-void
.end method

.method public abstract getIgnoreSide()I
.end method

.method public abstract setIgnoreSide(I)V
.end method
