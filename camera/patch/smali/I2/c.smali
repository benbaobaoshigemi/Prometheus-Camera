.class public final synthetic LI2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LI2/c;->a:I

    iput-object p2, p0, LI2/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LI2/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, LI2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LI2/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/features/mode/ai/AiModule;

    iget-object p0, p0, LI2/c;->c:Ljava/lang/Object;

    check-cast p0, Lin/e;

    invoke-static {v0, p0}, Lcom/android/camera/features/mode/ai/AiModule;->Tq(Lcom/android/camera/features/mode/ai/AiModule;Lin/e;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LI2/c;->b:Ljava/lang/Object;

    check-cast v0, Llj/b;

    iget-object v0, v0, Llj/b;->d:Lkj/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LI2/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, LI2/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b09b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, LI2/c;->c:Ljava/lang/Object;

    check-cast p0, Li5/g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x2

    div-int/2addr p0, v2

    new-array v3, v2, [I

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v1, v3

    sub-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    if-lez p0, :cond_2

    move-object p0, v2

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v4, v1, :cond_1

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_4

    :cond_1
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    if-gez p0, :cond_4

    move-object p0, v2

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v1, :cond_3

    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v4, :cond_4

    :cond_3
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    :pswitch_2
    iget-object v0, p0, LI2/c;->b:Ljava/lang/Object;

    check-cast v0, LXc/j;

    iget-object v1, v0, LXc/j;->g:Landroid/graphics/SurfaceTexture;

    iget-object v2, v0, LXc/j;->h:Landroid/view/Surface;

    new-instance v3, Landroid/view/Surface;

    iget-object p0, p0, LI2/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p0, v0, LXc/j;->g:Landroid/graphics/SurfaceTexture;

    iput-object v3, v0, LXc/j;->h:Landroid/view/Surface;

    iget-object p0, v0, LXc/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXc/j$b;

    invoke-interface {v0, v3}, LXc/j$b;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_7
    return-void

    :pswitch_3
    iget-object v0, p0, LI2/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/description/DescriptionActivity;

    iget-object v1, v0, Lcom/android/camera/description/DescriptionActivity;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object p0, p0, LI2/c;->c:Ljava/lang/Object;

    check-cast p0, Lmiuix/appcompat/app/ActionBar;

    const v3, 0x7f0b0043

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v3, v2, v4}, Lcom/android/camera/description/DescriptionActivity;->yq(Lmiuix/appcompat/app/ActionBar;IIZ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const v2, 0x7f0b0048

    invoke-virtual {v0, p0, v2, v1, v4}, Lcom/android/camera/description/DescriptionActivity;->yq(Lmiuix/appcompat/app/ActionBar;IIZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
