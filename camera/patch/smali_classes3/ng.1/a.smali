.class public final Lng/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Landroid/content/Context;

.field public static c:Ljava/lang/String;

.field public static volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 4

    sget-object v0, Lng/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lng/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lng/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lng/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lng/a;->b:Landroid/content/Context;

    if-nez v1, :cond_2

    sget-object v1, Lng/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lng/b;->a(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "FbeUtil"

    if-eqz v2, :cond_1

    const-string v2, "getSafeContext return origin ctx"

    invoke-static {v3, v2}, Lwz/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "getSafeContext , create the safe ctx"

    invoke-static {v3, v2}, Lwz/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    sput-object v1, Lng/a;->b:Landroid/content/Context;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lng/a;->b:Landroid/content/Context;

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    sget-object v0, Lng/a;->a:Landroid/content/Context;

    return-object v0
.end method
