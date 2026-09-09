.class public Lcom/xiaomi/push/service/XMPushService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lou/m2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/XMPushService$n;,
        Lcom/xiaomi/push/service/XMPushService$A;,
        Lcom/xiaomi/push/service/XMPushService$E;,
        Lcom/xiaomi/push/service/XMPushService$x;,
        Lcom/xiaomi/push/service/XMPushService$G;,
        Lcom/xiaomi/push/service/XMPushService$s;,
        Lcom/xiaomi/push/service/XMPushService$B;,
        Lcom/xiaomi/push/service/XMPushService$D;,
        Lcom/xiaomi/push/service/XMPushService$t;,
        Lcom/xiaomi/push/service/XMPushService$r;,
        Lcom/xiaomi/push/service/XMPushService$F;,
        Lcom/xiaomi/push/service/XMPushService$C;,
        Lcom/xiaomi/push/service/XMPushService$p;,
        Lcom/xiaomi/push/service/XMPushService$o;,
        Lcom/xiaomi/push/service/XMPushService$q;,
        Lcom/xiaomi/push/service/XMPushService$v;,
        Lcom/xiaomi/push/service/XMPushService$z;,
        Lcom/xiaomi/push/service/XMPushService$w;,
        Lcom/xiaomi/push/service/XMPushService$y;,
        Lcom/xiaomi/push/service/XMPushService$u;
    }
.end annotation


# static fields
.field private static b:Z


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/database/ContentObserver;

.field a:Landroid/os/Messenger;

.field private a:Lcom/xiaomi/push/service/L;

.field private a:Lcom/xiaomi/push/service/XMPushService$E;

.field private a:Lcom/xiaomi/push/service/XMPushService$G;

.field private a:Lcom/xiaomi/push/service/XMPushService$n;

.field private a:Lcom/xiaomi/push/service/XMPushService$s;

.field private a:Lcom/xiaomi/push/service/XMPushService$x;

.field private a:Lcom/xiaomi/push/service/f0;

.field private a:Lcom/xiaomi/push/service/n0;

.field private a:Lcom/xiaomi/push/service/y;

.field protected a:Ljava/lang/Class;

.field private a:Ljava/lang/Object;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/service/XMPushService$A;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/xiaomi/push/service/k;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lou/i2;

.field private a:Lou/k2;

.field private a:Lou/l2;

.field private a:Lou/n2;

.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    const-class v0, Lcom/xiaomi/push/service/XMJobService;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/y;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$e;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$e;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/n2;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/F$b;
    .locals 3

    .line 573
    const-string v0, "ext_user_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 575
    new-instance p1, Lcom/xiaomi/push/service/F$b;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/service/F$b;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 576
    :cond_0
    const-string v1, "ext_chid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/xiaomi/push/service/F$b;->h:Ljava/lang/String;

    .line 577
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->b:Ljava/lang/String;

    .line 578
    const-string v0, "ext_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->c:Ljava/lang/String;

    .line 579
    const-string v0, "ext_pkg_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->a:Ljava/lang/String;

    .line 580
    const-string v0, "ext_client_attr"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->f:Ljava/lang/String;

    .line 581
    const-string v0, "ext_cloud_attr"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->g:Ljava/lang/String;

    .line 582
    const-string v0, "ext_kick"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/xiaomi/push/service/F$b;->e:Z

    .line 583
    const-string v0, "ext_security"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    .line 584
    const-string v0, "ext_session"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->j:Ljava/lang/String;

    .line 585
    const-string v0, "ext_auth_method"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->d:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    iput-object v0, p1, Lcom/xiaomi/push/service/F$b;->k:Lcom/xiaomi/push/service/f0;

    .line 587
    const-string v0, "ext_messenger"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Messenger;

    .line 588
    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/F$b;->d(Landroid/os/Messenger;)V

    .line 589
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, p1, Lcom/xiaomi/push/service/F$b;->l:Landroid/content/Context;

    .line 590
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/F;->h(Lcom/xiaomi/push/service/F$b;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/n0;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    return-object p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/y;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/y;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 39
    const-string p0, "ro.miui.region"

    invoke-static {p0}, Lou/Q3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string p0, "ro.product.locale.region"

    invoke-static {p0}, Lou/Q3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lou/k2;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    return-object p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Lou/k2;)Lou/k2;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    return-object p1
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Lou/l2;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/l2;

    return-object p0
.end method

