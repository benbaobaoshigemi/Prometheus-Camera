.class public final Lk7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRh/l;
.implements Lk7/A;
.implements Lk7/N;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/i$a;
    }
.end annotation


# static fields
.field public static final I:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final J:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static q:Lk7/r;

.field public static r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final s:Ljava/util/concurrent/LinkedBlockingQueue;

.field public static final t:Ljava/util/concurrent/LinkedBlockingQueue;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lk7/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Landroid/net/Uri;

.field public final e:Lk7/g;

.field public f:I

.field public volatile g:Z

.field public final h:Ljava/lang/Object;

.field public i:Z

.field public final j:Ljava/lang/Object;

.field public k:LRh/r;

.field public final l:Ljava/util/LinkedList;

.field public m:Landroid/os/HandlerThread;

.field public n:Landroid/os/Handler;

.field public o:Ljava/util/function/IntFunction;

.field public p:Lj9/E0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v7, LF1/x3;

    const-string v0, "Saver"

    const/16 v1, 0xa

    invoke-direct {v7, v0, v1}, LF1/x3;-><init>(Ljava/lang/String;I)V

    new-instance v15, LF1/x3;

    const-string v0, "PreviewSaver"

    invoke-direct {v15, v0, v1}, LF1/x3;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v6, Lk7/i;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v14, Lk7/i;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x4

    const-wide/16 v3, 0xa

    const/4 v1, 0x4

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lk7/i;->I:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v11, 0xa

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v13, v5

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v8, Lk7/i;->J:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lk7/i;->b:I

    new-instance v1, Lk7/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lk7/i;->e:Lk7/g;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lk7/i;->h:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lk7/i;->j:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lk7/i;->l:Ljava/util/LinkedList;

    sget-object v1, Lk7/i;->q:Lk7/r;

    if-nez v1, :cond_0

    new-instance v1, Lk7/r;

    invoke-direct {v1}, Lk7/r;-><init>()V

    sput-object v1, Lk7/i;->q:Lk7/r;

    invoke-virtual {v1}, Lk7/r;->a()V

    :cond_0
    sget-object v1, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    iput-boolean p1, p0, Lk7/i;->c:Z

    return-void
.end method

