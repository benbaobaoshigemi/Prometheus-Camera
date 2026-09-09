.class public Lcom/android/camera/provider/CameraAgentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;,
        Lcom/android/camera/provider/CameraAgentProvider$FunctionOutput;
    }
.end annotation


# static fields
.field public static final b:Lzr/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzr/b<",
            "Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzr/b;

    invoke-direct {v0}, Lzr/b;-><init>()V

    sput-object v0, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LF1/F2;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CameraAgentProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "callerVerify, failed"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    sget-boolean v1, LJe/d;->b:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const-string p0, "debuggable, bypass"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/camera/provider/CameraAgentProvider;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/provider/CameraAgentProvider;->a:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Lcom/android/camera/provider/CameraAgentProvider;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.miui.camera.test.agent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, LWd/h;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, LWd/h;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_5

    const-string/jumbo p0, "signatureVerify, failed"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    iget-object p0, p0, Lcom/android/camera/provider/CameraAgentProvider;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "on"

    const-string v4, "auto"

    const-string/jumbo v5, "torch"

    const-string v6, "off"

    const-string/jumbo v8, "watermark_leica_supported"

    const-string v9, "agent_supported_version"

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v12, "call "

    invoke-static {v12, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    const-string v15, "CameraAgentProvider"

    invoke-static {v15, v12, v14}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "result"

    const/4 v10, 0x1

    const/4 v14, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v7, "com.xiaomi.camera.rcs.REMOTE_CONTROL_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v7, "is_foreground"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v7, "is_cta_permitted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v7, "execute_action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v10

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v13

    :goto_1
    packed-switch v0, :pswitch_data_0

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w()I

    move-result v0

    const-string v1, "dynamic_ddfid: "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v15, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "dynamic_ddfid"

    int-to-long v2, v0

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v11

    :pswitch_0
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v7, LQ6/X0;

    invoke-virtual {v0, v7}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v7, LEs/C;

    invoke-direct {v7, v10}, LEs/C;-><init>(I)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF1/b4;

    const-string v7, "errno"

    if-nez v0, :cond_6

    const-string v0, "Camera remote control agent was not found"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {v11, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :cond_6
    const-string v8, "call: "

    invoke-static {v8, v1}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    const-string v11, "RemoteControlAgent"

    invoke-static {v11, v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v0, "call: null command"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_7
    if-nez v2, :cond_8

    const-string v0, "call: null args"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_8
    const-string v8, "com.xiaomi.camera.rcs.REMOTE_CONTROL_CLIENT"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_9

    const-string v0, "remote control client was not found"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_9
    const-string v9, "com.xiaomi.camera.rcs.REMOTE_CONTROL_CLIENT_ID"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "remote control client id: "

    invoke-static {v12, v9}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v11, v9, v12}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "com.xiaomi.camera.rcs.REMOTE_CONTROL_REQUEST_ID"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "remote control request id: "

    invoke-static {v12, v9}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-array v15, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;

    invoke-direct {v12}, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;-><init>()V

    iput-object v14, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->e:Ljava/lang/String;

    iput-object v8, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->g:Landroid/os/IBinder;

    iput-object v9, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->d:Ljava/lang/String;

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->h:LF1/b4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "0"

    const-string v9, "3"

    const/16 p0, 0x2710

    const/16 p1, 0x1388

    const/16 v18, 0xbb8

    const-string v15, "com.xiaomi.camera.rcs.setTimerDuration"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_31

    const-string v15, "com.xiaomi.camera.rcs.setFlashMode"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2b

    const-string v7, "handleRequest: "

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v11, v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "capturing_mode"

    const/16 v8, 0xa0

    const-string v9, "curr_mode"

    const-string v12, "camera_facing"

    const/16 v15, 0xa3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_1

    move-object/from16 v19, v14

    :goto_2
    const/16 v16, -0x1

    goto :goto_4

    :sswitch_6
    move-object/from16 v19, v14

    const-string v14, "com.xiaomi.camera.rcs.getSupportedFlashModes"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_3

    :cond_a
    const/16 v16, 0x4

    goto :goto_4

    :sswitch_7
    move-object/from16 v19, v14

    const-string v14, "com.xiaomi.camera.rcs.zoomIn"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_3

    :cond_b
    const/16 v16, 0x3

    goto :goto_4

    :sswitch_8
    move-object/from16 v19, v14

    const-string v14, "com.xiaomi.camera.rcs.setFocusArea"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x2

    goto :goto_4

    :sswitch_9
    move-object/from16 v19, v14

    const-string v14, "com.xiaomi.camera.rcs.zoomOut"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_3

    :cond_d
    move/from16 v16, v10

    goto :goto_4

    :sswitch_a
    move-object/from16 v19, v14

    const-string v14, "com.xiaomi.camera.rcs.getSupportedTimerDurations"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    :goto_3
    goto :goto_2

    :cond_e
    move/from16 v16, v13

    :goto_4
    packed-switch v16, :pswitch_data_1

    const-string/jumbo v0, "unsupported custom request: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v19

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v2, v12, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "flash_mode_values"

    if-ne v10, v1, :cond_f

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/f;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_f
    if-ne v15, v2, :cond_10

    filled-new-array {v6, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/f;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_10
    const/16 v1, 0xa2

    if-ne v1, v2, :cond_11

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/f;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v0

    :pswitch_2
    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, LF1/b4;->a0(I)V

    sget-object v0, LF1/b4;->L:Landroid/os/Bundle;

    return-object v0

    :pswitch_3
    sget-object v1, Lcom/xiaomi/camera/rcs/f;->a:Ljava/lang/String;

    const-string v1, "focus_area"

    move-object/from16 v3, v19

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_12

    goto :goto_6

    :cond_12
    const/4 v14, 0x2

    new-array v14, v14, [F

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_7

    :cond_13
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v13

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v14, v2

    move v2, v4

    goto :goto_5

    :cond_14
    :goto_6
    const/4 v14, 0x0

    :cond_15
    :goto_7
    if-eqz v14, :cond_29

    iget-object v1, v0, LF1/p4;->j:Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->Kq()Loh/b;

    move-result-object v1

    iget-object v1, v1, Loh/b;->o:Lcom/android/camera/module/W;

    if-nez v1, :cond_16

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_16
    invoke-interface {v1}, Lcom/android/camera/module/W;->getModuleState()Lj6/f;

    move-result-object v1

    if-nez v1, :cond_17

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_17
    invoke-interface {v1}, Lj6/f;->t()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "preview rectangle: "

    invoke-static {v1, v2}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v11, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_10

    :cond_18
    iget-object v2, v0, LF1/p4;->f:Lzm/c;

    if-nez v2, :cond_19

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_19
    new-instance v3, Landroid/util/Size;

    iget v4, v2, Lzm/c;->i:I

    iget v5, v2, Lzm/c;->j:I

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    const-string v4, "canvas size: "

    invoke-static {v4, v3}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_f

    :cond_1a
    new-instance v4, Landroid/util/Size;

    iget v5, v2, Lzm/c;->g:I

    iget v2, v2, Lzm/c;->h:I

    invoke-direct {v4, v5, v2}, Landroid/util/Size;-><init>(II)V

    const-string/jumbo v2, "texture size: "

    invoke-static {v2, v4}, LF1/S;->a(Ljava/lang/String;Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v11, v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_e

    :cond_1b
    aget v2, v14, v13

    aget v4, v14, v10

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v6, v0, LF1/p4;->o:I

    iget v7, v0, LF1/p4;->p:I

    iget-object v8, v0, LF1/b4;->q:[F

    const/16 v9, 0x10e

    const/16 v12, 0x5a

    if-eq v7, v12, :cond_1c

    if-ne v7, v9, :cond_1d

    :cond_1c
    if-nez v6, :cond_1d

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-static {v14, v15}, LPp/a;->b(II)LPp/a;

    move-result-object v14

    invoke-virtual {v14, v5, v3}, LPp/a;->a(II)Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_8

    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v14, v15}, LPp/a;->b(II)LPp/a;

    move-result-object v14

    invoke-virtual {v14, v5, v3}, LPp/a;->a(II)Landroid/graphics/Rect;

    move-result-object v14

    :goto_8
    const-string v15, "center crop rect: "

    invoke-static {v14, v15}, LCs/V;->c(Landroid/graphics/Rect;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v10

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v11, v15, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "raw focus position: "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v11, v10, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v5, v5

    mul-float/2addr v2, v5

    int-to-float v3, v3

    mul-float/2addr v4, v3

    const-string/jumbo v3, "source focus position: "

    invoke-static {v2, v4, v3, v15}, LF1/v2;->c(FFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v11, v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v14, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v14, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    const/4 v3, 0x0

    cmpg-float v5, v2, v3

    if-ltz v5, :cond_25

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1e

    goto/16 :goto_c

    :cond_1e
    cmpg-float v3, v4, v3

    if-ltz v3, :cond_24

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1f

    goto/16 :goto_b

    :cond_1f
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    if-nez v6, :cond_23

    if-nez v7, :cond_20

    goto :goto_9

    :cond_20
    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v7, v12, :cond_21

    sub-float v2, v3, v2

    move v3, v2

    move v2, v4

    goto :goto_a

    :cond_21
    const/16 v5, 0xb4

    if-ne v7, v5, :cond_22

    sub-float v2, v3, v2

    sub-float/2addr v3, v4

    goto :goto_a

    :cond_22
    const/16 v5, 0x10e

    if-ne v7, v5, :cond_23

    sub-float/2addr v3, v4

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto :goto_a

    :cond_23
    :goto_9
    move v3, v4

    :goto_a
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const-string v4, "preview focus position: "

    invoke-static {v2, v3, v4, v15}, LF1/v2;->c(FFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v3, v1

    const-string/jumbo v1, "screen focus position: "

    invoke-static {v2, v3, v1, v15}, LF1/v2;->c(FFLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v11, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput v2, v8, v13

    aput v3, v8, v16

    iget-object v1, v0, LF1/b4;->q:[F

    aget v22, v1, v13

    aget v23, v1, v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const/16 v19, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v24}, LF1/b4;->l0(IJFFF)V

    const/16 v19, 0x1

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, LF1/b4;->l0(IJFFF)V

    sget-object v0, LF1/b4;->L:Landroid/os/Bundle;

    return-object v0

    :cond_24
    :goto_b
    const-string/jumbo v0, "source focus position y is out of rang"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_25
    :goto_c
    const-string/jumbo v0, "source focus position x is out of rang"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_d
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_26
    :goto_e
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_27
    :goto_f
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_28
    :goto_10
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_29
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :pswitch_4
    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, LF1/b4;->a0(I)V

    sget-object v0, LF1/b4;->L:Landroid/os/Bundle;

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v2, v12, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    invoke-virtual {v2, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v15, v1, :cond_2a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/camera/rcs/f;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timer_duration_values"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-object v0

    :cond_2b
    move/from16 v16, v10

    const/4 v14, 0x2

    const-string v0, "ComponentConfigFlash"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/camera/rcs/f;->a:Ljava/lang/String;

    const-string v0, "flash_mode"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash mode: "

    invoke-static {v1, v0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_11
    const/4 v10, -0x1

    goto :goto_12

    :sswitch_b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_11

    :cond_2d
    const/4 v10, 0x3

    goto :goto_12

    :sswitch_c
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_11

    :cond_2e
    move v10, v14

    goto :goto_12

    :sswitch_d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_11

    :cond_2f
    move/from16 v10, v16

    goto :goto_12

    :sswitch_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_11

    :cond_30
    move v10, v13

    :goto_12
    packed-switch v10, :pswitch_data_2

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :pswitch_6
    const-string v0, "2"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_13

    :pswitch_7
    iput-object v9, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_13

    :pswitch_8
    iput-object v8, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_13

    :pswitch_9
    const-string v0, "1"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    :goto_13
    iget-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->c:Ljava/lang/String;

    goto :goto_15

    :cond_31
    const-string v0, "ComponentRunningTimer"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/camera/rcs/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "timer_duration"

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "timer duration: "

    invoke-static {v0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez v0, :cond_32

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_32
    if-eqz v0, :cond_36

    move/from16 v1, v18

    if-eq v0, v1, :cond_35

    move/from16 v1, p1

    if-eq v0, v1, :cond_34

    move/from16 v1, p0

    if-eq v0, v1, :cond_33

    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :cond_33
    const-string v0, "10"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_14

    :cond_34
    const-string v0, "5"

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_14

    :cond_35
    iput-object v9, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    goto :goto_14

    :cond_36
    iput-object v8, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    :goto_14
    iget-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    iput-object v0, v12, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->c:Ljava/lang/String;

    :goto_15
    sget-object v0, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    iget v1, v0, Landroidx/lifecycle/C;->c:I

    if-lez v1, :cond_37

    invoke-virtual {v0, v12}, Lzr/b;->j(Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v7, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_37
    sget-object v0, LF1/b4;->K:Landroid/os/Bundle;

    return-object v0

    :pswitch_a
    move/from16 v16, v10

    sget-object v0, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    iget v0, v0, Landroidx/lifecycle/C;->c:I

    if-lez v0, :cond_38

    move/from16 v13, v16

    :cond_38
    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v11

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/provider/CameraAgentProvider;->a()Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_19

    :cond_39
    invoke-static {}, LSh/c;->c()Z

    move-result v0

    invoke-virtual {v11, v12, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_3a

    goto :goto_16

    :cond_3a
    const/16 v13, -0x67

    :goto_16
    const-string v0, "result_code"

    invoke-virtual {v11, v0, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    :pswitch_c
    move/from16 v16, v10

    move-object v1, v14

    if-nez v2, :cond_3b

    const-string v0, "extras null"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v11

    :cond_3b
    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "foreground_input: "

    const-string v5, " | "

    invoke-static {v4, v3, v5}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static {v15, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/provider/CameraAgentProvider;->a()Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_19

    :cond_3d
    const-string v0, "in"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "action_request_id"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "action_callback_uri"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;

    invoke-direct {v5}, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;-><init>()V

    iput-object v3, v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->d:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->e:Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "specified_key"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->a:Ljava/lang/String;

    const-string/jumbo v0, "specified_value"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    const-string/jumbo v0, "specified_control"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v5

    goto :goto_18

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v14, v1

    :goto_18
    if-nez v14, :cond_3e

    const-string v0, "input parse null"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    :cond_3e
    const-string v0, "caller"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->f:Ljava/lang/String;

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->w()I

    move-result v0

    if-gtz v0, :cond_3f

    iget-object v0, v14, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->d:Ljava/lang/String;

    iget-object v1, v14, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->e:Ljava/lang/String;

    move/from16 v2, v16

    invoke-static {v2, v0, v1}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_3f
    sget-object v0, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    iget v1, v0, Landroidx/lifecycle/C;->c:I

    if-lez v1, :cond_40

    const-string v1, "postValue"

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v15, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Lzr/b;->j(Ljava/lang/Object;)V

    goto :goto_19

    :cond_40
    const-string v0, "null observer"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->d:Ljava/lang/String;

    iget-object v1, v14, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->e:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v2, v0, v1}, LF1/F2;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-object v11

    :pswitch_d
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->i2()Z

    move-result v0

    invoke-virtual {v11, v8, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v11

    :pswitch_e
    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    invoke-virtual {v11, v9, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v11

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e66a073 -> :sswitch_5
        -0x5dd001be -> :sswitch_4
        -0x5b83d9c0 -> :sswitch_3
        -0x58ee47ac -> :sswitch_2
        -0x4e4c88 -> :sswitch_1
        0x7423d443 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x64568eff -> :sswitch_a
        -0x590d5a74 -> :sswitch_9
        -0x2cd7252e -> :sswitch_8
        -0x23e7a8d9 -> :sswitch_7
        -0xd1b0df9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xddf -> :sswitch_e
        0x1ad6f -> :sswitch_d
        0x2dddaf -> :sswitch_c
        0x696d3fc -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
