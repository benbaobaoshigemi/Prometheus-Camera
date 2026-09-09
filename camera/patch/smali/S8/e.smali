.class public final LS8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lrf/b;Landroid/hardware/camera2/TotalCaptureResult;IILxi/a;)V
    .locals 4

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/m;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/m;

    iget-boolean v0, v0, Lr2/m;->c:Z

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    iget v2, v1, Lu2/Q;->u:I

    invoke-virtual {v1, v2}, Lu2/Q;->E(I)I

    move-result v1

    invoke-static {p0}, Lk7/d;->g(Lrf/b;)Lk7/d$a;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2, p3}, Lk7/d$a;->b(III)V

    iget-wide p2, p4, Lxi/a;->l:J

    iput-wide p2, p0, Lk7/d$a;->c:J

    iget-object p2, p4, Lxi/a;->m:Landroid/location/Location;

    iput-object p2, p0, Lk7/d$a;->j:Landroid/location/Location;

    invoke-virtual {p0, p1}, Lk7/d$a;->a(Landroid/hardware/camera2/CaptureResult;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lk7/d$a;->o:Ljava/lang/Boolean;

    iput-object p2, p0, Lk7/d$a;->p:Ljava/lang/Boolean;

    iget-wide p1, p4, Lxi/a;->h:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lk7/d$a;->d:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lk7/d$a;->e:Ljava/lang/Long;

    iget p1, p4, Lxi/a;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lk7/d$a;->r:Ljava/lang/Integer;

    iget-short p1, p4, Lxi/a;->f:S

    iput-short p1, p0, Lk7/d$a;->q:S

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk7/d$a;->s:Z

    iput-boolean v0, p0, Lk7/d$a;->t:Z

    iput v1, p0, Lk7/d$a;->u:I

    invoke-virtual {p0}, Lk7/d$a;->c()Lrf/b;

    return-void
.end method

.method public static b(II[B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_1

    if-le v1, p0, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/hardware/camera2/CaptureResult;)Lxi/b;
    .locals 6

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_1
    if-nez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    invoke-static {p0}, Lj9/n0;->c(Landroid/hardware/camera2/CaptureResult;)I

    move-result v2

    invoke-static {p0}, Lj9/o0;->c(Landroid/hardware/camera2/CaptureResult;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-short p0, p0

    new-instance v5, Lxi/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-wide v3, v5, Lxi/b;->a:J

    iput v2, v5, Lxi/b;->b:I

    iput-short p0, v5, Lxi/b;->c:S

    iput v0, v5, Lxi/b;->d:F

    iput v1, v5, Lxi/b;->e:I

    return-object v5
.end method

.method public static d(LRh/r;Z)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, LRh/r;->l:LRh/C;

    iget-boolean v1, v1, LRh/C;->e:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, LRh/r;->f:LRh/h;

    iget-object v2, v1, LRh/h;->b:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, v1, LRh/h;->c:Landroid/hardware/camera2/CaptureResult;

    iget-object v3, v0, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/ExifData;->getLocation()Landroid/location/Location;

    move-result-object v4

    iget-object v5, v0, LRh/r;->l:LRh/C;

    iget-boolean v6, v5, LRh/C;->c:Z

    if-eqz v6, :cond_1

    invoke-static {}, LMb/d;->c()[B

    move-result-object v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, LRh/r;->a:LRh/z;

    iget-object v10, v9, LRh/z;->i:[B

    const-string v11, "ExternalWatermarkProcess"

    const/4 v12, 0x0

    if-nez v10, :cond_2

    const-string v0, "previewData is null"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v13, Las/b;->c:Las/b;

    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz v8, :cond_3

    sget-object v15, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    :goto_1
    invoke-static {v15}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v15

    goto :goto_2

    :cond_3
    sget-object v15, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    goto :goto_1

    :goto_2
    iput-object v15, v14, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    array-length v15, v10

    invoke-static {v10, v12, v15, v14}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    iget-object v14, v0, LRh/r;->k:LRh/A;

    if-nez v16, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processPreviewWatermark: decode previewData failed, imageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v14, LRh/A;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", head="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v10

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1, v10}, LS8/e;->b(II[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v10

    sub-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v2, v10

    invoke-static {v1, v2, v10}, LS8/e;->b(II[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v10, 0x4

    iget-object v15, v0, LRh/r;->b:LRh/a;

    if-eqz p1, :cond_6

    sget-object v13, Las/b;->b:Las/b;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iget v12, v5, LRh/C;->l:I

    move-object/from16 v23, v1

    iget v1, v15, LRh/a;->f:I

    if-ne v10, v1, :cond_5

    add-int/lit8 v12, v12, -0x5a

    rem-int/lit16 v12, v12, 0x168

    :cond_5
    int-to-float v1, v12

    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x1

    move-object/from16 v21, v7

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v7, v16

    if-eq v7, v1, :cond_7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v1

    goto :goto_3

    :cond_6
    move-object/from16 v23, v1

    move-object/from16 v7, v16

    :cond_7
    :goto_3
    const/4 v1, 0x1

    if-nez v2, :cond_9

    if-eqz v23, :cond_8

    goto :goto_4

    :cond_8
    const-string v2, "EarlyIamge imageName captureResult is null"

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v11, v2, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v5, LRh/C;->l:I

    new-instance v4, Lxi/a;

    invoke-direct {v4, v7, v13, v2}, Lxi/a;-><init>(Landroid/graphics/Bitmap;Las/b;I)V

    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LS8/d;->c()Z

    invoke-static {}, Lcom/android/camera/data/data/w;->O()Z

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->w()Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/data/w;->I0()Z

    move-result v2

    iput-boolean v2, v4, Lxi/a;->u:Z

    invoke-static {}, Lcom/android/camera/data/data/w;->D()Ljava/lang/String;

    move/from16 v17, v1

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    goto/16 :goto_6

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    invoke-static {v2}, LS8/e;->c(Landroid/hardware/camera2/CaptureResult;)Lxi/b;

    move-result-object v2

    goto :goto_5

    :cond_a
    invoke-static/range {v23 .. v23}, LS8/e;->c(Landroid/hardware/camera2/CaptureResult;)Lxi/b;

    move-result-object v2

    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "EarlyIamge imageName = "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v14, LRh/A;->b:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", exif = "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lxi/b;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    invoke-static {v11, v10, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/data/data/w;->I0()Z

    move-result v10

    invoke-static {}, Lcom/android/camera/data/data/w;->J0()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v10

    const-string v12, "pref_leica100_watermark_time"

    invoke-virtual {v10, v12, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LS8/d;->d()Z

    invoke-static {}, Lcom/android/camera/data/data/w;->K0()Z

    move-result v10

    :cond_b
    move v12, v1

    move-object v14, v2

    iget-wide v1, v15, LRh/a;->e:J

    const-wide/16 v17, 0x0

    cmp-long v17, v1, v17

    if-nez v17, :cond_c

    iget-wide v1, v14, Lxi/b;->a:J

    :cond_c
    move/from16 v17, v12

    iget v12, v5, LRh/C;->p:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/camera/data/data/E;->i0()Z

    move-result v18

    if-nez v18, :cond_d

    const-string v12, "1000"

    :cond_d
    sget-object v18, Li2/a;->a:Li2/b;

    move-object/from16 v19, v3

    invoke-interface/range {v18 .. v18}, Li2/b;->b()Lj2/h;

    move-result-object v3

    move/from16 v18, v6

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-interface {v3, v6, v12}, Lj2/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/camera/core/ExifData;->getLocationAddress()Ljava/lang/String;

    move-result-object v6

    iget-boolean v12, v5, LRh/C;->m:Z

    move-object/from16 v20, v11

    iget v11, v5, LRh/C;->l:I

    move-object/from16 v21, v15

    new-instance v15, Lxi/a;

    invoke-direct {v15, v7, v13, v11}, Lxi/a;-><init>(Landroid/graphics/Bitmap;Las/b;I)V

    iget-object v11, v5, LRh/C;->w:Ljava/lang/String;

    iput-object v11, v15, Lxi/a;->a:Ljava/lang/String;

    iput-object v4, v15, Lxi/a;->m:Landroid/location/Location;

    iput-object v6, v15, Lxi/a;->n:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/camera/core/ExifData;->getLatlngStringCache()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lxi/a;->o:Ljava/lang/String;

    iput-boolean v12, v15, Lxi/a;->p:Z

    iget-short v4, v14, Lxi/b;->c:S

    iput-short v4, v15, Lxi/a;->f:S

    iget v4, v14, Lxi/b;->d:F

    iput v4, v15, Lxi/a;->g:F

    iput-wide v1, v15, Lxi/a;->h:J

    sget-object v1, LJe/c$b;->a:LJe/c;

    invoke-virtual {v1}, LJe/c;->w()Ljava/lang/String;

    iget v1, v14, Lxi/b;->b:I

    iput v1, v15, Lxi/a;->i:I

    iget-object v1, v0, LRh/r;->d:LRh/f;

    iget-object v1, v1, LRh/f;->k:Ln3/b$a;

    iget-object v1, v1, Ln3/b$a;->d:Ljava/lang/String;

    const-string v2, "getFilterName(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v15, Lxi/a;->j:Ljava/lang/String;

    iput-object v3, v15, Lxi/a;->k:Ljava/lang/String;

    iget-wide v1, v9, LRh/z;->g:J

    iput-wide v1, v15, Lxi/a;->l:J

    iput-object v8, v15, Lxi/a;->q:[B

    invoke-static {}, Lcom/android/camera/data/data/w;->D()Ljava/lang/String;

    iput-boolean v10, v15, Lxi/a;->u:Z

    move-object v4, v15

    :goto_6
    const/16 v1, 0x57

    if-nez p1, :cond_e

    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v2

    invoke-virtual {v2, v4}, LS8/d;->e(Lxi/a;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, LF1/g3;->c:LF1/g3;

    invoke-static {v1, v2}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v3, v9, LRh/z;->a:I

    iput v2, v9, LRh/z;->b:I

    goto/16 :goto_b

    :cond_e
    invoke-static {}, LS8/d;->a()LS8/d;

    move-result-object v2

    iget-object v2, v2, LS8/d;->a:Lzi/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    new-array v3, v12, [Ljava/lang/Object;

    const-string v6, "processPreviewWatermarkWithRemoveInfo"

    const-string v8, "CloudWatermark"

    invoke-static {v8, v6, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v3, v4, Lxi/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lzi/b;->c(Ljava/lang/String;)Lcom/xiaomi/cam/watermark/a;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v24

    invoke-virtual {v2, v3, v4}, Lzi/b;->d(Lcom/xiaomi/cam/watermark/a;Lxi/a;)V

    iget-object v2, v4, Lxi/a;->q:[B

    iget-object v6, v4, Lxi/a;->e:Las/b;

    iget v11, v4, Lxi/a;->c:I

    iget-object v12, v4, Lxi/a;->d:Landroid/graphics/Bitmap;

    move-object/from16 v28, v2

    move-object/from16 v23, v3

    move-object/from16 v26, v6

    move/from16 v27, v11

    move-object/from16 v25, v12

    invoke-virtual/range {v23 .. v28}, Lcom/xiaomi/cam/watermark/a;->K(Landroid/app/Application;Landroid/graphics/Bitmap;Las/b;I[B)Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    move-result-object v2

    move-object/from16 v6, v24

    move-object/from16 v11, v25

    const/16 v12, 0x2bd

    iput v12, v4, Lxi/a;->r:I

    iput-object v2, v4, Lxi/a;->s:Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    iget-object v2, v4, Lxi/a;->e:Las/b;

    const/4 v12, 0x0

    invoke-virtual {v3, v6, v11, v2, v12}, Lcom/xiaomi/cam/watermark/a;->c(Landroid/app/Application;Landroid/graphics/Bitmap;Las/b;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "processPreviewWatermarkWithRemoveInfo cost time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "ms"

    invoke-static {v9, v10, v6, v3}, LF1/Z;->a(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v8, v3, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const/4 v12, 0x0

    const-string v2, "processPreviewWatermarkWithRemoveInfo currentItem is null"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_7
    sget-object v3, LF1/g3;->c:LF1/g3;

    invoke-static {v1, v2}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v2

    move-object/from16 v3, v21

    iget v3, v3, LRh/a;->f:I

    const/4 v6, 0x4

    if-ne v6, v3, :cond_10

    move/from16 v3, v17

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_8
    iget-boolean v6, v5, LRh/C;->g:Z

    if-eqz v6, :cond_11

    invoke-virtual {v0}, LRh/r;->p()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-boolean v6, v5, LRh/C;->h:Z

    if-nez v6, :cond_12

    iget-object v6, v5, LRh/C;->f:Ljava/lang/String;

    const-string v8, "out"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    if-eqz v3, :cond_13

    :cond_12
    move/from16 v3, v17

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    const-string v6, "processPreviewWatermark forbidRemove:"

    invoke-static {v6, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    new-array v8, v12, [Ljava/lang/Object;

    move-object/from16 v9, v20

    invoke-static {v9, v6, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v5, LRh/C;->f:Ljava/lang/String;

    const-string/jumbo v8, "with"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v3, :cond_14

    invoke-static {v1, v7}, Lvr/j;->g(ILandroid/graphics/Bitmap;)[B

    move-result-object v1

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    iget v3, v4, Lxi/a;->r:I

    iget-object v6, v4, Lxi/a;->s:Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    iget-boolean v4, v4, Lxi/a;->u:Z

    xor-int/lit8 v4, v4, 0x1

    iput v3, v5, LRh/C;->q:I

    iput-object v6, v5, LRh/C;->r:Lcom/xiaomi/cam/watermark/WatermarkRemover$b;

    iput-boolean v4, v5, LRh/C;->s:Z

    iput-object v1, v5, LRh/C;->t:[B

    move-object v1, v2

    :goto_b
    invoke-virtual {v0, v1}, LRh/r;->r([B)V

    move/from16 v1, v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/ExifData;->setNeedIcc(Z)V

    return-void
.end method

.method public static e(LRh/r;[B[BIII)[B
    .locals 27
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!supportMIVI3OutputJpeg"
        type = 0x0
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "ParallelSaveRequest"

    const-string/jumbo v4, "saveHeif exception: "

    const-string v5, "HeifWriter.close cost "

    const-string v6, "HeifWriter.stop cost "

    const-string v7, "HeifWriter.addExifData cost "

    const-string v8, "HeifWriter.start cost "

    const-string v9, "HeifWriter.Builder cost "

    const-string v10, " createParcelFileDescriptor cost "

    const/4 v11, 0x0

    new-array v12, v11, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v15, v0, LRh/r;->k:LRh/A;

    iget-object v15, v15, LRh/A;->g:Ljava/lang/String;

    const/16 v16, 0x0

    :try_start_0
    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v11

    iget-object v11, v11, LF2/d;->a:LF2/b;

    invoke-virtual {v11, v15}, LF2/b;->f(Ljava/lang/String;)LE2/a;

    move-result-object v11

    iget-object v11, v11, LE2/a;->c:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v12

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v18, v13

    :try_start_2
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v4

    const/4 v14, 0x0

    :try_start_3
    invoke-static {v13, v15, v14}, Lk7/K;->i(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "rw"

    invoke-virtual {v11, v4, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_0
    move-object/from16 v20, v4

    goto :goto_1

    :catch_1
    move-object/from16 v20, v4

    :goto_0
    move-wide/from16 v18, v13

    goto :goto_1

    :catch_2
    move-object/from16 v20, v4

    move-object/from16 v17, v12

    goto :goto_0

    :catch_3
    :goto_1
    const-string v4, "There is no file for this uri. we can still use temp file."

    const/4 v14, 0x0

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v3, v4, v11}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, v16

    :goto_2
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v18

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v3, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".temp"

    invoke-static {v12, v13}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    new-instance v21, Lom/g$a;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v24, p3

    move/from16 v25, p4

    invoke-direct/range {v21 .. v26}, Lom/g$a;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;III)V

    move-object/from16 v12, v21

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v3, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, v0, LRh/r;->l:LRh/C;

    iget-boolean v11, v0, LRh/C;->c:Z

    const/4 v13, 0x1

    if-eqz v11, :cond_0

    iput v13, v12, Lom/g$a;->k:I

    const/4 v11, 0x4

    iput v11, v12, Lom/g$a;->l:I

    :cond_0
    iget v0, v0, LRh/C;->l:I

    move/from16 v11, p5

    invoke-virtual {v12, v11}, Lom/g$a;->b(I)V

    invoke-virtual {v12, v0}, Lom/g$a;->c(I)V

    invoke-virtual {v12}, Lom/g$a;->a()Lom/g;

    move-result-object v11

    invoke-virtual {v11}, Lom/i;->o()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/Object;

    invoke-static {v3, v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v11, v13}, Lom/i;->e(Z)V

    iget v0, v11, Lom/i;->a:I

    if-nez v0, :cond_5

    monitor-enter v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v11, Lom/i;->h:Lom/f;

    if-eqz v0, :cond_3

    iget v10, v0, Lom/d;->j:I

    if-nez v10, :cond_2

    array-length v10, v1

    iget v12, v0, Lom/d;->k:I

    iget v13, v0, Lom/d;->l:I

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x3

    div-int/lit8 v12, v12, 0x2

    if-ne v10, v12, :cond_1

    invoke-virtual {v0, v1}, Lom/d;->e([B)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addYuvBuffer is only allowed in buffer input mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    const-string v0, "HeifWriter.addYuvBuffer cost %dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    array-length v0, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v8, v2

    invoke-virtual {v11, v8, v2}, Lom/i;->a(I[B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_4
    const-string/jumbo v0, "saveHeif: no exif data"

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v11}, Lom/i;->q()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v11}, Lom/i;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lav/j;->o(Ljava/io/File;)[B

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v4}, Lxx/e;->a(Ljava/io/Closeable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Not valid in input mode "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v4}, Lxx/e;->a(Ljava/io/Closeable;)V

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_6
    move-object/from16 v12, v17

    :goto_6
    invoke-static/range {v18 .. v19}, LI4/c;->b(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "saveHeif: cost %dms"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    array-length v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "saveHeif: byte[] length is %d, if 0 use FileDescriptor to storage else temp file"

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v12

    :goto_7
    invoke-static {v4}, Lxx/e;->a(Ljava/io/Closeable;)V

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_7
    throw v0
.end method
