.class Lcom/prometheus/camera/filters/FilterManagementActivity$1;
.super Ljava/lang/Object;
.source "FilterManagementActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prometheus/camera/filters/FilterManagementActivity;->animateReorder(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

.field final synthetic val$oldTops:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/prometheus/camera/filters/FilterManagementActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    iput-object p2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->val$oldTops:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 241
    :goto_0
    iget-object v2, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v2}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    add-int v2, v0, v1

    if-ltz v2, :cond_5

    .line 243
    iget-object v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$200(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;

    .line 245
    iget-object v3, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v4}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$300(Lcom/prometheus/camera/filters/FilterManagementActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {v3}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$100(Lcom/prometheus/camera/filters/FilterManagementActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 247
    iget-object v4, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->val$oldTops:Ljava/util/Map;

    iget-object v2, v2, Lcom/prometheus/camera/filters/FilterCatalogStore$EntryState;->id:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-nez v5, :cond_4

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 252
    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 253
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xb4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 254
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 256
    :cond_6
    iget-object p0, p0, Lcom/prometheus/camera/filters/FilterManagementActivity$1;->this$0:Lcom/prometheus/camera/filters/FilterManagementActivity;

    invoke-static {p0}, Lcom/prometheus/camera/filters/FilterManagementActivity;->access$400(Lcom/prometheus/camera/filters/FilterManagementActivity;)V

    const/4 p0, 0x1

    return p0
.end method