.method public static B()Z
    .locals 7

    sget-object v0, Lk7/i;->q:Lk7/r;

    iget-object v1, v0, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Lk7/r;->b:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SaveQueueIsFull, usedMemory="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limit = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lk7/r;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "MemoryManager"

    invoke-static {v3, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v2, :cond_3

    sget-object v0, Lk7/i;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_2

    sget-object v0, Lk7/i;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lt v0, v1, :cond_3

    :cond_2
    return v4

    :cond_3
    return v5
.end method

.method public static q(LRh/r;)LZp/c;
    .locals 2

    iget-object p0, p0, LRh/r;->m:LZp/c;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Le3/S;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le3/S;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LF1/F1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LF1/F1;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lga/F;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lga/F;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LZp/c;

    return-object p0
.end method

.method public static x(LRh/r;Landroid/hardware/camera2/CaptureResult;)V
    .locals 13

    if-nez p1, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ExifData;->getPictureInfo()Lqh/f;

    move-result-object v1

    sget-object v2, Lga/C0;->y0:Lga/D0;

    const v3, 0xdead

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lha/n;->a([B)Lha/n$a;

    move-result-object v2

    const-string/jumbo v4, "sceneDetectedAFResult"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->z0:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lha/n;->a([B)Lha/n$a;

    move-result-object v2

    const-string/jumbo v4, "sceneDetectedAEResult"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-boolean v4, Lk7/c;->a:Z

    sget-boolean v5, LJe/c;->k:Z

    sget-object v5, LJe/c$b;->a:LJe/c;

    iget-object v6, v5, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->W2()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "CaptureResultUtil"

    if-eqz v6, :cond_5

    sget-object v6, Lga/C0;->C0:Lga/D0;

    invoke-static {p1, v6, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lu6/f;->Q(I)I

    move-result v10

    if-eqz v4, :cond_1

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getSatMasterPhysicalCameraId: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " -> role("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v11, 0x15

    if-ne v10, v11, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_2
    if-nez v10, :cond_3

    move-object v6, v2

    goto :goto_0

    :cond_3
    const/16 v11, 0x14

    if-ne v10, v11, :cond_4

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_4
    const/16 v11, 0x17

    if-ne v10, v11, :cond_6

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_5
    sget-object v6, Lga/C0;->B0:Lga/D0;

    invoke-static {p1, v6, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    const-string v10, "getSatMasterCameraId: "

    invoke-static {v10, v6}, LV9/Z1;->c(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    if-nez v6, :cond_7

    if-eqz v4, :cond_8

    const-string v4, "getSatMasterCameraId: not found, default to WIDE"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v9, v4, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    move-object v2, v6

    :cond_8
    :goto_1
    const-string v4, "180cameraID"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->n:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    sget-object v6, Lga/A0;->Y2:Lga/D0;

    invoke-static {v4, v6, v3}, Lga/E0;->k(Landroid/hardware/camera2/CaptureRequest;Lga/D0;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v7

    goto :goto_2

    :cond_9
    move v4, v8

    :goto_2
    sget-object v6, Lga/C0;->c1:Lga/D0;

    const v9, 0xbabe

    invoke-static {p1, v6, v9}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v7

    goto :goto_3

    :cond_a
    move v6, v8

    :goto_3
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    if-nez v4, :cond_d

    if-eqz v6, :cond_c

    goto :goto_4

    :cond_c
    move v2, v8

    goto :goto_5

    :cond_d
    :goto_4
    move v2, v7

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v6, "superNight"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lj9/n0;->a(Landroid/hardware/camera2/CaptureResult;)I

    move-result v4

    const-string v6, "ImageSaver"

    if-eqz v4, :cond_f

    if-nez v2, :cond_f

    iget-object v2, v1, Lqh/f;->y:Ljava/lang/String;

    const-string v4, "nightDisableReason = "

    invoke-static {v4, v2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v6, v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v2, "critical_point"

    :cond_e
    const-string v4, "nightDisableReason"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-wide v9, v1, Lqh/f;->z:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "app_fwkframe"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->u:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v4, "frontPortraitBokeh"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lqh/f;->M:I

    const v4, 0x9000

    const-string v9, "bokehEnable"

    const-string/jumbo v10, "true"

    if-ne v2, v4, :cond_10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_10
    sget-object v2, Lga/C0;->A:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    sget-object v2, Lga/C0;->b:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "level"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->c:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "skinColor"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->d:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "slimFace"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->e:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "slimSmooth"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->f:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "enlargeEye"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->g:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "nose"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->h:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "risorius"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->i:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "lips"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->j:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "chin"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->k:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "smile"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->l:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "slimNose"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->m:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "hairLine"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->o:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "headSlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->p:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "bodySlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->q:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "shoulderSlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->r:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "legSlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->s:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string/jumbo v4, "wholeBodySlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lga/C0;->t:Lga/D0;

    invoke-static {p1, v2, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v4, "buttSlim"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ExifData;->getDepthData()Lcom/xiaomi/camera/core/DepthData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/DepthData;->getCameraPreferredMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "cameraPreferredMode"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "capture_orientation_info"

    iget-object v2, v1, Lqh/f;->U:Lqh/f$a;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v1, Lqh/f;->U:Lqh/f$a;

    if-eqz p0, :cond_11

    iget-object p0, p0, Lqh/f$a;->e:Ljava/lang/String;

    if-eqz p0, :cond_11

    const-string/jumbo v2, "sensorDiagnostics"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "[OrientationTrace] dealExif sensorDiagnostics: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v5}, LJe/c;->b1()Z

    move-result p0

    if-nez p0, :cond_15

    sget-object p0, Lga/C0;->m0:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const-string/jumbo v2, "superResolution"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lga/C0;->r0:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const-string v2, "hdrSrEnable"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lga/C0;->B:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const-string v2, "mfnrEnable"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lga/C0;->C:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    const-string/jumbo v2, "swMfnrEnable"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, LJe/d;->i:Z

    const-string v2, "remosaic"

    if-eqz p0, :cond_12

    sget-object p0, Lga/C0;->v:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lga/C0;->x:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string/jumbo v2, "specshot"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_12
    sget-object p0, Lga/C0;->s0:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sget-object p0, Lga/C0;->z:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const-string v2, "false"

    const-string v4, "Depurple"

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v7, :cond_13

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_13
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    sget-object p0, Lga/C0;->y:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    const-string/jumbo v4, "uwldc"

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ne p0, v7, :cond_14

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_14
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_9
    sget-object p0, Lga/C0;->i0:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_16

    goto :goto_a

    :cond_16
    sget-object p0, Lga/C0;->h0:Lga/D0;

    invoke-static {p1, p0, v3}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :goto_a
    if-eqz p0, :cond_17

    array-length p1, p0

    if-lez p1, :cond_17

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    iput-object p1, v1, Lqh/f;->w:Ljava/lang/String;

    :cond_17
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object p0, v1, Lqh/f;->x:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "algoExif JSON failed\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v8, [Ljava/lang/Object;

    invoke-static {v6, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    return-void
.end method


# virtual methods
.method public final A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V
    .locals 5

    invoke-virtual {p1}, LRh/r;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk7/i;->o:Ljava/util/function/IntFunction;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lk7/i;->o:Ljava/util/function/IntFunction;

    :cond_0
    iget-object v0, p0, Lk7/i;->e:Lk7/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "insertParallelTaskData type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, LRh/r;->b:LRh/a;

    iget v3, v2, LRh/a;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", path "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, LRh/r;->k:LRh/A;

    iget-object v4, v3, LRh/A;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, LRh/A;->b:Ljava/lang/String;

    const-string v4, " forceSaveFMT "

    invoke-static {v0, v3, v4, p4}, LF1/T2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ImageSaver"

    invoke-static {v4, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, LRh/a;->m:LRh/v;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    if-eq p4, v0, :cond_4

    const/4 v0, 0x2

    if-eq p4, v0, :cond_3

    const/4 v0, 0x3

    if-eq p4, v0, :cond_2

    const/4 p2, 0x4

    if-eq p4, p2, :cond_1

    return-void

    :cond_1
    invoke-static {p0, p1, p5}, Lk7/g;->d(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lk7/g;->c(Lk7/i;LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void

    :cond_3
    invoke-static {p0, p1, p5}, Lk7/g;->a(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :cond_4
    new-instance p2, Lk7/l;

    invoke-direct {p2, p1}, Lk7/l;-><init>(LRh/r;)V

    invoke-virtual {p0, p2, v1}, Lk7/i;->t(Lk7/z;Z)V

    return-void

    :cond_5
    invoke-static {p0, p1}, Lk7/g;->b(Lk7/i;LRh/r;)V

    return-void

    :cond_6
    iget v0, v2, LRh/a;->f:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown shot type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v2, LRh/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "RAW"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {p0, p1, p2, p3}, Lk7/g;->c(Lk7/i;LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void

    :cond_7
    invoke-static {p0, p1, p5}, Lk7/g;->a(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :pswitch_1
    const-string v0, "JPEG"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-static {p0, p1, p5}, Lk7/g;->a(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :cond_8
    invoke-static {p0, p1, p2, p3}, Lk7/g;->c(Lk7/i;LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1, p5}, Lk7/g;->a(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :pswitch_3
    invoke-static {p0, p1, p2, p3}, Lk7/g;->c(Lk7/i;LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "normal shot shot2gallery: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, LRh/r;->d:LRh/f;

    iget-boolean p3, p3, LRh/f;->c:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v4, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p1, LRh/r;->d:LRh/f;

    iget-boolean p2, p2, LRh/f;->c:Z

    if-nez p2, :cond_9

    new-instance p2, Lk7/l;

    invoke-direct {p2, p1}, Lk7/l;-><init>(LRh/r;)V

    invoke-virtual {p0, p2, v1}, Lk7/i;->t(Lk7/z;Z)V

    return-void

    :cond_9
    invoke-static {p0, p1, p5}, Lk7/g;->a(Lk7/i;LRh/r;LZp/c;)V

    return-void

    :pswitch_5
    invoke-static {p0, p1}, Lk7/g;->b(Lk7/i;LRh/r;)V

    return-void

    :pswitch_6
    new-instance p2, Lk7/l;

    invoke-direct {p2, p1}, Lk7/l;-><init>(LRh/r;)V

    invoke-virtual {p0, p2, v1}, Lk7/i;->t(Lk7/z;Z)V

    return-void

    :pswitch_7
    invoke-static {p0, p1, p5}, Lk7/g;->d(Lk7/i;LRh/r;LZp/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public final C()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lk7/i;->f:I

    invoke-virtual {p0}, Lk7/i;->I()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk7/i$a;->onRelease()V

    :cond_0
    invoke-virtual {p0}, Lk7/i;->I()V

    const-string p0, "ImageSaver"

    const-string v0, "onHostDestroy"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final D()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lk7/i;->f:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/i$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk7/i$a;->onRelease()V

    :cond_0
    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lk7/i$a;->h()V

    :cond_1
    const-string p0, "ImageSaver"

    const-string v0, "onHostPause"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final E(Z)V
    .locals 2

    const-string v0, "onHostResume: isCapture="

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lk7/i;->c:Z

    const/4 p1, 0x0

    iput p1, p0, Lk7/i;->f:I

    const-string p1, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lk7/i;->c:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final F(LRh/r;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ImageSaver"

    if-nez p1, :cond_0

    const-string p0, "onParallelProcessCancel Err:  parallelTaskData is null"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onParallelProcessCancel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, LRh/r;->k:LRh/A;

    iget-object v3, v3, LRh/A;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " live: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LRh/r;->p()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, LRh/r;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lk7/i;->H(LRh/r;)V

    :cond_1
    return-void
.end method

.method public final G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "onParallelProcessFinish: pending: "

    const-string v4, "onParallelProcessFinish: memory[+]: "

    const-string v5, "onParallelProcessFinish: enqueue: "

    const-string v6, "onParallelProcessFinish: memory[+]: "

    const-string v7, "nParallelProcessFinish: mutex enqueue: "

    const-string v8, "onParallelProcessFinish: insert: "

    const-string v9, "onParallelProcessFinish: insert not livephoto: "

    const-string v10, "onParallelProcessFinish: insert videoPathReal: "

    const-string v11, "onParallelProcessFinish: videoPathReal = "

    const-string v12, "ImageSaver"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onParallelProcessFinish: path: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, LRh/r;->k:LRh/A;

    iget-object v14, v14, LRh/A;->g:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " live: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LRh/r;->p()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, p5

    iput-object v12, v1, Lk7/i;->o:Ljava/util/function/IntFunction;

    move-object v12, v6

    invoke-static {v2}, Lk7/i;->q(LRh/r;)LZp/c;

    move-result-object v6

    invoke-virtual {v2}, LRh/r;->p()Z

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v3, :cond_2

    iget-object v13, v2, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v13}, Lcom/xiaomi/camera/core/ExifData;->getPictureInfo()Lqh/f;

    move-result-object v13

    sget-object v14, Lga/C0;->i0:Lga/D0;

    const v15, 0xdead

    invoke-static {v3, v14, v15}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    sget-object v14, Lga/C0;->h0:Lga/D0;

    invoke-static {v3, v14, v15}, Lga/E0;->l(Landroid/hardware/camera2/CaptureResult;Lga/D0;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    :goto_0
    if-eqz v14, :cond_1

    array-length v15, v14

    if-lez v15, :cond_1

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/String;-><init>([B)V

    iput-object v15, v13, Lqh/f;->w:Ljava/lang/String;

    :cond_1
    invoke-static/range {p1 .. p2}, Lk7/i;->x(LRh/r;Landroid/hardware/camera2/CaptureResult;)V

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v3, v2, LRh/r;->a:LRh/z;

    iget-object v3, v3, LRh/z;->i:[B

    if-nez v3, :cond_3

    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    array-length v13, v3

    :goto_1
    invoke-virtual {v2}, LRh/r;->i()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, LRh/r;->k:LRh/A;

    iget-boolean v15, v15, LRh/A;->c:Z

    if-eqz v15, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/microvideo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, LRh/r;->k:LRh/A;

    iget-object v4, v4, LRh/A;->b:Ljava/lang/String;

    const-string v5, ".jpg"

    const-string v7, ".mp4"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvr/z;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "ImageSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",FileExist true "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v8}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v2, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ExifData;->getQuality()I

    move-result v14

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_4
    const/4 v14, -0x1

    :goto_2
    iget-object v4, v2, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/ExifData;->getLivePhotoData()Lcom/xiaomi/camera/core/LivePhotoData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/camera/core/LivePhotoData;->isVideoEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, LRh/r;->a:LRh/z;

    iget-wide v4, v4, LRh/z;->h:J

    invoke-virtual {v2, v14, v3, v4, v5}, LRh/r;->b(ILjava/lang/String;J)V

    :cond_5
    const-string v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",quality = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V

    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const-string v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V

    goto/16 :goto_3

    :cond_7
    if-eqz v14, :cond_a

    if-eqz v3, :cond_9

    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V

    goto/16 :goto_3

    :cond_8
    const-string v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget-object v3, Lk7/i;->q:Lk7/r;

    iget-object v3, v3, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const-string v3, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const-string v2, "ImageSaver"

    const-string v3, "onParallelProcessFinish: error: jpeg data is null"

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const-string v3, "ImageSaver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget-object v3, Lk7/i;->q:Lk7/r;

    iget-object v3, v3, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const-string v3, "ImageSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", task: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const-string v2, "ImageSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_b
    const-string v0, "ImageSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onParallelProcessFinish: insert: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p2}, Lk7/i;->x(LRh/r;Landroid/hardware/camera2/CaptureResult;)V

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V

    iget-object v0, v2, LRh/r;->b:LRh/a;

    iget v1, v0, LRh/a;->g:I

    const/16 v3, 0xe4

    if-ne v1, v3, :cond_c

    iget v0, v0, LRh/a;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p0 .. p1}, Lk7/i;->onProcessorJpegFinish(LRh/r;)V

    :cond_c
    return-void
.end method

.method public final H(LRh/r;)V
    .locals 10
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onVideoClipSavingPictureFilled: error: jpeg data is null"

    const-string v3, "ImageSaver"

    invoke-static {v3, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, LRh/r;->a:LRh/z;

    iget-object v1, v1, LRh/z;->i:[B

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    sget-object v2, Lk7/i;->q:Lk7/r;

    iget-object v2, v2, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v4, v1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onVideoClipSavingPictureFilled: memory[-]: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", task: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, LRh/r;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onVideoClipSavingPictureFilled: insert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lk7/i;->q(LRh/r;)LZp/c;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V

    :cond_2
    return-void
.end method

.method public final I()V
    .locals 2

    invoke-static {}, LJe/c;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->getListenerMapSize()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->clearPendingEarlyImage()V

    :cond_0
    iget v0, p0, Lk7/i;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget-object v0, Lk7/i;->s:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Lk7/i;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-gtz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lk7/i;->k:LRh/r;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final J(Z)V
    .locals 3

    const-string/jumbo v0, "setDropBitmapTexture "

    iget-object v1, p0, Lk7/i;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lk7/i;->i:Z

    const-string p0, "ImageSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk7/i$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/i$a;->b(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final c(J)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk7/i$a;->c(J)V

    :cond_0
    return-void
.end method

.method public final d(Z)Z
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean p1, p0, Lk7/i;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(LEb/o;Lrf/b;Ln3/f;)V
    .locals 3

    const-string v0, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processorJpegSync:  ==>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2, v1}, LF1/r0;->g(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lk7/i;->h:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, LFv/b;->s(LEb/o;Lrf/b;Ln3/f;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final f(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "LF1/w4;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/i$a;->f(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isMTKPlatform"
        type = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    iput-object v0, p0, Lk7/i;->n:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public final g(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lk7/i;->G(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public final h()V
    .locals 4

    const-string v0, "decreaseSaveTask count:"

    monitor-enter p0

    :try_start_0
    sget-object v1, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "ImageSaver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v1, :cond_0

    sget-object v0, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/String;JI)V
    .locals 9

    const-string v0, "onVideoClipSavingCompleted: pending: "

    const-string v1, "onVideoClipSavingCompleted: enqueue: "

    const-string v2, "onVideoClipSavingCompleted: mutex enqueue: "

    const-string v3, "onVideoClipSavingCompleted: insert: "

    const-string v4, "onVideoClipSavingCompleted: memory[-]: "

    const-string v5, "onVideoClipSavingCompleted: timestamp = "

    instance-of v6, p1, LRh/r;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const-string p0, "ImageSaver"

    const-string p1, "onVideoClipSavingCompleted: Oops, corresponding task is not found"

    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lk7/i;->p:Lj9/E0$c;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Lj9/E0$c;->apply(I)Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Lk7/i;->p:Lj9/E0$c;

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto/16 :goto_3

    :cond_1
    :goto_1
    check-cast p1, LRh/r;

    const-string v6, "ImageSaver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v5, v8}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p5, p2, p3, p4}, LRh/r;->b(ILjava/lang/String;J)V

    iget-object p2, p1, LRh/r;->b:LRh/a;

    iget-boolean p2, p2, LRh/a;->l:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lk7/i;->onProcessorJpegFinish(LRh/r;)V

    :cond_2
    invoke-virtual {p1}, LRh/r;->n()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, LRh/r;->a:LRh/z;

    iget-object p2, p2, LRh/z;->i:[B

    array-length p2, p2

    sget-object p3, Lk7/i;->q:Lk7/r;

    iget-object p3, p3, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p4, p2

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const-string p3, "ImageSaver"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", task: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p4, v7, [Ljava/lang/Object;

    invoke-static {p3, p2, p4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "ImageSaver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v7, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lk7/i;->q(LRh/r;)LZp/c;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lk7/i;->A(LRh/r;Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;LZp/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string p2, "ImageSaver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v7, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p2, p1, LRh/r;->e:Lcom/xiaomi/camera/core/ExifData;

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/ExifData;->getLivePhotoData()Lcom/xiaomi/camera/core/LivePhotoData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/camera/core/LivePhotoData;->isPictureFilled()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit p1

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lk7/i;->H(LRh/r;)V

    goto :goto_2

    :cond_5
    const-string p2, "ImageSaver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v7, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :goto_2
    const-string p1, "ImageSaver"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lk7/i;->l:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v7, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p2

    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 9
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ImageSaver"

    const-string v2, "onVideoClipSavingCancelled: video = 0, timestamp = -1"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const-string v5, "empty"

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lk7/i;->i(Ljava/lang/Object;Ljava/lang/String;JI)V

    return-void
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lk7/i$a;->g()V

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 8
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ImageSaver"

    const-string v1, "onVideoClipSavingException: video = 0, timestamp = -1"

    invoke-static {v0, v1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, -0x1

    const-string v4, "empty"

    const-wide/16 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lk7/i;->i(Ljava/lang/Object;Ljava/lang/String;JI)V

    return-void
.end method

.method public final m(LF1/w4;Z)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk7/i$a;->i(LF1/w4;Z)V

    :cond_0
    return-void
.end method

.method public final n(Lm7/e;)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/i$a;->j(Lm7/e;)V

    :cond_0
    return-void
.end method

.method public final o(Landroid/net/Uri;ZLjava/lang/String;IZ)V
    .locals 7

    iget-boolean v0, p0, Lk7/i;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    monitor-enter p0

    if-eq p4, v2, :cond_3

    if-eq p4, v1, :cond_4

    const/4 v0, 0x3

    if-eq p4, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    goto :goto_1

    :cond_4
    :try_start_0
    iput-object p1, p0, Lk7/i;->d:Landroid/net/Uri;

    iget-object v0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lk7/i$a;

    if-eqz v1, :cond_5

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lk7/i$a;->L(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_1
    iget-object p1, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lk7/i$a;

    if-eqz v0, :cond_5

    invoke-interface/range {v0 .. v5}, Lk7/i$a;->L(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onProcessorJpegFinish(LRh/r;)V
    .locals 0

    iget-object p0, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/i$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lk7/i$a;->onProcessorJpegFinish(LRh/r;)V

    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 3

    const-string v0, "onSaveFinish queueSize: "

    monitor-enter p0

    :try_start_0
    sget-object v1, Lk7/i;->q:Lk7/r;

    iget-object v1, v1, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    sget-object p1, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    const-string v1, "ImageSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lk7/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk7/i$a;

    sget-object v1, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lk7/i$a;->h()V

    :cond_0
    invoke-static {}, Lk7/i;->B()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lk7/i;->t:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    const/16 v1, 0x28

    if-ge p1, v1, :cond_1

    iput-boolean v0, p0, Lk7/i;->g:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lk7/i;->I()V

    invoke-static {}, Lcom/xiaomi/camera/mivi/MIVICaptureManager;->hasParallelTaskData()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, LQg/e;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, LPh/h;->c()V

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final r(Lk7/e;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lk7/i;->f:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "width"

    const/16 v5, 0x12c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "height"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "orientation"

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "datetaken"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lk7/i;->t(Lk7/z;Z)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s(Lk7/z;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addImage ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ImageSaver"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lk7/i;->t(Lk7/z;Z)V

    return-void
.end method

.method public final t(Lk7/z;Z)V
    .locals 7

    const-string v0, "addSaveRequest saver pool: "

    const-string v1, "addSaveRequest preview pool: "

    const-string v2, "ImageSaver"

    const-string v3, "addSaveRequest, isPreview "

    invoke-static {v3, p2}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lk7/i;->f:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    const-string v2, "ImageSaver"

    const-string v3, "addSaveRequest: host is being destroyed."

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lk7/i;->B()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lk7/i;->g:Z

    :cond_1
    sget-object v2, Lk7/i;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-interface {p1}, Lk7/z;->getSize()I

    move-result v5

    sget-object v6, Lk7/i;->q:Lk7/r;

    iget-object v6, v6, Lk7/r;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-interface {p1, v5, p0}, Lk7/z;->q(Landroid/content/Context;Lk7/A;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    :try_start_1
    const-string p2, "ImageSaver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lk7/i;->J:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", queueSize: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string p2, "ImageSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lk7/i;->I:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", queueSize: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iput-boolean v3, p0, Lk7/i;->g:Z

    const-string p1, "ImageSaver"

    const-string/jumbo p2, "stop snapshot due to thread pool is full"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final u(Lk7/P;Z)Landroid/net/Uri;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lk7/i;->f:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lk7/b;->q(Landroid/content/Context;Lk7/A;)V

    invoke-virtual {p1}, Lk7/P;->a()V

    iget-object p1, p1, Lk7/b;->c:Landroid/net/Uri;

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lk7/i;->t(Lk7/z;Z)V

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Lk7/P;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lk7/i;->f:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "addVideoAsync: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lk7/b;->q(Landroid/content/Context;Lk7/A;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lk7/i;->t(Lk7/z;Z)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final w(Lk7/P;)Landroid/net/Uri;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lk7/i;->f:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "ImageSaver"

    const-string v1, "addVideo: host is being destroyed."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lk7/b;->q(Landroid/content/Context;Lk7/A;)V

    invoke-virtual {p1}, Lk7/P;->a()V

    iget-object p1, p1, Lk7/b;->c:Landroid/net/Uri;

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk7/i;->n:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HeifSaverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lk7/i;->n:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HeifSaverThread: id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk7/i;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ImageSaver"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lk7/i;->n:Landroid/os/Handler;

    return-object p0
.end method

.method public final z()[B
    .locals 0

    iget-object p0, p0, Lk7/i;->k:LRh/r;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LRh/r;->a:LRh/z;

    iget-object p0, p0, LRh/z;->i:[B

    return-object p0
.end method
