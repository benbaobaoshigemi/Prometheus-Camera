.class final Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;
.super Landroid/view/View;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GripView"
.end annotation


# instance fields
.field private final activeColor:I

.field private final normalColor:I

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 569
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->paint:Landroid/graphics/Paint;

    .line 570
    iput p2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->normalColor:I

    .line 571
    iput p3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->activeColor:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 576
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 577
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->activeColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->normalColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 578
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    .line 579
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    .line 580
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 581
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v5, -0x1

    :goto_1
    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    div-float v6, v0, v3

    sub-float v7, v2, v6

    int-to-float v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v4

    .line 583
    iget-object v9, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v1, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-float/2addr v6, v2

    .line 584
    iget-object v7, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$GripView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v1, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
