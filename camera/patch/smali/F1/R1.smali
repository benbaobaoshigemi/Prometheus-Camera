.class public final synthetic LF1/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LF1/R1;->a:I

    iput-object p1, p0, LF1/R1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v3, v0, LF1/R1;->b:Ljava/lang/Object;

    iget v0, v0, LF1/R1;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lss/b;

    iget-object v0, v3, Lss/b;->i:Lrs/e$a;

    if-eqz v0, :cond_0

    iget-object v1, v3, Lss/b;->f:Lss/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule$a;

    iget-object v0, v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule$a;->a:Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    invoke-static {v0}, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;->ge(Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "onRecorderError"

    invoke-static {v1, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;->Te(Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/module/r;->listenPhoneState(Z)V

    :cond_0
    return-void

    :pswitch_0
    sget v0, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->k:I

    check-cast v3, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;

    invoke-virtual {v3}, Lcom/android/camera/fragment/top/secondmenu/FastMotionSecondMenu;->getMMotionImageViewBack()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_1
    check-cast v3, Llx/c;

    iget-object v0, v3, Llx/c;->b:Landroid/widget/LinearLayout;

    iget-object v1, v3, Llx/c;->a:Landroid/content/Context;

    const v2, 0x101039c

    invoke-static {v1, v2}, LOx/e;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_2
    check-cast v3, Lg5/M;

    iget-boolean v0, v3, Lg5/M;->p:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Lg5/M;->Vq(I)V

    :cond_1
    return-void

    :pswitch_3
    check-cast v3, Lcom/xiaomi/mimoji/common/module/MimojiVideoModule;

    invoke-static {v3}, Lcom/xiaomi/mimoji/common/module/MimojiVideoModule;->Af(Lcom/xiaomi/mimoji/common/module/MimojiVideoModule;)V

    return-void

    :pswitch_4
    check-cast v3, Lcom/android/camera/fragment/D0;

    invoke-virtual {v3}, Lcom/android/camera/fragment/h;->getBaseModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LC4/G;

    invoke-direct {v2, v1}, LC4/G;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_5
    check-cast v3, Lcom/android/camera/features/mode/street/StreetModule;

    invoke-static {v3}, Lcom/android/camera/features/mode/street/StreetModule;->Bq(Lcom/android/camera/features/mode/street/StreetModule;)V

    return-void

    :pswitch_6
    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lvr/b0;->e(Landroid/view/View;)V

    return-void

    :pswitch_7
    sget-boolean v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->J:Z

    check-cast v3, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TopBarView"

    const-string v4, "TopBarView:ItemAnimatorRunner"

    invoke-static {v1, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->g:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;

    if-eqz v0, :cond_13

    check-cast v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "E: runPendingAnimations, mPendingMoves size="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->i:Ljava/util/ArrayList;

    invoke-static {v4, v1}, LCs/V;->f(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "DefaultItemAnimator"

    invoke-static {v6, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v7, v5, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/lit8 v9, v8, 0x1

    iget-object v10, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/lit8 v12, v11, 0x1

    iget-object v13, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    xor-int/lit8 v15, v14, 0x1

    const-wide/16 v16, 0x0

    if-eqz v8, :cond_3

    if-eqz v11, :cond_3

    if-nez v14, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v19, v4

    move/from16 v20, v5

    move-wide/from16 v4, v16

    :goto_0
    move-object/from16 v21, v1

    goto :goto_5

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-wide/from16 v19, v16

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;

    iget v2, v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->b:I

    move-object/from16 v21, v1

    const/16 v1, 0xd8

    if-ne v2, v1, :cond_4

    move-wide/from16 v1, v16

    :goto_3
    move-wide/from16 v22, v19

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-wide/from16 v4, v22

    goto :goto_4

    :cond_4
    iget-wide v1, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;->d:J

    goto :goto_3

    :goto_4
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-wide/from16 v19, v1

    move-object/from16 v1, v21

    goto :goto_2

    :cond_5
    move-wide/from16 v22, v19

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-wide/from16 v4, v22

    goto :goto_0

    :goto_5
    const-string/jumbo v1, "runPendingAnimations, removalsPending="

    const-string v2, ",movesPending="

    move/from16 v18, v8

    const-string v8, ",changesPending="

    invoke-static {v1, v2, v7, v9, v8}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",additionsPending="

    invoke-static {v1, v12, v2, v15}, LF1/B2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v20, :cond_6

    if-eqz v18, :cond_6

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    const-string/jumbo v0, "runPendingAnimations: nothing to animate "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DefaultItemAnimator:animateRemoveImpl["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const-string v8, "TopBarView_removed_item"

    invoke-static {v8, v7, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->p:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v9, v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->b:I

    const/16 v12, 0xd8

    if-ne v9, v12, :cond_7

    move-object v9, v13

    move-wide/from16 v12, v16

    goto :goto_7

    :cond_7
    move-object v9, v13

    iget-wide v12, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;->d:J

    :goto_7
    invoke-virtual {v8, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/d;

    invoke-direct {v13, v7, v8, v0, v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/d;-><init>(Landroid/view/View;Landroid/view/ViewPropertyAnimator;Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object v13, v9

    goto :goto_6

    :cond_8
    move-object v9, v13

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    if-nez v18, :cond_a

    invoke-static/range {v19 .. v19}, LB3/c;->h(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/a;

    invoke-direct {v2, v0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/a;-><init>(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;Ljava/util/ArrayList;)V

    if-nez v20, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i$b;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i$b;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    sget-object v7, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/a;->run()V

    :cond_a
    :goto_8
    if-nez v11, :cond_c

    invoke-static {v10}, LB3/c;->h(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/b;

    invoke-direct {v2, v0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/b;-><init>(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;Ljava/util/ArrayList;)V

    if-nez v20, :cond_b

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i$a;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i$a;->a:Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    sget-object v7, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_b
    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/b;->run()V

    :cond_c
    :goto_9
    if-nez v14, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultItemAnimator:additionsPending,count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v1}, LCs/V;->f(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/Object;

    const-string v7, "TopBarView_inserted_item"

    invoke-static {v7, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/c;

    invoke-direct {v2, v0, v1}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/c;-><init>(Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/i;Ljava/util/ArrayList;)V

    if-eqz v20, :cond_f

    if-eqz v18, :cond_f

    if-nez v11, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v2}, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/c;->run()V

    :cond_e
    const/4 v0, 0x0

    goto :goto_e

    :cond_f
    :goto_a
    if-nez v20, :cond_10

    goto :goto_b

    :cond_10
    move-wide/from16 v4, v16

    :goto_b
    if-nez v18, :cond_11

    iget-wide v7, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;->e:J

    goto :goto_c

    :cond_11
    move-wide/from16 v7, v16

    :goto_c
    if-nez v11, :cond_12

    iget-wide v9, v0, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$e;->f:J

    goto :goto_d

    :cond_12
    move-wide/from16 v9, v16

    :goto_d
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v4

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;

    iget-object v1, v1, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView$l;->d:Landroid/view/View;

    sget-object v4, Li0/E;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v2, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :goto_e
    const-string v1, "E: runPendingAnimations"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_13
    move v0, v2

    :goto_f
    iput-boolean v0, v3, Lcom/android/camera2/compat/theme/custom/mm/top/topbarview/TopBarView;->m:Z

    return-void

    :pswitch_8
    check-cast v3, LTl/c;

    invoke-virtual {v3}, LTl/c;->Mq()V

    return-void

    :pswitch_9
    check-cast v3, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;

    invoke-static {v3}, Lcom/android/camera/features/mode/idphoto/IdPhotoModule;->Fq(Lcom/android/camera/features/mode/idphoto/IdPhotoModule;)V

    return-void

    :pswitch_a
    sget-object v0, LRm/s;->V:Landroid/view/animation/PathInterpolator;

    check-cast v3, LRm/s;

    invoke-virtual {v3}, Ltq/c;->zq()LR0/a;

    move-result-object v0

    check-cast v0, Lei/c;

    iget-object v0, v0, Lei/c;->i:Lcom/xiaomi/camera/main/ui/view/ModeSelectView;

    iget v1, v0, Lcom/xiaomi/camera/main/ui/view/ModeSelectView;->b:I

    new-instance v2, LRm/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, LRm/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/main/ui/view/ModeSelectView;->h(ILcom/xiaomi/camera/main/ui/view/ModeSelectView$f;)V

    return-void

    :pswitch_b
    check-cast v3, LP4/t;

    iget-object v0, v3, LP4/t;->i:Lcom/android/camera/ui/CombineSlideView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CombineSlideView;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_c
    sget-object v0, Lcom/android/camera/Camera;->C2:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast v3, Lcom/android/camera/Camera;

    iget-object v0, v3, Lcom/android/camera/a;->L0:Lcom/android/camera/ui/CameraRootView;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0}, Lcom/android/camera/Camera;->Ur(ILandroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
