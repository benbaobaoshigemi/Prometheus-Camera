.class final Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;
.super Landroid/widget/ListView;
.source "FilterManagementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DragListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/content/Context;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    .line 532
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private beginGripDrag(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    .line 546
    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 548
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    return v1

    .line 549
    :cond_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 550
    new-array v3, v3, [I

    .line 551
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 554
    aget v6, v3, v1

    int-to-float v7, v6

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gez v4, :cond_3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v6, v3

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_3

    .line 555
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0, v0, v2, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1400(Lcom/prometheus/camera/filters/FilterManagementActivity;ILandroid/view/View;Landroid/view/MotionEvent;)V

    return v4

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->beginGripDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1200(Lcom/prometheus/camera/filters/FilterManagementActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$DragListView;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0, p1}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$1300(Lcom/prometheus/camera/filters/FilterManagementActivity;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 541
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
