.class public final synthetic LF1/S2;
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

    iput p2, p0, LF1/S2;->a:I

    iput-object p1, p0, LF1/S2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LF1/S2;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lq6/b0;

    iget-object v0, p0, Lq6/b0;->I:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    iget-object v0, p0, Lq6/b0;->p:Lq6/h1;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FilmDreamImpl"

    const-string v3, "release render"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lq6/b0;->p:Lq6/h1;

    iget-object v1, p0, Lq6/h1;->F:[I

    const-string v2, "MiFilmDreamGLSurfaceViewRender"

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    iget-object v3, p0, Lq6/h1;->y:[I

    invoke-static {v3, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    iget-object v4, p0, Lq6/h1;->D:[I

    invoke-static {v4, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteTextures([ILjava/lang/String;)V

    iget-object v4, p0, Lq6/h1;->C:[I

    invoke-static {v4, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteFramebuffers([ILjava/lang/String;)V

    iget-object v4, p0, Lq6/h1;->D:[I

    iget-object v5, p0, Lq6/h1;->C:[I

    filled-new-array {v1, v3, v4, v5}, [[I

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gl/MIGLUtil;->resetArray([[I)V

    iget v1, p0, Lq6/h1;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lq6/h1;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lq6/h1;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaomi/gl/MIGL;->glDeleteProgram(Ljava/util/List;Ljava/lang/String;)V

    iput v0, p0, Lq6/h1;->e:I

    iput v0, p0, Lq6/h1;->f:I

    iput v0, p0, Lq6/h1;->h:I

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lp4/q;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.camera.ActivityBase"

    invoke-static {v0, v1}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/camera/a;

    iget-boolean v0, v0, Lcom/android/camera/a;->b0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lp4/q;->mr()V

    :cond_2
    return-void

    :pswitch_1
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView;->z0:Landroid/widget/FrameLayout;

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_3
    return-void

    :pswitch_2
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lj5/g;

    iget-object v0, p0, Lj5/g;->s:Lcom/android/camera/ui/CombineSlideView;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lj5/g;->I:LZ5/p;

    sget-object v1, LZ5/p;->c:LZ5/p;

    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/E;->e()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/CombineSlideView;->c(Landroid/graphics/Rect;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_3
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lc3/a;

    invoke-virtual {p0}, Lc3/a;->a()V

    return-void

    :pswitch_4
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/video/SlowMotionModule;

    invoke-static {p0}, Lcom/android/camera/module/video/SlowMotionModule;->as(Lcom/android/camera/module/video/SlowMotionModule;)V

    return-void

    :pswitch_5
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/VideoModule;

    invoke-static {p0}, Lcom/android/camera/module/VideoModule;->Hq(Lcom/android/camera/module/VideoModule;)V

    return-void

    :pswitch_6
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera/module/Camera2Module;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->xd(Lcom/android/camera/module/Camera2Module;)V

    return-void

    :pswitch_7
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, LSs/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, LQ6/F0;

    invoke-virtual {v0, v1}, LN6/h;->c(Ljava/lang/Class;)LN6/a;

    move-result-object v0

    check-cast v0, LQ6/F0;

    if-eqz v0, :cond_6

    invoke-interface {v0}, LQ6/F0;->h3()V

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LSs/n;->k(Z)V

    return-void

    :pswitch_8
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->d:Lth/b;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "try to recovery playback"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->c:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->c:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->e:Landroid/graphics/SurfaceTexture;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->e:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->f:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->d:Lth/b;

    invoke-virtual {v1, v0}, Lth/g;->f(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->d:Lth/b;

    invoke-virtual {v0}, Lth/g;->d()V

    iget-object p0, p0, Lcom/android/camera2/compat/theme/custom/mm/cinemaster/view/b;->d:Lth/b;

    invoke-virtual {p0}, Lth/g;->g()V

    :cond_7
    return-void

    :pswitch_9
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, LH4/f0;

    invoke-virtual {p0}, LH4/f0;->Fb()V

    return-void

    :pswitch_a
    iget-object p0, p0, LF1/S2;->b:Ljava/lang/Object;

    check-cast p0, LF1/U2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CameraBrightness"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, LF1/U2;->f:Landroid/content/ContentResolver;

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, LF1/U2;->a:I

    invoke-virtual {p0}, LF1/U2;->b()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v3, "adjustBrightness: "

    invoke-static {v0, v3, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "adjustBrightness: cost="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ms"

    invoke-static {v1, v2, v3, p0}, LF1/Z;->a(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
