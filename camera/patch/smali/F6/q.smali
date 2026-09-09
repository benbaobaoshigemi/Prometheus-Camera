.class public final LF6/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LF6/q$b;,
        LF6/q$a;
    }
.end annotation


# static fields
.field public static volatile s:LF6/q;

.field public static volatile t:Ljava/lang/Integer;

.field public static volatile u:Ljava/lang/Boolean;

.field public static volatile v:Ljava/lang/Boolean;

.field public static w:Ljava/lang/String;

.field public static x:J


# instance fields
.field public a:I

.field public final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "LF6/a;",
            "LF6/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "LF6/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:LF6/s;

.field public final h:I

.field public volatile i:Ljava/lang/Boolean;

.field public j:LG6/e;

.field public k:F

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "LF6/q$a;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "LG6/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LF6/q;->a:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/q;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LF6/q;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LF6/q;->g:LF6/s;

    const/16 v1, 0xbb8

    iput v1, p0, LF6/q;->h:I

    iput-object v0, p0, LF6/q;->i:Ljava/lang/Boolean;

    iput-object v0, p0, LF6/q;->j:LG6/e;

    const/4 v1, 0x0

    iput-boolean v1, p0, LF6/q;->o:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, LF6/q;->q:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, LF6/q;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public static d()Z
    .locals 2

    sget-object v0, LF6/q;->u:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "persist.miui.camera.perfwatcher.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LF6/q;->u:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, LF6/q;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static i()LF6/q;
    .locals 2

    sget-object v0, LF6/q;->s:LF6/q;

    if-nez v0, :cond_1

    const-class v0, LF6/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, LF6/q;->s:LF6/q;

    if-nez v1, :cond_0

    new-instance v1, LF6/q;

    invoke-direct {v1}, LF6/q;-><init>()V

    sput-object v1, LF6/q;->s:LF6/q;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, LF6/q;->s:LF6/q;

    return-object v0
.end method

