.class public final LSt/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSt/x$f;
    }
.end annotation


# static fields
.field public static k:LSt/x;

.field public static l:Z

.field public static final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "LSt/x$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Landroid/content/Context;

.field public c:Landroid/os/Messenger;

.field public final d:LSt/x$a;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Landroid/content/Intent;

.field public j:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LSt/x;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "com.xiaomi.xmsf"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, LSt/x;->a:Z

    const/4 v2, 0x0

    iput-object v2, p0, LSt/x;->d:LSt/x$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, LSt/x;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, LSt/x;->f:Z

    iput-object v2, p0, LSt/x;->h:Ljava/lang/String;

    iput-object v2, p0, LSt/x;->i:Landroid/content/Intent;

    iput-object v2, p0, LSt/x;->j:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :catchall_0
    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x69

    if-ge v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, LSt/x;->a:Z

    invoke-virtual {p0}, LSt/x;->m()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v4, 0x6c

    if-lt v2, v4, :cond_3

    :catch_0
    :cond_2
    move v1, v3

    :cond_3
    sput-boolean v1, LSt/x;->l:Z

    new-instance v1, LSt/x$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, LSt/x$a;-><init>(LSt/x;Landroid/os/Looper;)V

    iput-object v1, p0, LSt/x;->d:LSt/x$a;

    invoke-static {p1}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, LSt/x$b;

    invoke-direct {p1, p0}, LSt/x$b;-><init>(LSt/x;)V

    sput-object p1, LHz/h;->a:LSt/x$b;

    :cond_4
    iget-object p1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, LSt/x;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "pushChannel app start miui china channel"

    invoke-static {p1}, LGr/b;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, LSt/x;->q()Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p1, "pushChannel app start  own channel"

    invoke-static {p1}, LGr/b;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, LSt/x;->t()Landroid/content/Intent;

    move-result-object p1

    goto :goto_2

    :cond_6
    const-string p1, "pushChannel xmsf create own channel"

    invoke-static {p1}, LGr/b;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, LSt/x;->t()Landroid/content/Intent;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, LSt/x;->n(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)LSt/x;
    .locals 2

    const-class v0, LSt/x;

    monitor-enter v0

    :try_start_0
    sget-object v1, LSt/x;->k:LSt/x;

    if-nez v1, :cond_0

    new-instance v1, LSt/x;

    invoke-direct {v1, p0}, LSt/x;-><init>(Landroid/content/Context;)V

    sput-object v1, LSt/x;->k:LSt/x;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LSt/x;->k:LSt/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, LSt/x;->g:J

    return-wide v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, LSt/x;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LSt/x;->q()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LSt/x;->t()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final d(II)V
    .locals 3

    invoke-virtual {p0}, LSt/x;->c()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext_pkg_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_notify_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ext_clicked_button"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, LSt/x;->p(Landroid/content/Intent;)V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lou/Q3;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.huawei.hwid"

    const-string v4, "com.huawei.hms.core.service.HMSCoreService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    const-string v3, "ro.build.hw_emui_api_level"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lou/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, LGr/b;->i(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    move v1, v0

    :goto_0
    sget-object v2, LSt/v;->c:LSt/v;

    sget-object v3, LSt/v;->b:LSt/v;

    sget-object v4, LSt/v;->a:LSt/v;

    if-eqz v1, :cond_2

    move-object p1, v4

    goto :goto_2

    :cond_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "com.xiaomi.assemble.control.COSPushManager"

    const-string v6, "isSupportPush"

    invoke-static {v5, v6, v1}, Lou/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v5, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "color os push  is avaliable ? :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LGr/b;->q(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    move-object p1, v3

    goto :goto_2

    :cond_4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "com.xiaomi.assemble.control.FTOSPushManager"

    invoke-static {v1, v6, p1}, Lou/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v5, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "fun touch os push  is avaliable ? :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LGr/b;->q(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    move-object p1, v2

    goto :goto_2

    :cond_6
    sget-object p1, LSt/v;->d:LSt/v;

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "update"

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    sget-object v0, LSt/y;->c:LSt/y;

    sget-object v5, LSt/k;->a:LSt/k;

    invoke-virtual {p0, v4, v0, v5, v1}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, LSt/y;->e:LSt/y;

    sget-object v3, LSt/k;->c:LSt/k;

    invoke-virtual {p0, v4, v0, v3, v1}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, LSt/y;->f:LSt/y;

    sget-object v0, LSt/k;->d:LSt/k;

    invoke-virtual {p0, v4, p1, v0, v1}, LSt/x;->f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final f(Ljava/lang/String;LSt/y;LSt/k;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v0}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object v1

    const-string v2, "syncing"

    invoke-virtual {v1, p2, v2}, LSt/u;->d(LSt/y;Ljava/lang/String;)V

    invoke-static {v0, p3}, LSt/m;->c(Landroid/content/Context;LSt/k;)Ljava/util/HashMap;

    move-result-object p3

    const-string v0, "third_sync_reason"

    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p4, p3}, LSt/x;->g(Ljava/lang/String;LSt/y;ZLjava/util/HashMap;)V

    return-void
