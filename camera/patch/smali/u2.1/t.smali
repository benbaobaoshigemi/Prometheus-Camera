.class public final Lu2/t;
.super Lcom/android/camera/data/data/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/data/data/n;
.implements Lcom/android/camera/data/data/o;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public static A(Ljava/util/List;Lu2/t;Lr2/F;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "214"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getSelectedTopMenuDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->pref_camera_autoexposure_title:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addMeterItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static B(Ljava/util/List;Lu2/t;Lr2/S;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "237"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->pref_camera_picture_format_title:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addRawItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static C(Ljava/util/List;Lu2/t;Lr2/h;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "188"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getSelectedTopMenuDrawable(I)I

    move-result v2

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-virtual {p2}, Lr2/h;->m()I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addBeautyModeItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static D(Ljava/util/List;Lu2/t;Lr2/G;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "149"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result v2

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    sget v2, LQh/e;->pref_camera_predictive_shutter_title:I

    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-virtual {p2}, Lcom/android/camera/data/data/c;->getCurrentMode()I

    move-result v3

    invoke-virtual {p2, v3}, Lr2/G;->isSwitchOn(I)Z

    move-result p2

    invoke-interface {v2, p2}, LX6/j;->p(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addMotionCaptureItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static E(Lu2/t;Ljava/util/List;Lr2/z;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/camera/data/data/d;->c:I

    iput v2, v1, Lcom/android/camera/data/data/d;->d:I

    iput v2, v1, Lcom/android/camera/data/data/d;->e:I

    iput v2, v1, Lcom/android/camera/data/data/d;->f:I

    iput v2, v1, Lcom/android/camera/data/data/d;->h:I

    iput v2, v1, Lcom/android/camera/data/data/d;->j:I

    iput v2, v1, Lcom/android/camera/data/data/d;->k:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/camera/data/data/d;->z:I

    const-string v3, "194"

    iput-object v3, v1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v3}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v1, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->pref_camera_hdr_title:I

    iput p2, v1, Lcom/android/camera/data/data/d;->k:I

    sget-object p2, LX6/i;->a:LX6/j;

    invoke-interface {p2, v0}, LX6/j;->F0(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addHdrItem"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static F(Ljava/util/List;Lu2/t;Lr2/W;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "204"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->pref_camera_video_fps_title_abbr:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addSlowMotionFpsItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static G(Ljava/util/List;Lu2/t;Lr2/f0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "173"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    iget-object p2, p2, Lr2/f0;->g:Lr2/h0;

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->config_name_quality:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addVideoSubQualityItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static H(Lu2/t;Ljava/util/List;Lv2/q0;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lv2/q0;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "220"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->k0(Z)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget v3, LQh/b;->ic_vector_config_subtitle_on_mm:I

    goto :goto_0

    :cond_1
    sget v3, LQh/b;->ic_vector_config_subtitle_off_mm:I

    :goto_0
    iput v3, v0, Lcom/android/camera/data/data/d;->c:I

    const/4 p2, 0x0

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    sget p2, LQh/e;->pref_video_subtitle:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addSubtitleItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static I(Ljava/util/List;Lu2/t;Lr2/f0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "174"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    iget-object p2, p2, Lr2/f0;->h:Lr2/g0;

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->config_name_video_quality:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addVideoSubFpsItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static J(Lu2/t;Ljava/util/List;Lv2/w0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lv2/w0;->isSwitchOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    goto :goto_0

    :cond_0
    sget-object p2, LX6/i;->a:LX6/j;

    const-string v0, "-1"

    invoke-interface {p2, v0}, LX6/j;->y(Ljava/lang/String;)I

    move-result p2

    :goto_0
    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "226"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->pref_camera_delay_capture_title:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addTimerItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static K(Lu2/t;Ljava/util/List;Lv2/z0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lv2/z0;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "211"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v2, LQh/b;->ic_top_config_video_prompter:I

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    sget v2, LQh/e;->pref_video_prompter:I

    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->V(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addVideoPrompterItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static L(Lu2/t;Ljava/util/List;Lt2/d;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ON"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "170"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v2, LQh/b;->ic_top_config_timer_burst:I

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    sget v2, LQh/e;->timer_burst:I

    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->d(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addTimerBurstItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static M(Ljava/util/List;Lu2/t;Lt2/g;)LPu/A;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v1, "187"

    iput-object v1, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget p1, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p1

    iput p1, v0, Lcom/android/camera/data/data/d;->c:I

    sget p1, LQh/e;->config_name_quality:I

    iput p1, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static N(Ljava/util/List;Lu2/t;Lr2/c0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "209"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->ultra_pixel_name:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addUltraPixelItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static O(Ljava/util/List;Lu2/t;Lv2/h;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "3392"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lv2/h;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->aperture_adjust_title:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addApertureItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static b0(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x6

    const/16 v5, 0xd8

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    if-ltz v2, :cond_4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    if-ge v2, v4, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    invoke-static {}, LQu/n;->d0()V

    throw v7

    :cond_5
    invoke-static {v1}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v4, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static m(Lu2/t;Ljava/util/List;Lr2/r;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lr2/r;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "258"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->n(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    sget p2, LQh/e;->pref_camera_auxiliary_exposure_feedback:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addExposureFeedbackItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static n(Ljava/util/List;Lu2/t;Lv2/f0;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "521"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v2, LQh/b;->ic_top_config_macro:I

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-virtual {p2}, Lv2/f0;->p()I

    move-result v2

    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    sget-object v2, LX6/i;->a:LX6/j;

    iget v3, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v3}, Lv2/Z;->isSwitchOn(I)Z

    move-result p2

    invoke-interface {v2, p2}, LX6/j;->c(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addNewMacroModeItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static o(Ljava/util/List;Lu2/t;Lr2/Q;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "210"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->config_name_ratio:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addRatioItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static p(Lu2/t;Ljava/util/List;Lv2/C;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "171"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->dual_video_record_type:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addDualVideoRecordTypeItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static q(Ljava/util/List;Lu2/t;Lr2/w;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "193"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result v2

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-virtual {p2}, Lr2/w;->L()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, LQh/e;->config_name_front_flash:I

    goto :goto_0

    :cond_0
    sget v2, LQh/e;->config_name_flash:I

    :goto_0
    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lr2/w;->t(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addFlashItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static r(Lu2/t;Ljava/util/List;Lv2/c;)LPu/A;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, p0}, Lv2/c;->isSwitchOn(I)Z

    move-result p0

    new-instance p2, Lcom/android/camera/data/data/d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/camera/data/data/d;->c:I

    iput v0, p2, Lcom/android/camera/data/data/d;->d:I

    iput v0, p2, Lcom/android/camera/data/data/d;->e:I

    iput v0, p2, Lcom/android/camera/data/data/d;->f:I

    iput v0, p2, Lcom/android/camera/data/data/d;->h:I

    iput v0, p2, Lcom/android/camera/data/data/d;->j:I

    iput v0, p2, Lcom/android/camera/data/data/d;->k:I

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/camera/data/data/d;->z:I

    const-string v0, "182"

    iput-object v0, p2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v0, LX6/i;->a:LX6/j;

    invoke-interface {v0, p0}, LX6/j;->B(Z)I

    move-result v1

    iput v1, p2, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v0, p0}, LX6/j;->P(Z)I

    move-result p0

    iput p0, p2, Lcom/android/camera/data/data/d;->i:I

    sget p0, LQh/e;->pref_video_ai_audio_single:I

    iput p0, p2, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static s(Lu2/t;Ljava/util/List;Lv2/t;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-static {p0}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result p0

    new-instance p2, Lcom/android/camera/data/data/d;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p2, Lcom/android/camera/data/data/d;->c:I

    iput v0, p2, Lcom/android/camera/data/data/d;->d:I

    iput v0, p2, Lcom/android/camera/data/data/d;->e:I

    iput v0, p2, Lcom/android/camera/data/data/d;->f:I

    iput v0, p2, Lcom/android/camera/data/data/d;->h:I

    iput v0, p2, Lcom/android/camera/data/data/d;->j:I

    iput v0, p2, Lcom/android/camera/data/data/d;->k:I

    const/4 v0, 0x0

    iput v0, p2, Lcom/android/camera/data/data/d;->z:I

    const-string v0, "530"

    iput-object v0, p2, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v0, LX6/i;->a:LX6/j;

    invoke-interface {v0, p0}, LX6/j;->B0(Z)I

    move-result p0

    iput p0, p2, Lcom/android/camera/data/data/d;->c:I

    sget p0, LQh/e;->pref_camera_close_focus_preferred_title:I

    iput p0, p2, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static t(Lu2/t;Ljava/util/List;Lr2/x;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lr2/x;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "199"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->K(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    sget p2, LQh/e;->pref_camera_auxiliary_focus_peak:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addFocusPeakItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static u(Ljava/util/List;Lu2/t;Lv2/k0;)LPu/A;
    .locals 5

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "212"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lv2/k0;->o(I)Z

    move-result v2

    iput-boolean v2, p2, Lv2/k0;->f:Z

    iget v3, p2, Lv2/k0;->i:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    sget v2, LQh/b;->ic_shine_off:I

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    sget v2, LQh/b;->ic_new_effect_button_selected:I

    goto :goto_0

    :cond_1
    sget v2, LQh/b;->ic_new_effect_button_normal_mm:I

    :goto_0
    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p2, p2, Lv2/k0;->i:I

    if-eq p2, v4, :cond_2

    sget p2, LQh/e;->accessibility_beauty_function_panel_on:I

    goto :goto_1

    :cond_2
    sget p2, LQh/e;->accessibility_filter_open_panel:I

    :goto_1
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addShineItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static v(Lu2/t;Ljava/util/List;Lr2/m;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v3, "190"

    iput-object v3, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/data/data/c;->mCapabilities:Lj9/e;

    invoke-static {v3}, Lj9/f;->z2(Lj9/e;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->V()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lr2/m;->n()Lcom/android/camera/data/data/d;

    move-result-object p2

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/android/camera/data/data/d;->i:I

    :cond_1
    iput v1, v0, Lcom/android/camera/data/data/d;->i:I

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lr2/m;->o()I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    :goto_1
    sget p2, LQh/e;->config_name_photography_style:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addCvTypeItem"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static w(Lu2/t;Ljava/util/List;Lv2/z0;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lv2/z0;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "256"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v2, LQh/b;->ic_top_config_video_prompter:I

    iput v2, v0, Lcom/android/camera/data/data/d;->c:I

    sget v2, LQh/e;->pref_video_prompter:I

    iput v2, v0, Lcom/android/camera/data/data/d;->k:I

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-interface {v2, p2}, LX6/j;->V(Z)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addSecondScreenVideoPrompterItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static x(Ljava/util/List;Lu2/t;Lr2/X;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "213"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getValueSelectedDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->config_name_quality:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addSlowMotionQualityItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static y(Ljava/util/List;Lu2/t;Lv2/E;)LPu/A;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "165"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iget v2, p1, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v2}, Lcom/android/camera/data/data/c;->getSelectedTopMenuDrawable(I)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->c:I

    sget p2, LQh/e;->config_name_super_eis:I

    iput p2, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addSuperEisProItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static z(Lu2/t;Ljava/util/List;Lr2/B;)LPu/A;
    .locals 4

    const-string v0, "it"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p2, v0}, Lr2/B;->isSwitchOn(I)Z

    move-result p2

    new-instance v0, Lcom/android/camera/data/data/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    iput v1, v0, Lcom/android/camera/data/data/d;->d:I

    iput v1, v0, Lcom/android/camera/data/data/d;->e:I

    iput v1, v0, Lcom/android/camera/data/data/d;->f:I

    iput v1, v0, Lcom/android/camera/data/data/d;->h:I

    iput v1, v0, Lcom/android/camera/data/data/d;->j:I

    iput v1, v0, Lcom/android/camera/data/data/d;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/data/data/d;->z:I

    const-string v2, "206"

    iput-object v2, v0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v2, LX6/i;->a:LX6/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v0, Lcom/android/camera/data/data/d;->c:I

    sget v3, LQh/e;->pref_retain_live_shot:I

    iput v3, v0, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v2, p2, v1}, LX6/j;->m(ZZ)I

    move-result p2

    iput p2, v0, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string p1, "addLiveShotItem"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method


# virtual methods
.method public final P(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual {p0, p1}, LWh/a;->f(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final Q(I)Z
    .locals 5

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->Y()Z

    move-result v1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->P()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    return v4

    :sswitch_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v3

    :sswitch_1
    iget p0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 p1, 0xa3

    if-ne p0, p1, :cond_2

    return v4

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->S()Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    :cond_3
    return v4

    :sswitch_2
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    return v3

    :cond_4
    return v4

    :sswitch_3
    if-nez v0, :cond_5

    return v3

    :cond_5
    return v4

    :sswitch_4
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x93 -> :sswitch_4
        0x95 -> :sswitch_3
        0xa5 -> :sswitch_3
        0xad -> :sswitch_3
        0xae -> :sswitch_3
        0xb6 -> :sswitch_3
        0xbe -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc9 -> :sswitch_3
        0xce -> :sswitch_2
        0xd1 -> :sswitch_3
        0xd2 -> :sswitch_1
        0xd3 -> :sswitch_3
        0xda -> :sswitch_3
        0xdc -> :sswitch_3
        0xdf -> :sswitch_3
        0xe2 -> :sswitch_4
        0xf2 -> :sswitch_0
        0xfe -> :sswitch_3
        0x100 -> :sswitch_3
        0x209 -> :sswitch_3
        0xb22 -> :sswitch_3
        0xb25 -> :sswitch_3
        0xd40 -> :sswitch_3
        0xd41 -> :sswitch_3
    .end sparse-switch
.end method

.method public final bridge synthetic R(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/data/data/B;

    invoke-virtual {p0, p1}, Lu2/t;->c0(Lcom/android/camera/data/data/B;)V

    return-void
.end method

.method public final S(ILjava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0, p1}, Lu2/t;->T(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lu2/t;->X(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const-string p2, "default"

    invoke-virtual {p0, p1, p2}, Lu2/t;->e0(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual {p0, p1}, Lu2/t;->U(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LWh/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string p2, "migrated"

    invoke-virtual {p0, p1, p2}, Lu2/t;->e0(ILjava/lang/String;)V

    return-void
.end method

.method public final T(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v0, "getData value = "

    invoke-static {v0, p1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sget-object v0, LQu/w;->a:LQu/w;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string p0, "[\\[\\]\\s]"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string v0, "compile(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "replaceAll(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lww/p;->P(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "176"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1}, LQu/n;->V(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lu2/t;->b0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final U(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lu2/t;->getKey(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_source"

    invoke-static {p0, p1}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lu2/t;->T(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LQu/w;->a:LQu/w;

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, LJe/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LK2/b;->W()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    :goto_0
    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v1, :cond_3

    invoke-static {p1}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/t;->Q(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xd8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, -0x1

    sub-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    :goto_2
    if-ge v5, v6, :cond_5

    sub-int v7, v5, v3

    sub-int v7, v4, v7

    invoke-static {p1, v5, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v1, "getTopBarData: "

    invoke-static {v1, p1}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final W(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lu2/t;->T(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LQu/w;->a:LQu/w;

    return-object p0

    :cond_0
    const/4 v0, 0x6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, LQu/u;->b1(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lu2/t;->Q(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v0, "getTopMenuData: "

    invoke-static {v0, p1}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final X(Ljava/util/ArrayList;Z)V
    .locals 10

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x91

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Lu2/t;->b0(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v1, "initData: "

    invoke-static {v1, p1}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    const-string v1, "mItems"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-class v4, Lr2/f0;

    const-class v5, Lr2/c0;

    const-class v6, Lv2/z0;

    const/4 v7, 0x1

    const-string v8, "addWatermarkItem"

    const/4 v9, -0x1

    sparse-switch v3, :sswitch_data_0

    iget-object v4, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v5, "invalid config item: "

    invoke-static {v3, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/log/LogUtil;->isDebugOsBuild()Z

    const/4 v4, 0x1

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3, v5}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/data/E;->X()Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "3393"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/b;->ic_vector_config_extra_super_night_video:I

    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->pref_camera_scenemode_entry_night:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->b(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addSuperNightVideoItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/h;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/k;

    invoke-direct {v4, v0, p0}, Lu2/k;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LCs/h;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, LCs/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/camera/data/data/w;->i0()Z

    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "2857"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_top_config_pro_mode_bt2020_on:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->pro_photo_bt2020_title:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addProPhotoBt2020Item"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/o;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LJ5/i;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0, p0}, LJ5/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LH3/a;

    const/16 v6, 0xf

    invoke-direct {v5, v4, v6}, LH3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "2855"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_new_config_ev:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->config_name_ev:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addEvValueItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    const-class v4, Lu2/D;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu2/D;

    if-eqz v3, :cond_3

    iget v4, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lu2/D;->isSwitchOn(I)Z

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->c:I

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "2853"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/e;->pref_camera_crop_preferred_title:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->a0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_6
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/X;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/m;

    invoke-direct {v4, v0, p0}, Lu2/m;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LV9/L2;

    const/16 v6, 0x9

    invoke-direct {v5, v4, v6}, LV9/L2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_7
    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->c:I

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "2850"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/e;->pref_true_colour_video_mode_title:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->y0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addDolbyVisionItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "2848"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_vector_config_ai_audio_track_mm:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->dir_audio_type_audio_track:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addAiAudioTrackItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_9
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/t;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/B3;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, LV9/B3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LF1/d1;

    const/16 v6, 0x11

    invoke-direct {v5, v4, v6}, LF1/d1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_a
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/f0;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/q;

    invoke-direct {v4, v0, p0}, Lu2/q;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LG4/a;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LG4/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_b
    invoke-static {}, Lcom/android/camera/data/data/w;->v()Ljava/lang/String;

    move-result-object v3

    const-string v4, "custom_shutter_default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v7

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "266"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/b;->ic_top_config_custom_shutter:I

    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->pref_shutter_button_style:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->Q(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addCustomShutterItem: "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_c
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "265"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_vector_config_equip_street:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->top_config_equip_street:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addConfigEquipStreetItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_d
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/l;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LMm/P;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, LMm/P;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LA3/b;

    const/16 v6, 0x9

    invoke-direct {v5, v4, v6}, LA3/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_e
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "263"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_new_effect_button_normal:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->accessibility_filter_open_panel:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addMasterFilterItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_f
    iget v3, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/w;->j0(I)Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "260"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/b;->ic_top_config_log:I

    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->log_format:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->j0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addVideoLogItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_10
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/r;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/h;

    invoke-direct {v4, v0, p0}, Lu2/h;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LEs/x;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LEs/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_11
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3, v6}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/camera/a;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, Lcom/xiaomi/camera/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LH4/f;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LH4/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_12
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v5}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/i;

    invoke-direct {v4, v0, p0}, Lu2/i;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LA3/d;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LA3/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_13
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "242"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v4, LX6/i;->a:LX6/j;

    invoke-interface {v4}, LX6/j;->h0()I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->pref_google_lens:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addAiDetectItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_14
    sget v3, Lcom/android/camera/module/Y;->a:I

    invoke-static {v3}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xe1

    invoke-static {v4}, Lcom/android/camera/data/data/m;->Y(I)Z

    move-result v4

    goto :goto_3

    :cond_4
    sget v4, Lcom/android/camera/module/Y;->a:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/data/data/j;->w0(ILx4/s;)Z

    move-result v4

    :goto_3
    if-eqz v3, :cond_5

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v4}, LX6/j;->D0(Z)I

    move-result v5

    goto :goto_4

    :cond_5
    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v4}, LX6/j;->D(Z)I

    move-result v5

    :goto_4
    if-eqz v3, :cond_6

    sget-object v3, LX6/i;->a:LX6/j;

    invoke-interface {v3, v4}, LX6/j;->C(Z)I

    move-result v3

    goto :goto_5

    :cond_6
    sget-object v3, LX6/i;->a:LX6/j;

    invoke-interface {v3, v4}, LX6/j;->L(Z)I

    move-result v3

    :goto_5
    sget v4, Lcom/android/camera/module/Y;->a:I

    invoke-static {v4}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, LQh/e;->street_camera_portrait_style_title:I

    goto :goto_6

    :cond_7
    sget v4, LQh/e;->beauty_tab_name_live_beauty:I

    :goto_6
    new-instance v6, Lcom/android/camera/data/data/d;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v9, v6, Lcom/android/camera/data/data/d;->d:I

    iput v9, v6, Lcom/android/camera/data/data/d;->e:I

    iput v9, v6, Lcom/android/camera/data/data/d;->f:I

    iput v9, v6, Lcom/android/camera/data/data/d;->h:I

    iput v9, v6, Lcom/android/camera/data/data/d;->j:I

    iput v2, v6, Lcom/android/camera/data/data/d;->z:I

    const-string v7, "239"

    iput-object v7, v6, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    iput v5, v6, Lcom/android/camera/data/data/d;->c:I

    iput v4, v6, Lcom/android/camera/data/data/d;->k:I

    iput v3, v6, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addBeautyItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_15
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/S;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Ls/c;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, Ls/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LA3/l;

    const/16 v6, 0xe

    invoke-direct {v5, v4, v6}, LA3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_16
    invoke-static {}, Lcom/android/camera/data/data/E;->j0()Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->c:I

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v9, v4, Lcom/android/camera/data/data/d;->k:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "228"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->W(Z)I

    move-result v6

    iput v6, v4, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v3}, LX6/j;->q(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    sget v3, LQh/e;->config_name_tilt:I

    iput v3, v4, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addTiltItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_17
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/w0;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/l;

    invoke-direct {v4, v0, p0}, Lu2/l;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LC4/j;

    const/16 v6, 0x8

    invoke-direct {v5, v4, v6}, LC4/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_18
    sget-object v3, LGg/U;->n:LGg/U;

    invoke-virtual {v3}, LGg/P;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p2, :cond_8

    goto :goto_7

    :cond_8
    move v7, v2

    :goto_7
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "223"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_watermark_top_cloud_config:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->pref_watermark_title:I

    invoke-static {v4}, Lcom/android/camera/data/data/w;->C(I)I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    sget-object v4, LX6/i;->a:LX6/j;

    invoke-interface {v4, v7}, LX6/j;->j(Z)I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v8, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_19
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/q0;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LFl/d;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, LFl/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LC3/h;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LC3/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_1a
    iget v3, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/E;->T(I)Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "218"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/b;->ic_config_super_eis_on_top_mm:I

    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->config_name_super_eis:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->n0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addSuperEisItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1b
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "217"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v4, LX6/i;->a:LX6/j;

    invoke-interface {v4}, LX6/j;->t()I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->mimoji_back:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1c
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "216"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addBlankItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1d
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/F;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/n;

    invoke-direct {v4, v0, p0}, Lu2/n;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LGn/f;

    const/16 v6, 0xf

    invoke-direct {v5, v4, v6}, LGn/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_1e
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/X;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LQ5/p;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, LQ5/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LC4/A;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, LC4/A;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_1f
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/k0;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/j;

    invoke-direct {v4, v0, p0}, Lu2/j;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LC4/e;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, LC4/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_20
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    invoke-virtual {v3, v6}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LPj/d;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, LPj/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LH4/h;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, LH4/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_21
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/Q;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/s;

    invoke-direct {v4, v0, p0}, Lu2/s;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LI4/r;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LI4/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_22
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v5}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/H4;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, LV9/H4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LFn/w;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LFn/w;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_23
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/B;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/M4;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, LV9/M4;-><init>(Lcom/android/camera/data/data/c;Ljava/lang/Object;I)V

    new-instance v5, LEr/b;

    const/16 v6, 0x8

    invoke-direct {v5, v4, v6}, LEr/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_24
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/J;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/d5;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, LV9/d5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LFn/M;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LFn/M;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_25
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/W;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lja/h;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, Lja/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LH4/q;

    const/16 v6, 0x12

    invoke-direct {v5, v4, v6}, LH4/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_26
    iget v3, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-static {v3}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->c:I

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v9, v4, Lcom/android/camera/data/data/d;->k:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "201"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->u(Z)I

    move-result v6

    iput v6, v4, Lcom/android/camera/data/data/d;->c:I

    invoke-interface {v5, v3}, LX6/j;->N(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    sget v3, LQh/e;->pref_camera_ai_scene_title:I

    iput v3, v4, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addAiSceneItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_27
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/x;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/g;

    invoke-direct {v4, v0, p0}, Lu2/g;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LM6/t;

    const/16 v6, 0xa

    invoke-direct {v5, v4, v6}, LM6/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_28
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "197"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addMoreItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_29
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/z;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lja/b;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, Lja/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LCs/t;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LCs/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2a
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/w;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/V4;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0, p0}, LV9/V4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LV9/l3;

    const/16 v6, 0xa

    invoke-direct {v5, v4, v6}, LV9/l3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2b
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/m;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/K4;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, LV9/K4;-><init>(Lcom/android/camera/data/data/c;Ljava/lang/Object;I)V

    new-instance v5, LEr/c;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, LEr/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2c
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/h;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lr6/N;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, Lr6/N;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LCs/o;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LCs/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2d
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v3

    const-class v4, Lt2/g;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/c5;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p0}, LV9/c5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LFn/K;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LFn/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_2e
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/c;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LV9/U4;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, LV9/U4;-><init>(Lcom/android/camera/data/data/c;Ljava/lang/Object;I)V

    new-instance v5, LJ9/b;

    const/16 v6, 0xe

    invoke-direct {v5, v4, v6}, LJ9/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "addAiAudioSingleItem"

    invoke-static {v3, v5, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_2f
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "178"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_vector_config_ai_audio_zoom_mm:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->pref_camera_rec_type_audio_zoom:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addAiAudioZoomItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_30
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "176"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addInvalidItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_31
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/r;

    invoke-direct {v4, v0, p0}, Lu2/r;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LH4/t;

    const/16 v6, 0xe

    invoke-direct {v5, v4, v6}, LH4/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_32
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/f;

    invoke-direct {v4, v0, p0}, Lu2/f;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LQ5/C;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LQ5/C;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_33
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/C;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/o;

    invoke-direct {v4, v0, p0}, Lu2/o;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LF1/E4;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, LF1/E4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_34
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v3

    const-class v4, Lt2/d;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lja/g;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0, v0}, Lja/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LF1/U0;

    const/16 v6, 0x9

    invoke-direct {v5, v4, v6}, LF1/U0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_35
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v4, Lv2/E;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lu2/p;

    invoke-direct {v4, v0, p0}, Lu2/p;-><init>(Ljava/util/List;Lu2/t;)V

    new-instance v5, LF4/h;

    const/16 v6, 0xb

    invoke-direct {v5, v4, v6}, LF4/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_36
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "163"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v4, LX6/i;->a:LX6/j;

    invoke-interface {v4}, LX6/j;->o()I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->config_name_privacy_watermark:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addPrivacyWatermarkItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_37
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "162"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_vector_new_config_gif_mm:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->mimoji_gif:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addMimojiGifItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_38
    invoke-static {}, Lcom/android/camera/data/data/j;->Q0()Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->c:I

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v9, v4, Lcom/android/camera/data/data/d;->k:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "160"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    if-eqz v3, :cond_9

    sget v5, LQh/b;->ic_config_super_eis_on_mm:I

    goto :goto_8

    :cond_9
    sget v5, LQh/b;->ic_config_super_eis_off_mm:I

    :goto_8
    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->pref_camera_movie_solid_title:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->p0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addEisItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_39
    invoke-static {}, Lcom/android/camera/data/data/j;->B0()V

    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->c:I

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v9, v3, Lcom/android/camera/data/data/d;->k:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "152"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget-object v4, LX6/i;->a:LX6/j;

    invoke-interface {v4}, LX6/j;->f()I

    move-result v4

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->dual_video_front_portrait_center:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addFrontPortraitCenterItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3a
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/G;

    invoke-virtual {v3, v4}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Li5/b;

    const/4 v5, 0x1

    invoke-direct {v4, v0, p0, v5}, Li5/b;-><init>(Ljava/util/List;Ljava/lang/Object;I)V

    new-instance v5, LEs/v;

    const/16 v6, 0x8

    invoke-direct {v5, v4, v6}, LEs/v;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_1

    :sswitch_3b
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "147"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->vector_drawable_friend_mode:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->function_friend_mode:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addFriendModeItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3c
    new-instance v3, Lcom/android/camera/data/data/d;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v9, v3, Lcom/android/camera/data/data/d;->d:I

    iput v9, v3, Lcom/android/camera/data/data/d;->e:I

    iput v9, v3, Lcom/android/camera/data/data/d;->f:I

    iput v9, v3, Lcom/android/camera/data/data/d;->h:I

    iput v9, v3, Lcom/android/camera/data/data/d;->j:I

    iput v2, v3, Lcom/android/camera/data/data/d;->z:I

    const-string v4, "215"

    iput-object v4, v3, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v4, LQh/b;->ic_video_cclock_menu:I

    iput v4, v3, Lcom/android/camera/data/data/d;->c:I

    sget v4, LQh/e;->cclock_format:I

    iput v4, v3, Lcom/android/camera/data/data/d;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addCclockItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_3d
    invoke-static {}, Lcom/android/camera/data/data/E;->z()Z

    move-result v3

    new-instance v4, Lcom/android/camera/data/data/d;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v9, v4, Lcom/android/camera/data/data/d;->d:I

    iput v9, v4, Lcom/android/camera/data/data/d;->e:I

    iput v9, v4, Lcom/android/camera/data/data/d;->f:I

    iput v9, v4, Lcom/android/camera/data/data/d;->h:I

    iput v9, v4, Lcom/android/camera/data/data/d;->j:I

    iput v2, v4, Lcom/android/camera/data/data/d;->z:I

    const-string v5, "145"

    iput-object v5, v4, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    sget v5, LQh/b;->ic_menu_cine_master:I

    iput v5, v4, Lcom/android/camera/data/data/d;->c:I

    sget v5, LQh/e;->connect_view_title:I

    iput v5, v4, Lcom/android/camera/data/data/d;->k:I

    sget-object v5, LX6/i;->a:LX6/j;

    invoke-interface {v5, v3}, LX6/j;->w0(Z)I

    move-result v3

    iput v3, v4, Lcom/android/camera/data/data/d;->i:I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    const-string v4, "addCineMasterPopupItem"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    iget p2, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/data/data/c;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mItems: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x91 -> :sswitch_3d
        0x93 -> :sswitch_3b
        0x95 -> :sswitch_3a
        0x98 -> :sswitch_39
        0xa0 -> :sswitch_38
        0xa2 -> :sswitch_37
        0xa3 -> :sswitch_36
        0xa5 -> :sswitch_35
        0xaa -> :sswitch_34
        0xab -> :sswitch_33
        0xad -> :sswitch_32
        0xae -> :sswitch_31
        0xb0 -> :sswitch_30
        0xb2 -> :sswitch_2f
        0xb6 -> :sswitch_2e
        0xbb -> :sswitch_2d
        0xbc -> :sswitch_2c
        0xbe -> :sswitch_2b
        0xc1 -> :sswitch_2a
        0xc2 -> :sswitch_29
        0xc5 -> :sswitch_28
        0xc7 -> :sswitch_27
        0xc9 -> :sswitch_26
        0xcc -> :sswitch_25
        0xcd -> :sswitch_24
        0xce -> :sswitch_23
        0xd1 -> :sswitch_22
        0xd2 -> :sswitch_21
        0xd3 -> :sswitch_20
        0xd4 -> :sswitch_1f
        0xd5 -> :sswitch_1e
        0xd6 -> :sswitch_1d
        0xd7 -> :sswitch_3c
        0xd8 -> :sswitch_1c
        0xd9 -> :sswitch_1b
        0xda -> :sswitch_1a
        0xdc -> :sswitch_19
        0xdf -> :sswitch_18
        0xe2 -> :sswitch_17
        0xe4 -> :sswitch_16
        0xed -> :sswitch_15
        0xef -> :sswitch_14
        0xf2 -> :sswitch_13
        0xfe -> :sswitch_12
        0x100 -> :sswitch_11
        0x102 -> :sswitch_10
        0x104 -> :sswitch_f
        0x107 -> :sswitch_e
        0x108 -> :sswitch_d
        0x109 -> :sswitch_c
        0x10a -> :sswitch_b
        0x209 -> :sswitch_a
        0x212 -> :sswitch_9
        0xb20 -> :sswitch_8
        0xb22 -> :sswitch_7
        0xb23 -> :sswitch_6
        0xb25 -> :sswitch_5
        0xb27 -> :sswitch_4
        0xb28 -> :sswitch_3
        0xb29 -> :sswitch_2
        0xd40 -> :sswitch_1
        0xd41 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Y()Z
    .locals 2

    iget-object p0, p0, Lu2/t;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0xc5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z()Z
    .locals 2
    .annotation runtime Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportTopEditor"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->B1()V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu2/Q;->S()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, LK2/b;->R()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lu2/P;->F(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xdb

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lu2/t;->Y()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a0()Z
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->B1()V

    invoke-static {}, LK2/b;->a0()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_3

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lu2/P;->F(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const/16 v1, 0xdb

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lu2/t;->Y()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c0(Lcom/android/camera/data/data/B;)V
    .locals 1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/camera/data/data/B;->a:I

    iput v0, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    iget-object v0, p1, Lcom/android/camera/data/data/B;->c:Lj9/e;

    iput-object v0, p0, Lcom/android/camera/data/data/c;->mCapabilities:Lj9/e;

    iget p1, p1, Lcom/android/camera/data/data/B;->b:I

    iput p1, p0, Lu2/t;->a:I

    return-void
.end method

.method public final bridge synthetic clear(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final d0(Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu2/t;->X(Ljava/util/ArrayList;Z)V

    iget p1, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    const-string/jumbo p2, "user"

    invoke-virtual {p0, p1, p2}, Lu2/t;->e0(ILjava/lang/String;)V

    return-void
.end method

.method public final e0(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-interface {v0}, Lai/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual {p0, p1}, Lu2/t;->U(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/c;->mParentDataItem:LWh/a;

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-virtual {p0, p1}, Lu2/t;->U(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public final getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object p0, LQu/w;->a:LQu/w;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/c;->mItems:Ljava/util/List;

    const-string v0, "mItems"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getKey(I)Ljava/lang/String;
    .locals 2

    iget p1, p0, Lcom/android/camera/data/data/c;->mCurrentMode:I

    iget p0, p0, Lu2/t;->a:I

    const-string v0, "pref_top_editor_key_"

    const-string v1, "_"

    invoke-static {p1, p0, v0, v1}, LF1/r0;->f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/data/data/j;->v0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/c;->getKey4ExternalScreen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getKey4ExternalScreen(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ComponentGlobalConfigItemList"

    return-object p0
.end method
