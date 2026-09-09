.class final Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;
.super Landroid/view/View;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransferIconView"
.end annotation


# instance fields
.field private final importing:Z

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 624
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 620
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    .line 625
    iput-boolean p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->importing:Z

    .line 626
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const p2, 0x3fe66666    # 1.8f

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 629
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 630
    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 635
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 636
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 637
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 638
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v2

    const/high16 v3, 0x40e00000    # 7.0f

    mul-float/2addr v3, v0

    sub-float v10, v1, v3

    add-float/2addr v3, v1

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    add-float v11, v2, v4

    const/high16 v4, 0x41000000    # 8.0f

    mul-float v12, v0, v4

    add-float v13, v2, v12

    .line 643
    iget-object v9, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v10

    move v6, v11

    move v7, v10

    move v8, v13

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 644
    iget-object v9, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move v6, v13

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 645
    iget-object v9, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move v5, v3

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 647
    iget-boolean v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->importing:Z

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v3, :cond_0

    sub-float v5, v2, v12

    .line 649
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v6, v1

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v9, v0

    sub-float v6, v1, v9

    sub-float v0, v2, v0

    .line 650
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move v5, v11

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v6, v1, v9

    .line 651
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sub-float v10, v2, v12

    .line 654
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v1

    move v5, v11

    move v6, v1

    move v7, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v0, v9

    sub-float v6, v1, v0

    sub-float/2addr v2, v0

    .line 655
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    move v5, v10

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v6, v1, v0

    .line 656
    iget-object v8, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TransferIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