.method private a(Lou/z2;Ljava/lang/String;Ljava/lang/String;)Lou/z2;
    .locals 3

    .line 536
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    .line 537
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/service/F;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "open channel should be called first before sending a packet, pkg="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 540
    :cond_0
    iput-object p2, p1, Lou/z2;->e:Ljava/lang/String;

    .line 541
    iget-object p2, p1, Lou/z2;->d:Ljava/lang/String;

    .line 542
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    .line 543
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 544
    iput-object p2, p1, Lou/z2;->d:Ljava/lang/String;

    .line 545
    :cond_1
    iget-object v1, p1, Lou/z2;->c:Ljava/lang/String;

    .line 546
    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result p0

    if-nez p0, :cond_2

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "drop a packet as the channel is not connected, chid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    .line 549
    iget-object p0, v0, Lcom/xiaomi/push/service/F$b;->m:Lcom/xiaomi/push/service/F$c;

    sget-object v1, Lcom/xiaomi/push/service/F$c;->c:Lcom/xiaomi/push/service/F$c;

    if-eq p0, v1, :cond_3

    goto :goto_0

    .line 550
    :cond_3
    iget-object p0, v0, Lcom/xiaomi/push/service/F$b;->j:Ljava/lang/String;

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 551
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "invalid session. "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-object p1

    .line 552
    :cond_5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "drop a packet as the channel is not opened, chid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 603
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 604
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 67
    const-string v0, "digest"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/k0;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/k0;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/m0;

    move-result-object v0

    .line 70
    invoke-interface {v0, p1}, Lcom/xiaomi/push/service/m0;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {p0}, Lou/p0;->b(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 72
    sget-object p0, Lou/m0;->a:Ljava/util/List;

    return-void

    .line 73
    :cond_1
    sget-object p0, Lou/m0;->a:Ljava/util/List;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "W-"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lou/p0;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Intent;J)V
    .locals 14

    move-object v0, p1

    .line 81
    const-string v1, "uninstall "

    const-string v2, "dual space\'s app uninstalled "

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v3

    .line 82
    const-string v4, "com.xiaomi.push.OPEN_CHANNEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5b

    const-string v4, "com.xiaomi.push.FORCE_RECONN"

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1c

    .line 84
    :cond_0
    const-string v4, "com.xiaomi.push.CLOSE_CHANNEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    .line 85
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "ext_chid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v2, "ext_user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    const-string v0, "Service called close channel chid = "

    const-string v2, " res = "

    .line 89
    invoke-static {v0, v8, v2}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-static {v9}, Lcom/xiaomi/push/service/F$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 91
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v3, v1}, Lcom/xiaomi/push/service/F;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-direct {p0, v1, v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, v8, v6}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 v12, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v7, p0

    .line 97
    invoke-virtual/range {v7 .. v12}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_3
    const-string v4, "com.xiaomi.push.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 99
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->b(Landroid/content/Intent;)V

    return-void

    .line 100
    :cond_4
    const-string v4, "com.xiaomi.push.BATCH_SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->c(Landroid/content/Intent;)V

    return-void

    .line 102
    :cond_5
    const-string v4, "com.xiaomi.push.SEND_IQ"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "ext_session"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v4, "ext_packet"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    new-instance v4, Lou/w2;

    invoke-direct {v4, v0}, Lou/w2;-><init>(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0, v4, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lou/z2;Ljava/lang/String;Ljava/lang/String;)Lou/z2;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 108
    iget-object v1, v0, Lou/z2;->d:Ljava/lang/String;

    .line 109
    iget-object v2, v0, Lou/z2;->c:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v1

    .line 111
    iget-object v1, v1, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lou/c2;->c(Lou/z2;Ljava/lang/String;)Lou/c2;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/xiaomi/push/service/O;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/O;-><init>(Lcom/xiaomi/push/service/XMPushService;Lou/c2;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 113
    :cond_6
    const-string v4, "com.xiaomi.push.SEND_PRES"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_b

    .line 114
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "ext_session"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v4, "ext_packet"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    new-instance v4, Lou/B2;

    .line 118
    invoke-direct {v4, v0}, Lou/z2;-><init>(Landroid/os/Bundle;)V

    .line 119
    sget-object v5, Lou/B2$b;->a:Lou/B2$b;

    iput-object v5, v4, Lou/B2;->l:Lou/B2$b;

    .line 120
    iput-object v8, v4, Lou/B2;->m:Ljava/lang/String;

    const/high16 v5, -0x80000000

    .line 121
    iput v5, v4, Lou/B2;->n:I

    .line 122
    iput-object v8, v4, Lou/B2;->o:Lou/B2$a;

    .line 123
    const-string v5, "ext_pres_type"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 124
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lou/B2$b;->valueOf(Ljava/lang/String;)Lou/B2$b;

    move-result-object v5

    iput-object v5, v4, Lou/B2;->l:Lou/B2$b;

    .line 125
    :cond_7
    const-string v5, "ext_pres_status"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 126
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lou/B2;->m:Ljava/lang/String;

    .line 127
    :cond_8
    const-string v5, "ext_pres_prio"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 128
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lou/B2;->n:I

    .line 129
    :cond_9
    const-string v5, "ext_pres_mode"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 130
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lou/B2$a;->valueOf(Ljava/lang/String;)Lou/B2$a;

    move-result-object v0

    iput-object v0, v4, Lou/B2;->o:Lou/B2$a;

    .line 131
    :cond_a
    invoke-direct {p0, v4, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lou/z2;Ljava/lang/String;Ljava/lang/String;)Lou/z2;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 132
    iget-object v1, v0, Lou/z2;->d:Ljava/lang/String;

    .line 133
    iget-object v2, v0, Lou/z2;->c:Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v1

    .line 135
    iget-object v1, v1, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lou/c2;->c(Lou/z2;Ljava/lang/String;)Lou/c2;

    move-result-object v0

    .line 136
    new-instance v1, Lcom/xiaomi/push/service/O;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/O;-><init>(Lcom/xiaomi/push/service/XMPushService;Lou/c2;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 137
    :cond_b
    const-string v4, "com.xiaomi.push.RESET_CONN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_e

    .line 138
    const-string v1, "ext_chid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "ext_user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_61

    .line 140
    const-string v3, "request reset connection from chid = "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LGr/b;->e(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 142
    iget-object v2, v1, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    const-string v3, "ext_security"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/xiaomi/push/service/F$b;->m:Lcom/xiaomi/push/service/F$c;

    sget-object v1, Lcom/xiaomi/push/service/F$c;->c:Lcom/xiaomi/push/service/F$c;

    if-ne v0, v1, :cond_61

    .line 143
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lou/k2;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v10, 0x3a98

    sub-long/2addr v2, v10

    .line 145
    monitor-enter v1

    .line 146
    :try_start_0
    iget-wide v10, v1, Lou/k2;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v10, v2

    if-ltz v0, :cond_c

    goto :goto_1

    :cond_c
    move v5, v9

    :goto_1
    monitor-exit v1

    if-nez v5, :cond_61

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 147
    :cond_d
    :goto_2
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$D;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$D;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 148
    :cond_e
    const-string v4, "com.xiaomi.push.UPDATE_CHANNEL_INFO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 149
    const-string p0, "ext_pkg_name"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {v3, p0}, Lcom/xiaomi/push/service/F;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open channel should be called first before update info, pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_f
    const-string p0, "ext_chid"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    const-string v2, "ext_user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 156
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 157
    :cond_10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 158
    invoke-virtual {v3, p0}, Lcom/xiaomi/push/service/F;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 159
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 160
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/xiaomi/push/service/F$b;

    goto :goto_3

    .line 161
    :cond_11
    invoke-virtual {v3, p0, v2}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v8

    :cond_12
    :goto_3
    if-eqz v8, :cond_61

    .line 162
    const-string p0, "ext_client_attr"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 163
    const-string p0, "ext_client_attr"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/xiaomi/push/service/F$b;->f:Ljava/lang/String;

    .line 164
    :cond_13
    const-string p0, "ext_cloud_attr"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 165
    const-string p0, "ext_cloud_attr"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/xiaomi/push/service/F$b;->g:Ljava/lang/String;

    return-void

    .line 166
    :cond_14
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto/16 :goto_1b

    .line 167
    :cond_15
    const-string v3, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/J;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/J;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    sget v1, Lou/a4;->a:I

    .line 170
    const-string v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 171
    const-string v2, "mipush_app_package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v3, "mipush_env_chanage"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 173
    const-string v4, "mipush_env_type"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 174
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v4

    .line 175
    iget-object v10, v4, Lcom/xiaomi/push/service/s0;->b:Ljava/util/ArrayList;

    .line 176
    monitor-enter v10

    .line 177
    :try_start_2
    iget-object v5, v4, Lcom/xiaomi/push/service/s0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 178
    iget-object v5, v4, Lcom/xiaomi/push/service/s0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, v4, Lcom/xiaomi/push/service/s0;->b:Ljava/util/ArrayList;

    invoke-static {v5}, Lvr/e;->g(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 180
    iget-object v4, v4, Lcom/xiaomi/push/service/s0;->a:Landroid/content/Context;

    const-string v6, "mipush_app_info"

    invoke-virtual {v4, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 181
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "unregistered_pkg_names"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 182
    :cond_16
    :goto_4
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_17

    .line 183
    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 184
    new-instance v3, Lcom/xiaomi/push/service/XMPushService$f;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/xiaomi/push/service/XMPushService$f;-><init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/String;[B)V

    invoke-direct {p0, v3}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 185
    :cond_17
    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    return-void

    .line 186
    :goto_5
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 187
    :cond_18
    const-string v3, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "com.xiaomi.mipush.UNREGISTER_APP"

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto/16 :goto_19

    .line 189
    :cond_19
    const-string v3, "com.xiaomi.xmsf.push.UNINSTALL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1e

    .line 190
    const-string v3, "uninstall_pkg_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto/16 :goto_1d

    .line 192
    :cond_1a
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 193
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1b

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 194
    invoke-static {p0, v3}, Lou/y3;->e(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :cond_1b
    move v5, v9

    .line 196
    :catch_0
    :goto_6
    const-string v2, "com.xiaomi.channel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 197
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/F;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    if-eqz v5, :cond_1c

    .line 198
    const-string v0, "1"

    invoke-direct {p0, v0, v9}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;I)V

    .line 199
    const-string p0, "close the miliao channel as the app is uninstalled."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_1c
    const-string v2, "pref_registered_pkg_names"

    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 201
    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_61

    if-eqz v5, :cond_61

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 204
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    sget-object v2, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 207
    const-string v2, "pref_notify_type"

    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 208
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 209
    const-string v2, "pref_notify_type"

    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 210
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    :cond_1d
    invoke-static {p0, v0, v4, v4}, Lcom/xiaomi/push/service/g;->p(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;II)V

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xiaomi/push/service/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    const-string v2, "pkg or listener is null when handle app unregister"

    invoke-static {v2}, LGr/b;->e(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v2

    if-eqz v2, :cond_61

    if-eqz v3, :cond_61

    .line 216
    :try_start_5
    invoke-static {v0, v3}, Lcom/xiaomi/push/service/f;->c(Ljava/lang/String;Ljava/lang/String;)Lou/m3;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/push/service/f;->f(Lcom/xiaomi/push/service/XMPushService;Lou/m3;)V

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " msg sent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Lou/s2; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail to send Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lou/s2;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LGr/b;->t(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 219
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto/16 :goto_1d

    .line 220
    :cond_1e
    const-string v1, "com.xiaomi.xmsf.push.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 221
    const-string v1, "data_cleared_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto/16 :goto_1d

    .line 223
    :cond_1f
    :try_start_6
    const-string v0, "pref_registered_pkg_names"

    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_20

    .line 224
    :try_start_7
    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v8

    .line 225
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Fail to get sp or appId : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 226
    :cond_20
    :goto_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 227
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    sget-object v0, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 231
    const-string v0, "pref_notify_type"

    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 233
    const-string v0, "pref_notify_type"

    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    :cond_21
    invoke-static {p0, v1, v4, v4}, Lcom/xiaomi/push/service/g;->p(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;II)V

    .line 236
    new-instance v0, Lou/p3;

    invoke-direct {v0}, Lou/p3;-><init>()V

    .line 237
    iput-object v8, v0, Lou/p3;->d:Ljava/lang/String;

    .line 238
    const-string v2, "app_data_cleared"

    iput-object v2, v0, Lou/p3;->e:Ljava/lang/String;

    .line 239
    invoke-static {}, LT3/d;->d()Ljava/lang/String;

    move-result-object v2

    .line 240
    iput-object v2, v0, Lou/p3;->c:Ljava/lang/String;

    .line 241
    invoke-virtual {v0, v9}, Lou/p3;->t(Z)V

    .line 242
    sget-object v2, Lou/T2;->j:Lou/T2;

    .line 243
    invoke-static {v1, v8, v0, v2, v5}, Lcom/xiaomi/push/service/f;->d(Ljava/lang/String;Ljava/lang/String;Lou/B3;Lou/T2;Z)Lou/m3;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lou/A3;->c(Lou/B3;)[B

    move-result-object v0

    .line 245
    invoke-virtual {p0, v1, v0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    .line 246
    :cond_22
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/n;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 248
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    .line 249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    const-string p0, "pkg or listener is null when handle app unregister"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 251
    :cond_23
    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 252
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string v2, "ext_notify_id"

    const/4 v3, -0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    if-lt v2, v4, :cond_24

    .line 255
    const-string v3, "ext_clicked_button"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 256
    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/push/service/g;->p(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;II)V

    return-void

    .line 257
    :cond_24
    const-string v2, "ext_notify_title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    const-string v3, "ext_notify_description"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v3, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 260
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_61

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_1d

    .line 261
    :cond_25
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/s;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/s;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/xiaomi/push/service/s;->s()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 263
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    goto/16 :goto_a

    .line 264
    :cond_26
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 265
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 266
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    if-nez v6, :cond_28

    goto :goto_9

    .line 267
    :cond_28
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 268
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 269
    invoke-static {v6}, Lcom/xiaomi/push/service/t;->e(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v9

    .line 270
    invoke-static {v6}, Lcom/xiaomi/push/service/t;->l(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_27

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 272
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_29

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_27

    :cond_29
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2a

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 273
    :cond_2a
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v1, v8}, Lcom/xiaomi/push/service/s;->i(I)V

    goto :goto_9

    .line 275
    :cond_2b
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 276
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-long v0, v0

    .line 277
    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/T;->c(Lcom/xiaomi/push/service/XMPushService;J)V

    :cond_2c
    :goto_a
    return-void

    .line 278
    :cond_2d
    const-string v1, "com.xiaomi.mipush.CLEAR_HEADSUPNOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 279
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 281
    sget-object v0, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 282
    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    return-void

    .line 283
    :cond_2e
    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 284
    const-string v1, "ext_pkg_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "sig"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    const-string v3, "ext_notify_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 287
    const-string v3, "ext_notify_type"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDf/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v5, v9

    goto :goto_b

    .line 289
    :cond_2f
    invoke-static {v1}, LDf/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v0, v9

    .line 290
    :goto_b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_c

    :cond_30
    if-eqz v5, :cond_31

    .line 291
    sget-object v0, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 292
    const-string v0, "pref_notify_type"

    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 293
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 294
    :cond_31
    sget-object v2, Lcom/xiaomi/push/service/g;->b:Ljava/util/LinkedList;

    .line 295
    const-string v2, "pref_notify_type"

    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 296
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 297
    :cond_32
    :goto_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid notification for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    return-void

    .line 298
    :cond_33
    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 299
    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 301
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v1

    .line 302
    iget-object v2, v1, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    .line 303
    monitor-enter v2

    .line 304
    :try_start_8
    iget-object v3, v1, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 305
    iget-object v3, v1, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, v1, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lvr/e;->g(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, v1, Lcom/xiaomi/push/service/s0;->a:Landroid/content/Context;

    const-string v3, "mipush_app_info"

    invoke-virtual {v1, v3, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "disable_push_pkg_names"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_e

    .line 309
    :cond_34
    :goto_d
    monitor-exit v2

    goto :goto_f

    :goto_e
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    .line 310
    :cond_35
    :goto_f
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const/16 v0, 0x13

    .line 311
    invoke-virtual {p0, v0, v8}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    .line 312
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()V

    .line 313
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 314
    :cond_36
    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    .line 315
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto/16 :goto_18

    .line 316
    :cond_37
    const-string v1, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 317
    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    const-string v2, "mipush_payload"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 319
    new-instance v2, Lou/V2;

    invoke-direct {v2}, Lou/V2;-><init>()V

    .line 320
    :try_start_9
    invoke-static {v2, v0}, Lou/A3;->b(Lou/B3;[B)V

    .line 321
    invoke-static {p0}, Lou/R2;->a(Landroid/content/Context;)Lou/R2;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lou/R2;->b(Lou/V2;Ljava/lang/String;)V
    :try_end_9
    .catch Lou/E3; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 322
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 323
    :cond_38
    const-string v1, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 324
    const-string v1, "[Alarm] Service called on timer"

    invoke-static {v1}, LGr/b;->e(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 326
    invoke-static {}, Lou/M1;->d()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 327
    const-string v0, "enter falldown mode, stop alarm"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lou/M1;->b()V

    goto :goto_11

    .line 329
    :cond_39
    const-string v1, "speaker_reset_ping_timing"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 330
    invoke-static {v5}, Lou/M1;->c(Z)V

    goto :goto_10

    .line 331
    :cond_3a
    invoke-static {v9}, Lou/M1;->c(Z)V

    .line 332
    :goto_10
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 333
    invoke-direct {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    .line 334
    :cond_3b
    :goto_11
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$n;

    if-eqz p0, :cond_61

    .line 335
    sget v0, Lcom/xiaomi/push/service/XMPushService$n;->b:I

    .line 336
    const-string v1, "[Alarm] notify lock. "

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_3c

    .line 337
    const-string p0, "[Alarm] Cannot perform lock.notifyAll in the UI thread!"

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 338
    :cond_3c
    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$n;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 339
    :try_start_a
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService$n;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_13

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 340
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    .line 341
    :goto_12
    monitor-exit v2

    goto/16 :goto_1d

    :goto_13
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0

    .line 342
    :cond_3d
    const-string v1, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 343
    const-string v0, "Service called on check alive."

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 345
    invoke-direct {p0, v9}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    return-void

    .line 346
    :cond_3e
    const-string v1, "com.xiaomi.mipush.thirdparty"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on thirdpart push :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.mipush.thirdparty_DESC"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LGr/b;->e(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.xiaomi.mipush.thirdparty_LEVEL"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 349
    const-class v1, Lou/M1;

    monitor-enter v1

    .line 350
    :try_start_c
    const-string v2, ""

    const-string v3, "ro.build.characteristics"

    invoke-static {v3, v2}, LPq/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    const-string v3, "tv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 352
    const-string v2, "XiaoAiTongXue"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_15

    .line 353
    :cond_3f
    sget v2, Lou/M1;->b:I

    .line 354
    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    if-ne v0, v6, :cond_40

    .line 355
    sput v6, Lou/M1;->b:I

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_16

    .line 356
    :cond_40
    sput v9, Lou/M1;->b:I

    .line 357
    :cond_41
    :goto_14
    sget v0, Lou/M1;->b:I

    if-eq v2, v0, :cond_42

    if-ne v0, v6, :cond_42

    .line 358
    invoke-static {}, Lou/M1;->b()V

    .line 359
    new-instance v0, Lou/R1;

    .line 360
    invoke-direct {v0, p0}, Lou/N1;-><init>(Landroid/content/Context;)V

    .line 361
    sput-object v0, Lou/M1;->a:Lou/L1;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 362
    :cond_42
    monitor-exit v1

    return-void

    .line 363
    :cond_43
    :goto_15
    monitor-exit v1

    return-void

    :goto_16
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    .line 364
    :cond_44
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 365
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->e()V

    return-void

    .line 366
    :cond_45
    const-string v1, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 367
    invoke-direct/range {p0 .. p1}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Intent;)V

    return-void

    .line 368
    :cond_46
    const-string v1, "com.xiaomi.xmsf.USE_INTELLIGENT_HB"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 369
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 370
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "effectivePeriod"

    invoke-virtual {v0, v1, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_61

    const v1, 0x93a80

    if-gt v0, v1, :cond_61

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/service/k0;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/k0;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/m0;

    move-result-object p0

    .line 373
    invoke-interface {p0, v0}, Lcom/xiaomi/push/service/m0;->a(I)V

    return-void

    .line 374
    :cond_47
    const-string v1, "action_cr_config"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_48

    .line 375
    const-string v1, "action_cr_event_switch"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 376
    const-string v4, "action_cr_event_frequency"

    const-wide/32 v10, 0x15180

    invoke-virtual {p1, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 377
    const-string v4, "action_cr_perf_switch"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 378
    const-string v6, "action_cr_perf_frequency"

    invoke-virtual {p1, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 379
    const-string v6, "action_cr_event_en"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 380
    const-string v6, "action_cr_max_file_size"

    const-wide/32 v10, 0x100000

    invoke-virtual {p1, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 381
    invoke-static {}, LHr/a;->a()LHr/a$a;

    move-result-object v0

    .line 382
    iput v1, v0, LHr/a$a;->b:I

    .line 383
    iput-wide v12, v0, LHr/a$a;->f:J

    .line 384
    iput v4, v0, LHr/a$a;->c:I

    .line 385
    iput-wide v8, v0, LHr/a$a;->g:J

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lou/Q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 387
    iput-object v1, v0, LHr/a$a;->d:Ljava/lang/String;

    .line 388
    iput v5, v0, LHr/a$a;->a:I

    .line 389
    iput-wide v10, v0, LHr/a$a;->e:J

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LHr/a$a;->a(Landroid/content/Context;)LHr/a;

    move-result-object v0

    .line 391
    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    cmp-long v1, v12, v2

    if-lez v1, :cond_61

    cmp-long v1, v8, v2

    if-lez v1, :cond_61

    cmp-long v1, v10, v2

    if-lez v1, :cond_61

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 393
    new-instance v1, Lou/f1;

    invoke-direct {v1, p0}, Lou/f1;-><init>(Landroid/content/Context;)V

    new-instance v2, Lou/g1;

    invoke-direct {v2, p0}, Lou/g1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, LEw/e;->f(Landroid/content/Context;LHr/a;Lou/f1;Lou/g1;)V

    return-void

    .line 394
    :cond_48
    const-string v1, "com.xiaomi.push.HANDLE_FCM_MSG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 396
    const-string v1, "ext_fcm_container_buffer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string v2, "mipush_app_package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 399
    :try_start_e
    const-string v2, "mipush_apps_scrt"

    invoke-virtual {p0, v2, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 400
    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 403
    const-string v0, "secret is empty, return null"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_17

    .line 404
    :cond_49
    invoke-static {v0}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 405
    :try_start_f
    invoke-static {v0, v1}, Lou/Z2;->a([B[B)[B

    move-result-object v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_17

    :catch_4
    move-exception v0

    .line 406
    :try_start_10
    const-string v1, "dencryption error. "

    invoke-static {v1, v0}, LGr/b;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    if-eqz v8, :cond_4a

    .line 407
    invoke-static {v8}, Lcom/xiaomi/push/service/w0;->b([B)Lou/m3;

    move-result-object v0

    .line 408
    invoke-static {p0, v0, v8}, Lcom/xiaomi/push/service/g;->i(Landroid/content/Context;Lou/m3;[B)Lcom/xiaomi/push/service/g$c;

    goto/16 :goto_1d

    .line 409
    :cond_4a
    const-string p0, "notify fcm notification error \uff1adencrypt failed"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_1d

    :catchall_7
    move-exception v0

    move-object p0, v0

    .line 410
    const-string v0, "notify fcm notification error "

    invoke-static {v0, p0}, LGr/b;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 411
    :cond_4b
    const-string v1, "com.xiaomi.push.APP_NOTIFY_MSG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 412
    const-string p0, "ext_downward_pkt_id"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 413
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 414
    sget-object v1, Lcom/xiaomi/push/service/M$b;->a:Lcom/xiaomi/push/service/M;

    .line 415
    const-string v4, "ext_app_receive_time"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 416
    iget-object v0, v1, Lcom/xiaomi/push/service/M;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 417
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/M$c;

    if-eqz v0, :cond_61

    .line 418
    iput-wide v2, v0, Lcom/xiaomi/push/service/M$c;->d:J

    .line 419
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/M;->a(Ljava/lang/String;Lcom/xiaomi/push/service/M$c;)V

    return-void

    .line 420
    :cond_4c
    const-string v1, "com.xiaomi.push.SDK_START_ACTIVITY_EVENT_MSG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 421
    const-string p0, "mipush_app_package"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 422
    const-string p0, "mipush_payload"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 423
    const-string p0, "handle send msg wrong"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 424
    :cond_4d
    const-string v1, "com.xiaomi.push.TRIGGER_PING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 425
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$B;

    invoke-direct {v0, p0, v9}, Lcom/xiaomi/push/service/XMPushService$B;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 426
    :cond_4e
    const-string p0, "com.xiaomi.push.SDK_LBS_PUSH_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 427
    const-string p0, "mipush_app_package"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 428
    const-string p0, "mipush_payload"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 429
    const-string p0, "listener|pkg|payload is null when handling LBS Push event"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_4f
    :goto_18
    const-string v1, "mipush_app_package"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string v1, "mipush_payload"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 432
    const-string v1, "mipush_app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 433
    const-string v1, "mipush_app_token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 435
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/service/s0;->c(Ljava/lang/String;)V

    .line 436
    :cond_50
    const-string v1, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 437
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/service/s0;->d(Ljava/lang/String;)V

    .line 438
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/push/service/s0;->e(Ljava/lang/String;)V

    :cond_51
    if-nez v6, :cond_52

    const v0, 0x42c1d83

    .line 439
    const-string v1, "null payload"

    invoke-static {p0, v3, v6, v0, v1}, Lcom/xiaomi/push/service/v0;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    return-void

    .line 440
    :cond_52
    sget-object v1, Lcom/xiaomi/push/service/G$a;->a:Lcom/xiaomi/push/service/G$a;

    invoke-static {v3, v6, v1}, Lcom/xiaomi/push/service/v0;->d(Ljava/lang/String;[BLcom/xiaomi/push/service/G$a;)V

    .line 441
    new-instance v1, Lcom/xiaomi/push/service/t0;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/t0;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object v2, v1

    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 442
    const-string v2, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 443
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    if-nez v0, :cond_53

    .line 444
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$s;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$s;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    .line 445
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    .line 447
    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 448
    :cond_53
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    if-nez v0, :cond_61

    .line 449
    invoke-static {p0}, Lou/u;->d(Landroid/content/Context;)Lou/s;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    return-void

    .line 450
    :cond_54
    :goto_19
    const-string v2, "mipush_app_package"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    const-string v3, "mipush_payload"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 452
    const-string v4, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 453
    const-string v6, "mipush_message_cache_collection"

    sget-object v7, Lcom/xiaomi/push/service/G$a;->a:Lcom/xiaomi/push/service/G$a;

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 454
    invoke-static {v2, v3}, Lcom/xiaomi/push/service/h0;->b(Ljava/lang/String;[B)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 455
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "duplicate msg from: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 456
    :cond_55
    const-string v8, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 457
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/s0;->b(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 459
    const-string v0, "pepa clearMessage is null"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 460
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 461
    const-string v0, "pkg or listener is null when handle app unregister"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1a

    .line 462
    :cond_56
    const-string v8, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 463
    const-string v0, "handle send msg wrong"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    :cond_57
    :goto_1a
    if-ne v6, v5, :cond_58

    .line 464
    sget-object v7, Lcom/xiaomi/push/service/G$a;->b:Lcom/xiaomi/push/service/G$a;

    .line 465
    :cond_58
    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZLcom/xiaomi/push/service/G$a;)V

    return-void

    .line 466
    :cond_59
    :goto_1b
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 467
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-nez v0, :cond_61

    .line 468
    const-string v0, "exit falldown mode, activate alarm."

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()V

    .line 470
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_61

    .line 471
    invoke-virtual {p0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void

    .line 472
    :cond_5a
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 473
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result p0

    if-eqz p0, :cond_61

    .line 474
    invoke-static {}, Lou/M1;->d()Z

    move-result p0

    if-eqz p0, :cond_61

    .line 475
    const-string p0, "enter falldown mode, stop alarm."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lou/M1;->b()V

    return-void

    .line 477
    :cond_5b
    :goto_1c
    const-string v2, "ext_chid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 478
    const-string v3, "ext_security"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 480
    const-string p0, "security is empty. ignore."

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 481
    :cond_5c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 482
    invoke-direct {p0, v2, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    .line 483
    invoke-direct {p0, v2, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/xiaomi/push/service/F$b;

    move-result-object v2

    .line 484
    invoke-static {p0}, Lou/u;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 485
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/f0;->b(Landroid/content/Context;Lcom/xiaomi/push/service/F$b;ZILjava/lang/String;)V

    return-void

    .line 486
    :cond_5d
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 487
    iget-object v0, v2, Lcom/xiaomi/push/service/F$b;->m:Lcom/xiaomi/push/service/F$c;

    sget-object v4, Lcom/xiaomi/push/service/F$c;->a:Lcom/xiaomi/push/service/F$c;

    if-ne v0, v4, :cond_5e

    .line 488
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$o;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    :cond_5e
    if-eqz v3, :cond_5f

    .line 489
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$C;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/push/service/XMPushService$C;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 490
    :cond_5f
    sget-object v3, Lcom/xiaomi/push/service/F$c;->b:Lcom/xiaomi/push/service/F$c;

    if-ne v0, v3, :cond_60

    .line 491
    const-string p0, "the client is binding. %1$s %2$s."

    iget-object v0, v2, Lcom/xiaomi/push/service/F$b;->h:Ljava/lang/String;

    iget-object v1, v2, Lcom/xiaomi/push/service/F$b;->b:Ljava/lang/String;

    .line 492
    invoke-static {v1}, Lcom/xiaomi/push/service/F$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 493
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 494
    :cond_60
    sget-object v3, Lcom/xiaomi/push/service/F$c;->c:Lcom/xiaomi/push/service/F$c;

    if-ne v0, v3, :cond_61

    .line 495
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/f0;->b(Landroid/content/Context;Lcom/xiaomi/push/service/F$b;ZILjava/lang/String;)V

    :cond_61
    :goto_1d
    return-void

    .line 496
    :cond_62
    invoke-virtual {p0, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void

    .line 497
    :cond_63
    const-string p0, "channel id is empty, do nothing!"

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Intent;J)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    .line 45
    const-string v0, "resolver.msg.xiaomi.net"

    const-string v1, "China"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    const-string p0, "cn.app.chat.xiaomi.net"

    invoke-static {p0, p0}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_0
    const-string v1, "MTExLjEzLjE0MS4yMTE6NDQz"

    .line 48
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 49
    invoke-static {p0, v2}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "MzkuMTU2LjgxLjE3Mjo0NDM="

    .line 51
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 52
    invoke-static {p0, v2}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "MTExLjIwMi4xLjI1MDo0NDM="

    .line 54
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 55
    invoke-static {p0, v2}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "MTIzLjEyNS4xMDIuMjEzOjQ0Mw=="

    .line 57
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 58
    invoke-static {p0, v2}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string p0, "MTExLjEzLjE0Mi4xNTM6NDQz"

    .line 60
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 61
    invoke-static {v0, v1}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p0, "MTExLjIwMi4xLjI1Mjo0NDM="

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lou/G;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 64
    invoke-static {v0, v1}, Lou/a0;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "add host fail, error message:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 8

    .line 595
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    .line 596
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/F;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/xiaomi/push/service/F$b;

    if-eqz v4, :cond_0

    .line 598
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$F;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/push/service/XMPushService$F;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    goto :goto_1

    :cond_0
    move-object v3, p0

    move v5, p2

    :goto_1
    move-object p0, v3

    move p2, v5

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/F;->i(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x64

    :goto_0
    if-lez v0, :cond_1

    .line 2
    invoke-static {p1}, Lou/u;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "network connectivity ok. count="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x64

    .line 4
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    .line 5
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "can\'t do this on ui thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Context;)Z
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/XMPushService;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6

    .line 553
    const-string p0, "ext_user_id"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 555
    const-string v1, "ext_session"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "ext_security"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 557
    iget-object v2, p0, Lcom/xiaomi/push/service/F$b;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/push/service/F$b;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "session changed. old session="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/F$b;->j:Ljava/lang/String;

    const-string v4, ", new session="

    const-string v5, " chid = "

    .line 559
    invoke-static {v0, v2, v4, v1, v5}, LO/f;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    move v0, v3

    .line 561
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 562
    const-string p0, "security changed. chid = "

    const-string v0, " sechash = "

    .line 563
    invoke-static {p0, p1, v0}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 564
    invoke-static {p2}, LDf/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return v3

    :cond_1
    return v0
.end method

.method private a()[I
    .locals 5

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object p0

    .line 18
    const-string v0, ""

    .line 19
    iget-object v1, p0, Lcom/xiaomi/push/service/w;->a:Landroid/content/SharedPreferences;

    .line 20
    iget-object p0, p0, Lcom/xiaomi/push/service/w;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/16 v3, 0x61

    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/push/service/w;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 24
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "97 oc string error "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {p0, v1}, LO/f;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 27
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 28
    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 29
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 30
    new-array v0, v1, [I

    const/4 v1, 0x0

    .line 31
    :try_start_1
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x1

    .line 32
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, v0, v3

    .line 33
    aget v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ltz v1, :cond_2

    const/16 v3, 0x17

    if-gt v1, v3, :cond_2

    if-ltz p0, :cond_2

    if-gt p0, v3, :cond_2

    if-eq v1, p0, :cond_2

    return-object v0

    :catch_1
    move-exception p0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse falldown time range failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method private b()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 5
    invoke-static {p0}, Lcom/xiaomi/push/service/J;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/J;

    move-result-object v3

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/push/service/J;->a()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 8
    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Ljava/lang/String;

    move-result-object v5

    .line 10
    :cond_2
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x1e

    if-ge v4, v6, :cond_3

    const-wide/16 v6, 0x3e8

    .line 11
    :try_start_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x7530

    .line 12
    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 13
    :goto_2
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    const-string p0, "CN"

    .line 15
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wait coutrycode :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cost = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "can\'t do this on ui thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 10

    .line 27
    const-string v0, "ext_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "ext_session"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    const-string v2, "ext_packet"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 31
    new-instance p1, Lou/x2;

    invoke-direct {p1, v2}, Lou/x2;-><init>(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lou/z2;Ljava/lang/String;Ljava/lang/String;)Lou/z2;

    move-result-object p1

    check-cast p1, Lou/x2;

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    iget-object v0, p1, Lou/z2;->d:Ljava/lang/String;

    .line 34
    iget-object v1, p1, Lou/z2;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lou/c2;->c(Lou/z2;Ljava/lang/String;)Lou/c2;

    move-result-object p1

    goto/16 :goto_1

    .line 37
    :cond_1
    const-string v0, "ext_raw_packet"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 38
    :try_start_0
    const-string v2, "ext_user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v4, 0x0

    .line 39
    :goto_0
    const-string v2, "ext_user_server"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v6, "ext_user_res"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 41
    const-string v7, "ext_chid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 43
    new-instance v8, Lou/c2;

    invoke-direct {v8}, Lou/c2;-><init>()V

    .line 44
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lou/c2;->d(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :catch_1
    const-string v9, "SECMSG"

    invoke-virtual {v8, v9, v1}, Lou/c2;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "xiaomi.com"

    :cond_2
    invoke-virtual {v8, v4, v5, v2, v6}, Lou/c2;->e(JLjava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "ext_pkt_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lou/c2;->f(Ljava/lang/String;)V

    .line 48
    iget-object v2, v3, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lou/c2;->h([BLjava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "send a message: chid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", packetId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    move-object p1, v8

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 52
    new-instance v0, Lcom/xiaomi/push/service/O;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/O;-><init>(Lcom/xiaomi/push/service/XMPushService;Lou/c2;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    .line 21
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lou/u;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$B;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/service/XMPushService$B;-><init>(Lcom/xiaomi/push/service/XMPushService;Z)V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 25
    :cond_1
    new-instance p1, Lcom/xiaomi/push/service/XMPushService$t;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/push/service/XMPushService$t;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 12

    .line 17
    invoke-static {}, Lou/a0;->f()Lou/a0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "Old host fallbacks file "

    const-string v1, "Delete old host fallbacks file "

    .line 19
    sget-object v2, Lou/a0;->k:Ljava/lang/String;

    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Lou/a0;->k:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lou/a0;->k:Ljava/lang/String;

    const-string v5, ":pushservice"

    .line 22
    invoke-static {v2, v4, v5}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lou/a0;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, " successful."

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, " failed."

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 28
    :goto_2
    const-string v4, " error: "

    .line 29
    invoke-static {v1, v2, v4}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-static {v0, v1}, LO/f;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 31
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/k0;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    .line 32
    iput-object v1, v0, Lcom/xiaomi/push/service/k0;->c:Lou/k2;

    .line 33
    const-string v0, "persist.sys.mipush.utag"

    const-string v1, ""

    invoke-static {v0, v1}, LPq/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/r0;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, v0, Lcom/xiaomi/push/service/q0;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/push/service/q0;->b(Ljava/lang/String;)V

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/a0;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a0;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/xiaomi/push/service/a0;->b()Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "region of cache is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XMPushService"

    invoke-static {v5, v4}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 41
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lou/Q3;->e(Ljava/lang/String;)Lou/U3;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    goto :goto_4

    :cond_4
    move-object v4, v1

    .line 43
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "mipush_country_code"

    const-string v8, "mipush_region"

    const-string v9, "CN"

    const-string v10, "China"

    if-nez v6, :cond_7

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 44
    iget-object v1, v0, Lcom/xiaomi/push/service/a0;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 45
    iput-object v2, v0, Lcom/xiaomi/push/service/a0;->c:Ljava/lang/String;

    .line 46
    :cond_5
    iget-object v1, v0, Lcom/xiaomi/push/service/a0;->e:Landroid/content/Context;

    iget-object v4, v0, Lcom/xiaomi/push/service/a0;->a:Ljava/lang/Object;

    invoke-static {v1, v4, v2, v8}, Lcom/xiaomi/push/service/a0;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, v0, Lcom/xiaomi/push/service/a0;->d:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    iput-object v9, v0, Lcom/xiaomi/push/service/a0;->d:Ljava/lang/String;

    .line 49
    :cond_6
    iget-object v1, v0, Lcom/xiaomi/push/service/a0;->e:Landroid/content/Context;

    iget-object v0, v0, Lcom/xiaomi/push/service/a0;->a:Ljava/lang/Object;

    invoke-static {v1, v0, v9, v7}, Lcom/xiaomi/push/service/a0;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v4, v9

    goto :goto_7

    .line 50
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v9, v1

    goto :goto_6

    :cond_8
    move-object v1, v10

    .line 52
    :goto_6
    iget-object v2, v0, Lcom/xiaomi/push/service/a0;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 53
    iput-object v1, v0, Lcom/xiaomi/push/service/a0;->c:Ljava/lang/String;

    .line 54
    :cond_9
    iget-object v2, v0, Lcom/xiaomi/push/service/a0;->e:Landroid/content/Context;

    iget-object v4, v0, Lcom/xiaomi/push/service/a0;->a:Ljava/lang/Object;

    invoke-static {v2, v4, v1, v8}, Lcom/xiaomi/push/service/a0;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v2, v0, Lcom/xiaomi/push/service/a0;->d:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 56
    iput-object v9, v0, Lcom/xiaomi/push/service/a0;->d:Ljava/lang/String;

    .line 57
    :cond_a
    iget-object v2, v0, Lcom/xiaomi/push/service/a0;->e:Landroid/content/Context;

    iget-object v0, v0, Lcom/xiaomi/push/service/a0;->a:Ljava/lang/Object;

    invoke-static {v2, v0, v9, v7}, Lcom/xiaomi/push/service/a0;->d(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_5

    :cond_b
    move-object v2, v10

    .line 58
    :goto_7
    const-string v0, "after check, appRegion is "

    const-string v1, ", countryCode="

    filled-new-array {v0, v2, v1, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, LGr/b;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    sget-object v0, Lou/l2;->e:Ljava/lang/String;

    .line 61
    sget v0, Lou/a4;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    goto :goto_8

    .line 62
    :cond_c
    const-string v0, "cn.app.chat.xiaomi.net"

    sput-object v0, Lou/l2;->f:Ljava/lang/String;

    .line 63
    :cond_d
    :goto_8
    invoke-static {v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    const-string v0, "-->postOnCreate(): try trigger connect now"

    invoke-static {v5, v0}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$c;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$c;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 68
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$d;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/XMPushService$c;)V

    .line 69
    sput-object v1, Lcom/xiaomi/push/service/r0;->e:Lcom/xiaomi/push/service/XMPushService$d;

    .line 70
    :cond_e
    :try_start_1
    const-string v0, "sys.boot_completed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    invoke-static {v1, v2, v0}, Lou/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/f0;->c(Lcom/xiaomi/push/service/XMPushService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 73
    invoke-static {v0}, LGr/b;->i(Ljava/lang/Throwable;)V

    .line 74
    :cond_f
    :goto_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x2

    .line 76
    invoke-static {p0, v0}, Lou/y2;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_10

    .line 77
    :try_start_2
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    const-string v2, "getService"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lou/E;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 79
    const-string v2, "setNotificationsEnabledForPackage"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v3, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lou/E;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set notifications enabled error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 81
    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object v0

    .line 82
    const-string v1, "oc_report_start_time"

    .line 83
    iget-object v2, v0, Lcom/xiaomi/push/service/w;->c:Landroid/content/SharedPreferences;

    .line 84
    iget-object v0, v0, Lcom/xiaomi/push/service/w;->d:Landroid/content/Context;

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v3

    const-string v4, "OnlineConfig"

    if-nez v3, :cond_11

    .line 85
    const-string v0, "not xmsf package, not schedule report"

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LGr/b;->j([Ljava/lang/Object;)V

    goto :goto_e

    .line 86
    :cond_11
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 87
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    .line 89
    :cond_12
    :goto_b
    const-string v1, "oc_last_schedule_report_time"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    const-wide/16 v1, 0x3e8

    .line 90
    div-long/2addr v5, v1

    cmp-long v1, v5, v7

    if-lez v1, :cond_13

    const-wide/32 v1, 0x13c680

    cmp-long v3, v5, v1

    if-gez v3, :cond_13

    sub-long/2addr v1, v5

    long-to-int v1, v1

    goto :goto_c

    :cond_13
    const/16 v1, 0xa

    .line 91
    :goto_c
    invoke-static {v0}, Lou/e;->b(Landroid/content/Context;)Lou/e;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/push/service/u;

    invoke-direct {v3, v0}, Lcom/xiaomi/push/service/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Lou/e;->f(Lou/e$b;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    .line 92
    :goto_d
    const-string v1, "init oc report error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LGr/b;->p([Ljava/lang/Object;)V

    .line 93
    :goto_e
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->d()V

    .line 94
    const-string p0, "listener is null when init BarPullDown"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8

    .line 106
    const-string v0, "ext_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string v1, "ext_session"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    const-string v2, "ext_packets"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 109
    array-length v3, v2

    new-array v4, v3, [Lou/x2;

    .line 110
    const-string v5, "ext_encrypt"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const/4 p1, 0x0

    move v5, p1

    .line 111
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 112
    new-instance v6, Lou/x2;

    aget-object v7, v2, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-direct {v6, v7}, Lou/x2;-><init>(Landroid/os/Bundle;)V

    aput-object v6, v4, v5

    .line 113
    invoke-direct {p0, v6, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lou/z2;Ljava/lang/String;Ljava/lang/String;)Lou/z2;

    move-result-object v6

    check-cast v6, Lou/x2;

    aput-object v6, v4, v5

    if-nez v6, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    .line 115
    new-array v1, v3, [Lou/c2;

    :goto_1
    if-ge p1, v3, :cond_2

    .line 116
    aget-object v2, v4, p1

    .line 117
    iget-object v5, v2, Lou/z2;->d:Ljava/lang/String;

    .line 118
    iget-object v6, v2, Lou/z2;->c:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v5, v6}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v5

    .line 120
    iget-object v5, v5, Lcom/xiaomi/push/service/F$b;->i:Ljava/lang/String;

    invoke-static {v2, v5}, Lou/c2;->c(Lou/z2;Ljava/lang/String;)Lou/c2;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 121
    :cond_2
    new-instance p1, Lcom/xiaomi/push/service/b0;

    const/4 v0, 0x4

    .line 122
    invoke-direct {p1, v0}, Lcom/xiaomi/push/service/XMPushService$w;-><init>(I)V

    .line 123
    iput-object p0, p1, Lcom/xiaomi/push/service/b0;->b:Lcom/xiaomi/push/service/XMPushService;

    .line 124
    iput-object v1, p1, Lcom/xiaomi/push/service/b0;->c:[Lou/c2;

    .line 125
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void
.end method

.method private c(Lcom/xiaomi/push/service/XMPushService$w;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    sget-boolean p0, LGr/b;->a:Z

    .line 128
    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService$w;->run()V

    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "sys.boot_completed"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    invoke-static {v1, v2, v0}, Lou/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_CONNECTED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    const/4 p1, 0x0

    new-array v0, p1, [Lcom/xiaomi/push/service/k;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/xiaomi/push/service/k;

    .line 8
    array-length v0, p0

    :goto_0
    if-ge p1, v0, :cond_2

    aget-object v1, p0, p1

    .line 9
    invoke-interface {v1}, Lcom/xiaomi/push/service/k;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORK_BLOCKED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, LGr/b;->i(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/xiaomi/push/service/XMPushService;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    return p0
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lou/e;->b(Landroid/content/Context;)Lou/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/service/A;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/A;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const/4 p0, 0x0

    const/16 v2, 0xe10

    .line 3
    invoke-virtual {v0, v1, v2, p0}, Lou/e;->e(Lou/e$b;II)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    const-string p0, "PAT-Track"

    const-string v0, "Failed to add passthrough repeat job"

    invoke-static {p0, v0}, LGr/b;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 7

    .line 1
    invoke-static {}, Lou/u;->f()Lou/v;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/k0;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/k0;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/m0;

    move-result-object v1

    .line 4
    invoke-interface {v1, v0}, Lcom/xiaomi/push/service/m0;->b(Lou/v;)V

    .line 5
    sget-object v1, Lcom/xiaomi/push/c$a;->a:Lcom/xiaomi/push/c;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/xiaomi/push/c;->b(Lou/v;)V

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v2, "getTypeName"

    invoke-virtual {v0, v2}, Lou/v;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lou/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], state: "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "getState"

    invoke-virtual {v0, v2}, Lou/v;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo$State;

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "getDetailedState"

    invoke-virtual {v0, v2}, Lou/v;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo$DetailedState;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "XMPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network changed,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "getState"

    invoke-virtual {v0, v1}, Lou/v;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    .line 20
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    :cond_0
    return-void

    .line 21
    :cond_1
    const-string v0, "XMPushService"

    const-string v1, "network changed, no active network"

    invoke-static {v0, v1}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object v0

    invoke-virtual {v0}, Lou/X1;->a()V

    .line 24
    :cond_3
    sget-object v0, Lou/N2;->a:Lou/h;

    .line 25
    invoke-static {}, Lou/u;->f()Lou/v;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v0}, Lou/v;->a()I

    move-result v0

    .line 27
    :goto_0
    sput v0, Lou/N2;->b:I

    .line 28
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    .line 29
    iget-object v1, v0, Lou/k2;->c:Ljava/util/LinkedList;

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v0, v0, Lou/k2;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lou/u;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 35
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 36
    invoke-direct {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    .line 37
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-le v0, v3, :cond_8

    .line 38
    sget-object v0, Lou/X3;->a:Landroid/content/Context;

    .line 39
    invoke-static {v0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object v0

    const/16 v3, 0x95

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/push/service/w;->n(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    invoke-static {}, Lou/u;->o()Z

    move-result v0

    .line 41
    invoke-static {}, Lou/u;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    .line 42
    iget-object v4, v4, Lou/k2;->l:Lou/l2;

    .line 43
    iget-object v4, v4, Lou/l2;->d:Ljava/lang/String;

    .line 44
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 45
    const-string v0, "under WIFI network, there is a non WIFI connection that needs to be reset"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    .line 47
    iget-object v0, v0, Lou/k2;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    const-string v0, "do resetting connection "

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$D;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$D;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    goto :goto_1

    .line 51
    :cond_6
    const-string v0, "connection has been reset or the current connection cannot be reset"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_7
    const-string v0, "no need to reset connection for network change"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 53
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/n0;->b(I)V

    .line 55
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$r;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$r;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 56
    :cond_9
    invoke-static {p0}, Lou/F0;->a(Landroid/content/Context;)Lou/F0;

    move-result-object v0

    .line 57
    :cond_a
    :goto_2
    iget-object v1, v0, Lou/F0;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lou/F0$c;

    if-eqz v2, :cond_a

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lou/F0$c;->a:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xa4cb800

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    goto :goto_3

    .line 61
    :cond_b
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_c

    .line 62
    :goto_3
    const-string v3, "remove Expired task"

    invoke-static {v3}, LGr/b;->q(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    const-wide/16 v1, 0x0

    .line 64
    invoke-virtual {v0, v1, v2}, Lou/F0;->b(J)V

    goto :goto_4

    .line 65
    :cond_d
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$t;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/service/XMPushService$t;-><init>(Lcom/xiaomi/push/service/XMPushService;I)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 66
    :goto_4
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->f()V

    return-void

    :catchall_0
    move-exception p0

    .line 67
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/xiaomi/push/service/XMPushService;->b:Z

    return v0
.end method

.method private f()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Lou/M1;->d()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 5
    invoke-static {p0}, Lou/M1;->c(Z)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {}, Lou/M1;->b()V

    return-void
.end method

.method private f()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lou/u;->n()Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz v0, :cond_0

    .line 4
    iget v1, v0, Lou/k2;->j:I

    if-nez v1, :cond_0

    .line 5
    const-string p0, "try to connect while connecting."

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    iget v0, v0, Lou/k2;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7
    const-string p0, "try to connect while is connected."

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/l2;

    invoke-static {}, Lou/u;->a()Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lou/l2;->d:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()V

    .line 11
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-nez v0, :cond_4

    .line 12
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, v1, Lcom/xiaomi/push/service/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/xiaomi/push/service/F$b;

    .line 16
    sget-object v5, Lcom/xiaomi/push/service/F$c;->a:Lcom/xiaomi/push/service/F$c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-virtual/range {v4 .. v9}, Lcom/xiaomi/push/service/F$b;->e(Lcom/xiaomi/push/service/F$c;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit v1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    return-void

    .line 19
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method private g()Z
    .locals 2

    .line 1
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "power_supersave_mode_open"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method private h()V
    .locals 3

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/n2;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$i;

    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {v0, v1, v2}, Lou/k2;->f(Lou/n2;Lou/u2;)V

    .line 16
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    .line 17
    monitor-enter v0
    :try_end_0
    .catch Lou/s2; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    iget v1, v0, Lou/k2;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 19
    :goto_0
    const-string v1, "WARNING: current xmpp has connected"

    invoke-static {v1}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catch Lou/s2; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    :try_start_3
    invoke-virtual {v0, v2, v2, v1}, Lou/k2;->b(IILjava/lang/Exception;)V

    .line 22
    iget-object v1, v0, Lou/k2;->l:Lou/l2;

    invoke-virtual {v0, v1}, Lou/p2;->m(Lou/l2;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    monitor-exit v0

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;
    :try_end_4
    .catch Lou/s2; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    .line 25
    :goto_2
    :try_start_5
    new-instance v2, Lou/s2;

    invoke-direct {v2, v1}, Lou/s2;-><init>(Ljava/lang/Exception;)V

    throw v2

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Lou/s2; {:try_start_6 .. :try_end_6} :catch_1

    .line 26
    :goto_4
    const-string v1, "fail to create Slim connection"

    invoke-static {v1, v0}, LGr/b;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lou/p2;->i(ILjava/lang/Exception;)V

    return-void
.end method

.method private h()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "current sdk expect region is cn"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 4
    const-string v0, "China"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/a0;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/a0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/s0;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/s0;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/xiaomi/push/service/s0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    if-nez v6, :cond_1

    .line 9
    const-string v7, "XMPushService"

    const-string v0, "-->isPushEnabled(): isEnabled="

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, ", package="

    const-string v4, ", region="

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/push/service/a0;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/a0;->b()Ljava/lang/String;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {v7, p0}, LGr/b;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private i()V
    .locals 0

    .line 1
    return-void
.end method

.method private i()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lou/y3;->g(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lou/y3;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    :goto_0
    sget-object v0, Lcom/xiaomi/push/c$a;->a:Lcom/xiaomi/push/c;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update fall down state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwKaMgr"

    invoke-static {v1, v0}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lou/x1$a;->a:Lou/x1;

    .line 8
    iget-object v1, v0, Lou/x1;->c:Landroid/os/Handler;

    if-nez v1, :cond_1

    return p0

    .line 9
    :cond_1
    iget-object v1, v0, Lou/x1;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v1, v0, Lou/x1;->c:Landroid/os/Handler;

    new-instance v2, Lou/v1;

    invoke-direct {v2, v0, p0}, Lou/v1;-><init>(Lou/x1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return p0
.end method

.method private j()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private j()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    const-string v1, "%tH"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    iget p0, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    const/4 v2, 0x1

    if-le v1, p0, :cond_1

    if-ge v0, v1, :cond_0

    if-ge v0, p0, :cond_2

    :cond_0
    return v2

    :cond_1
    if-ge v1, p0, :cond_2

    if-lt v0, v1, :cond_2

    if-ge v0, p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private k()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/push/service/w;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/w;->n(IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/xiaomi/push/service/f0;
    .locals 0

    .line 692
    new-instance p0, Lcom/xiaomi/push/service/f0;

    invoke-direct {p0}, Lcom/xiaomi/push/service/f0;-><init>()V

    return-object p0
.end method

.method public a()Lou/k2;
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    return-object p0
.end method

.method public a()V
    .locals 4

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v0, v2

    .line 78
    sget v2, Lou/o2;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lou/u;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 694
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/n0;->b(I)V

    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 3

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 661
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0, p1, p2}, Lou/k2;->i(ILjava/lang/Exception;)V

    .line 665
    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    :cond_1
    const/4 p2, 0x7

    .line 666
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 p2, 0x4

    .line 667
    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    .line 668
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/F;->g(I)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/F$b;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget v2, p1, Lcom/xiaomi/push/service/F$b;->n:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "schedule rebind job in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v2, v0, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LGr/b;->e(Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$o;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$A;)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$w;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 600
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;J)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/XMPushService$w;J)V
    .locals 0

    .line 601
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/push/service/n0;->c(Lcom/xiaomi/push/service/XMPushService$w;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "can\'t execute job err = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 591
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    .line 592
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/service/F;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/F$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 593
    new-instance v1, Lcom/xiaomi/push/service/XMPushService$F;

    move-object v2, p0

    move v4, p3

    move-object v6, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/XMPushService$F;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 594
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/push/service/F;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[BZ)V
    .locals 1

    .line 502
    sget-object v0, Lcom/xiaomi/push/service/G$a;->a:Lcom/xiaomi/push/service/G$a;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZLcom/xiaomi/push/service/G$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;[BZLcom/xiaomi/push/service/G$a;)V
    .locals 2

    .line 503
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/F;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    .line 505
    invoke-static {p1, p2, p4}, Lcom/xiaomi/push/service/v0;->d(Ljava/lang/String;[BLcom/xiaomi/push/service/G$a;)V

    return-void

    .line 506
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/F$b;

    .line 507
    iget-object v0, v0, Lcom/xiaomi/push/service/F$b;->m:Lcom/xiaomi/push/service/F$c;

    sget-object v1, Lcom/xiaomi/push/service/F$c;->c:Lcom/xiaomi/push/service/F$c;

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 508
    invoke-static {p1, p2, p4}, Lcom/xiaomi/push/service/v0;->d(Ljava/lang/String;[BLcom/xiaomi/push/service/G$a;)V

    :cond_1
    return-void

    .line 509
    :cond_2
    new-instance p3, Lcom/xiaomi/push/service/XMPushService$g;

    invoke-direct {p3, p0, p1, p2}, Lcom/xiaomi/push/service/XMPushService$g;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void
.end method

.method public a(Lou/c2;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz p0, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lou/k2;->j(Lou/c2;)V

    return-void

    .line 607
    :cond_0
    new-instance p0, Lou/s2;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lou/s2;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lou/k2;)V
    .locals 0

    .line 704
    const-string p0, "begin to connect..."

    invoke-static {p0}, LGr/b;->q(Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lou/X1;->a(Lou/k2;)V

    return-void
.end method

.method public a(Lou/k2;ILjava/lang/Exception;)V
    .locals 4

    .line 706
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lou/X1;->a(Lou/k2;ILjava/lang/Exception;)V

    .line 707
    sget-object p1, Lcom/xiaomi/push/c$a;->a:Lcom/xiaomi/push/c;

    .line 708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[socket] socket is closed.reason:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HwKaMgr"

    invoke-static {v0, p1}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    sget-object p1, Lou/x1$a;->a:Lou/x1;

    .line 711
    invoke-static {}, Lou/u;->j()Z

    move-result v0

    .line 712
    iget-object v1, p1, Lou/x1;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p1, Lou/x1;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 714
    iget-object v1, p1, Lou/x1;->c:Landroid/os/Handler;

    new-instance v3, Lou/o1;

    invoke-direct {v3, p1, p2, p3, v0}, Lou/o1;-><init>(Lou/x1;ILjava/lang/Exception;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result p1

    if-nez p1, :cond_1

    .line 716
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_1
    return-void
.end method

.method public a(Lou/k2;Ljava/lang/Exception;)V
    .locals 1

    .line 717
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lou/X1;->a(Lou/k2;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 718
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    .line 719
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result p2

    if-nez p2, :cond_0

    .line 720
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 611
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/L;

    .line 612
    iget-object v0, p0, Lcom/xiaomi/push/service/L;->b:Lcom/xiaomi/push/service/XMPushService;

    .line 613
    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 614
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 615
    iget p1, p0, Lcom/xiaomi/push/service/L;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/push/service/L;->e:I

    .line 616
    :cond_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    .line 617
    const-string p0, "ReconnectionManager"

    const-string p1, "-->tryReconnect(): exec ConnectJob"

    invoke-static {p0, p1}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance p0, Lcom/xiaomi/push/service/XMPushService$r;

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$r;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    return-void

    .line 619
    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_4

    .line 620
    :cond_2
    iget p1, p0, Lcom/xiaomi/push/service/L;->e:I

    const/16 v2, 0x8

    const v3, 0x493e0

    if-le p1, v2, :cond_3

    goto :goto_3

    .line 621
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    .line 622
    iget p1, p0, Lcom/xiaomi/push/service/L;->e:I

    const/4 v2, 0x4

    if-le p1, v2, :cond_4

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    :goto_0
    mul-double/2addr v4, v2

    double-to-int v3, v4

    goto :goto_3

    :cond_4
    if-le p1, v1, :cond_5

    const-wide v2, 0x40c3880000000000L    # 10000.0

    goto :goto_0

    .line 623
    :cond_5
    iget-wide v4, p0, Lcom/xiaomi/push/service/L;->d:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v4, 0x0

    if-nez p1, :cond_6

    :goto_1
    move v3, v4

    goto :goto_3

    .line 624
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 625
    iget-wide v7, p0, Lcom/xiaomi/push/service/L;->d:J

    sub-long/2addr v5, v7

    .line 626
    iget-wide v7, p0, Lcom/xiaomi/push/service/L;->a:J

    cmp-long p1, v5, v7

    if-gez p1, :cond_9

    .line 627
    iget p1, p0, Lcom/xiaomi/push/service/L;->c:I

    if-lt p1, v3, :cond_7

    :goto_2
    move v3, p1

    goto :goto_3

    .line 628
    :cond_7
    iget v4, p0, Lcom/xiaomi/push/service/L;->f:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/xiaomi/push/service/L;->f:I

    if-lt v4, v2, :cond_8

    goto :goto_3

    :cond_8
    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 629
    iput v2, p0, Lcom/xiaomi/push/service/L;->c:I

    goto :goto_2

    :cond_9
    const/16 p1, 0x3e8

    .line 630
    iput p1, p0, Lcom/xiaomi/push/service/L;->c:I

    .line 631
    iput v4, p0, Lcom/xiaomi/push/service/L;->f:I

    goto :goto_1

    .line 632
    :goto_3
    iget p1, p0, Lcom/xiaomi/push/service/L;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaomi/push/service/L;->e:I

    .line 633
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "schedule reconnect in "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    .line 634
    new-instance p1, Lcom/xiaomi/push/service/XMPushService$r;

    invoke-direct {p1, v0}, Lcom/xiaomi/push/service/XMPushService$r;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    int-to-long v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;J)V

    .line 635
    iget p1, p0, Lcom/xiaomi/push/service/L;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 636
    sget-object p1, Lou/Z1$a;->a:Lou/Z1;

    .line 637
    iget-boolean p1, p1, Lou/Z1;->b:Z

    if-eqz p1, :cond_b

    .line 638
    const-string p1, "/proc/self/net/tcp"

    invoke-static {p1}, Lcom/xiaomi/push/service/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 639
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dump tcp for uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 641
    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    .line 642
    :cond_a
    const-string p1, "/proc/self/net/tcp6"

    invoke-static {p1}, Lcom/xiaomi/push/service/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dump tcp6 for uid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 645
    invoke-static {p1}, LGr/b;->e(Ljava/lang/String;)V

    .line 646
    :cond_b
    iget p0, p0, Lcom/xiaomi/push/service/L;->e:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    .line 647
    sget-object p0, Lcom/xiaomi/push/service/j;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 649
    sget-object v0, Lcom/xiaomi/push/service/j;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-lez v1, :cond_c

    sget-wide v1, Lcom/xiaomi/push/service/j;->a:J

    sub-long v1, p0, v1

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-gez v1, :cond_c

    goto :goto_4

    .line 650
    :cond_c
    sget-object v1, Lou/Z1$a;->a:Lou/Z1;

    .line 651
    iget-boolean v1, v1, Lou/Z1;->b:Z

    if-eqz v1, :cond_d

    .line 652
    sget-object v1, Lcom/xiaomi/push/service/Q;->e:Lcom/xiaomi/push/service/Q;

    .line 653
    invoke-virtual {v1}, Lcom/xiaomi/push/service/Q;->d()V

    .line 654
    iget-object v1, v1, Lcom/xiaomi/push/service/Q;->b:Lou/Q0;

    if-eqz v1, :cond_d

    .line 655
    iget-object v2, v1, Lou/Q0;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 656
    sput-wide p0, Lcom/xiaomi/push/service/j;->a:J

    .line 657
    iget-object p0, v1, Lou/Q0;->j:Ljava/util/List;

    .line 658
    new-instance p1, Lcom/xiaomi/push/service/i;

    invoke-direct {p1, p0}, Lcom/xiaomi/push/service/i;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    :goto_4
    return-void

    .line 659
    :cond_e
    const-string p0, "should not reconnect as no client or network."

    invoke-static {p0}, LGr/b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 510
    const-string v7, "app register error. "

    const v8, 0x42c1d83

    if-nez v5, :cond_0

    .line 511
    const-string v0, "null payload"

    invoke-static {v1, v6, v5, v8, v0}, Lcom/xiaomi/push/service/v0;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 512
    const-string v0, "register request without payload"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    .line 513
    :cond_0
    new-instance v9, Lou/m3;

    invoke-direct {v9}, Lou/m3;-><init>()V

    .line 514
    :try_start_0
    invoke-static {v9, v5}, Lou/A3;->b(Lou/B3;[B)V

    .line 515
    iget-object v0, v9, Lou/m3;->a:Lou/T2;

    sget-object v2, Lou/T2;->b:Lou/T2;

    if-ne v0, v2, :cond_1

    .line 516
    new-instance v10, Lou/q3;

    invoke-direct {v10}, Lou/q3;-><init>()V
    :try_end_0
    .catch Lou/E3; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    :try_start_1
    invoke-virtual {v9}, Lou/m3;->d()[B

    move-result-object v0

    .line 518
    invoke-static {v10, v0}, Lou/A3;->b(Lou/B3;[B)V

    .line 519
    new-instance v0, Lcom/xiaomi/push/service/t0;

    .line 520
    iget-object v2, v9, Lou/m3;->f:Ljava/lang/String;

    .line 521
    iget-object v3, v10, Lou/q3;->d:Ljava/lang/String;

    .line 522
    iget-object v4, v10, Lou/q3;->g:Ljava/lang/String;

    .line 523
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/service/t0;-><init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 524
    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    .line 525
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lou/i1;->a(Landroid/content/Context;)Lou/i1;

    move-result-object v11

    .line 526
    iget-object v12, v9, Lou/m3;->f:Ljava/lang/String;

    .line 527
    const-string v13, "E100003"

    .line 528
    iget-object v15, v10, Lou/q3;->c:Ljava/lang/String;

    const/16 v14, 0x1772

    const/16 v16, 0x0

    .line 529
    invoke-virtual/range {v11 .. v16}, Lou/i1;->f(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lou/E3; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 530
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->t(Ljava/lang/String;)V

    .line 531
    const-string v0, " data action error."

    invoke-static {v1, v6, v5, v8, v0}, Lcom/xiaomi/push/service/v0;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    .line 532
    :cond_1
    const-string v0, " registration action required."

    invoke-static {v1, v6, v5, v8, v0}, Lcom/xiaomi/push/service/v0;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    .line 533
    const-string v0, "register request with invalid payload"

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Lou/E3; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 534
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app register fail. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->t(Ljava/lang/String;)V

    .line 535
    const-string v0, " data container error."

    invoke-static {v1, v6, v5, v8, v0}, Lcom/xiaomi/push/service/v0;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a([Lou/c2;)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz p0, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Lou/k2;->h([Lou/c2;)V

    return-void

    .line 610
    :cond_0
    new-instance p0, Lou/s2;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lou/s2;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()Z
    .locals 8

    .line 669
    invoke-static {}, Lou/u;->h()Z

    move-result v0

    .line 670
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v1

    .line 671
    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v2, v1, Lcom/xiaomi/push/service/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 673
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v4

    xor-int/lit8 v5, v4, 0x1

    .line 674
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->h()Z

    move-result v6

    .line 675
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->g()Z

    move-result p0

    xor-int/lit8 v7, p0, 0x1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    if-eqz v6, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-nez v1, :cond_2

    .line 676
    const-string p0, "not conn, net="

    const-string v3, ";cnt="

    const-string v4, ";!dis="

    .line 677
    invoke-static {p0, v3, v0, v2, v4}, LF1/Q2;->g(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 678
    const-string v0, ";enb="

    const-string v2, ";!spm="

    .line 679
    invoke-static {p0, v5, v0, v6, v2}, LF1/u2;->c(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 680
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->u(Ljava/lang/String;)V

    :cond_2
    return v1

    :catchall_0
    move-exception p0

    .line 681
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(I)Z
    .locals 4

    .line 695
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    .line 696
    iget-object v0, p0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    .line 697
    monitor-enter v0

    .line 698
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    .line 699
    iget-object p0, p0, Lcom/xiaomi/push/service/n0$c;->f:Lcom/xiaomi/push/service/n0$c$a;

    const/4 v1, 0x0

    move v2, v1

    .line 700
    :goto_0
    iget v3, p0, Lcom/xiaomi/push/service/n0$c$a;->b:I

    if-ge v2, v3, :cond_1

    .line 701
    iget-object v3, p0, Lcom/xiaomi/push/service/n0$c$a;->a:[Lcom/xiaomi/push/service/n0$d;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/xiaomi/push/service/n0$d;->e:I

    if-ne v3, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_1
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 703
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b()Lcom/xiaomi/push/service/f0;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 85
    const-string v0, "-->onPong()"

    invoke-static {v0}, LGr/b;->u(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/k0;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/k0;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/m0;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/xiaomi/push/service/l0;->g()V

    .line 89
    sget-object v0, Lcom/xiaomi/push/service/c$a;->a:Lcom/xiaomi/push/service/c;

    .line 90
    invoke-virtual {v0, p0}, Lcom/xiaomi/push/service/c;->c(Lcom/xiaomi/push/service/XMPushService;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/XMPushService$A;

    .line 93
    invoke-interface {v0}, Lcom/xiaomi/push/service/XMPushService$A;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/xiaomi/push/service/XMPushService$A;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lcom/xiaomi/push/service/XMPushService$w;)V
    .locals 4

    .line 59
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    iget v0, p1, Lcom/xiaomi/push/service/n0$b;->a:I

    .line 60
    iget-object v0, p0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    .line 63
    iget-object p0, p0, Lcom/xiaomi/push/service/n0$c;->f:Lcom/xiaomi/push/service/n0$c$a;

    const/4 v1, 0x0

    .line 64
    :goto_0
    iget v2, p0, Lcom/xiaomi/push/service/n0$c$a;->b:I

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/xiaomi/push/service/n0$c$a;->a:[Lcom/xiaomi/push/service/n0$d;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/xiaomi/push/service/n0$d;->d:Lcom/xiaomi/push/service/XMPushService$w;

    if-ne v3, p1, :cond_0

    .line 66
    invoke-virtual {v2}, Lcom/xiaomi/push/service/n0$d;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/service/n0$c$a;->a()V

    .line 68
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public b(Lou/k2;)V
    .locals 3

    .line 69
    invoke-static {}, Lou/Z1;->c()Lou/X1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lou/X1;->b(Lou/k2;)V

    const/4 p1, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService;->c(Z)V

    .line 71
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/push/service/L;->d:J

    .line 73
    iget-object v1, v0, Lcom/xiaomi/push/service/L;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/XMPushService;->a(I)V

    const/4 v1, 0x0

    .line 74
    iput v1, v0, Lcom/xiaomi/push/service/L;->e:I

    .line 75
    invoke-static {}, Lou/M1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "reconnection successful, reactivate alarm."

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lou/M1;->c(Z)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/F;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/F$b;

    .line 80
    new-instance v2, Lcom/xiaomi/push/service/XMPushService$o;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/push/service/XMPushService$o;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/F$b;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iput-boolean p1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Z

    .line 84
    invoke-static {}, Lou/X3;->c()V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 4

    const/4 v0, 0x0

    .line 53
    :try_start_0
    const-string v1, "miui.os.Build"

    invoke-static {p0, v1}, Lou/X3;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 54
    const-string v1, "IS_CM_CUSTOMIZATION_TEST"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    const-string v2, "IS_CU_CUSTOMIZATION_TEST"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    const-string v3, "IS_CT_CUSTOMIZATION_TEST"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz p0, :cond_0

    .line 130
    iget p0, p0, Lou/k2;->j:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/k2;

    if-eqz p0, :cond_0

    .line 6
    iget p0, p0, Lou/k2;->j:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v2, LGr/b;->a:Z

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    sput-boolean v7, LGr/b;->a:Z

    :cond_0
    invoke-static {}, Lou/Q3;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v7, LGr/b;->b:Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lou/X3;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/push/service/r0;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/q0;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v0, v8, Lcom/xiaomi/push/service/q0;->g:I

    sput v0, Lou/a4;->a:I

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "hb-alarm"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$n;

    invoke-direct {v0}, Lcom/xiaomi/push/service/XMPushService$n;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$n;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.xiaomi.push.PING_TIMER"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$n;

    const-string v4, "com.xiaomi.xmsf.permission.MIPUSH_RECEIVE"

    const/4 v6, 0x4

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sput-boolean v7, Lcom/xiaomi/push/service/XMPushService;->b:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$j;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-class v2, Lcom/xiaomi/push/service/o;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$k;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$k;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/os/Messenger;

    new-instance v0, Lcom/xiaomi/push/service/H;

    invoke-direct {v0}, Lcom/xiaomi/push/service/Q$a;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/push/service/H;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object v2, Lcom/xiaomi/push/service/Q;->e:Lcom/xiaomi/push/service/Q;

    monitor-enter v2

    :try_start_2
    iget-object v3, v2, Lcom/xiaomi/push/service/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    monitor-exit v2

    const-class v3, Lou/a0;

    monitor-enter v3

    :try_start_3
    sget-object v4, Lou/a0;->g:Ljava/util/HashMap;

    const-class v4, Lou/a0;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    sput-object v0, Lou/a0;->j:Lcom/xiaomi/push/service/H;

    const/4 v0, 0x0

    sput-object v0, Lou/a0;->i:Lou/a0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    monitor-exit v4

    new-instance v4, Lcom/xiaomi/push/service/H$a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, v4}, Lou/a0;->g(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/H$a;)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    new-instance v3, Lcom/xiaomi/push/service/XMPushService$l;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lou/k2;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x1466

    iput v4, v3, Lou/l2;->b:I

    iput-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/l2;

    iput-boolean v7, v3, Lou/l2;->c:Z

    new-instance v3, Lou/i2;

    iget-object v4, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/l2;

    invoke-direct {v3, p0, v4}, Lou/k2;-><init>(Lcom/xiaomi/push/service/XMPushService;Lou/l2;)V

    iput-object v0, v3, Lou/p2;->p:Ljava/lang/Exception;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lou/p2;->t:J

    iput-wide v4, v3, Lou/p2;->v:J

    iput-object p0, v3, Lou/p2;->s:Lcom/xiaomi/push/service/XMPushService;

    iput-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lcom/xiaomi/push/service/f0;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/f0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.xmsf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lou/N1;

    invoke-direct {v3, v0}, Lou/N1;-><init>(Landroid/content/Context;)V

    sput-object v3, Lou/M1;->a:Lou/L1;

    goto :goto_1

    :cond_4
    const-string v3, "XiaoAiTongXue"

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lqu/a;

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lou/T3;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lou/O1;

    new-instance v4, LA3/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v0, v4}, Lou/L1;-><init>(Landroid/content/Context;Lou/Q1;)V

    sput-object v3, Lou/M1;->a:Lou/L1;

    goto :goto_1

    :cond_5
    const-string v3, ""

    const-string v4, "ro.build.characteristics"

    invoke-static {v4, v3}, LPq/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lou/P1;

    new-instance v4, LR0/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-direct {v3, v0, v4}, Lou/L1;-><init>(Landroid/content/Context;Lou/Q1;)V

    sput-object v3, Lou/M1;->a:Lou/L1;

    goto :goto_1

    :cond_6
    new-instance v3, Lou/N1;

    invoke-direct {v3, v0}, Lou/N1;-><init>(Landroid/content/Context;)V

    sput-object v3, Lou/M1;->a:Lou/L1;

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-virtual {v0, p0}, Lou/k2;->e(Lou/m2;)V

    new-instance v0, Lcom/xiaomi/push/service/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/y;

    new-instance v0, Lcom/xiaomi/push/service/L;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/L;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/L;

    new-instance v0, Lcom/xiaomi/push/service/g0;

    invoke-direct {v0}, Lcom/xiaomi/push/service/g0;-><init>()V

    invoke-static {}, Lou/F2;->b()Lou/F2;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "all"

    const-string v5, "xm:chat"

    invoke-static {v4, v5}, Lou/F2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lou/F2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lou/Z1$a;->a:Lou/Z1;

    monitor-enter v4

    :try_start_6
    new-instance v0, Lou/X1;

    invoke-direct {v0, p0}, Lou/X1;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, v4, Lou/Z1;->e:Lou/X1;

    const-string v0, ""

    iput-object v0, v4, Lou/Z1;->a:Ljava/lang/String;

    new-instance v0, Lou/Y1;

    invoke-direct {v0}, Lcom/xiaomi/push/service/Q$a;-><init>()V

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v3, v2, Lcom/xiaomi/push/service/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v4

    new-instance v0, Lcom/xiaomi/push/service/n0;

    invoke-direct {v0}, Lcom/xiaomi/push/service/n0;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v2

    monitor-enter v2

    :try_start_9
    iget-object v0, v2, Lcom/xiaomi/push/service/F;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit v2

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$m;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$m;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    monitor-enter v2

    :try_start_a
    iget-object v3, v2, Lcom/xiaomi/push/service/F;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    monitor-exit v2

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->i()V

    :cond_7
    invoke-static {p0}, Lou/R2;->a(Landroid/content/Context;)Lou/R2;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/push/service/p0;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/p0;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    const-string v3, "UPLOADER_PUSH_CHANNEL"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v0, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {v0}, LGr/b;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lou/R2;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v0, Lou/O2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lou/O2;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$A;)V

    new-instance v0, Lcom/xiaomi/push/service/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/xiaomi/push/service/Z;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$A;)V

    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/xiaomi/push/service/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$A;)V

    invoke-static {}, Lou/y3;->a()I

    move-result v0

    if-gtz v0, :cond_9

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$a;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$A;)V

    :cond_9
    new-instance v0, Lcom/xiaomi/push/service/XMPushService$u;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$u;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    invoke-static {p0}, Lcom/xiaomi/push/service/S;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/S;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$s;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$s;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-static {p0}, Lou/u;->d(Landroid/content/Context;)Lou/s;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$G;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$G;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$G;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$G;

    const-string v4, "miui.net.wifi.permission.ACCESS_WIFI_DIGEST_INFO"

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$x;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$x;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$x;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.xiaomi.xmsf.USE_INTELLIGENT_HB"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "com.xiaomi.xmsf.permission.INTELLIGENT_HB"

    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_a
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_c

    const-string v0, "power_supersave_mode_open"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$b;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register super-power-mode observer err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->t(Ljava/lang/String;)V

    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->a()[I

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v2, Lcom/xiaomi/push/service/XMPushService$E;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/XMPushService$E;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$E;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$E;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lou/T3;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    aget v2, v0, v9

    iput v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    aget v0, v0, v7

    iput v0, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "falldown initialized: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/push/service/XMPushService;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-static {p0}, Lou/p0;->b(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lou/p0;->a:Lou/v0;

    if-nez v2, :cond_d

    new-instance v2, Lou/v0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lou/v0;->a:Lcom/xiaomi/push/service/XMPushService;

    sput-object v2, Lou/p0;->a:Lou/v0;

    :cond_d
    sget-object v2, Lou/p0;->a:Lou/v0;

    invoke-virtual {v0, v2}, Lou/k2;->e(Lou/m2;)V

    sget-object v0, Lou/p0;->b:Lou/u0$a;

    if-nez v0, :cond_e

    new-instance v0, Lou/u0$a;

    invoke-direct {v0, p0}, Lou/u0$a;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    sput-object v0, Lou/p0;->b:Lou/u0$a;

    :cond_e
    sget-object v0, Lou/p0;->b:Lou/u0$a;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$A;)V

    sget-object v0, Lou/m0;->a:Ljava/util/List;

    :cond_f
    invoke-static {p0}, Lou/l0;->b(Landroid/content/Context;)Lou/l0;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-virtual {v0, v2}, Lou/l0;->d(Lou/k2;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-static {p0}, Lou/m0;->a(Lcom/xiaomi/push/service/XMPushService;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lwz/d;->e:LOd/b;

    if-nez v2, :cond_10

    new-instance v2, LOd/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, LOd/b;->a:Ljava/lang/Object;

    sput-object v2, Lwz/d;->e:LOd/b;

    :cond_10
    sget-object v2, Lwz/d;->f:LJ4/l;

    if-nez v2, :cond_11

    new-instance v2, LJ4/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, LJ4/l;->a:Landroid/content/ComponentCallbacks;

    sput-object v2, Lwz/d;->f:LJ4/l;

    :cond_11
    sget-object v2, Lwz/d;->e:LOd/b;

    invoke-virtual {v0, v2, v2}, Lou/k2;->f(Lou/n2;Lou/u2;)V

    sget-object v2, Lwz/d;->f:LJ4/l;

    invoke-virtual {v0, v2, v2}, Lou/k2;->k(Lou/n2;Lou/u2;)V

    :cond_12
    const-string v0, ""

    if-eqz v8, :cond_13

    :try_start_c
    iget-object v2, v8, Lcom/xiaomi/push/service/q0;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v8, Lcom/xiaomi/push/service/q0;->a:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    array-length v3, v2

    if-lez v3, :cond_13

    aget-object v0, v2, v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    :cond_13
    sget-object v2, Lou/C0;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XMPushService created. pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lou/y2;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->u(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    throw v0

    :goto_4
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v0

    :catchall_8
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$s;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    sget-object v2, Lou/u;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :try_start_0
    instance-of v2, v0, Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_1

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception occurred in removing network callback :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$G;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$G;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$x;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$x;

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$E;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$E;

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$n;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/XMPushService$n;

    :cond_6
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    if-eqz v0, :cond_7

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregister super-power-mode err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGr/b;->t(Ljava/lang/String;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    iget-object v2, v0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    monitor-enter v2

    :try_start_2
    iget-object v0, v0, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    iget-object v0, v0, Lcom/xiaomi/push/service/n0$c;->f:Lcom/xiaomi/push/service/n0$c$a;

    const/16 v3, 0x100

    new-array v3, v3, [Lcom/xiaomi/push/service/n0$d;

    iput-object v3, v0, Lcom/xiaomi/push/service/n0$c$a;->a:[Lcom/xiaomi/push/service/n0$d;

    const/4 v3, 0x0

    iput v3, v0, Lcom/xiaomi/push/service/n0$c$a;->b:I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$h;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$y;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$y;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v2, v0, Lcom/xiaomi/push/service/F;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    monitor-exit v0

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/F;->g(I)V

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    invoke-virtual {v2}, Lcom/xiaomi/push/service/F;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/service/F$b;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/F$b;->b()V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_8
    iget-object v0, v2, Lcom/xiaomi/push/service/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    iget-object v0, v0, Lou/k2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/push/service/Q;->e:Lcom/xiaomi/push/service/Q;

    monitor-enter v0

    :try_start_5
    iget-object v2, v0, Lcom/xiaomi/push/service/Q;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v0

    invoke-static {}, Lou/M1;->b()V

    invoke-direct {p0}, Lcom/xiaomi/push/service/XMPushService;->j()V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    sget-object v2, Lou/p0;->a:Lou/v0;

    if-eqz v2, :cond_9

    iget-object v0, v0, Lou/k2;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sput-object v1, Lou/p0;->a:Lou/v0;

    :cond_9
    sget-object v0, Lou/p0;->b:Lou/u0$a;

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/XMPushService$A;)V

    sput-object v1, Lou/p0;->b:Lou/u0$a;

    :cond_a
    sget-object v0, Lou/m0;->a:Ljava/util/List;

    invoke-static {p0}, Lou/l0;->b(Landroid/content/Context;)Lou/l0;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    invoke-virtual {v0, v2}, Lou/l0;->h(Lou/k2;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lou/i2;

    sget-object v2, Lwz/d;->e:LOd/b;

    if-eqz v2, :cond_b

    iget-object v3, v0, Lou/k2;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lwz/d;->e:LOd/b;

    :cond_b
    sget-object v2, Lwz/d;->f:LJ4/l;

    if-eqz v2, :cond_c

    iget-object v0, v0, Lou/k2;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lwz/d;->f:LJ4/l;

    :cond_c
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "Service destroyed"

    invoke-static {p0}, LGr/b;->e(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-string p2, "onStart() with intent NULL"

    invoke-static {p2}, LGr/b;->t(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    :try_start_0
    const-string p2, "ext_chid"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "ext_pkg_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mipush_app_package"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "|"

    const-string v6, ", pkg = "

    const-string v7, ", chid = "

    const-string v8, "XMPushService"

    const-string v9, "onStart() with intent.Action = "

    if-nez v4, :cond_2

    :try_start_1
    const-string v4, "miui.net.wifi.DIGEST_INFORMATION_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lou/Q3;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", intent = "

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, LGr/b;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p2, "com.xiaomi.push.timer"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "com.xiaomi.push.check_alive"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "com.xiaomi.push.network_status_changed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p2, Lcom/xiaomi/push/service/XMPushService$v;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$v;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    iput-wide v0, p2, Lcom/xiaomi/push/service/XMPushService$v;->c:J

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/push/service/n0;

    iget-object p2, p2, Lcom/xiaomi/push/service/n0;->a:Lcom/xiaomi/push/service/n0$c;

    iget-boolean v2, p2, Lcom/xiaomi/push/service/n0$c;->b:Z

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/xiaomi/push/service/n0$c;->a:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long p2, v2, v4

    if-lez p2, :cond_6

    const-string p1, "ERROR, the job controller is blocked."

    invoke-static {p1}, LGr/b;->t(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/F;->b()Lcom/xiaomi/push/service/F;

    move-result-object p1

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/service/F;->g(I)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_3

    :cond_6
    new-instance p2, Lcom/xiaomi/push/service/XMPushService$v;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/push/service/XMPushService$v;-><init>(Lcom/xiaomi/push/service/XMPushService;Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$w;)V

    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x32

    cmp-long p2, p0, v0

    if-lez p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[Prefs] spend "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms, too more times."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->q(Ljava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onStart() cause error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LGr/b;->t(Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/push/service/XMPushService;->onStart(Landroid/content/Intent;I)V

    invoke-static {p0}, Lou/Q3;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
