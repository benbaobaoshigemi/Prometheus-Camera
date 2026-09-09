.class public final Ll6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ll6/b$a;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/W;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll6/b$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ll6/b;->e:Ll6/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll6/b;->d:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ll6/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static c(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0xd

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xee

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xf1

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xf0

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xf3

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xef

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_4
    :pswitch_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xf2

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static d(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0xd

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x91

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x94

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x93

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x96

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x92

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_4
    :pswitch_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x95

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0xd

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9d

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xa0

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9f

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xa2

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9e

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_4
    :pswitch_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0xa1

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f(I)I
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0xd

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_4

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x97

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9a

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x99

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9c

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x98

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :cond_4
    :pswitch_0
    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x9b

    invoke-static {v1, p0}, Li3/b;->c(II)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(LQ6/p;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x21

    invoke-interface {p0, v2, v0, v0, v1}, LQ6/p;->I5(IZZ[Ljava/lang/Object;)V

    const/16 v1, 0x20

    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v0, v2}, LQ6/p;->I5(IZZ[Ljava/lang/Object;)V

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->m1()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/data/data/w;->d0()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, LZh/b$c;->h:LZh/b$c;

    invoke-virtual {p0, v0}, LZh/b$c;->c(Z)V

    :cond_0
    return-void
.end method

.method public static k(I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-ltz p0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unspecified"

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, "aiScene"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Liq/d;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/4 v0, 0x4

    invoke-static {p1}, LW0/S;->i(I)Z

    move-result v1

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2}, LJe/c;->T0()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    invoke-virtual {v3}, Lu2/Q;->S()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v2}, LJe/c;->F0()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    invoke-static {p1}, LW0/S;->i(I)Z

    move-result v1

    invoke-static {}, LQ6/i0;->a()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, LFn/z;

    invoke-direct {v5, v0}, LFn/z;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    :cond_3
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object v4

    const-class v5, Lw7/c;

    invoke-virtual {v4, v5}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw7/c;

    const-string v5, "AiSceneManager"

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lw7/c;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v4, v4, Lw7/c;->b:Z

    if-nez v4, :cond_4

    const-string v1, "[updateTipState]:  isInTimerBurstShotting, do not show tips"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    :cond_4
    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-virtual {v2}, LJe/c;->m1()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "updateTipState: has OCR function, do not show doc tip"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_1
    invoke-static {}, LQ6/p;->a()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Ll6/a;

    invoke-direct {v1, p0, v3, p1}, Ll6/a;-><init>(Ll6/b;ZI)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    iget-object v4, v0, Ll6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/W;

    if-eqz v4, :cond_26

    iget-boolean v5, v0, Ll6/b;->c:Z

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v5, v0, Ll6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/Camera2Module;

    const/16 v6, 0x23

    const/4 v7, 0x0

    if-nez v5, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v8, "realConsumeAiSceneResult: aiScene "

    invoke-static {v1, v8}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "AiSceneManager"

    invoke-static {v10, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v8, LJe/c;->k:Z

    sget-object v8, LJe/c$b;->a:LJe/c;

    iget-object v9, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E3()Z

    move-result v9

    const/4 v11, 0x3

    const-string v12, "1"

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/android/camera/data/data/j;->o()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v9

    if-ne v9, v3, :cond_2

    invoke-static {v1}, Ll6/b;->f(I)I

    move-result v9

    goto :goto_0

    :cond_2
    iget-object v9, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v9

    const/4 v13, 0x2

    if-ne v9, v13, :cond_3

    invoke-static {v1}, Ll6/b;->e(I)I

    move-result v9

    goto :goto_0

    :cond_3
    iget-object v9, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v9}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K()I

    move-result v9

    if-ne v9, v11, :cond_4

    invoke-static {v1}, Ll6/b;->c(I)I

    move-result v9

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ll6/b;->d(I)I

    move-result v9

    :goto_0
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/xiaomi/camera/effect/EffectController;->Y(I)V

    invoke-virtual {v8}, LJe/c;->k2()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v9}, Lcom/xiaomi/camera/mivi/filter/MIVILutSaver;->saveLutByFilterId(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v9

    sget v13, Li3/b;->P:I

    invoke-virtual {v9, v13}, Lcom/xiaomi/camera/effect/EffectController;->Y(I)V

    :cond_6
    :goto_1
    iget v9, v0, Ll6/b;->b:I

    if-ne v9, v1, :cond_8

    if-eqz v1, :cond_7

    goto/16 :goto_8

    :cond_7
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, LQ6/n1;->rn()I

    move-result v9

    if-ne v9, v1, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v5}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleState()Lj6/f;

    move-result-object v9

    invoke-interface {v9}, Lj6/f;->b()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleCallback()Lcom/android/camera/module/X;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/camera/module/X;->isActivityPaused()Z

    move-result v9

    if-eqz v9, :cond_9

    goto/16 :goto_8

    :cond_9
    if-eqz v2, :cond_a

    iget-boolean v9, v0, Ll6/b;->d:Z

    if-eqz v9, :cond_a

    goto/16 :goto_8

    :cond_a
    if-nez v2, :cond_b

    iput-boolean v7, v0, Ll6/b;->d:Z

    :cond_b
    const-string v9, "consumeAiSceneResult: "

    const-string v13, "; isReset: "

    invoke-static {v1, v9, v13, v2}, LF1/p2;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v10, v9, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v9

    invoke-static {v9}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-static {}, LQ6/n1;->b()LQ6/n1;

    move-result-object v9

    invoke-static {}, LQ6/C;->b()LQ6/C;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v13

    invoke-interface {v13}, Lj6/j;->d0()Z

    move-result v13

    const/16 v14, 0x19

    if-nez v13, :cond_e

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v13

    invoke-interface {v13}, Lj6/j;->K0()Lj9/h0;

    move-result-object v13

    if-ne v1, v14, :cond_d

    move v15, v3

    goto :goto_2

    :cond_d
    move v15, v7

    :goto_2
    iget-object v7, v13, Lj9/h0;->a:Lj9/i0;

    move/from16 v16, v14

    iget-boolean v14, v7, Lj9/i0;->q1:Z

    if-eq v14, v15, :cond_f

    iput-boolean v15, v7, Lj9/i0;->q1:Z

    invoke-virtual {v13}, Lj9/h0;->d()Ljava/util/Optional;

    move-result-object v7

    new-instance v14, Lj9/s;

    invoke-direct {v14, v13, v3}, Lj9/s;-><init>(Lj9/h0;I)V

    invoke-virtual {v7, v14}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_e
    move/from16 v16, v14

    :cond_f
    :goto_3
    const/4 v7, 0x6

    const-string v13, "e"

    if-eq v1, v3, :cond_1f

    const/16 v14, 0xa

    if-eq v1, v14, :cond_1c

    const/16 v12, 0xf

    if-eq v1, v12, :cond_1a

    const/16 v12, 0x13

    if-eq v1, v12, :cond_1a

    if-eq v1, v11, :cond_21

    const/4 v7, 0x4

    if-eq v1, v7, :cond_17

    const/4 v7, 0x7

    if-eq v1, v7, :cond_16

    const/16 v7, 0x8

    if-eq v1, v7, :cond_16

    const/16 v7, 0x22

    if-eq v1, v7, :cond_15

    if-eq v1, v6, :cond_14

    const/16 v7, 0x25

    if-eq v1, v7, :cond_15

    const/16 v7, 0x26

    if-eq v1, v7, :cond_13

    sget-object v7, Le2/m;->x:[I

    packed-switch v1, :pswitch_data_0

    iget-object v8, v5, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    invoke-virtual {v8}, Lo6/a;->i()V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->k0()V

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v8

    invoke-interface {v8, v7}, Lj6/i;->updatePreferenceInWorkThread([I)V

    goto/16 :goto_7

    :pswitch_0
    iget-object v8, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->h7()Z

    move-result v8

    if-eqz v8, :cond_10

    const-string/jumbo v8, "ro.miui.region"

    const-string v11, "CN"

    invoke-static {v8, v11}, Lur/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "IN"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    iput v1, v0, Ll6/b;->b:I

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_10
    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v1

    const/16 v8, 0xb

    const/16 v10, 0x95

    filled-new-array {v8, v10}, [I

    move-result-object v8

    invoke-interface {v1, v8}, Lj6/i;->updatePreferenceInWorkThread([I)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v1

    invoke-interface {v1, v7}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v2

    const/16 v3, 0xab

    if-eq v2, v3, :cond_12

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    invoke-static/range {v16 .. v16}, Ll6/b;->k(I)V

    move/from16 v2, v16

    invoke-interface {v9, v2}, LQ6/n1;->N7(I)V

    invoke-virtual {v0, v2}, Ll6/b;->a(I)V

    invoke-virtual {v0, v2}, Ll6/b;->j(I)V

    :cond_12
    iput v1, v0, Ll6/b;->b:I

    iget-object v1, v5, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lo6/a;

    invoke-virtual {v1}, Lo6/a;->i()V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v1

    invoke-interface {v1}, Lj6/j;->k0()V

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-interface {v1, v3}, Lj6/i;->updatePreferenceInWorkThread([I)V

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v7

    const-class v10, Lv2/a;

    invoke-virtual {v7, v10}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/a;

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v10

    invoke-virtual {v7, v10}, Lv2/a;->n(I)Z

    move-result v7

    invoke-virtual {v8}, LJe/c;->T0()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, Lu2/Q;->S()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v8

    const/16 v10, 0xa3

    if-ne v8, v10, :cond_11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/data/data/j;->K0(I)Z

    move-result v8

    if-nez v8, :cond_11

    if-nez v7, :cond_11

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    invoke-static {v1}, Ll6/b;->k(I)V

    invoke-interface {v9, v1}, LQ6/n1;->N7(I)V

    invoke-virtual/range {p0 .. p1}, Ll6/b;->a(I)V

    iput v1, v0, Ll6/b;->b:I

    goto/16 :goto_8

    :cond_14
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_15
    iput v1, v0, Ll6/b;->b:I

    goto :goto_4

    :cond_16
    iput v1, v0, Ll6/b;->b:I

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    sget-boolean v7, LJe/d;->j:Z

    if-eqz v7, :cond_18

    const-string v7, "5"

    goto :goto_5

    :cond_18
    const-string v7, "-1"

    :goto_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    const-string v11, "pref_qc_camera_contrast_key"

    invoke-virtual {v8, v11, v7}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v14, LQh/a;->pref_camera_contrast_entryvalues:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    invoke-static {v8, v12}, Lvr/e;->m(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "reset invalid contrast "

    invoke-static {v12, v8}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    const-string v12, "GlobalUtil"

    invoke-static {v12, v8, v14}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v8

    invoke-virtual {v8}, LWh/a;->g()LWh/a;

    invoke-virtual {v8, v11}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    invoke-virtual {v8}, LWh/a;->c()V

    goto :goto_6

    :cond_19
    move-object v7, v8

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v8

    invoke-interface {v8}, Lj6/j;->K0()Lj9/h0;

    move-result-object v8

    invoke-virtual {v8, v7}, Lj9/h0;->v(I)V

    iput v1, v0, Ll6/b;->b:I

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    const/16 v7, 0x1e

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/module/r;->updatePreferenceTrampoline([I)V

    goto/16 :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/camera/data/data/w;->u()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v7, :cond_1b

    sget-boolean v7, LJe/d;->i:Z

    xor-int/2addr v7, v3

    add-int/2addr v8, v7

    :cond_1b
    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v7

    invoke-interface {v7}, Lj6/j;->K0()Lj9/h0;

    move-result-object v7

    invoke-virtual {v7, v8}, Lj9/h0;->V(I)V

    iput v1, v0, Ll6/b;->b:I

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    goto :goto_7

    :cond_1c
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v7

    const-class v11, Lr2/w;

    invoke-virtual {v7, v11}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr2/w;

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v11

    invoke-virtual {v7, v11}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v8, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v8}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->a8()Z

    move-result v8

    if-eqz v8, :cond_1e

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_1d
    const/16 v7, 0xc1

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-interface {v10, v13, v7}, LQ6/C;->a8(Ljava/lang/String;[I)V

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/android/camera/module/r;->setFlashMode(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v5, v3}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v7

    invoke-interface {v7}, Lj6/j;->M()V

    goto :goto_7

    :cond_1f
    invoke-static {}, Lcom/android/camera/data/data/w;->u()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v8, v7, :cond_20

    sget-boolean v7, LJe/d;->i:Z

    xor-int/2addr v7, v3

    add-int/2addr v8, v7

    :cond_20
    iput v1, v0, Ll6/b;->b:I

    invoke-interface {v10, v13}, LQ6/C;->Pf(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getCameraManager()Lj6/j;

    move-result-object v7

    invoke-interface {v7}, Lj6/j;->K0()Lj9/h0;

    move-result-object v7

    invoke-virtual {v7, v8}, Lj9/h0;->V(I)V

    :cond_21
    :goto_7
    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v5}, Lcom/android/camera/module/r;->getModuleIndex()I

    invoke-static {v1}, Ll6/b;->k(I)V

    invoke-interface {v9, v1}, LQ6/n1;->N7(I)V

    invoke-virtual {v0, v1}, Ll6/b;->a(I)V

    if-eqz v3, :cond_22

    invoke-virtual {v0, v1}, Ll6/b;->j(I)V

    :cond_22
    if-nez v2, :cond_23

    iput v1, v0, Ll6/b;->b:I

    :cond_23
    invoke-virtual {v5}, Lcom/android/camera/module/r;->getUserEventMgr()Lj6/i;

    move-result-object v1

    const/16 v2, 0xd

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-interface {v1, v2}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_24
    :goto_8
    iget v0, v0, Ll6/b;->b:I

    if-eq v0, v6, :cond_25

    invoke-interface {v4}, Lcom/android/camera/module/W;->getCameraManager()Lj6/j;

    move-result-object v0

    invoke-interface {v0}, Lj6/j;->K0()Lj9/h0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lj9/h0;->i(I)V

    goto :goto_9

    :cond_25
    const/4 v2, 0x0

    :goto_9
    invoke-interface {v4}, Lcom/android/camera/module/W;->getUserEventMgr()Lj6/i;

    move-result-object v0

    new-array v1, v2, [I

    invoke-interface {v0, v1}, Lj6/i;->updatePreferenceInWorkThread([I)V

    :cond_26
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 5

    iget v0, p0, Ll6/b;->b:I

    const-string v1, "restoreAiState: maybe restore ai scene tip:"

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "AiSceneManager"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, LW0/S;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ll6/b;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Ll6/b;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ll6/b;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Ll6/b;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Ll6/b$b;

    invoke-direct {v1, p0}, Ll6/b$b;-><init>(Ll6/b;)V

    invoke-static {v0, v1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(I)V
    .locals 7

    const-string/jumbo v0, "setAiSceneEffect: "

    invoke-static {p1, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AiSceneManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ll6/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/W;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v4, Lr2/c;

    invoke-virtual {v2, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/c;

    invoke-virtual {v2}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E6()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->M()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, v1}, Ll6/b;->j(I)V

    const-string/jumbo p0, "supportAi30: AI 3.0 back camera in HUMAN SCENE not apply filter! reset AiSceneEffect! "

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    invoke-virtual {v2}, Lu2/Q;->O()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const-string/jumbo p0, "setAiSceneEffect: front camera nonsupport!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result v2

    const/16 v4, 0xab

    if-ne v2, v4, :cond_4

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    iget-object v2, v2, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    invoke-static {}, Lcom/android/camera/data/data/j;->P()I

    move-result v2

    sget v4, Li3/b;->o:I

    shr-int/lit8 v4, v2, 0x10

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    sget v4, Li3/b;->N:I

    if-eq v2, v4, :cond_5

    :goto_0
    return-void

    :cond_5
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v4, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v4}, Lu2/Q;->E(I)I

    move-result v2

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v4

    const-class v6, Lv2/u;

    invoke-virtual {v4, v6}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv2/u;

    const/16 v6, 0xa3

    if-eq v2, v6, :cond_6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v1

    goto :goto_1

    :cond_6
    iget-boolean v2, v4, Lv2/u;->a:Z

    :goto_1
    if-eqz v2, :cond_7

    const-string p0, "ProColor is enable, disable AI filter"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/xiaomi/camera/effect/EffectController;->p(I)Ljava/util/ArrayList;

    move-result-object v2

    if-ltz p1, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/effect/EffectController;->h()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/b;

    invoke-virtual {p0}, Li3/b;->a()I

    move-result p0

    goto :goto_2

    :cond_9
    const/4 v4, 0x2

    if-ne v1, v4, :cond_b

    iget-boolean p0, p0, Ll6/b;->c:Z

    if-eqz p0, :cond_a

    if-nez p1, :cond_a

    sget-object p0, Lo3/d;->d:Lo3/d;

    const/16 p0, 0x21

    invoke-static {v5, p0}, Li3/b;->c(II)I

    move-result p0

    goto :goto_2

    :cond_a
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/b;

    invoke-virtual {p0}, Li3/b;->a()I

    move-result p0

    goto :goto_2

    :cond_b
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/b;

    invoke-virtual {p0}, Li3/b;->a()I

    move-result p0

    :goto_2
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object p1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D3()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    const/16 v1, 0xaf

    if-ne p1, v1, :cond_c

    sget p0, Li3/b;->N:I

    :cond_c
    invoke-interface {v0}, Lcom/android/camera/module/W;->getModuleIndex()I

    move-result p1

    invoke-static {p1}, Lcom/android/camera/data/data/j;->i(I)Z

    move-result p1

    if-nez p1, :cond_d

    sget p0, Li3/b;->N:I

    :cond_d
    invoke-static {}, Lcom/xiaomi/camera/effect/EffectController;->s()Lcom/xiaomi/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Lcom/xiaomi/camera/effect/EffectController;->X(IZ)V

    return-void

    :cond_e
    :goto_3
    const-string/jumbo p0, "setAiSceneEffect: scene unknown: "

    invoke-static {p1, p0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
