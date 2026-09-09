.class public Lcom/android/camera/panorama/PanoramaSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_AOVX:Ljava/lang/String; = "aovx"

.field public static final KEY_AOVY:Ljava/lang/String; = "aovy"

.field public static final KEY_AOV_GAIN:Ljava/lang/String; = "aov_gain"

.field public static final KEY_CALCSEAM_PIXNUM:Ljava/lang/String; = "calcseam_pixnum"

.field public static final KEY_DISTORTION_K1:Ljava/lang/String; = "distortion_k1"

.field public static final KEY_DISTORTION_K2:Ljava/lang/String; = "distortion_k2"

.field public static final KEY_DISTORTION_K3:Ljava/lang/String; = "distortion_k3"

.field public static final KEY_DISTORTION_K4:Ljava/lang/String; = "distortion_k4"

.field public static final KEY_DRAW_THRESHOLD:Ljava/lang/String; = "draw_threshold"

.field public static final KEY_ROTATION_RATIO:Ljava/lang/String; = "rotation_ratio"

.field public static final KEY_SEAMSEARCH_RATIO:Ljava/lang/String; = "seamsearch_ratio"

.field public static final KEY_SHRINK_RATIO:Ljava/lang/String; = "shrink_ratio"

.field public static final KEY_USE_DEFORM:Ljava/lang/String; = "use_deform"

.field public static final KEY_USE_LUMINANCE_CORRECTION:Ljava/lang/String; = "use_luminance_correction"

.field public static final KEY_ZROTATION_COEFF:Ljava/lang/String; = "zrotation_coeff"

.field private static final TAG:Ljava/lang/String; = "PanoramaSetting"


# instance fields
.field private aov_gain:D

.field private aovx:D

.field private aovy:D

.field private calcseam_pixnum:I

.field private distortion_k1:D

.field private distortion_k2:D

.field private distortion_k3:D

.field private distortion_k4:D

.field private draw_threshold:D

.field private motion_detection_mode:I

.field private projection_mode:I

.field private rotation_ratio:D

.field private seamsearch_ratio:D

.field private shrink_ratio:F

.field private use_deform:Z

.field private use_luminance_correction:Z

.field private zrotation_coeff:D


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x40519999a0000000L    # 70.4000015258789

    iput-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovx:D

    const-wide v0, 0x404bd999a0000000L    # 55.70000076293945

    iput-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovy:D

    const/high16 v0, 0x40f00000    # 7.5f

    iput v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->shrink_ratio:F

    const/16 v0, 0x7e90

    iput v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->calcseam_pixnum:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_deform:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_luminance_correction:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->seamsearch_ratio:D

    const-wide v3, 0x3fee666666666666L    # 0.95

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->zrotation_coeff:D

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->draw_threshold:D

    iput-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->aov_gain:D

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k1:D

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k2:D

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k3:D

    iput-wide v3, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k4:D

    iput-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->rotation_ratio:D

    iput v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->projection_mode:I

    iput v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->motion_detection_mode:I

    invoke-virtual {p0}, Lcom/android/camera/panorama/PanoramaSetting;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PanoramaSetting"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private parseSetting(Landroid/util/JsonReader;)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "read key "

    invoke-static {v1, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PanoramaSetting"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "distortion_k4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v1, "distortion_k3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v1, "distortion_k2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v1, "distortion_k1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_4
    const-string v1, "aov_gain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v1, "seamsearch_ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_6
    const-string v1, "calcseam_pixnum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_7
    const-string v1, "aovy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_8
    const-string v1, "aovx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_2

    :sswitch_9
    const-string/jumbo v1, "shrink_ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_a
    const-string v1, "draw_threshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_b
    const-string/jumbo v1, "rotation_ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_2

    :sswitch_c
    const-string/jumbo v1, "zrotation_coeff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_d
    const-string/jumbo v1, "use_luminance_correction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_e
    const-string/jumbo v1, "use_deform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->rotation_ratio:D

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k4:D

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k3:D

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k2:D

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k1:D

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->aov_gain:D

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->draw_threshold:D

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->zrotation_coeff:D

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->seamsearch_ratio:D

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_luminance_correction:Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_deform:Z

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->calcseam_pixnum:I

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->shrink_ratio:F

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovy:D

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovx:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string v1, "parse error, name = "

    invoke-static {v1, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7206cd83 -> :sswitch_e
        -0x6eee3b43 -> :sswitch_d
        -0x5808ed0e -> :sswitch_c
        -0x29cc53f6 -> :sswitch_b
        -0x2342b8d0 -> :sswitch_a
        -0xdf771ab -> :sswitch_9
        0x2dc770 -> :sswitch_8
        0x2dc771 -> :sswitch_7
        0xefe573 -> :sswitch_6
        0x66cfbb2 -> :sswitch_5
        0x1aec8f56 -> :sswitch_4
        0x24d06008 -> :sswitch_3
        0x24d06009 -> :sswitch_2
        0x24d0600a -> :sswitch_1
        0x24d0600b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAov_gain()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->aov_gain:D

    return-wide v0
.end method

.method public getAovx()D
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovx:D

    return-wide v0
.end method

.method public getAovy()D
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovy:D

    return-wide v0
.end method

.method public getCalcseam_pixnum()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->calcseam_pixnum:I

    return p0
.end method

.method public getDistortion_k1()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k1:D

    return-wide v0
.end method

.method public getDistortion_k2()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k2:D

    return-wide v0
.end method

.method public getDistortion_k3()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k3:D

    return-wide v0
.end method

.method public getDistortion_k4()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k4:D

    return-wide v0
.end method

.method public getDraw_threshold()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->draw_threshold:D

    return-wide v0
.end method

.method public getMotion_detection_mode()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->motion_detection_mode:I

    return p0
.end method

.method public getProjection_mode()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->projection_mode:I

    return p0
.end method

.method public getRotation_ratio()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->rotation_ratio:D

    return-wide v0
.end method

.method public getSeamsearch_ratio()D
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->seamsearch_ratio:D

    return-wide v0
.end method

.method public getShrink_ratio()F
    .locals 0

    iget p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->shrink_ratio:F

    return p0
.end method

.method public getZrotation_coeff()D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/panorama/PanoramaSetting;->zrotation_coeff:D

    return-wide v0
.end method

.method public isUse_deform()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_deform:Z

    return p0
.end method

.method public isUse_luminance_correction()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_luminance_correction:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PanoramaSetting{aovx="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovx:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", aovy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->aovy:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", shrink_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->shrink_ratio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", calcseam_pixnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->calcseam_pixnum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", use_deform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_deform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", use_luminance_correction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->use_luminance_correction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", seamsearch_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->seamsearch_ratio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", zrotation_coeff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->zrotation_coeff:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", draw_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->draw_threshold:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", aov_gain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->aov_gain:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distortion_k1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k1:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distortion_k2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k2:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distortion_k3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k3:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", distortion_k4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->distortion_k4:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rotation_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/camera/panorama/PanoramaSetting;->rotation_ratio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