.method public static l()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, LF6/q;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "persist.sys.miui.camera.cameramind.enabledfx"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LF6/q;->v:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, LF6/q;->v:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static o()Z
    .locals 5

    sget-object v0, LF6/q;->t:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vendor.camera.sensor.logsystem"

    invoke-static {v0, v1}, Lur/g;->e(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, LF6/q;->t:Ljava/lang/Integer;

    :cond_0
    sget-object v0, LF6/q;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LOG_SYSTEM_VALUE is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PerformanceManager"

    invoke-static {v3, v0}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq v2, v0, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;J)V
    .locals 2

    iget-object p0, p0, LF6/q;->q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LG6/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p3, v1, LG6/d;->a:Ljava/lang/String;

    iput-wide p1, v1, LG6/d;->b:J

    iput-wide p4, v1, LG6/d;->c:J

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(ILF6/a;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, LF6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget p0, p0, LF6/q;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF6/q$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p3}, LF6/q$a;->X(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p3, 0x38

    if-eq p1, p3, :cond_1

    const/16 p3, 0x39

    if-eq p1, p3, :cond_1

    iget p0, p0, LF6/q;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF6/q$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, LF6/q$a;->S0(LF6/a;)V

    :cond_1
    return-void
.end method

.method public final varargs c(LF6/a;J[Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v7, p2

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, LF6/q;->d()Z

    move-result v6

    const-wide/16 v10, 0x0

    if-eqz v6, :cond_0

    cmp-long v6, v7, v10

    if-lez v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v8, v6}, LF6/q;->p(JLjava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    goto/16 :goto_17

    :cond_1
    sget-object v6, LF6/a;->f0:LF6/a;

    if-ne v1, v6, :cond_2

    sget-object v6, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v9, LF6/p;

    invoke-direct {v9, v3}, LF6/p;-><init>(I)V

    invoke-static {v6, v9}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    sget-object v6, LF6/q;->w:Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, "persist.camera.perf.specialList"

    const-string v9, ""

    invoke-static {v6, v9}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, LF6/q;->w:Ljava/lang/String;

    :cond_3
    sget-object v6, LF6/q;->w:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    :cond_4
    invoke-virtual/range {p0 .. p1}, LF6/q;->j(LF6/a;)J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-ltz v6, :cond_5

    cmp-long v6, v7, v12

    if-ltz v6, :cond_5

    move v6, v5

    goto :goto_0

    :cond_5
    move v6, v3

    :goto_0
    if-eqz v6, :cond_6

    const-string v9, "more"

    goto :goto_1

    :cond_6
    const-string v9, "less"

    :goto_1
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "Event: "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " takes "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " is "

    const-string v11, " than "

    invoke-static {v15, v10, v9, v11}, LL/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PerformanceManager"

    invoke-static {v10, v9}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v9, v0, LF6/q;->n:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, LF6/q;->j:LG6/e;

    invoke-interface {v9, v1, v6}, LG6/e;->b(LF6/a;Z)V

    :cond_7
    const-string v9, "PerformanceManager"

    const-string v10, "checkDumpSystrace isTimeout: "

    const-string v11, ", mIsFromThirdParty: "

    invoke-static {v10, v11, v6}, LF1/S;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v0, LF6/q;->o:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2b

    iget-boolean v6, v0, LF6/q;->o:Z

    if-nez v6, :cond_2b

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, LF6/h;->a:Ljava/lang/Boolean;

    if-nez v6, :cond_9

    const-string/jumbo v6, "ro.product.marketname"

    const-string v9, ""

    invoke-static {v6, v9}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "persist.camera.dfx.app.enable"

    invoke-static {v6, v5}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sput-object v9, LF6/h;->a:Ljava/lang/Boolean;

    if-eqz v6, :cond_9

    new-instance v6, Ljava/io/File;

    sget-object v9, LF6/h;->b:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_9
    sget-object v6, LF6/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v9, "DFXManager"

    if-eqz v6, :cond_c

    invoke-static {v1}, LF6/h;->b(LF6/a;)I

    move-result v6

    and-int/2addr v6, v5

    if-nez v6, :cond_a

    const-string/jumbo v6, "this type of issue should be ignore"

    invoke-static {v9, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string v10, "DFX_BLACKLIST=41,64,67"

    invoke-static {v9, v10}, Lcom/android/camera/log/LogK;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "41,64,67"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "this issue is in blacklist should be ignore"

    invoke-static {v9, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "createDFXFile for "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lio/reactivex/schedulers/a;->c:Lio/reactivex/v;

    new-instance v9, LEq/b;

    invoke-direct {v9, v1, v4}, LEq/b;-><init>(Ljava/lang/Object;I)V

    invoke-static {v6, v9}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_3

    :cond_c
    const-string v6, "createDFXFile cancel"

    invoke-static {v9, v6}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v6, ""

    invoke-virtual {v0, v3, v1, v6}, LF6/q;->b(ILF6/a;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, LF6/q;->m()Z

    move-result v6

    if-nez v6, :cond_f

    sget v6, LF6/b;->b:I

    if-ne v6, v4, :cond_e

    goto :goto_4

    :cond_e
    return-void

    :cond_f
    :goto_4
    const-string v6, "performance_issue"

    sget-object v9, LF6/l;->a:Ljava/util/HashMap;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    move v6, v5

    goto :goto_7

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, LF6/l;->a:Ljava/util/HashMap;

    monitor-enter v12

    :try_start_0
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v9, v13

    sget-object v13, LF6/l;->b:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v9, v9, v13

    if-lez v9, :cond_11

    invoke-virtual {v12, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_16

    :cond_11
    move v6, v5

    goto :goto_6

    :cond_12
    invoke-virtual {v12, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v6, v3

    :goto_6
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "MqsHelper"

    sget-object v10, LF6/l;->b:Ljava/lang/Long;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Event :timeout performance_issue repeat occur during "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " ms. repeat="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-nez v6, :cond_2b

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_14

    iget-boolean v6, v0, LF6/q;->n:Z

    if-eqz v6, :cond_13

    sget-object v6, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v9, LC5/k;

    invoke-direct {v9, v5, v0, v1}, LC5/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6, v9}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_8

    :cond_13
    const-string v6, "PerformanceManager"

    const-string v9, "not allow traceDump"

    invoke-static {v6, v9}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_8
    invoke-static {}, LF6/q;->o()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v0, LF6/q;->l:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LF6/q$a;

    if-eqz v6, :cond_15

    invoke-interface {v6}, LF6/q$a;->T0()V

    :cond_15
    iget v6, v0, LF6/q;->l:I

    iget-object v9, v0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LF6/q$a;

    if-eqz v9, :cond_16

    invoke-interface {v9, v6}, LF6/q$a;->V0(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_16
    const-string v6, "Unknown"

    :goto_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/camera/c$b;->a:Lcom/android/camera/c;

    iget v11, v10, Lcom/android/camera/c;->b:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_17

    move v11, v5

    goto :goto_a

    :cond_17
    move v11, v3

    :goto_a
    const-string v12, "[HighTemp]"

    if-eqz v11, :cond_18

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "[HighTemp] temp value:"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v10, Lcom/android/camera/c;->a:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PerformanceManager"

    invoke-static {v11, v10}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v11, 0x29

    if-eq v10, v11, :cond_19

    const/16 v11, 0x2a

    if-eq v10, v11, :cond_1a

    const/16 v11, 0x2f

    if-eq v10, v11, :cond_19

    const/16 v11, 0x31

    if-eq v10, v11, :cond_19

    const/16 v11, 0x43

    if-eq v10, v11, :cond_19

    const/16 v11, 0x4a

    if-eq v10, v11, :cond_19

    const/16 v11, 0x4b

    if-eq v10, v11, :cond_19

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    const-string v12, "[Performance]"

    goto :goto_b

    :pswitch_0
    const-string v12, "[Memory]"

    goto :goto_b

    :cond_19
    :pswitch_1
    const-string v12, "[Stability]"

    :cond_1a
    :goto_b
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const-string v11, "[Major]"

    const-string v12, "[Critical]"

    const-wide/16 v13, 0x3e8

    const-wide/16 v16, 0x5dc

    const/16 v15, 0x17

    move/from16 v18, v5

    const/16 v5, 0x37

    if-eq v10, v15, :cond_1d

    const/16 v15, 0x23

    if-eq v10, v15, :cond_1b

    const/16 v15, 0x30

    if-eq v10, v15, :cond_1d

    const/16 v15, 0x36

    if-eq v10, v15, :cond_1d

    if-eq v10, v5, :cond_1d

    packed-switch v10, :pswitch_data_2

    goto :goto_d

    :cond_1b
    const-wide/16 v19, 0x8

    cmp-long v10, v7, v19

    if-ltz v10, :cond_1c

    :goto_c
    move-object v11, v12

    goto :goto_e

    :cond_1c
    const-wide/16 v19, 0x3

    cmp-long v10, v7, v19

    if-ltz v10, :cond_1f

    goto :goto_e

    :cond_1d
    :pswitch_2
    cmp-long v10, v7, v16

    if-lez v10, :cond_1e

    goto :goto_c

    :cond_1e
    cmp-long v10, v7, v13

    if-ltz v10, :cond_1f

    goto :goto_e

    :cond_1f
    :goto_d
    const-string v11, ""

    :goto_e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    sget-object v10, LF6/a;->A0:LF6/a;

    const-string v11, " "

    if-eq v1, v10, :cond_21

    iget v10, v0, LF6/q;->l:I

    iget v12, v0, LF6/q;->m:I

    const-string v15, "CameraApp Mode:"

    move/from16 v19, v5

    const-string v5, "["

    move-wide/from16 v20, v13

    const-string v13, "] CameraId:"

    invoke-static {v15, v6, v10, v5, v13}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_21
    move/from16 v19, v5

    move-wide/from16 v20, v13

    :goto_f
    sget-object v5, LF6/h;->a:Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[DFX-SOFTWARE]["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const v10, 0x68eae30

    add-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    array-length v13, v6

    move v14, v3

    :goto_10
    if-ge v14, v13, :cond_22

    aget-char v15, v6, v14

    add-int/lit8 v15, v15, 0x37

    int-to-char v15, v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_22
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const-string v9, " com.android.camera PID:"

    const-string v11, " takes more than "

    const-string v12, "Event: "

    packed-switch v6, :pswitch_data_3

    :pswitch_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p1}, LF6/q;->j(LF6/a;)J

    move-result-wide v13

    invoke-static {v12, v6, v11, v13, v14}, LB/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_4
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " occur"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_5
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " app can not get any camera device from platform"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_6
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Main Thread Freeze On Touch Event"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_7
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Application Not Responding"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_8
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " small picture has been created"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_9
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " the plugin install has encountered a fatal error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_a
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " the camera service has encountered a fatal error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_b
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " camera device could not be opened due to a device policy"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_c
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " there are too many other open camera devices"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_d
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " camera device being used by a higher-priority camera API client"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_e
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " hal buffer error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_f
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " BugHunter software error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_10
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " BugHunter algo error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_11
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " There is no preview buffer still 3 seconds"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_12
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " High temperature is greater than 47\u00b0C when using camera"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_13
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " the camera device has encountered a fatal error"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_14
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " destroy node timeout"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11

    :pswitch_15
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " Preview pipeline process timeout"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :pswitch_16
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " SAT algo process timeout"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :pswitch_17
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " drop 10 frames continuously"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :pswitch_18
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " fps drops below threshold "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fps"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :pswitch_19
    cmp-long v6, v7, v16

    if-lez v6, :cond_23

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " takes more than 1500"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_23
    cmp-long v6, v7, v20

    if-ltz v6, :cond_24

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v9, " takes between 1000 and 1500"

    invoke-static {v12, v6, v9}, LP0/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_24
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p1}, LF6/q;->j(LF6/a;)J

    move-result-wide v13

    invoke-static {v12, v6, v11, v13, v14}, LB/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    :goto_11
    array-length v9, v2

    if-lez v9, :cond_25

    aget-object v2, v2, v3

    filled-new-array {v5, v6, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LF6/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_25
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LF6/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-static {}, LF6/q;->l()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/2addr v3, v10

    move-object v1, v2

    move v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, LF6/q;->j(LF6/a;)J

    move-result-wide v5

    invoke-static {v9}, LF6/h;->b(LF6/a;)I

    move-result v9

    sget-object v10, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v0, LF6/m;

    invoke-direct/range {v0 .. v9}, LF6/m;-><init>(Ljava/lang/String;IJJJI)V

    const-wide/16 v1, 0x0

    invoke-static {v10, v0, v1, v2}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    return-void

    :cond_26
    move-object v9, v1

    move-object v5, v2

    const-wide/16 v1, 0x0

    iget-object v6, v0, LF6/q;->r:Ljava/lang/Boolean;

    if-nez v6, :cond_27

    :try_start_1
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.miui.daemon"

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v0, LF6/q;->r:Ljava/lang/Boolean;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :catch_0
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, v0, LF6/q;->r:Ljava/lang/Boolean;

    :cond_27
    :goto_13
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isMiuiDaemonInstalled = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, LF6/q;->r:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PerformanceManager"

    invoke-static {v7, v6}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, LF6/q;->r:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_29

    sget-object v0, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    new-instance v3, LF1/V1;

    invoke-direct {v3, v5, v4}, LF1/V1;-><init>(Ljava/lang/Object;I)V

    sget-object v4, LF6/a;->F0:LF6/a;

    if-ne v9, v4, :cond_28

    move-wide v10, v1

    goto :goto_14

    :cond_28
    const-wide/16 v10, 0x2710

    :goto_14
    invoke-static {v0, v3, v10, v11}, LAr/d;->g(Lio/reactivex/v;Ljava/lang/Runnable;J)Lio/reactivex/disposables/b;

    goto :goto_17

    :cond_29
    :try_start_2
    iget-object v1, v0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v0, LF6/q;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF6/q$a;

    if-eqz v0, :cond_2a

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v0, v1, v5, v8, v9}, LF6/q$a;->U0(ILjava/lang/String;J)V

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_15

    :cond_2a
    const-string v0, " listener is null can not notifyDfxReport"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_17

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ex message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :goto_16
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2b
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_19
        :pswitch_3
        :pswitch_3
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_3
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_19
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
        :pswitch_19
        :pswitch_10
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
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final varargs e([LF6/a;)V
    .locals 5

    iget-object v0, p0, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(JLjava/lang/String;)J
    .locals 11

    const-string v1, "Action: "

    const-wide/16 v6, 0x0

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v8, p0, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v2, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF6/q$b;

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, LF6/q$b;->d:J

    const/4 v1, 0x0

    iput-boolean v1, v2, LF6/q$b;->e:Z

    invoke-virtual {v2}, LF6/q$b;->a()J

    move-result-wide v9

    iget-object v1, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p3}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v2, LF6/q$b;->c:J

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LF6/q;->a(JLjava/lang/String;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    cmp-long v0, p1, v6

    if-lez v0, :cond_1

    const-string v0, "PerformanceManager"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Action: %s_%03d_%d takes %d ms"

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    iget v4, v4, LF6/q;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v5

    iget v5, v5, LF6/q;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {p3, v4, v5, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "PerformanceManager"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has never call startAction before"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-wide v9, v6

    :goto_1
    monitor-exit v8

    goto :goto_3

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-wide v9, v6

    :goto_3
    cmp-long v0, v9, v6

    if-lez v0, :cond_3

    return-wide v9

    :cond_3
    return-wide p1
.end method

.method public final g(Ljava/lang/String;)J
    .locals 11

    const-string v0, "Action: "

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    invoke-static {p1, v3}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    iget-object v3, p0, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF6/q$b;

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v4, LF6/q$b;->d:J

    const/4 v0, 0x0

    iput-boolean v0, v4, LF6/q$b;->e:Z

    invoke-virtual {v4}, LF6/q$b;->a()J

    move-result-wide v1

    iget-object v0, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v4, LF6/q$b;->c:J

    move-object v5, p0

    move-object v8, p1

    invoke-virtual/range {v5 .. v10}, LF6/q;->a(JLjava/lang/String;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v8, p1

    const-string p0, "PerformanceManager"

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has never call startAction before"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v3

    return-wide v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-wide v1
.end method

.method public final h()J
    .locals 4

    iget-object v0, p0, LF6/q;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, LF6/q;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF6/q$a;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, LF6/q$a;->getCaptureExposureTime()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public final j(LF6/a;)J
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x1194

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x157c

    const-wide/16 v8, 0x5dc

    const-wide/16 v10, 0xdac

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x7d0

    const/16 v16, 0x0

    const/16 v17, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "PerformanceManager"

    const-string v2, "Undefine event !"

    invoke-static {v1, v2}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    :goto_0
    move/from16 v16, v17

    goto/16 :goto_6

    :goto_1
    :pswitch_1
    move-wide v2, v10

    goto/16 :goto_6

    :pswitch_2
    move-wide v2, v8

    goto/16 :goto_6

    :goto_2
    :pswitch_3
    move-wide v2, v6

    goto/16 :goto_6

    :pswitch_4
    move-wide v2, v8

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    :goto_3
    add-long v2, v1, v8

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    :goto_4
    add-long v2, v1, v10

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    goto :goto_4

    :pswitch_8
    sget-object v18, LF6/a;->d:LF6/a;

    sget-object v19, LF6/a;->J:LF6/a;

    sget-object v20, LF6/a;->i:LF6/a;

    sget-object v21, LF6/a;->m:LF6/a;

    sget-object v22, LF6/a;->I:LF6/a;

    sget-object v23, LF6/a;->p:LF6/a;

    filled-new-array/range {v18 .. v23}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_0

    :goto_5
    add-long/2addr v1, v4

    move-wide v2, v1

    goto/16 :goto_6

    :cond_0
    move-wide v2, v14

    goto/16 :goto_6

    :cond_1
    sget-object v1, LF6/a;->g:LF6/a;

    filled-new-array {v1}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, LF6/a;->c:LF6/a;

    sget-object v4, LF6/a;->o:LF6/a;

    sget-object v5, LF6/a;->p0:LF6/a;

    sget-object v12, LF6/a;->M0:LF6/a;

    filled-new-array {v1, v4, v5, v12}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, LF6/a;->m0:LF6/a;

    sget-object v4, LF6/a;->n0:LF6/a;

    filled-new-array {v1, v4}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    goto :goto_4

    :cond_4
    filled-new-array {v4}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    sget-object v1, LF6/a;->o0:LF6/a;

    filled-new-array {v1}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    goto/16 :goto_3

    :cond_6
    sget-object v1, LF6/a;->P0:LF6/a;

    filled-new-array {v1}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_6

    :cond_7
    sget-object v1, LF6/a;->O0:LF6/a;

    filled-new-array {v1}, [LF6/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LF6/q;->n([LF6/a;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    goto/16 :goto_4

    :cond_8
    :pswitch_9
    move-wide v2, v14

    goto/16 :goto_0

    :pswitch_a
    const-wide/16 v2, 0x1

    goto :goto_6

    :pswitch_b
    move-wide v2, v4

    goto :goto_6

    :pswitch_c
    move-wide v2, v6

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0}, LF6/q;->h()J

    move-result-wide v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :pswitch_e
    const-wide/16 v2, 0x1388

    :goto_6
    :pswitch_f
    if-eqz v16, :cond_9

    long-to-float v1, v2

    iget v0, v0, LF6/q;->k:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_9
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_f
    .end packed-switch
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m()Z
    .locals 4

    const-string v0, "PerformanceManager"

    iget-object v1, p0, LF6/q;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, "^[0-9\\.]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, LF6/q;->i:Ljava/lang/Boolean;

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, LF6/q;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/data/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, LF6/q;->i:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "error occur when check install dir"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check result: mIsOriginApp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LF6/q;->i:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, LF6/q;->i:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final varargs n([LF6/a;)Z
    .locals 6

    iget-object v0, p0, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF6/q$b;

    iget-boolean v4, v4, LF6/q$b;->e:Z

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final p(JLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v1, LF6/o;

    invoke-direct {v1, p0, p3, p1, p2}, LF6/o;-><init>(LF6/q;Ljava/lang/String;J)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v1, p0, LF6/q;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF6/q$b;

    iput-wide v2, p0, LF6/q$b;->c:J

    iput-boolean v0, p0, LF6/q$b;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, LF6/q;->c:Ljava/util/LinkedHashMap;

    new-instance v4, LF6/q$b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v5, LF6/a;->a:LF6/a;

    iput-object v5, v4, LF6/q$b;->a:LF6/a;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, LF6/q$b;->d:J

    iput-object p1, v4, LF6/q$b;->b:Ljava/lang/String;

    iput-wide v2, v4, LF6/q$b;->c:J

    iput-boolean v0, v4, LF6/q$b;->e:Z

    invoke-virtual {p0, p1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final r(LF6/a;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "PerformanceManager"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v2, p0, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF6/q$b;

    iput-wide v0, p0, LF6/q$b;->c:J

    iput-boolean v3, p0, LF6/q$b;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    new-instance v4, LF6/q$b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string v5, ""

    iput-object v5, v4, LF6/q$b;->b:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, LF6/q$b;->d:J

    iput-object p1, v4, LF6/q$b;->a:LF6/a;

    iput-wide v0, v4, LF6/q$b;->c:J

    iput-boolean v3, v4, LF6/q$b;->e:Z

    invoke-virtual {p0, p1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs s([LF6/a;)J
    .locals 13

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, p0, LF6/q;->f:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    array-length v8, p1

    const/4 v9, 0x0

    const-wide/16 v1, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_2

    aget-object v3, p1, v10

    if-eqz v3, :cond_1

    iget-object v4, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF6/q$b;

    iget-boolean v4, v4, LF6/q$b;->e:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, LF6/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF6/q$b;

    iput-wide v4, v1, LF6/q$b;->d:J

    iput-boolean v9, v1, LF6/q$b;->e:Z

    invoke-virtual {v1}, LF6/q$b;->a()J

    move-result-wide v11

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iget-wide v1, v1, LF6/q$b;->c:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LF6/q;->a(JLjava/lang/String;J)V

    move-wide v1, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const-string v4, "PerformanceManager"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Event: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no start time, ignore this stop event as take 0 ms"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/LogP;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF6/q$b;

    iget-object v4, v4, LF6/q$b;->a:LF6/a;

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p0, v4, v1, v2, v5}, LF6/q;->c(LF6/a;J[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-wide v1

    :goto_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final t()V
    .locals 0

    iget-object p0, p0, LF6/q;->g:LF6/s;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LF6/u;->b()V

    :cond_0
    return-void
.end method
