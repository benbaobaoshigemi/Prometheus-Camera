.class public final synthetic LF1/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/TextureVideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    const/16 p2, 0xd

    iput p2, p0, LF1/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF1/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LF1/q0;->a:I

    iput-object p1, p0, LF1/q0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, LF1/q0;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;->Lq(Lcom/android/camera/fragment/watermark/wmSettingV2/WmSettingFragment;)V

    return-void

    :pswitch_0
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lth/b;

    iget-object v0, v0, Lth/g;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lth/g$c;->X()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lqs/h$a;

    iget-object v0, v0, Lqs/h$a;->a:Lqs/h;

    iget-object v0, v0, Lqs/h;->q:Lqs/f$a;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lqs/f$a;->a:Lqs/f;

    iget-object v1, v1, Lqs/f;->g:Lcom/android/camera/a;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lqs/f$a;->a:Lqs/f;

    iget-object v1, v1, Lqs/f;->g:Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    instance-of v1, v1, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lqs/f$a;->a:Lqs/f;

    iget-object v0, v0, Lqs/f;->g:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v0

    iget-object v0, v0, Loh/b;->o:Lcom/android/camera/module/W;

    check-cast v0, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/microfilm/milive/mode/MiLiveModule;->stopVideoRecording(ZZ)V

    :cond_4
    :goto_0
    return-void

    :pswitch_2
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/ui/TextureVideoView;

    iget-object v0, v0, Lcom/android/camera/ui/TextureVideoView;->k:Lcom/android/camera/ui/TextureVideoView$d;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/camera/ui/TextureVideoView$d;->g()V

    :cond_5
    return-void

    :pswitch_3
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/microfilm/vlogpro/mode/VlogProModule;

    invoke-static {v0}, Lcom/xiaomi/microfilm/vlogpro/mode/VlogProModule;->Fc(Lcom/xiaomi/microfilm/vlogpro/mode/VlogProModule;)V

    return-void

    :pswitch_4
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/idm/api/IDMBase;

    invoke-static {v0}, Lcom/xiaomi/idm/api/IDMBase$mConnection$1;->c(Lcom/xiaomi/idm/api/IDMBase;)V

    return-void

    :pswitch_5
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/camera/mivi/qcom/ImageReceiverExecutor;

    invoke-static {v0}, Lcom/xiaomi/camera/mivi/qcom/ImageReceiverExecutor;->b(Lcom/xiaomi/camera/mivi/qcom/ImageReceiverExecutor;)V

    return-void

    :pswitch_6
    const v1, 0x7f140575

    const v2, 0x7f140574

    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/video/A$c;

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/video/A$c;->showConfirmMessage(II)V

    return-void

    :pswitch_7
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/VideoBase;

    invoke-static {v0}, Lcom/android/camera/module/VideoBase;->dd(Lcom/android/camera/module/VideoBase;)V

    return-void

    :pswitch_8
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/r;

    invoke-static {v0}, Lcom/android/camera/module/r;->g9(Lcom/android/camera/module/r;)V

    return-void

    :pswitch_9
    const-string v1, "$seekCancelLambda"

    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lfv/B;

    invoke-static {v0, v1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lfv/B;->a:Ljava/lang/Object;

    check-cast v0, Lev/a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lev/a;->invoke()Ljava/lang/Object;

    :cond_6
    return-void

    :pswitch_a
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, LXi/l;

    iget-object v0, v0, LXi/l;->d:Lbj/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lbj/d;->invoke()Ljava/lang/Object;

    :cond_7
    return-void

    :pswitch_b
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, LW9/p;

    invoke-virtual {v0}, LW9/p;->br()V

    return-void

    :pswitch_c
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lyw/m0;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyw/m0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_8
    return-void

    :pswitch_d
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, LTs/f$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/faceunity/core/faceunity/FUSceneKit;->getInstance()Lcom/faceunity/core/faceunity/FUSceneKit;

    move-result-object v1

    iget-object v2, v0, LTs/f$a;->a:LTs/f;

    iget-object v2, v2, LTs/f;->U:LZs/b;

    iget-object v2, v2, LZs/b;->b:Lcom/faceunity/core/avatar/model/Scene;

    new-instance v3, LL9/C;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, LL9/C;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2, v3}, Lcom/faceunity/core/faceunity/FUSceneKit;->addScene(Lcom/faceunity/core/avatar/model/Scene;Lcom/faceunity/core/listener/OnExecuteListener;)V

    return-void

    :pswitch_e
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, LT8/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "LivePhotoRenderEngine::init"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v1, La9/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LBb/d;-><init>(I)V

    iput-object v1, v0, LT8/i;->d:La9/c;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/camera/watermarkeffect/utils/ShaderManager;->a(I)I

    move-result v2

    iput v2, v1, La9/c;->b:I

    const-string v3, ": mProgram = 0"

    if-eqz v2, :cond_1c

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v4, "uMVPMatrix"

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->c:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v5, "uSTMatrix"

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->d:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v6, "sPreTexture"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->e:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v7, "sWmTexture"

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->f:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v7, "scale"

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->g:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v8, "useBaseMap"

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->h:I

    iget v2, v1, La9/c;->b:I

    const-string v8, "left_offset"

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->i:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v9, "top_offset"

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->j:I

    iget v2, v1, La9/c;->b:I

    const-string/jumbo v10, "uCinematicRadio"

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->k:I

    iget v2, v1, La9/c;->b:I

    const-string v10, "aPosition"

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->l:I

    iget v2, v1, La9/c;->b:I

    const-string v11, "aTexCoord"

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/c;->m:I

    iget v2, v1, La9/c;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v2

    const-string v12, "initShader Invalid shader program. shaderProgram:"

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, La9/c;->b:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "MergeWaterMarkRenderer"

    invoke-static {v13, v2}, LO0/A;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v2, v1, La9/c;->n:Ljava/nio/FloatBuffer;

    sget-object v13, Lb9/b;->a:[F

    if-nez v2, :cond_a

    invoke-static {v13}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/c;->n:Ljava/nio/FloatBuffer;

    :cond_a
    iget-object v2, v1, La9/c;->o:Ljava/nio/FloatBuffer;

    sget-object v14, Lb9/b;->c:[F

    if-nez v2, :cond_b

    invoke-static {v14}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/c;->o:Ljava/nio/FloatBuffer;

    :cond_b
    new-instance v1, La9/d;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LBb/d;-><init>(I)V

    iput-object v1, v0, LT8/i;->e:La9/d;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/camera/watermarkeffect/utils/ShaderManager;->a(I)I

    move-result v2

    iput v2, v1, La9/d;->b:I

    if-eqz v2, :cond_1b

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v1, La9/d;->b:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->c:I

    iget v2, v1, La9/d;->b:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->d:I

    iget v2, v1, La9/d;->b:I

    const-string/jumbo v15, "sTexture"

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->e:I

    iget v2, v1, La9/d;->b:I

    move-object/from16 p0, v13

    const-string/jumbo v13, "sTexture2"

    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->f:I

    iget v2, v1, La9/d;->b:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->g:I

    iget v2, v1, La9/d;->b:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->h:I

    iget v2, v1, La9/d;->b:I

    const-string v13, "needMix"

    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/d;->k:I

    iget v2, v1, La9/d;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v1, La9/d;->b:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "WatermarkBackgroundRenderer"

    invoke-static {v13, v2}, LO0/A;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v2, v1, La9/d;->i:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_d

    invoke-static/range {p0 .. p0}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/d;->i:Ljava/nio/FloatBuffer;

    :cond_d
    iget-object v2, v1, La9/d;->j:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_e

    invoke-static {v14}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/d;->j:Ljava/nio/FloatBuffer;

    :cond_e
    new-instance v1, La9/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LBb/d;-><init>(I)V

    iput-object v1, v0, LT8/i;->c:La9/a;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/watermarkeffect/utils/ShaderManager;->a(I)I

    move-result v2

    iput v2, v1, La9/a;->b:I

    if-eqz v2, :cond_1a

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->c:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->d:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->e:I

    iget v2, v1, La9/a;->b:I

    const-string/jumbo v6, "sTextureArray"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->f:I

    iget v2, v1, La9/a;->b:I

    const-string v6, "layerIndex"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->g:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->h:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->i:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->j:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->k:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->l:I

    iget v2, v1, La9/a;->b:I

    const-string v6, "orientation"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->m:I

    iget v2, v1, La9/a;->b:I

    const-string v6, "mirrorType"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->n:I

    iget v2, v1, La9/a;->b:I

    const-string v6, "needReSize"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->o:I

    iget v2, v1, La9/a;->b:I

    const-string v6, "reSize"

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/a;->p:I

    iget v2, v1, La9/a;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, La9/a;->b:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DynamicWatermarkRenderer"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, v1, La9/a;->q:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_10

    invoke-static/range {p0 .. p0}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/a;->q:Ljava/nio/FloatBuffer;

    :cond_10
    iget-object v2, v1, La9/a;->r:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_11

    invoke-static {v14}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/a;->r:Ljava/nio/FloatBuffer;

    :cond_11
    new-instance v1, La9/e;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LBb/d;-><init>(I)V

    iput-object v1, v0, LT8/i;->f:La9/e;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/watermarkeffect/utils/ShaderManager;->a(I)I

    move-result v2

    iput v2, v1, La9/e;->b:I

    if-eqz v2, :cond_19

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v1, La9/e;->b:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/e;->c:I

    iget v2, v1, La9/e;->b:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/e;->d:I

    iget v2, v1, La9/e;->b:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/e;->e:I

    iget v2, v1, La9/e;->b:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/e;->f:I

    iget v2, v1, La9/e;->b:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/e;->g:I

    iget v2, v1, La9/e;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v2

    const-string v6, "WaterMarkRenderer"

    if-nez v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, La9/e;->b:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, LO0/A;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v2, v1, La9/e;->h:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_13

    invoke-static/range {p0 .. p0}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/e;->h:Ljava/nio/FloatBuffer;

    :cond_13
    iget-object v2, v1, La9/e;->i:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_14

    sget-object v2, Lb9/b;->b:[F

    invoke-static {v2}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/e;->i:Ljava/nio/FloatBuffer;

    :cond_14
    new-instance v1, La9/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LBb/d;-><init>(I)V

    iput-object v1, v0, LT8/i;->g:La9/b;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/watermarkeffect/utils/ShaderManager;->a(I)I

    move-result v2

    iput v2, v1, La9/b;->b:I

    if-eqz v2, :cond_18

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v1, La9/b;->b:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/b;->c:I

    iget v2, v1, La9/b;->b:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/b;->d:I

    iget v2, v1, La9/b;->b:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/b;->e:I

    iget v2, v1, La9/b;->b:I

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/b;->f:I

    iget v2, v1, La9/b;->b:I

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, v1, La9/b;->g:I

    iget v2, v1, La9/b;->b:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsProgram(I)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, La9/b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, LO0/A;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v2, v1, La9/b;->h:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_16

    invoke-static/range {p0 .. p0}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/b;->h:Ljava/nio/FloatBuffer;

    :cond_16
    iget-object v2, v1, La9/b;->i:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_17

    invoke-static {v14}, Lb9/b;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, La9/b;->i:Ljava/nio/FloatBuffer;

    :cond_17
    new-instance v1, Lb9/a;

    invoke-direct {v1}, Lb9/a;-><init>()V

    iput-object v1, v0, LT8/i;->a:Lb9/a;

    const-string v0, "LivePhotoRenderEngine"

    const-string v1, "LivePhotoRenderEngine init"

    invoke-static {v0, v1}, LO0/A;->s(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, La9/b;

    invoke-static {v1, v3}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, La9/e;

    invoke-static {v1, v3}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, La9/a;

    invoke-static {v1, v3}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, La9/d;

    invoke-static {v1, v3}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-class v1, La9/c;

    invoke-static {v1, v3}, LKa/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    iget-object v0, v0, LF1/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/b;

    iget-boolean v1, v0, Lcom/android/camera/b;->e:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/camera/b;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/camera/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/b;->e:Z

    :cond_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