.end method

.method public final g(Ljava/lang/String;LSt/y;ZLjava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LSt/y;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v3}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v3

    invoke-virtual {v3}, LSt/j;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lou/u;->h()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Lou/p3;

    invoke-direct {v3}, Lou/p3;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lou/p3;->t(Z)V

    invoke-virtual {v0}, LSt/x;->c()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-static {}, LT3/d;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lou/p3;->c:Ljava/lang/String;

    if-eqz p3, :cond_1

    new-instance v6, Lou/p3;

    invoke-direct {v6, v1, v4}, Lou/p3;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    const-class v8, LSt/u;

    monitor-enter v8

    :try_start_0
    iget-object v9, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v9}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object v9

    invoke-virtual {v9, v1}, LSt/u;->e(Ljava/lang/String;)V

    monitor-exit v8

    :goto_1
    move-object v9, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iput-object v1, v3, Lou/p3;->c:Ljava/lang/String;

    if-eqz p3, :cond_3

    new-instance v6, Lou/p3;

    invoke-direct {v6, v1, v4}, Lou/p3;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    move-object v9, v7

    :goto_2
    sget-object v6, LSt/x$e;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v6, "3rd_party_reg_update"

    iput-object v6, v3, Lou/p3;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    iput-object v2, v3, Lou/p3;->h:Ljava/util/HashMap;

    goto :goto_3

    :pswitch_1
    const-string v6, "enable_push"

    iput-object v6, v3, Lou/p3;->e:Ljava/lang/String;

    const-string v6, "enable_push"

    iput-object v6, v9, Lou/p3;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    iput-object v2, v3, Lou/p3;->h:Ljava/util/HashMap;

    iput-object v2, v9, Lou/p3;->h:Ljava/util/HashMap;

    :cond_4
    const-string v6, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :pswitch_2
    const-string v6, "disable_push"

    iput-object v6, v3, Lou/p3;->e:Ljava/lang/String;

    const-string v6, "disable_push"

    iput-object v6, v9, Lou/p3;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    iput-object v2, v3, Lou/p3;->h:Ljava/util/HashMap;

    iput-object v2, v9, Lou/p3;->h:Ljava/util/HashMap;

    :cond_5
    const-string v6, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "type:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, p2

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LGr/b;->u(Ljava/lang/String;)V

    iget-object v6, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v6}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v6

    iget-object v6, v6, LSt/j;->b:LSt/j$a;

    iget-object v6, v6, LSt/j$a;->a:Ljava/lang/String;

    iput-object v6, v3, Lou/p3;->d:Ljava/lang/String;

    iget-object v6, v0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lou/p3;->i:Ljava/lang/String;

    sget-object v10, Lou/T2;->j:Lou/T2;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v10, v6, v7}, LSt/x;->k(Lou/B3;Lou/T2;ZLou/e3;)V

    if-eqz p3, :cond_7

    iget-object v3, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v3}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v3

    iget-object v3, v3, LSt/j;->b:LSt/j$a;

    iget-object v3, v3, LSt/j$a;->a:Ljava/lang/String;

    iput-object v3, v9, Lou/p3;->d:Ljava/lang/String;

    iget-object v3, v0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lou/p3;->i:Ljava/lang/String;

    iget-object v8, v0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v3}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v3

    iget-object v3, v3, LSt/j;->b:LSt/j$a;

    iget-object v13, v3, LSt/j$a;->a:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, LSt/w;->a(Landroid/content/Context;Lou/B3;Lou/T2;ZLjava/lang/String;Ljava/lang/String;Z)Lou/m3;

    move-result-object v3

    invoke-static {v3}, Lou/A3;->c(Lou/B3;)[B

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v6, v0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, LSt/x;->b:Landroid/content/Context;

    array-length v8, v3

    invoke-static {v6, v7, v9, v10, v8}, Lou/w0;->c(Ljava/lang/String;Landroid/content/Context;Lou/B3;Lou/T2;I)V

    const-string v6, "mipush_payload"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "mipush_app_id"

    iget-object v4, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v4}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v4

    iget-object v4, v4, LSt/j;->b:LSt/j$a;

    iget-object v4, v4, LSt/j$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mipush_app_token"

    iget-object v4, v0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v4}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v4

    iget-object v4, v4, LSt/j;->b:LSt/j$a;

    iget-object v4, v4, LSt/j$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, LSt/x;->p(Landroid/content/Intent;)V

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x13

    iput v4, v3, Landroid/os/Message;->what:I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v4, v3, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_8

    const-string v1, "third_sync_reason"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "third_sync_reason"

    const-string v5, "third_sync_reason"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_8
    iget-object v0, v0, LSt/x;->d:LSt/x$a;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/String;Z)V
    .locals 7

    sget-object v0, LSt/y;->b:LSt/y;

    sget-object v1, LSt/y;->a:LSt/y;

    iget-object v2, p0, LSt/x;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, "syncing"

    if-eqz p2, :cond_0

    invoke-static {v2}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p2

    invoke-virtual {p2, v1, v6}, LSt/u;->d(LSt/y;Ljava/lang/String;)V

    invoke-static {v2}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p2

    invoke-virtual {p2, v0, v5}, LSt/u;->d(LSt/y;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v4, v3}, LSt/x;->g(Ljava/lang/String;LSt/y;ZLjava/util/HashMap;)V

    return-void

    :cond_0
    invoke-static {v2}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p2

    invoke-virtual {p2, v0, v6}, LSt/u;->d(LSt/y;Ljava/lang/String;)V

    invoke-static {v2}, LSt/u;->b(Landroid/content/Context;)LSt/u;

    move-result-object p2

    invoke-virtual {p2, v1, v5}, LSt/u;->d(LSt/y;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v4, v3}, LSt/x;->g(Ljava/lang/String;LSt/y;ZLjava/util/HashMap;)V

    return-void
