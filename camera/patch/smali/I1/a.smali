.class public final LI1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Z

.field public static final c:LI1/a$a;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.vendor.audio.unite.record.type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LI1/a;->b:Z

    new-instance v0, LI1/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LQg/r;-><init>(I)V

    sput-object v0, LI1/a;->c:LI1/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioRecord;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMediaCodecRecorder"
        type = 0x0
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {}, LI1/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/AudioParaManger;

    invoke-direct {v0, p2, p1}, Landroid/media/AudioParaManger;-><init>(Landroid/media/AudioRecord;Landroid/content/Context;)V

    iput-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaRecorder;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportMediaCodecRecorder"
        type = 0x0
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {}, LI1/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/AudioParaManger;

    invoke-direct {v0, p2, p1}, Landroid/media/AudioParaManger;-><init>(Landroid/media/MediaRecorder;Landroid/content/Context;)V

    iput-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static h()Z
    .locals 1

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "AiAudioParameterManager"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const-string p0, "creatOzoEffect: mSupportedVersion is not 3.0"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const-string v0, "creatOzoEffect: E. sessionId = "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->creatOzoEffect(I)Z

    move-result p0

    const-string p1, "creatOzoEffect: X"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final b(I)Z
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    const-string v1, "AiAudioParameterManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "createAudioEffects: failed. mAudioParaManager is null."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    sget-boolean v3, LI1/a;->b:Z

    if-eqz v3, :cond_1

    const-string p0, "createAudioEffects: E. sessionId = "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1}, Landroid/media/AudioParaManger;->createAudioEffects(I)Z

    move-result p0

    const-string p1, "createAudioEffects: X. ret = "

    invoke-static {p1, p0}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_1
    invoke-virtual {p0, p1}, LI1/a;->a(I)Z

    move-result p0

    return p0
.end method

