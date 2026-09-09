.class public Lcom/android/camera/external/mivi/MiviInfoContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:LCh/g;

.field public final b:Lwh/a;

.field public c:Lio/reactivex/disposables/b;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, LCh/g;

    invoke-direct {v0}, LCh/g;-><init>()V

    iput-object v0, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a:LCh/g;

    new-instance v0, Lwh/a;

    invoke-direct {v0}, Lwh/a;-><init>()V

    iput-object v0, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b:Lwh/a;

    return-void
.end method

.method public static c()Z
    .locals 8

    const-string v0, "MiviInfoContentProvider"

    const-string v1, "isMiviConfigSupport support:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "miui.os.HyperOSCustFeatureResolve"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getBoolean"

    const-class v6, Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v7}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "config_camera_micamerasdk_enable"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string v1, "isMiviConfigSupport return true, MiViSDK support"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    const-string/jumbo v1, "ro.camerax.extensions.enabled"

    invoke-static {v1, v3}, Lur/g;->c(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "isCameraExtensionSupport:"

    invoke-static {v4, v1}, LF1/O;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method


# virtual methods
.method public final a(ILjava/lang/String;Z)V
    .locals 4

    if-ltz p1, :cond_0

    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/q;->s(JLjava/util/concurrent/TimeUnit;Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/T;

    move-result-object v0

    new-instance v1, Ls3/f;

    invoke-direct {v1, p0, p1, p2, p3}, Ls3/f;-><init>(Lcom/android/camera/external/mivi/MiviInfoContentProvider;ILjava/lang/String;Z)V

    new-instance p1, LMv/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c:Lio/reactivex/disposables/b;

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 8

    const-string v0, "Get controller info pkg:"

    const-string v1, " xms:"

    invoke-static {v0, p1, v1, p2}, LB3/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MiviInfoContentProvider"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ls3/b;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a:LCh/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, LCh/g;->b()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v5, "version"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move-object v6, v2

    :goto_0
    invoke-static {v4, v5, v6}, LAh/b;->c(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "cameraControllerInfo"

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-static {v4, v5, v6}, LAh/b;->c(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "miviAppWhiteList"

    if-eqz v3, :cond_5

    :try_start_3
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v6, v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, v0, LCh/g;->f:LPu/n;

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v7}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcg/l;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Lcg/l;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;

    goto :goto_2

    :cond_2
    instance-of v6, v3, Ljava/util/Map;

    if-eqz v6, :cond_3

    new-instance v6, Lorg/json/JSONObject;

    check-cast v3, Ljava/util/Map;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "toString(...)"

    invoke-static {v3, v6}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcg/l;

    invoke-virtual {v6, v3}, Lcg/l;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;

    goto :goto_2

    :cond_3
    check-cast v3, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    if-eqz v3, :cond_6

    iget-object p2, v3, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;->a:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v3, v3, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;->b:Ljava/lang/String;

    if-nez p2, :cond_4

    :try_start_5
    new-instance p2, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;

    new-instance v6, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/PackageName;

    invoke-direct {v6, p1, v2}, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/PackageName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    filled-new-array {v6}, [Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/PackageName;

    move-result-object p1

    invoke-static {p1}, LQu/n;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v3, p2

    goto :goto_3

    :cond_4
    new-instance v6, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;

    new-instance v7, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/PackageName;

    invoke-direct {v7, p1, v2}, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/PackageName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v7, p2}, LQu/u;->N0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v6, p1, v3}, Lcom/xiaomi/camera/cloudconfig/mivi/data/entity/MiviAppWhiteList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v3, v6

    goto :goto_3

    :cond_5
    move-object v3, v2

    :cond_6
    :goto_3
    invoke-static {v4, v5, v3}, LAh/b;->c(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, LAh/b;->a()LBh/b;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcg/l;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {p1}, LPu/l;->a(Ljava/lang/Throwable;)LPu/k$a;

    move-result-object p1

    :goto_5
    invoke-static {p1}, LPu/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v3, "MiviInfoRepository"

    const-string v4, "getControllerInfo failed\n"

    invoke-static {v3, v4, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    instance-of p2, p1, LPu/k$a;

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    move-object v2, p1

    :goto_6
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    const-string p1, ""

    move-object v2, p1

    :cond_9
    invoke-static {p0}, Li0/V;->b(Lcom/android/camera/external/mivi/MiviInfoContentProvider;)Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/v;

    new-instance v3, Ls3/a;

    iget-object p0, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b:Lwh/a;

    invoke-direct {v3, v0, p0, p1}, Ls3/a;-><init>(LCh/g;Lwh/a;Landroid/content/Context;)V

    invoke-static {p2, v3}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-static {}, Ls3/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "camera_framework"

    const-string v3, "camera_controller_info"

    invoke-static {v0, v3}, LY6/a;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0, p1, p2}, Ls3/e;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "MiviHelperForMiui"

    const-string v4, "getCameraControllerData: replace with local mivi info"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, LGp/d;->b(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_f

    invoke-static {p0, p1, p2}, Ls3/e;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_f
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    if-eqz p3, :cond_13

    sget-object p0, Ls3/d;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p1, "MiViSDKUtil"

    if-nez p0, :cond_12

    const-string/jumbo p0, "{}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_8

    :cond_10
    sget-object p0, Ls3/d;->e:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "controller info not change"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_11
    sput-object v2, Ls3/d;->e:Ljava/lang/String;

    const-string p0, "MiCameraSDKCloud"

    invoke-static {v2, p0}, Ls3/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    :goto_8
    const-string p0, "controller info is empty or no valid"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_9
    return-object v2
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "call:"

    const-string v0, " pkg:"

    invoke-static {p3, p1, v0, p2}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MiviInfoContentProvider"

    invoke-static {v2, p3, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "getCameraControllerInfo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "getMiviInfo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "getDynamicCameraInfo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string p1, "METHOD_CAMERA_CONTROLLER_INFO: E"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c:Lio/reactivex/disposables/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lio/reactivex/disposables/b;->a()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c:Lio/reactivex/disposables/b;

    invoke-interface {p1}, Lio/reactivex/disposables/b;->c()V

    iput-object v1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c:Lio/reactivex/disposables/b;

    :cond_3
    invoke-static {p2}, Ls3/d;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "CameraControllerInfo"

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, "METHOD_CAMERA_CONTROLLER_INFO: X"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :pswitch_1
    const-string p1, "METHOD_GET_MIVI_INFO: E"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ls3/d;->a(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Ls3/b;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a:LCh/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "MiviInfoRepository"

    const-string v5, ""

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    :try_start_0
    invoke-virtual {v3}, LCh/g;->b()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v3, p2, v6, p1}, LCh/g;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_6
    move-object v3, v5

    goto :goto_2

    :goto_1
    invoke-static {v3}, LPu/l;->a(Ljava/lang/Throwable;)LPu/k$a;

    move-result-object v3

    :goto_2
    invoke-static {v3}, LPu/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_7

    const-string v7, "getMiviInfo failed\n"

    invoke-static {v4, v7, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    instance-of v4, v3, LPu/k$a;

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v1, v3

    :goto_3
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_f

    goto/16 :goto_7

    :cond_9
    :goto_4
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "getMiviInfo failed, for reason: calling package is invalid"

    invoke-static {v4, v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_a
    sget-boolean v3, Ls3/e;->a:Z

    const-string v3, "getCloudData: start > "

    invoke-static {v3, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "MiviHelperForMiui"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ls3/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "appInfo"

    const-string v7, "platformInfo"

    const-string v8, "mivi_platform_info"

    if-eqz v4, :cond_d

    const-string v1, "getCloudData: getting cloud mivi info"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "camera_sdk"

    invoke-static {v3, v8}, LY6/a;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_b
    const-string v4, "mivi_app_whiteList"

    invoke-static {v3, v4}, LY6/a;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-static {v3, p2, p1}, Ls3/e;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_d
    const-string v4, "getCloudData: got local mivi info"

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {v5, v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "parseLocalData: "

    :try_start_1
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, Lcom/google/gson/JsonObject;

    invoke-virtual {v9, v3, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    if-eqz v3, :cond_e

    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-static {v3, p2, p1}, Ls3/e;->b(Lcom/google/gson/JsonObject;Ljava/lang/String;Z)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v9, v6, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :catch_0
    move-exception v3

    goto :goto_5

    :cond_e
    const-string v3, "parseLocalData with null json object"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "parse local data error "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, LF1/U;->e(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_6
    move-object v5, v1

    :goto_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "miviInfo"

    invoke-virtual {p3, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v1, "METHOD_GET_MIVI_INFO: X"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a(ILjava/lang/String;Z)V

    :goto_8
    return-object p3

    :pswitch_2
    const-string p1, "METHOD_GET_DYNAMIC_INFO: E"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->b:Lwh/a;

    invoke-static {p0}, Li0/V;->b(Lcom/android/camera/external/mivi/MiviInfoContentProvider;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lwh/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "DynamicInfo"

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "METHOD_GET_DYNAMIC_INFO: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    const-string p0, "METHOD_GET_DYNAMIC_INFO: X"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1237bda4 -> :sswitch_2
        0x386efc13 -> :sswitch_1
        0x6a3f7565 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 10

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "MiviInfoContentProvider"

    invoke-static {v4, v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a:LCh/g;

    invoke-static {p0}, Li0/V;->b(Lcom/android/camera/external/mivi/MiviInfoContentProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "context"

    invoke-static {v3, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "MiviInfoRepository"

    const-string v6, "initialize: "

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, LCh/g;->a:LPu/n;

    invoke-virtual {v4}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDh/e;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/camera/CameraWorkExecutor;->NORMAL_WORK_EXECUTOR:Lcom/android/camera/CameraWorkExecutor;

    new-instance v6, LCs/p;

    invoke-direct {v6, v4, v0}, LCs/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraWorkExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, v1, LCh/g;->b:LPu/n;

    invoke-virtual {v4}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDh/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LC4/n;

    invoke-direct {v4, v3, v0}, LC4/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraWorkExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, v1, LCh/g;->c:LPu/n;

    invoke-virtual {v1}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDh/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v3, v4}, Lfv/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Application;

    iput-object v3, v1, LDh/c;->a:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->d:Z

    if-eqz v1, :cond_e

    invoke-static {}, Ls3/e;->d()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Ls3/d;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ls3/d;->d:Ljava/lang/String;

    sget-object v3, Ls3/d;->c:Ls3/g;

    const/4 v4, 0x0

    const-string v5, "MiViSDKUtil"

    if-nez v3, :cond_c

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v6, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ls3/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v7, v1, Landroid/app/Application;

    if-eqz v7, :cond_0

    check-cast v1, Landroid/app/Application;

    iget-boolean v7, v6, Ls3/g;->a:Z

    if-nez v7, :cond_0

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "XMSAuth"

    const-string v9, "XMS init"

    invoke-static {v8, v9, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/xiaomi/xms/authconnect/AuthConnect;->b(Landroid/app/Application;)V

    iput-boolean v0, v6, Ls3/g;->a:Z

    :cond_0
    sput-object v6, Ls3/d;->c:Ls3/g;

    sget-boolean v1, Ls3/d;->b:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "xms cache not init"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    iget-object v1, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/a;->a()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    const-string v3, "MiCameraSDKXMS"

    if-eqz v1, :cond_3

    array-length v6, v1

    if-nez v6, :cond_4

    :cond_3
    const-string v1, "/data/vendor/camera/"

    invoke-static {v1, v3}, Lcn/b;->d(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    array-length v6, v1

    if-nez v6, :cond_a

    :cond_5
    sget-object v1, Ls3/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    :goto_1
    move-object v1, v4

    goto :goto_4

    :cond_7
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v6, Ls3/d;->d:Ljava/lang/String;

    invoke-direct {v1, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x2000

    cmp-long v6, v6, v8

    if-gez v6, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v1, v6

    new-array v1, v1, [B

    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_9
    const-string v1, "readFromInternalFile to max stop"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    :goto_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v3, "readFromInternalFile failed"

    invoke-static {v5, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_a
    :goto_4
    if-nez v1, :cond_b

    const-string v1, ""

    goto :goto_5

    :cond_b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    move-object v1, v3

    :goto_5
    sput-boolean v0, Ls3/d;->b:Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "package_list"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ls3/d;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    const-string/jumbo v3, "xms JSON parse failed"

    invoke-static {v5, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    const-string v1, "init failed with not support xms"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_6
    invoke-virtual {p0, v0, v4, v2}, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->a(ILjava/lang/String;Z)V

    goto :goto_7

    :cond_e
    invoke-static {}, Ls3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lio/reactivex/schedulers/a;->b:Lio/reactivex/v;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v0, v1}, Lio/reactivex/q;->s(JLjava/util/concurrent/TimeUnit;Lio/reactivex/v;)Lio/reactivex/internal/operators/observable/T;

    move-result-object v0

    new-instance v1, LEs/S;

    const/4 v3, 0x5

    invoke-direct {v1, p0, v3}, LEs/S;-><init>(Ljava/lang/Object;I)V

    new-instance v3, LJe/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, LJe/b;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lio/reactivex/q;->subscribe(Lio/reactivex/functions/d;Lio/reactivex/functions/d;)Lio/reactivex/disposables/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/external/mivi/MiviInfoContentProvider;->c:Lio/reactivex/disposables/b;

    :cond_f
    :goto_7
    return v2
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
