.class public final Lg4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public D:LBc/m;

.field public a:Landroid/widget/TextView;

.field public b:Landroid/animation/AnimatorSet;

.field public c:Landroid/animation/ObjectAnimator;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/graphics/drawable/ClipDrawable;

.field public k:Landroid/graphics/Bitmap;

.field public l:Landroid/graphics/Bitmap;

.field public m:Landroid/graphics/Bitmap;

.field public n:Landroid/graphics/Bitmap;

.field public o:Landroid/animation/ObjectAnimator;

.field public p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

.field public q:Landroid/view/View;

.field public r:Landroid/view/ViewGroup;

.field public s:Lcom/airbnb/lottie/LottieAnimationView;

.field public t:Lcom/airbnb/lottie/LottieAnimationView;

.field public u:Lcom/airbnb/lottie/LottieAnimationView;

.field public v:Lcom/airbnb/lottie/LottieAnimationView;

.field public w:Lcom/airbnb/lottie/LottieAnimationView;

.field public x:Lcom/airbnb/lottie/LottieAnimationView;

.field public y:Lg4/t;

.field public z:I


# direct methods
.method public static a(Lg4/v;Landroid/view/View;FF)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public static b(Lg4/v;)V
    .locals 2

    iget-object v0, p0, Lg4/v;->r:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->x:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->x:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object v0, p0, Lg4/v;->x:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lg4/u;

    invoke-direct {v1, p0}, Lg4/u;-><init>(Lg4/v;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->e(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static c(Lg4/v;I)V
    .locals 11

    const-string/jumbo v0, "statusCode: "

    monitor-enter p0

    :try_start_0
    const-string v1, "PrintingAnimationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastStatusCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg4/v;->z:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lg4/v;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    move-object v5, p0

    goto/16 :goto_1

    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lg4/v;->a:Landroid/widget/TextView;

    const v4, 0x7f140c8d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lg4/v;->h()V

    iget-object v6, p0, Lg4/v;->s:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v7, p0, Lg4/v;->t:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v8, p0, Lg4/v;->u:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v9, p0, Lg4/v;->v:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v10, p0, Lg4/v;->w:Lcom/airbnb/lottie/LottieAnimationView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, p0

    :try_start_2
    invoke-virtual/range {v5 .. v10}, Lg4/v;->f(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v5, p0

    goto :goto_0

    :pswitch_1
    move-object v5, p0

    iget-object p0, v5, Lg4/v;->a:Landroid/widget/TextView;

    const v3, 0x7f140c8f

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lg4/v;->h()V

    iget-object p0, v5, Lg4/v;->w:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    iput v2, p0, Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v5, Lg4/v;->e:Landroid/widget/ImageView;

    goto/16 :goto_2

    :pswitch_2
    move-object v5, p0

    iget-object p0, v5, Lg4/v;->a:Landroid/widget/TextView;

    const v3, 0x7f140c8c

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lg4/v;->h()V

    iget-object p0, v5, Lg4/v;->v:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    const v3, -0xff2425

    iput v3, p0, Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v5, Lg4/v;->i:Landroid/widget/ImageView;

    goto/16 :goto_2

    :pswitch_3
    move-object v5, p0

    iget-object p0, v5, Lg4/v;->a:Landroid/widget/TextView;

    const v3, 0x7f140c8e

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lg4/v;->h()V

    iget-object p0, v5, Lg4/v;->u:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object p0, v5, Lg4/v;->t:Lcom/airbnb/lottie/LottieAnimationView;

    iput-boolean v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Lq1/E;

    invoke-virtual {p0}, Lq1/E;->m()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    const v3, -0xd089

    iput v3, p0, Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    goto :goto_2

    :pswitch_4
    move-object v5, p0

    iget-object p0, v5, Lg4/v;->a:Landroid/widget/TextView;

    const v3, 0x7f140c91

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lg4/v;->h()V

    iget-object p0, v5, Lg4/v;->t:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    const v3, -0x1f1ff1

    iput v3, p0, Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    goto :goto_2

    :pswitch_5
    move-object v5, p0

    iget-object p0, v5, Lg4/v;->a:Landroid/widget/TextView;

    const v3, 0x7f140c90

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lg4/v;->h()V

    iget-object p0, v5, Lg4/v;->s:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->k()V

    iget-object p0, v5, Lg4/v;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, v5, Lg4/v;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    move-object p0, v0

    :goto_2
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    if-ne p1, v1, :cond_3

    :cond_1
    invoke-virtual {v5}, Lg4/v;->e()V

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    :goto_3
    iput-object v0, v5, Lg4/v;->j:Landroid/graphics/drawable/ClipDrawable;

    iget-object v0, v5, Lg4/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, p0}, Lg4/v;->g(Landroid/widget/ImageView;)V

    :cond_3
    iput p1, v5, Lg4/v;->z:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-void

    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lg4/v;->y:Lg4/t;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg4/v;->y:Lg4/t;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lg4/v;->j:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Lg4/v;->c:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    iget-object p0, p0, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 43

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v3, 0x2

    div-int/2addr v1, v3

    add-int/2addr v1, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v0

    move v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    move v7, v6

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v6

    move v9, v7

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v7

    move v10, v9

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v9

    move v12, v10

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    move v13, v12

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v12

    move v15, v13

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v13

    move/from16 v16, v15

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v15

    move/from16 v17, v16

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v16

    move/from16 v18, v3

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v20, v0

    sub-int v0, v1, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v18, v1

    new-array v1, v0, [F

    const/16 v21, 0x0

    aput v20, v1, v21

    const/16 v22, 0x1

    aput v19, v1, v22

    move/from16 v19, v0

    const-string/jumbo v0, "x"

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v24, v1

    sub-int v1, v17, v23

    int-to-float v1, v1

    move/from16 v23, v1

    move/from16 v1, v19

    move/from16 v19, v4

    new-array v4, v1, [F

    aput v19, v4, v21

    aput v23, v4, v22

    move/from16 v23, v6

    const-string/jumbo v6, "y"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v25, v4

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    move/from16 v26, v7

    const-string/jumbo v7, "scaleX"

    invoke-static {v2, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v27, v4

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    move/from16 v28, v1

    const-string/jumbo v1, "scaleY"

    invoke-static {v2, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    sub-int v2, v18, v29

    int-to-float v2, v2

    move/from16 v29, v2

    move/from16 v2, v28

    move-object/from16 v28, v4

    new-array v4, v2, [F

    aput v23, v4, v21

    aput v29, v4, v22

    invoke-static {v5, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v29

    div-int/lit8 v29, v29, 0x2

    move-object/from16 v30, v4

    sub-int v4, v17, v29

    int-to-float v4, v4

    move/from16 v29, v4

    new-array v4, v2, [F

    aput v26, v4, v21

    aput v29, v4, v22

    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v29, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_2

    invoke-static {v5, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v31, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_3

    invoke-static {v5, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v33, v4

    sub-int v4, v18, v32

    int-to-float v4, v4

    move/from16 v32, v4

    new-array v4, v2, [F

    aput v9, v4, v21

    aput v32, v4, v22

    invoke-static {v8, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v34, v4

    sub-int v4, v17, v32

    int-to-float v4, v4

    move/from16 v32, v4

    new-array v4, v2, [F

    aput v10, v4, v21

    aput v32, v4, v22

    invoke-static {v8, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v32, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_4

    invoke-static {v8, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v35, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_5

    invoke-static {v8, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    move-object/from16 v37, v4

    sub-int v4, v18, v36

    int-to-float v4, v4

    move/from16 v36, v4

    new-array v4, v2, [F

    aput v12, v4, v21

    aput v36, v4, v22

    invoke-static {v11, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v36

    div-int/lit8 v36, v36, 0x2

    move-object/from16 v38, v4

    sub-int v4, v17, v36

    int-to-float v4, v4

    move/from16 v36, v4

    new-array v4, v2, [F

    aput v13, v4, v21

    aput v36, v4, v22

    invoke-static {v11, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v36, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_6

    invoke-static {v11, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v39, v4

    new-array v4, v2, [F

    fill-array-data v4, :array_7

    invoke-static {v11, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v40

    div-int/lit8 v40, v40, 0x2

    move-object/from16 v41, v4

    sub-int v4, v18, v40

    int-to-float v4, v4

    move/from16 v18, v4

    new-array v4, v2, [F

    aput v15, v4, v21

    aput v18, v4, v22

    invoke-static {v14, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    sub-int v4, v17, v4

    int-to-float v4, v4

    move-object/from16 v17, v0

    new-array v0, v2, [F

    aput v16, v0, v21

    aput v4, v0, v22

    invoke-static {v14, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v4, v2, [F

    fill-array-data v4, :array_8

    invoke-static {v14, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v6, v2, [F

    fill-array-data v6, :array_9

    invoke-static {v14, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v6, 0x14

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v24, v6, v21

    aput-object v25, v6, v22

    aput-object v27, v6, v2

    const/4 v2, 0x3

    aput-object v28, v6, v2

    const/4 v2, 0x4

    aput-object v30, v6, v2

    const/4 v2, 0x5

    aput-object v29, v6, v2

    const/4 v2, 0x6

    aput-object v31, v6, v2

    const/4 v2, 0x7

    aput-object v33, v6, v2

    const/16 v2, 0x8

    aput-object v34, v6, v2

    const/16 v2, 0x9

    aput-object v32, v6, v2

    const/16 v2, 0xa

    aput-object v35, v6, v2

    const/16 v2, 0xb

    aput-object v37, v6, v2

    const/16 v2, 0xc

    aput-object v38, v6, v2

    const/16 v2, 0xd

    aput-object v36, v6, v2

    const/16 v2, 0xe

    aput-object v39, v6, v2

    const/16 v2, 0xf

    aput-object v41, v6, v2

    const/16 v2, 0x10

    aput-object v17, v6, v2

    const/16 v2, 0x11

    aput-object v0, v6, v2

    const/16 v0, 0x12

    aput-object v4, v6, v0

    const/16 v0, 0x13

    aput-object v1, v6, v0

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    new-instance v0, Lg4/v$a;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v42, v3

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v6, v23

    move/from16 v7, v26

    invoke-direct/range {v0 .. v16}, Lg4/v$a;-><init>(Lg4/v;Landroid/view/View;FFLandroid/view/View;FFLandroid/view/View;FFLandroid/view/View;FFLandroid/view/View;FF)V

    move-object v1, v0

    move-object/from16 v0, v42

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final g(Landroid/widget/ImageView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->p:Lcom/android/camera/features/mode/polaroid/ui/CenterGradientView;

    neg-float p1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v3, 0x1

    aput p1, v2, v3

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lg4/v;->j:Landroid/graphics/drawable/ClipDrawable;

    const/16 v0, 0x2710

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string v1, "level"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lg4/v;->c:Landroid/animation/ObjectAnimator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg4/v;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lg4/v;->o:Landroid/animation/ObjectAnimator;

    new-instance v2, Lg4/w;

    invoke-direct {v2, p0}, Lg4/w;-><init>(Lg4/v;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lg4/v;->s:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v0, p0, Lg4/v;->s:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lg4/v;->t:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v0, p0, Lg4/v;->t:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lg4/v;->u:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v0, p0, Lg4/v;->u:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lg4/v;->v:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object v0, p0, Lg4/v;->v:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lg4/v;->w:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->h()V

    iget-object p0, p0, Lg4/v;->w:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    return-void
.end method

.method public final i(Z)V
    .locals 4

    iget-object v0, p0, Lg4/v;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->r:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lg4/v;->d:Landroid/view/View;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lg4/v;->q:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
