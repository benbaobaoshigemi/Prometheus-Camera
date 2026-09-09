.class public final Lcom/android/camera/ui/ModeLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 [2\u00020\u0001:\u0001[B\'\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0012\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020/H\u0016J\u001c\u00100\u001a\u00020+2\n\u00101\u001a\u000602R\u00020\u00132\u0006\u0010.\u001a\u00020/H\u0016J\u0018\u00103\u001a\u00020+2\u0006\u0010.\u001a\u00020/2\u0006\u00104\u001a\u000205H\u0014J\u0010\u00106\u001a\u00020+2\u0006\u0010.\u001a\u00020\rH\u0016J\u0012\u00107\u001a\u00020+2\u0008\u0008\u0002\u00108\u001a\u00020\"H\u0007J\u000e\u00109\u001a\u00020+2\u0006\u0010:\u001a\u00020\rJ\u0008\u0010;\u001a\u00020+H\u0002J\u0018\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020\r2\u0006\u0010>\u001a\u00020\rH\u0002J \u0010?\u001a\u00020+2\u0006\u0010@\u001a\u00020\r2\u0006\u0010A\u001a\u00020\r2\u0006\u0010B\u001a\u00020\rH\u0002J\u0010\u0010C\u001a\u00020+2\u0006\u0010>\u001a\u00020\rH\u0002J\u001e\u0010D\u001a\u00020+2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u0010F\u001a\u00020GH\u0002J\u001e\u0010H\u001a\u00020+2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00052\u0006\u0010F\u001a\u00020GH\u0002J\u0012\u0010I\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020LH\u0003J\u0012\u0010M\u001a\u0004\u0018\u00010J2\u0006\u0010K\u001a\u00020LH\u0003J\u0010\u0010N\u001a\u00020L2\u0006\u0010>\u001a\u00020\rH\u0002J\u001e\u0010O\u001a\u0008\u0012\u0004\u0012\u00020\r0P2\u0006\u0010@\u001a\u00020\r2\u0006\u0010A\u001a\u00020\rH\u0002J \u0010Q\u001a\u00020+2\u0006\u0010K\u001a\u00020L2\u0006\u0010R\u001a\u00020G2\u0006\u0010S\u001a\u00020GH\u0003J\u001c\u0010T\u001a\u00020+2\n\u0010U\u001a\u00060VR\u00020\u00172\u0006\u0010W\u001a\u00020\rH\u0002J*\u0010X\u001a\u00020+2\"\u0010Y\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006`\u000eJ\u0006\u0010Z\u001a\u00020\"R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0008\u0018\u00010\u0016R\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010#\"\u0004\u0008\'\u0010%R\u001a\u0010(\u001a\u00020\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010#\"\u0004\u0008)\u0010%\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/android/camera/ui/ModeLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "context",
        "Landroid/content/Context;",
        "mItems",
        "",
        "Lcom/android/camera/data/data/ComponentDataItem;",
        "modeSelector",
        "Lcom/android/camera/ui/IModeSelector;",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lcom/android/camera/ui/IModeSelector;)V",
        "mSceneMap",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "startSceneMode",
        "endSceneMode",
        "scrollState",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "scrollDx",
        "snapHelper",
        "Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;",
        "Lcom/android/camera/ui/ModeSelectView;",
        "getSnapHelper",
        "()Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;",
        "setSnapHelper",
        "(Lcom/android/camera/ui/ModeSelectView$ModeSnapHelper;)V",
        "sceneSelectMode",
        "getSceneSelectMode",
        "()I",
        "setSceneSelectMode",
        "(I)V",
        "isSceneDismissScroll",
        "",
        "()Z",
        "setSceneDismissScroll",
        "(Z)V",
        "isClickTriggered",
        "setClickTriggered",
        "isSpanScroll",
        "setSpanScroll",
        "onAttachedToWindow",
        "",
        "view",
        "onLayoutCompleted",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "onLayoutChildren",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "calculateExtraLayoutSpace",
        "extraLayoutSpace",
        "",
        "onScrollStateChanged",
        "calibrateLocation",
        "force",
        "onSceneScroll",
        "dx",
        "handleClickScroll",
        "handleSnapLogic",
        "position",
        "deltaX",
        "reviseViewsPosition",
        "start",
        "end",
        "step",
        "updateViewsForScroll",
        "processEndSlowMoveList",
        "positions",
        "translationX",
        "",
        "processStartSlowMoveList",
        "calculateForEndScroll",
        "Lcom/android/camera/ui/AlphaDeltaResult;",
        "translateDetail",
        "Lcom/android/camera/ui/TranslateDetail;",
        "calculateForStartScroll",
        "getTranslateDetail",
        "createRangeList",
        "",
        "updateExtraViewsAlpha",
        "showAlpha",
        "hideAlpha",
        "configSceneTip",
        "showViewHolder",
        "Lcom/android/camera/ui/ModeSelectView$ModeSelectViewHolder;",
        "showMode",
        "updateSceneMap",
        "sceneMap",
        "isNonScene",
        "Companion",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq8/T;

.field public final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Landroidx/recyclerview/widget/RecyclerView;

.field public f:I

.field public g:Lcom/android/camera/ui/ModeSelectView$c;

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lq8/T;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/camera/data/data/d;",
            ">;",
            "Lq8/T;",
            ")V"
        }
    .end annotation

    const-string v0, "mItems"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeSelector"

    invoke-static {p3, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/camera/ui/ModeLayoutManager;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/android/camera/ui/ModeLayoutManager;->b:Lq8/T;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/ModeLayoutManager;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static l(II)Ljava/util/ArrayList;
    .locals 2

    if-lt p0, p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, p1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge p0, p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraLayoutSpace"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$y;[I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    :goto_0
    if-lez p0, :cond_1

    const/4 p1, 0x0

    aget v0, p2, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p2, p1

    const/4 p1, 0x1

    aget v0, p2, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p2, p1

    :cond_1
    return-void
.end method

.method public final k(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ModeLayoutManager;->b:Lq8/T;

    invoke-interface {v1}, Lq8/T;->getSelectPos()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v7, v6

    sub-float v6, v4, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v5

    sub-float/2addr v4, p1

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    invoke-interface {v1}, Lq8/T;->getModeSelectorItemGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    move v5, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v8, v1

    check-cast v8, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v8, v5}, Lcom/android/camera/ui/ModeSelectView;->i(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/camera/ui/ModeSelectView;->k(I)I

    move-result v8

    if-eq v5, v2, :cond_3

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v8

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v4, v5

    invoke-virtual {v7, v5}, Landroid/view/View;->setX(F)V

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_1
    if-ltz v2, :cond_b

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v4, v1

    check-cast v4, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/ModeSelectView;->i(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/ModeSelectView;->k(I)I

    move-result v4

    mul-int/lit8 v5, p1, 0x2

    add-int/2addr v5, v4

    int-to-float v4, v5

    add-float/2addr v0, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    :goto_2
    if-ltz v4, :cond_9

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    move-object v7, v1

    check-cast v7, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v7, v4}, Lcom/android/camera/ui/ModeSelectView;->i(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/ModeSelectView;->k(I)I

    move-result v7

    mul-int/lit8 v8, p1, 0x2

    add-int/2addr v8, v7

    int-to-float v7, v8

    sub-float/2addr v5, v7

    invoke-virtual {v6, v5}, Landroid/view/View;->setX(F)V

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    add-float/2addr v4, v3

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object v5, v1

    check-cast v5, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/ModeSelectView;->i(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/ModeSelectView;->k(I)I

    move-result v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    mul-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v5

    goto :goto_3

    :cond_b
    :goto_4
    return-void
.end method

.method public final m()Z
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/ModeLayoutManager;->b:Lq8/T;

    check-cast v3, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ModeSelectView;->f(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v2
.end method

.method public final n(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->b:Lq8/T;

    invoke-interface {v0}, Lq8/T;->getCurSelectMode()I

    move-result v1

    if-ge p1, p2, :cond_0

    check-cast v0, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->f(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->f:I

    int-to-float v0, v0

    :goto_0
    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    add-int/2addr p1, p3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final o(Ljava/util/LinkedHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/data/data/d;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sceneMap"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v1, "<get-keys>(...)"

    invoke-static {p1, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    const-string v0, "get(...)"

    if-eqz p0, :cond_0

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p0, p1, v1

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    aget-object p0, p1, v1

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/camera/ui/ModeLayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 2

    const-string v0, "ModeLayoutManager"

    const-string v1, "recycler"

    invoke-static {p1, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-static {p2, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void
.end method

.method public final onScrollStateChanged(I)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    iget-object v0, p0, Lcom/android/camera/ui/ModeLayoutManager;->b:Lq8/T;

    invoke-interface {v0}, Lq8/T;->getCurSelectMode()I

    move-result v1

    move-object v2, v0

    check-cast v2, Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ModeSelectView;->m(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iput-boolean v4, p0, Lcom/android/camera/ui/ModeLayoutManager;->j:Z

    iput v3, p0, Lcom/android/camera/ui/ModeLayoutManager;->h:I

    iput-boolean v4, p0, Lcom/android/camera/ui/ModeLayoutManager;->i:Z

    :cond_0
    iget v6, p0, Lcom/android/camera/ui/ModeLayoutManager;->d:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    if-nez p1, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    iget-boolean v7, p0, Lcom/android/camera/ui/ModeLayoutManager;->i:Z

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    if-ne v1, v3, :cond_2

    iget-boolean v2, v2, Lcom/android/camera/ui/ModeSelectView;->i:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeLayoutManager;->j:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->M()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/ModeLayoutManager;->c:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lq8/T;->getSceneResetMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ModeLayoutManager;->k(Z)V

    :cond_4
    iput p1, p0, Lcom/android/camera/ui/ModeLayoutManager;->d:I

    return-void
.end method
