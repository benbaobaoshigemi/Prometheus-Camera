.class public final LW8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/g;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LW8/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, LW8/b;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, LW8/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    sget-object v0, Lhn/a;->a:Lhn/a;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lkn/b;->a(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LW8/b;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Lgn/b;

    invoke-direct {v0, p1}, Lgn/b;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, LW8/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const/16 v0, 0x3038

    const/16 v1, 0x3057

    const/16 v2, 0x3056

    filled-new-array {v1, p1, v2, p2, v0}, [I

    move-result-object p1

    iget-object p2, p0, LW8/b;->a:Ljava/lang/Object;

    check-cast p2, LW8/a;

    iget-object v0, p2, LW8/a;->a:Landroid/opengl/EGLDisplay;

    iget-object p2, p2, LW8/a;->c:Landroid/opengl/EGLConfig;

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, p2, :cond_0

    iput-object p1, p0, LW8/b;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to create offscreen surface: 0x"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lin/d;)LBw/c0;
    .locals 2

    new-instance v0, Ldn/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldn/k;-><init>(LW8/b;Lin/d;LTu/e;)V

    new-instance p0, LBw/c0;

    invoke-direct {p0, v0}, LBw/c0;-><init>(Lev/p;)V

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LW8/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, LW8/b;->a:Ljava/lang/Object;

    check-cast v0, LW8/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Landroid/view/Surface;

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "invalid surface: "

    invoke-static {p1, v0}, LF1/j3;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v1, 0x3038

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p1, v0, LW8/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v0, v0, LW8/a;->c:Landroid/opengl/EGLConfig;

    invoke-static {p1, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v3, v0, LW8/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v0, v0, LW8/a;->c:Landroid/opengl/EGLConfig;

    invoke-static {v3, v0, p1, v1, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    :goto_1
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, LW8/a;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    iput-object p1, p0, LW8/b;->b:Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "surface was null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "surface already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Lin/d;)Lin/f;
    .locals 7

    new-instance v0, Lin/f;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lin/d;->d:LT3/d;

    check-cast p1, Lgn/c;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p1, Lfn/a;->c:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const-string v6, "AecLux"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    iget-object v5, p1, Lfn/a;->d:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    const-string v6, "is_hdr"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    iget-object v5, p1, Lfn/a;->e:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    const-string/jumbo v6, "withFace"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    iget-object v5, p1, Lfn/a;->f:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    const-string v6, "iso"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    iget-object v5, p1, Lfn/a;->g:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    const-string v6, "expo"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    iget-object v5, p1, Lfn/a;->h:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v5, v4

    :goto_5
    const-string/jumbo v6, "sensor"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    iget-object v5, p1, Lfn/a;->i:Ljava/lang/Float;

    goto :goto_6

    :cond_6
    move-object v5, v4

    :goto_6
    const-string v6, "motion"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    iget-object v5, p1, Lfn/a;->j:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object v5, v4

    :goto_7
    const-string v6, "bandingType"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_8

    iget-object v5, p1, Lfn/a;->k:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object v5, v4

    :goto_8
    const-string v6, "cct"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    iget-object v5, p1, Lfn/a;->l:Ljava/lang/Float;

    goto :goto_9

    :cond_9
    move-object v5, v4

    :goto_9
    const-string/jumbo v6, "zoom"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_a

    iget-object v5, p1, Lfn/a;->m:Ljava/lang/Float;

    goto :goto_a

    :cond_a
    move-object v5, v4

    :goto_a
    const-string v6, "aperture"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_b

    iget-object v5, p1, Lfn/a;->n:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object v5, v4

    :goto_b
    const-string v6, "phone_model"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    iget-object v5, p1, Lfn/a;->o:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object v5, v4

    :goto_c
    const-string/jumbo v6, "super_night"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_d

    iget-object v5, p1, Lgn/c;->r:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object v5, v4

    :goto_d
    const-string/jumbo v6, "scene_param"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_e

    iget-object v5, p1, Lfn/a;->p:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object v5, v4

    :goto_e
    const-string v6, "language"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "getSceneContextJson="

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "MiClawAiTunningPipeline"

    invoke-static {v6, v2, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, LPu/j;

    const-string/jumbo v5, "sceneContext"

    invoke-direct {v2, v5, v3}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_f

    iget-object p1, p1, Lgn/c;->q:Ljava/lang/String;

    if-nez p1, :cond_10

    :cond_f
    const-string p1, ""

    :cond_10
    new-instance v3, LPu/j;

    const-string/jumbo v5, "scene"

    invoke-direct {v3, v5, p1}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v3}, [LPu/j;

    move-result-object p1

    invoke-static {p1}, LQu/F;->r([LPu/j;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, LW8/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, v1, v4, p1}, Lin/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public e(Lin/d;Ljava/lang/Object;)Lin/h;
    .locals 6

    check-cast p2, Lcom/xiaomi/camera/mode/aicloude/biz/aitunning/AiTunningCreateData;

    const-string p1, "createOut"

    invoke-static {p2, p1}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lin/h;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p1, "toString(...)"

    invoke-static {v2, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LPu/j;

    const-string/jumbo v1, "taskId"

    iget-object p2, p2, Lcom/xiaomi/camera/mode/aicloude/biz/aitunning/AiTunningCreateData;->a:Ljava/lang/String;

    invoke-direct {p1, v1, p2}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, LQu/E;->n(LPu/j;)Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, LW8/b;->a:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x18

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lin/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object p0, p0, LW8/b;->b:Ljava/lang/Object;

    check-cast p0, Lgn/b;

    const/4 v0, 0x0

    iput-object v0, p0, Ldn/s;->e:Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "clearPipelineCookie"

    const-string v1, "MiClawAiTunningRequester"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
