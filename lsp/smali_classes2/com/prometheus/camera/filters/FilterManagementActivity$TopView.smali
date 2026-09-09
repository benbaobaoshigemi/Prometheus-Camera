.class final Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;
.super Landroid/view/View;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TopView"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 593
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 590
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->paint:Landroid/graphics/Paint;

    .line 594
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 596
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 597
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 598
    invoke-virtual {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->setClickable(Z)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 604
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 607
    invoke-virtual/range {p0 .. p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v10, v4, v3

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v4, v1

    sub-float v12, v2, v4

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v1

    sub-float v15, v10, v5

    add-float v14, v2, v4

    .line 609
    iget-object v4, v0, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->paint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41100000    # 9.0f

    mul-float/2addr v4, v1

    add-float v6, v10, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v1

    sub-float v11, v10, v4

    .line 611
    iget-object v9, v0, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v2

    move v7, v2

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v12, v1, v4

    sub-float v7, v2, v12

    mul-float/2addr v1, v3

    add-float/2addr v1, v10

    .line 612
    iget-object v9, v0, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->paint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v6, v11

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v7, v2, v12

    .line 614
    iget-object v9, v0, Lcom/prometheus/camera/filters/FilterManagementActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
