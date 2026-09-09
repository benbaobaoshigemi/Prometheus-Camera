.class public final Le1/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/z;


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase_Impl;

.field public final b:Le1/I;

.field public final c:Le1/L;

.field public final d:Le1/M;

.field public final e:Le1/N;

.field public final f:Le1/O;

.field public final g:Le1/P;

.field public final h:Le1/Q;

.field public final i:Le1/S;

.field public final j:Le1/A;

.field public final k:Le1/C;

.field public final l:Le1/D;

.field public final m:Le1/E;

.field public final n:Le1/H;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v0, Le1/I;

    invoke-direct {v0, p1}, Landroidx/room/f;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->b:Le1/I;

    new-instance v0, Le1/K;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    new-instance v0, Le1/L;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->c:Le1/L;

    new-instance v0, Le1/M;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->d:Le1/M;

    new-instance v0, Le1/N;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->e:Le1/N;

    new-instance v0, Le1/O;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->f:Le1/O;

    new-instance v0, Le1/P;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->g:Le1/P;

    new-instance v0, Le1/Q;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->h:Le1/Q;

    new-instance v0, Le1/S;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->i:Le1/S;

    new-instance v0, Le1/A;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->j:Le1/A;

    new-instance v0, Le1/B;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    new-instance v0, Le1/C;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->k:Le1/C;

    new-instance v0, Le1/D;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->l:Le1/D;

    new-instance v0, Le1/E;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->m:Le1/E;

    new-instance v0, Le1/F;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    new-instance v0, Le1/G;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    new-instance v0, Le1/H;

    invoke-direct {v0, p1}, Landroidx/room/o;-><init>(Landroidx/room/k;)V

    iput-object v0, p0, Le1/T;->n:Le1/H;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->c:Le1/L;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->f:Le1/O;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final c(JLjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->l:Le1/D;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, LJ0/d;->a0(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p3}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result p1

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final d(J)Ljava/util/ArrayList;
    .locals 79

    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move-wide/from16 v3, p1

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/m;->a0(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v33, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v36

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v39

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v40

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v49

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v3, v33

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v33, v0

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 p1, v0

    move/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/16 v47, 0x0

    if-eqz v34, :cond_0

    const/16 v58, 0x1

    :goto_1
    move/from16 p2, v0

    move/from16 v0, v17

    goto :goto_2

    :cond_0
    move/from16 v58, v47

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Le1/Z;->d(I)LV0/y;

    move-result-object v59

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v66, 0x0

    :goto_3
    move/from16 v23, v0

    move/from16 v0, v24

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v66, v23

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Le1/Z;->c(I)LV0/q;

    move-result-object v69

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Le1/Z;->g([B)Lf1/i;

    move-result-object v68

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_2

    const/16 v70, 0x1

    :goto_5
    move/from16 v26, v0

    move/from16 v0, v27

    goto :goto_6

    :cond_2
    move/from16 v70, v47

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_3

    const/16 v71, 0x1

    :goto_7
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_8

    :cond_3
    move/from16 v71, v47

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_4

    const/16 v72, 0x1

    :goto_9
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_a

    :cond_4
    move/from16 v72, v47

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_5

    const/16 v73, 0x1

    :goto_b
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_c

    :cond_5
    move/from16 v73, v47

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v74

    move/from16 v30, v0

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v78

    new-instance v47, LV0/d;

    move-object/from16 v67, v47

    invoke-direct/range {v67 .. v78}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v47, v67

    new-instance v34, Le1/y;

    invoke-direct/range {v34 .. v66}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v32, v0

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v33

    move/from16 v33, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final e(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->k:Le1/C;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, LJ0/d;->Q(ILjava/lang/String;)V

    const/4 p2, 0x2

    int-to-long v2, p1

    invoke-interface {v1, p2, v2, v3}, LJ0/d;->a0(IJ)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 81

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v35, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v38

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v41

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v42

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v51

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v3, v35

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v35, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v36, 0x1

    if-eqz v18, :cond_0

    move/from16 v60, v36

    :goto_1
    move/from16 v18, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_0
    const/16 v60, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Le1/Z;->d(I)LV0/y;

    move-result-object v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v68, 0x0

    :goto_3
    move/from16 v25, v0

    move/from16 v0, v26

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v68, v25

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Le1/Z;->c(I)LV0/q;

    move-result-object v71

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Le1/Z;->g([B)Lf1/i;

    move-result-object v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_2

    move/from16 v72, v36

    :goto_5
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_6

    :cond_2
    const/16 v72, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_3

    move/from16 v73, v36

    :goto_7
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_8

    :cond_3
    const/16 v73, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_4

    move/from16 v74, v36

    :goto_9
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_a

    :cond_4
    const/16 v74, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    if-eqz v31, :cond_5

    move/from16 v75, v36

    :goto_b
    move/from16 v31, v0

    move/from16 v0, v32

    goto :goto_c

    :cond_5
    const/16 v75, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    move/from16 v33, v0

    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    invoke-static/range {v34 .. v34}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v80

    new-instance v49, LV0/d;

    move-object/from16 v69, v49

    invoke-direct/range {v69 .. v80}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v49, v69

    new-instance v36, Le1/y;

    invoke-direct/range {v36 .. v68}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v34, v0

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v35

    move/from16 v35, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->Q(ILjava/lang/String;)V

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    throw p1
.end method

.method public final h(Ljava/lang/String;)LV0/A;
    .locals 3

    const-string v0, "SELECT state FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->Q(ILjava/lang/String;)V

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Le1/Z;->e(I)LV0/A;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    return-object p1

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    throw p1
.end method

.method public final i(Ljava/lang/String;)Le1/y;
    .locals 79

    const-string v0, "SELECT * FROM workspec WHERE id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v1, v0}, Landroidx/room/m;->Q(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Le1/Z;->e(I)LV0/A;

    move-result-object v36

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v39

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v40

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Le1/Z;->b(I)LV0/a;

    move-result-object v49

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v58, 0x1

    :goto_0
    move/from16 v0, v18

    goto :goto_1

    :cond_0
    move/from16 v58, v1

    goto :goto_0

    :goto_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Le1/Z;->d(I)LV0/y;

    move-result-object v59

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v66, 0x0

    :goto_2
    move/from16 v0, v25

    goto :goto_3

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v66, v3

    goto :goto_2

    :goto_3
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Le1/Z;->c(I)LV0/q;

    move-result-object v69

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Le1/Z;->g([B)Lf1/i;

    move-result-object v68

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v70, 0x1

    :goto_4
    move/from16 v0, v28

    goto :goto_5

    :cond_2
    move/from16 v70, v1

    goto :goto_4

    :goto_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v71, 0x1

    :goto_6
    move/from16 v0, v29

    goto :goto_7

    :cond_3
    move/from16 v71, v1

    goto :goto_6

    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v72, 0x1

    :goto_8
    move/from16 v0, v30

    goto :goto_9

    :cond_4
    move/from16 v72, v1

    goto :goto_8

    :goto_9
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v73, 0x1

    :goto_a
    move/from16 v0, v31

    goto :goto_b

    :cond_5
    move/from16 v73, v1

    goto :goto_a

    :goto_b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v74

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v78

    new-instance v47, LV0/d;

    move-object/from16 v67, v47

    invoke-direct/range {v67 .. v78}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v47, v67

    new-instance v34, Le1/y;

    invoke-direct/range {v34 .. v66}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, v34

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    const/4 v3, 0x0

    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final j(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->e:Le1/N;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result p1

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final k(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->Q(ILjava/lang/String;)V

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    throw p1
.end method

.method public final l()I
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->m:Le1/E;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result v2

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw v0
.end method

.method public final m(LV0/A;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->d:Le1/M;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    invoke-static {p1}, Le1/Z;->f(LV0/A;)I

    move-result p1

    int-to-long v2, p1

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, LJ0/d;->a0(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p2}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result p1

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 81

    const-string v0, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    const/16 v0, 0xc8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/m;->a0(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v35, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v38

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v41

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v42

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v51

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v3, v35

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v35, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v36, 0x0

    if-eqz v18, :cond_0

    const/16 v60, 0x1

    :goto_1
    move/from16 v18, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_0
    move/from16 v60, v36

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Le1/Z;->d(I)LV0/y;

    move-result-object v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v68, 0x0

    :goto_3
    move/from16 v25, v0

    move/from16 v0, v26

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v68, v25

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Le1/Z;->c(I)LV0/q;

    move-result-object v71

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Le1/Z;->g([B)Lf1/i;

    move-result-object v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_2

    const/16 v72, 0x1

    :goto_5
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_6

    :cond_2
    move/from16 v72, v36

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_3

    const/16 v73, 0x1

    :goto_7
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_8

    :cond_3
    move/from16 v73, v36

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_4

    const/16 v74, 0x1

    :goto_9
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_a

    :cond_4
    move/from16 v74, v36

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    if-eqz v31, :cond_5

    const/16 v75, 0x1

    :goto_b
    move/from16 v31, v0

    move/from16 v0, v32

    goto :goto_c

    :cond_5
    move/from16 v75, v36

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    move/from16 v33, v0

    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    invoke-static/range {v34 .. v34}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v80

    new-instance v49, LV0/d;

    move-object/from16 v69, v49

    invoke-direct/range {v69 .. v80}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v49, v69

    new-instance v36, Le1/y;

    invoke-direct/range {v36 .. v68}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v34, v0

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v35

    move/from16 v35, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final o(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroidx/room/m;->Q(ILjava/lang/String;)V

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v3

    new-instance v4, Le1/y$a;

    const-string v5, "id"

    invoke-static {v2, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Le1/y$a;->a:Ljava/lang/String;

    iput-object v3, v4, Le1/y$a;->b:LV0/A;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    throw p1
.end method

.method public final p()LBw/c0;
    .locals 4

    const-string v0, "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    const-string/jumbo v1, "workspec"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le1/J;

    invoke-direct {v2, p0, v0}, Le1/J;-><init>(Le1/T;Landroidx/room/m;)V

    new-instance v0, Landroidx/room/c;

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/room/c;-><init>(Landroidx/work/impl/WorkDatabase_Impl;[Ljava/lang/String;Le1/J;LTu/e;)V

    new-instance p0, LBw/c0;

    invoke-direct {p0, v0}, LBw/c0;-><init>(Lev/p;)V

    return-object p0
.end method

.method public final q(I)Ljava/util/ArrayList;
    .locals 80

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move/from16 v0, p1

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroidx/room/m;->a0(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v34, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v37

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v40

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v41

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v50

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 v3, v34

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v34, v0

    move/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 p1, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v35, 0x0

    if-eqz v17, :cond_0

    const/16 v59, 0x1

    :goto_1
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_2

    :cond_0
    move/from16 v59, v35

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Le1/Z;->d(I)LV0/y;

    move-result-object v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v67, 0x0

    :goto_3
    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v67, v24

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Le1/Z;->c(I)LV0/q;

    move-result-object v70

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Le1/Z;->g([B)Lf1/i;

    move-result-object v69

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_2

    const/16 v71, 0x1

    :goto_5
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_6

    :cond_2
    move/from16 v71, v35

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    const/16 v72, 0x1

    :goto_7
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_8

    :cond_3
    move/from16 v72, v35

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    const/16 v73, 0x1

    :goto_9
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_a

    :cond_4
    move/from16 v73, v35

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_5

    const/16 v74, 0x1

    :goto_b
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_c

    :cond_5
    move/from16 v74, v35

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v79

    new-instance v48, LV0/d;

    move-object/from16 v68, v48

    invoke-direct/range {v68 .. v79}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v48, v68

    new-instance v35, Le1/y;

    invoke-direct/range {v35 .. v67}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v33, v0

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v34

    move/from16 v34, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final r(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->h:Le1/Q;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, LJ0/d;->a0(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p3}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final s(Ljava/lang/String;Landroidx/work/b;)V
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->g:Le1/P;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    sget-object v2, Landroidx/work/b;->b:Landroidx/work/b;

    invoke-static {p2}, Landroidx/work/b$b;->b(Landroidx/work/b;)[B

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, LJ0/d;->e0(I[B)V

    const/4 p2, 0x2

    invoke-interface {v1, p2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final t(Le1/y;)V
    .locals 1

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Le1/T;->b:Le1/I;

    invoke-virtual {p0, p1}, Landroidx/room/f;->insert(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p0
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 81

    const-string v0, "SELECT * FROM workspec WHERE state=1"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v35, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v38

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v41

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v42

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v51

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v3, v35

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v35, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v36, 0x1

    if-eqz v18, :cond_0

    move/from16 v60, v36

    :goto_1
    move/from16 v18, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_0
    const/16 v60, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Le1/Z;->d(I)LV0/y;

    move-result-object v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v68, 0x0

    :goto_3
    move/from16 v25, v0

    move/from16 v0, v26

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v68, v25

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Le1/Z;->c(I)LV0/q;

    move-result-object v71

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Le1/Z;->g([B)Lf1/i;

    move-result-object v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_2

    move/from16 v72, v36

    :goto_5
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_6

    :cond_2
    const/16 v72, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_3

    move/from16 v73, v36

    :goto_7
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_8

    :cond_3
    const/16 v73, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_4

    move/from16 v74, v36

    :goto_9
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_a

    :cond_4
    const/16 v74, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    if-eqz v31, :cond_5

    move/from16 v75, v36

    :goto_b
    move/from16 v31, v0

    move/from16 v0, v32

    goto :goto_c

    :cond_5
    const/16 v75, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    move/from16 v33, v0

    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    invoke-static/range {v34 .. v34}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v80

    new-instance v49, LV0/d;

    move-object/from16 v69, v49

    invoke-direct/range {v69 .. v80}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v49, v69

    new-instance v36, Le1/y;

    invoke-direct/range {v36 .. v68}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v34, v0

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v35

    move/from16 v35, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final v(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->n:Le1/H;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, LJ0/d;->a0(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p2}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final w()Ljava/util/ArrayList;
    .locals 81

    const-string v0, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "id"

    invoke-static {v4, v0}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "state"

    invoke-static {v4, v5}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "worker_class_name"

    invoke-static {v4, v6}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v4, v7}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v4, v8}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v4, v9}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v4, v10}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v4, v11}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v4, v12}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "run_attempt_count"

    invoke-static {v4, v13}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v4, v14}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v4, v15}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v1, "last_enqueue_time"

    invoke-static {v4, v1}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "minimum_retention_duration"

    invoke-static {v4, v3}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string/jumbo v2, "schedule_requested_at"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string/jumbo v2, "run_in_foreground"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "out_of_quota_policy"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "period_count"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "next_schedule_time_override_generation"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string/jumbo v2, "stop_reason"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string/jumbo v2, "trace_tag"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "required_network_type"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "required_network_request"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "requires_charging"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "requires_device_idle"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "requires_battery_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "requires_storage_not_low"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string/jumbo v2, "trigger_content_update_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string/jumbo v2, "trigger_max_content_delay"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    const-string v2, "content_uri_triggers"

    invoke-static {v4, v2}, LH0/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v34, v2

    new-instance v2, Ljava/util/ArrayList;

    move/from16 v35, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->e(I)LV0/A;

    move-result-object v38

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v41

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v42

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Le1/Z;->b(I)LV0/a;

    move-result-object v51

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v3, v35

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v35, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v36, 0x1

    if-eqz v18, :cond_0

    move/from16 v60, v36

    :goto_1
    move/from16 v18, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_0
    const/16 v60, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Le1/Z;->d(I)LV0/y;

    move-result-object v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v64

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v68, 0x0

    :goto_3
    move/from16 v25, v0

    move/from16 v0, v26

    goto :goto_4

    :cond_1
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v68, v25

    goto :goto_3

    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Le1/Z;->c(I)LV0/q;

    move-result-object v71

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Le1/Z;->g([B)Lf1/i;

    move-result-object v70

    move/from16 v27, v0

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_2

    move/from16 v72, v36

    :goto_5
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_6

    :cond_2
    const/16 v72, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_3

    move/from16 v73, v36

    :goto_7
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_8

    :cond_3
    const/16 v73, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_4

    move/from16 v74, v36

    :goto_9
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_a

    :cond_4
    const/16 v74, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    if-eqz v31, :cond_5

    move/from16 v75, v36

    :goto_b
    move/from16 v31, v0

    move/from16 v0, v32

    goto :goto_c

    :cond_5
    const/16 v75, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    move/from16 v33, v0

    move/from16 v0, v34

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v34

    invoke-static/range {v34 .. v34}, Le1/Z;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v80

    new-instance v49, LV0/d;

    move-object/from16 v69, v49

    invoke-direct/range {v69 .. v80}, LV0/d;-><init>(Lf1/i;LV0/q;ZZZZJJLjava/util/Set;)V

    move-object/from16 v49, v69

    new-instance v36, Le1/y;

    invoke-direct/range {v36 .. v68}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move/from16 v34, v0

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, v35

    move/from16 v35, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Landroidx/room/m;->i()V

    throw v0
.end method

.method public final x(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->j:Le1/A;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result p1

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final y(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Le1/T;->i:Le1/S;

    invoke-virtual {p0}, Landroidx/room/o;->acquire()LJ0/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, LJ0/d;->Q(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/room/k;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, LJ0/f;->p()I

    move-result p1

    invoke-virtual {v0}, Landroidx/room/k;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/room/k;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/room/o;->release(LJ0/f;)V

    throw p1
.end method

.method public final z()I
    .locals 3

    const-string v0, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/m;->h(ILjava/lang/String;)Landroidx/room/m;

    move-result-object v0

    iget-object p0, p0, Le1/T;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/k;->assertNotSuspendingTransaction()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroidx/room/k;->query(LJ0/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    return v1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/m;->i()V

    throw v1
.end method