.method public final c(Landroid/media/AudioParaManger$EventListener;Landroid/media/AudioParaManger$TuneListener;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AiAudioParameterManager"

    if-nez v0, :cond_0

    const-string p0, "createAudioObject: failed. mAudioParaManager is null."

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v3, LI1/a;->b:Z

    if-eqz v3, :cond_1

    const-string p0, "createAudioObject: E"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioParaManger;->createAudioObject(Landroid/media/AudioParaManger$EventListener;Landroid/media/AudioParaManger$TuneListener;)V

    const-string p0, "createAudioObject: X"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, LI1/a;->d(Landroid/media/AudioParaManger$EventListener;Landroid/media/AudioParaManger$TuneListener;)V

    return-void
.end method

.method public final d(Landroid/media/AudioParaManger$EventListener;Landroid/media/AudioParaManger$TuneListener;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string p0, "createOzo: mSupportedVersion is not 3.0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "createOzo: E"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioParaManger;

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->createOzo(Landroid/media/AudioParaManger$EventListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createOzo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioParaManger;->createOzo(Landroid/media/AudioParaManger$EventListener;Landroid/media/AudioParaManger$TuneListener;)V

    :goto_0
    const-string p0, "createOzo: X"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e()[I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAudioConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AiAudioParameterManager"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    sget-boolean v0, LI1/a;->b:Z

    if-eqz v0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0}, Landroid/media/AudioParaManger;->getAudioConfig()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final f()F
    .locals 6

    const-string v0, "getAudioLatency"

    const-string v1, "AiAudioParameterManager"

    const/4 v2, 0x0

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v4, Landroid/media/AudioParaManger;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "getAudioLatency err =  "

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public final g(ZIIIDDDZ)Z
    .locals 22

    move/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init\uff08\uff09 AiAudioParamManager isStartRecorder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",recType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",wnd_ns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "AiAudioParameterManager"

    invoke-static {v6, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, p0

    iget-object v1, v1, LI1/a;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    move-object v7, v1

    check-cast v7, Landroid/media/AudioParaManger;

    if-eqz v0, :cond_0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move/from16 v5, p3

    move-wide/from16 v13, p7

    move-wide/from16 v15, p9

    move/from16 v17, v2

    move v0, v3

    move-object v1, v6

    move-object v3, v7

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v17}, Landroid/media/AudioParaManger;->init(IIIDDDDDZ)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v0, v3

    move-object v1, v6

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/16 v13, 0x0

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    const/16 v21, 0x0

    invoke-virtual/range {v7 .. v21}, Landroid/media/AudioParaManger;->init(IIIDDDDDZ)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v0, v3

    move-object v1, v6

    :goto_0
    const-string v2, "init AiAudioParamManager = "

    invoke-static {v2, v3}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public final i()V
    .locals 2

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0}, Landroid/media/AudioParaManger;->prepare()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "AiAudioParameterManager"

    const-string v1, "prepare AiAudioParamManager"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object v0, p0, LI1/a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AiAudioParameterManager"

    if-nez v0, :cond_0

    const-string p0, "releaseAudioEffects: failed. mAudioParaManager is null."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v3, LI1/a;->b:Z

    if-eqz v3, :cond_1

    const-string p0, "releaseAudioEffects: E"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v0, Landroid/media/AudioParaManger;

    invoke-virtual {v0}, Landroid/media/AudioParaManger;->releaseAudioEffect()V

    const-string p0, "releaseAudioEffects: X"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, LI1/a;->k()V

    return-void
.end method

.method public final k()V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string p0, "releaseOzoEffect: mSupportedVersion is not 3.0"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "releaseOzoEffect: E"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0}, Landroid/media/AudioParaManger;->releaseOzoEffect()V

    const-string p0, "releaseOzoEffect: X"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Z)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string/jumbo p0, "setAiAudioGainMode: mSupportedVersion is not 3.0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string/jumbo p0, "setAiAudioGainMode: mAudioParaManager is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast p0, Landroid/media/AudioParaManger;

    const-string/jumbo v0, "setAiAudioGainMode: "

    invoke-static {v0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->setUserMode(Z)V

    return-void
.end method

.method public final m(D)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string/jumbo p0, "setAiAudioGainValue: mSupportedVersion is not 3.0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string/jumbo p0, "setAiAudioGainValue: mAudioParaManager is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast p0, Landroid/media/AudioParaManger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAiAudioGainValue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioParaManger;->setUserGain(D)V

    return-void
.end method

.method public final n()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AiAudioParameterManager"

    const-string/jumbo v2, "setAudioFocusAzimuth: 0.0"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioParaManger;->setAudioFocusAzimuth(D)V

    :cond_0
    return-void
.end method

.method public final o(ID)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAudioFocusAzimuth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AiAudioParameterManager"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroid/media/AudioParaManger;->setAudioFocusAzimuth(DI)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AiAudioParameterManager"

    const-string/jumbo v2, "setAudioFocusElevation: 0.0"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioParaManger;->setAudioFocusElevation(D)V

    :cond_0
    return-void
.end method

.method public final q(ID)V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAudioFocusElevation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AiAudioParameterManager"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroid/media/AudioParaManger;->setAudioFocusElevation(DI)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioParaManger;->setAudioFocusHeight(D)V

    :cond_0
    return-void
.end method

.method public final s(D)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioParaManger;->setAudioFocusWidth(D)V

    :cond_0
    return-void
.end method

.method public final t(Z)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->setAudioWindNoise(Z)V

    const-string/jumbo p0, "setAudioWindNoise: "

    invoke-static {p0, p1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AiAudioParameterManager"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final u(D)V
    .locals 1

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioParaManger;->setAudioZoomLevel(D)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setAudioZoomLevel: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "AiAudioParameterManager"

    invoke-static {p2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v(IIIII)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string/jumbo p0, "setFocusRegion: mSupportedVersion is not 2.0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string/jumbo p0, "setFocusRegion: mAudioParaManager is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v4, p0

    check-cast v4, Landroid/media/AudioParaManger;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioParaManger;->setFocusRegion(IIIII)I

    return-void
.end method

.method public final w(I)V
    .locals 1

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->setMaxSupportLevel(I)V

    const-string/jumbo p0, "setMaxSupportLevel: "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AiAudioParameterManager"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final x(I)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0, p1}, Landroid/media/AudioParaManger;->setRecordType(I)V

    const-string/jumbo p0, "setRecordType: "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "AiAudioParameterManager"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSupportAiAudioVersion3"
        type = 0x0
    .end annotation

    sget-object v0, LI1/a;->c:LI1/a$a;

    invoke-virtual {v0}, LQg/r;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "AiAudioParameterManager"

    if-ge v0, v1, :cond_0

    const-string/jumbo p0, "setViewRegion: mSupportedVersion is not 2.0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-nez p0, :cond_1

    const-string/jumbo p0, "setViewRegion: mAudioParaManager is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v4, p0

    check-cast v4, Landroid/media/AudioParaManger;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x438

    const/16 v8, 0x780

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioParaManger;->setViewRegion(IIIII)I

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object p0, p0, LI1/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroid/media/AudioParaManger;

    invoke-virtual {p0}, Landroid/media/AudioParaManger;->start()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "AiAudioParameterManager"

    const-string/jumbo v1, "start: AiAudioParamManager"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
