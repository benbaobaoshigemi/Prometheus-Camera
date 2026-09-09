.class public final LS7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()V
    .locals 8

    new-instance v0, LPu/j;

    new-instance v1, LS7/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, "settings_common"

    invoke-direct {v0, v1, v2}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, LPu/j;

    new-instance v2, LS7/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "settings_capture"

    invoke-direct {v1, v2, v3}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, LPu/j;

    new-instance v3, LS7/K;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v4, "settings_video_record"

    invoke-direct {v2, v3, v4}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LPu/j;

    new-instance v4, LS7/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v5, "setting_camera_preset"

    invoke-direct {v3, v4, v5}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, LPu/j;

    new-instance v5, LS7/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v6, "setting_external_device"

    invoke-direct {v4, v5, v6}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, LPu/j;

    new-instance v7, LS7/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct {v5, v7, v6}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v0 .. v5}, [LPu/j;

    move-result-object v0

    invoke-static {v0}, LQu/n;->Y([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPu/j;

    new-instance v2, Lgq/h;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v3, "key_settings"

    iput-object v3, v2, Lgq/h;->a:Ljava/lang/String;

    new-instance v3, Lgq/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, v3, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v3, v2, Lgq/h;->b:Lgq/f;

    iget-object v3, v1, LPu/j;->a:Ljava/lang/Object;

    check-cast v3, Lgq/e;

    invoke-virtual {v2, v3}, Lgq/h;->b(Lgq/e;)V

    const-string v3, "attr_sub_module"

    iget-object v1, v1, LPu/j;->b:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attr_trigger_mode"

    const-string/jumbo v3, "schedule"

    invoke-virtual {v2, v3, v1}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lgq/h;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method