.end method

.method public final i(Lou/q3;Z)V
    .locals 9

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lou/i1;->a(Landroid/content/Context;)Lou/i1;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lou/q3;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v4, "E100003"

    const/16 v5, 0x1771

    invoke-virtual/range {v2 .. v7}, Lou/i1;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, LSt/x;->i:Landroid/content/Intent;

    invoke-static {v0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v1

    iget-object v2, p1, Lou/q3;->c:Ljava/lang/String;

    iput-object v2, v1, LSt/j;->d:Ljava/lang/String;

    invoke-virtual {p0}, LSt/x;->c()Landroid/content/Intent;

    move-result-object v8

    sget-object v2, Lou/T2;->b:Lou/T2;

    invoke-virtual {v2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v1

    iget-object v1, v1, LSt/j;->b:LSt/j$a;

    iget-object v5, v1, LSt/j$a;->a:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v0 .. v6}, LSt/w;->a(Landroid/content/Context;Lou/B3;Lou/T2;ZLjava/lang/String;Ljava/lang/String;Z)Lou/m3;

    move-result-object p1

    invoke-static {p1}, Lou/A3;->c(Lou/B3;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "register fail, because msgBytes is null."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v1

    iget-object v1, v1, LSt/j;->b:LSt/j$a;

    iget-object v1, v1, LSt/j$a;->a:Ljava/lang/String;

    const-string v2, "mipush_app_id"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_payload"

    invoke-virtual {v8, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "mipush_session"

    invoke-virtual {v8, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "mipush_env_chanage"

    invoke-virtual {v8, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object p1

    iget-object p1, p1, LSt/j;->b:LSt/j$a;

    iget p1, p1, LSt/j$a;->i:I

    const-string p2, "mipush_env_type"

    invoke-virtual {v8, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lou/u;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LSt/x;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, LSt/x;->g:J

    invoke-virtual {p0, v8}, LSt/x;->p(Landroid/content/Intent;)V

    return-void

    :cond_1
    iput-object v8, p0, LSt/x;->i:Landroid/content/Intent;

    return-void
.end method

.method public final j(Lou/B3;Lou/T2;Lou/e3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lou/B3<",
            "TT;*>;>(TT;",
            "Lou/T2;",
            "Lou/e3;",
            ")V"
        }
    .end annotation

    sget-object v0, Lou/T2;->b:Lou/T2;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, LSt/x;->k(Lou/B3;Lou/T2;ZLou/e3;)V

    return-void
.end method

.method public final k(Lou/B3;Lou/T2;ZLou/e3;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lou/B3<",
            "TT;*>;>(TT;",
            "Lou/T2;",
            "Z",
            "Lou/e3;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v1

    iget-object v1, v1, LSt/j;->b:LSt/j$a;

    iget-object v8, v1, LSt/j$a;->a:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v10}, LSt/x;->l(Lou/B3;Lou/T2;ZZLou/e3;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final l(Lou/B3;Lou/T2;ZZLou/e3;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lou/B3<",
            "TT;*>;>(TT;",
            "Lou/T2;",
            "ZZ",
            "Lou/e3;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    const-string v1, "com.xiaomi.mipush.SEND_MESSAGE"

    const/4 v2, 0x0

    if-eqz p10, :cond_2

    iget-object v3, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v3}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v3

    iget-object v3, v3, LSt/j;->b:LSt/j$a;

    invoke-virtual {v3}, LSt/j$a;->a()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p4, :cond_1

    new-instance p0, LSt/x$f;

    invoke-direct {p0}, LSt/x$f;-><init>()V

    iput-object p1, p0, LSt/x$f;->a:Ljava/lang/Object;

    iput-object p2, p0, LSt/x$f;->b:Lou/T2;

    iput-boolean p3, p0, LSt/x$f;->c:Z

    sget-object p1, LSt/x;->m:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 p2, 0xa

    if-le p0, p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "drop the message before initialization."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p9, :cond_3

    iget-object v3, p0, LSt/x;->b:Landroid/content/Context;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v9}, LSt/w;->a(Landroid/content/Context;Lou/B3;Lou/T2;ZLjava/lang/String;Ljava/lang/String;Z)Lou/m3;

    move-result-object p3

    goto :goto_2

    :cond_3
    iget-object v3, p0, LSt/x;->b:Landroid/content/Context;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v9}, LSt/w;->a(Landroid/content/Context;Lou/B3;Lou/T2;ZLjava/lang/String;Ljava/lang/String;Z)Lou/m3;

    move-result-object p3

    :goto_2
    if-eqz p5, :cond_4

    iput-object p5, p3, Lou/m3;->h:Lou/e3;

    :cond_4
    invoke-static {p3}, Lou/A3;->c(Lou/B3;)[B

    move-result-object p3

    if-nez p3, :cond_5

    const-string p0, "send message fail, because msgBytes is null."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p4, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    array-length v3, p3

    invoke-static {p4, v0, p1, p2, v3}, Lou/w0;->c(Ljava/lang/String;Landroid/content/Context;Lou/B3;Lou/T2;I)V

    invoke-virtual {p0}, LSt/x;->c()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mipush_payload"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "com.xiaomi.mipush.MESSAGE_CACHE"

    move/from16 p3, p6

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "mipush_message_cache_collection"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, LSt/x;->p(Landroid/content/Intent;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, LSt/x;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {p0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object p0

    iget-object p0, p0, LSt/j;->b:LSt/j$a;

    iget p0, p0, LSt/j$a;->i:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lou/Q3;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, LSt/x;->s(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object p0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o()Z
    .locals 6

    invoke-virtual {p0}, LSt/x;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    :cond_1
    :goto_0
    iget-object v2, p0, LSt/x;->j:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/xiaomi/push/service/J;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/J;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, LSt/x;->j:Ljava/lang/Integer;

    if-nez v2, :cond_2

    new-instance v2, LSt/x$c;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v4}, LSt/x$c;-><init>(LSt/x;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0}, Lcom/xiaomi/push/service/J;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/J;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object p0, p0, LSt/x;->j:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method public final p(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object v0

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/w;->a(II)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    const-string v3, "mipush_extra"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "service_boot_mode"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    sget-boolean v0, LSt/x;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v1, :cond_2

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v0}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v0

    invoke-virtual {v0}, LSt/j;->g()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    const-string v1, "mipush_extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "service_boot_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    new-instance v0, Lou/p3;

    invoke-direct {v0}, Lou/p3;-><init>()V

    invoke-static {}, LT3/d;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/p3;->c:Ljava/lang/String;

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v1}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v1

    iget-object v1, v1, LSt/j;->b:LSt/j$a;

    iget-object v1, v1, LSt/j$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lou/p3;->d:Ljava/lang/String;

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou/p3;->i:Ljava/lang/String;

    const-string v1, "client_ab_test"

    iput-object v1, v0, Lou/p3;->e:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lou/p3;->h:Ljava/util/HashMap;

    const-string v4, "boot_mode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-static {v1}, LSt/x;->b(Landroid/content/Context;)LSt/x;

    move-result-object v1

    sget-object v4, Lou/T2;->j:Lou/T2;

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v2, v5}, LSt/x;->k(Lou/B3;Lou/T2;ZLou/e3;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, LSt/x;->s(Landroid/content/Intent;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, LSt/x;->n(Landroid/content/Intent;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final q()Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, LSt/x;->h:Ljava/lang/String;

    const-string v5, "com.xiaomi.push.service.XMPushService"

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v6, 0x6a

    if-lt v4, v6, :cond_1

    iput-object v5, p0, LSt/x;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    :cond_1
    const-string v4, "com.xiaomi.xmsf.push.service.XMPushService"

    iput-object v4, p0, LSt/x;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "mipush_app_package"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    return-object v0
.end method

.method public final r()V
    .locals 15

    sget-object v1, LSt/x;->m:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LSt/x$f;

    iget-object v5, v3, LSt/x$f;->a:Ljava/lang/Object;

    iget-object v6, v3, LSt/x$f;->b:Lou/T2;

    iget-boolean v7, v3, LSt/x$f;->c:Z

    iget-object v3, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, LSt/j;->a(Landroid/content/Context;)LSt/j;

    move-result-object v3

    iget-object v3, v3, LSt/j;->b:LSt/j$a;

    iget-object v12, v3, LSt/j$a;->a:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v14}, LSt/x;->l(Lou/B3;Lou/T2;ZZLou/e3;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v5, 0x64

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    :cond_1
    :goto_2
    move-object p0, v4

    goto :goto_1

    :cond_2
    :try_start_2
    sget-object p0, LSt/x;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final declared-synchronized s(Landroid/content/Intent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LSt/x;->f:Z

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, LSt/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x32

    if-lt p1, v1, :cond_0

    iget-object p1, p0, LSt/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, LSt/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, LSt/x;->c:Landroid/os/Messenger;

    if-nez v0, :cond_2

    iget-object v0, p0, LSt/x;->b:Landroid/content/Context;

    new-instance v2, LSt/x$d;

    invoke-direct {v2, p0}, LSt/x$d;-><init>(LSt/x;)V

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, LSt/x;->f:Z

    iget-object v0, p0, LSt/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, LSt/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, LSt/x;->c:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :try_start_3
    iput-object p1, p0, LSt/x;->c:Landroid/os/Messenger;

    iput-boolean v2, p0, LSt/x;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final t()Landroid/content/Intent;
    .locals 7

    const-string v0, "com.xiaomi.push.service.XMPushService"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, LSt/x;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "mipush_app_package"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method
