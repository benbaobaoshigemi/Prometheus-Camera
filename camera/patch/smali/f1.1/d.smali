.class public final Lf1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, LV0/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf1/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(LW0/A;)Z
    .locals 63

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LW0/A;->D(LW0/A;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, v0, LW0/A;->b:LW0/P;

    iget-object v4, v3, LW0/P;->b:Landroidx/work/a;

    iget-object v4, v4, Landroidx/work/a;->d:LDf/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    sget-object v8, LV0/A;->c:LV0/A;

    sget-object v9, LV0/A;->f:LV0/A;

    sget-object v10, LV0/A;->d:LV0/A;

    iget-object v11, v3, LW0/P;->c:Landroidx/work/impl/WorkDatabase;

    if-eqz v7, :cond_6

    array-length v12, v1

    move v13, v2

    move v15, v13

    move/from16 v16, v15

    const/4 v14, 0x1

    :goto_1
    if-ge v13, v12, :cond_7

    aget-object v2, v1, v13

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->f()Le1/z;

    move-result-object v6

    invoke-interface {v6, v2}, Le1/z;->i(Ljava/lang/String;)Le1/y;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, LV0/p;->e()LV0/p;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerequisite "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist; not enqueuing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lf1/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, LV0/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_2
    iget-object v2, v6, Le1/y;->b:LV0/A;

    if-ne v2, v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v14, v6

    if-ne v2, v10, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    if-ne v2, v9, :cond_5

    const/4 v15, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_7
    iget-object v2, v0, LW0/A;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    sget-object v12, LV0/A;->a:LV0/A;

    if-nez v6, :cond_16

    if-nez v7, :cond_16

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->f()Le1/z;

    move-result-object v13

    invoke-interface {v13, v2}, Le1/z;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_16

    move/from16 v17, v6

    sget-object v6, LV0/h;->c:LV0/h;

    move/from16 v18, v7

    sget-object v7, LV0/h;->d:LV0/h;

    move-object/from16 v19, v11

    iget-object v11, v0, LW0/A;->d:LV0/h;

    if-eq v11, v6, :cond_c

    if-ne v11, v7, :cond_8

    goto :goto_6

    :cond_8
    sget-object v6, LV0/h;->b:LV0/h;

    if-ne v11, v6, :cond_a

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le1/y$a;

    iget-object v7, v7, Le1/y$a;->b:LV0/A;

    if-eq v7, v12, :cond_1

    sget-object v8, LV0/A;->b:LV0/A;

    if-ne v7, v8, :cond_9

    goto :goto_2

    :cond_a
    iget-object v6, v3, LW0/P;->c:Landroidx/work/impl/WorkDatabase;

    const-string/jumbo v7, "workManagerImpl.workDatabase"

    invoke-static {v6, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lf1/a;

    invoke-direct {v7, v6, v2, v3}, Lf1/a;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;LW0/P;)V

    invoke-virtual {v6, v7}, Landroidx/room/k;->runInTransaction(Ljava/lang/Runnable;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->f()Le1/z;

    move-result-object v6

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le1/y$a;

    iget-object v8, v8, Le1/y$a;->a:Ljava/lang/String;

    invoke-interface {v6, v8}, Le1/z;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move/from16 v7, v18

    const/4 v6, 0x1

    goto/16 :goto_f

    :cond_c
    :goto_6
    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->a()Le1/b;

    move-result-object v6

    move-object/from16 v20, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v14

    move-object/from16 v14, v20

    check-cast v14, Le1/y$a;

    move/from16 v20, v15

    iget-object v15, v14, Le1/y$a;->a:Ljava/lang/String;

    invoke-interface {v6, v15}, Le1/b;->d(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    iget-object v15, v14, Le1/y$a;->b:LV0/A;

    if-ne v15, v8, :cond_d

    const/16 v22, 0x1

    goto :goto_8

    :cond_d
    const/16 v22, 0x0

    :goto_8
    and-int v21, v21, v22

    if-ne v15, v10, :cond_e

    move/from16 v15, v20

    const/16 v16, 0x1

    goto :goto_9

    :cond_e
    if-ne v15, v9, :cond_f

    const/4 v15, 0x1

    goto :goto_9

    :cond_f
    move/from16 v15, v20

    :goto_9
    iget-object v14, v14, Le1/y$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    move/from16 v14, v21

    goto :goto_7

    :cond_10
    move/from16 v15, v20

    goto :goto_a

    :cond_11
    move/from16 v21, v14

    move/from16 v20, v15

    if-ne v11, v7, :cond_14

    if-nez v20, :cond_12

    if-eqz v16, :cond_14

    :cond_12
    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->f()Le1/z;

    move-result-object v6

    invoke-interface {v6, v2}, Le1/z;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le1/y$a;

    iget-object v8, v8, Le1/y$a;->a:Ljava/lang/String;

    invoke-interface {v6, v8}, Le1/z;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_c

    :cond_14
    move/from16 v15, v20

    :goto_c
    invoke-interface {v13, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v6, v1

    if-lez v6, :cond_15

    const/4 v7, 0x1

    goto :goto_d

    :cond_15
    const/4 v7, 0x0

    :goto_d
    move/from16 v14, v21

    :goto_e
    const/4 v6, 0x0

    goto :goto_f

    :cond_16
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v11

    move/from16 v7, v18

    goto :goto_e

    :goto_f
    iget-object v8, v0, LW0/A;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LV0/C;

    iget-object v13, v11, LV0/C;->b:Le1/y;

    if-eqz v7, :cond_19

    if-nez v14, :cond_19

    if-eqz v16, :cond_17

    iput-object v10, v13, Le1/y;->b:LV0/A;

    :goto_11
    move/from16 v18, v6

    goto :goto_12

    :cond_17
    if-eqz v15, :cond_18

    iput-object v9, v13, Le1/y;->b:LV0/A;

    goto :goto_11

    :cond_18
    move/from16 v18, v6

    sget-object v6, LV0/A;->e:LV0/A;

    iput-object v6, v13, Le1/y;->b:LV0/A;

    goto :goto_12

    :cond_19
    move/from16 v18, v6

    iput-wide v4, v13, Le1/y;->n:J

    :goto_12
    iget-object v6, v13, Le1/y;->b:LV0/A;

    if-ne v6, v12, :cond_1a

    const/4 v6, 0x1

    :goto_13
    move-wide/from16 v20, v4

    goto :goto_14

    :cond_1a
    move/from16 v6, v18

    goto :goto_13

    :goto_14
    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->f()Le1/z;

    move-result-object v4

    const-string/jumbo v5, "schedulers"

    move/from16 v18, v6

    iget-object v6, v3, LW0/P;->e:Ljava/util/List;

    invoke-static {v6, v5}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v13, Le1/y;->e:Landroidx/work/b;

    const-string v6, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v5, v6}, Landroidx/work/b;->b(Ljava/lang/String;)Z

    move-result v22

    move-object/from16 v23, v3

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v5, v3}, Landroidx/work/b;->b(Ljava/lang/String;)Z

    move-result v3

    move/from16 v24, v3

    const-string v3, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v5, v3}, Landroidx/work/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v22, :cond_1b

    if-eqz v24, :cond_1b

    if-eqz v3, :cond_1b

    new-instance v3, Landroidx/work/b$a;

    invoke-direct {v3}, Landroidx/work/b$a;-><init>()V

    iget-object v5, v5, Landroidx/work/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroidx/work/b$a;->a(Ljava/util/HashMap;)V

    iget-object v5, v13, Le1/y;->c:Ljava/lang/String;

    iget-object v3, v3, Landroidx/work/b$a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/work/b;

    invoke-direct {v5, v3}, Landroidx/work/b;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v5}, Landroidx/work/b$b;->b(Landroidx/work/b;)[B

    iget-object v3, v13, Le1/y;->b:LV0/A;

    iget-object v6, v13, Le1/y;->d:Ljava/lang/String;

    move-object/from16 v29, v5

    iget-object v5, v13, Le1/y;->f:Landroidx/work/b;

    move/from16 v22, v7

    move-object/from16 v57, v8

    iget-wide v7, v13, Le1/y;->g:J

    move-wide/from16 v31, v7

    iget-wide v7, v13, Le1/y;->h:J

    move-wide/from16 v33, v7

    iget-wide v7, v13, Le1/y;->i:J

    move-wide/from16 v35, v7

    iget-object v7, v13, Le1/y;->j:LV0/d;

    iget v8, v13, Le1/y;->k:I

    move/from16 v38, v8

    iget-object v8, v13, Le1/y;->l:LV0/a;

    move-object/from16 v58, v9

    move-object/from16 v59, v10

    iget-wide v9, v13, Le1/y;->m:J

    move-wide/from16 v40, v9

    iget-wide v9, v13, Le1/y;->n:J

    move-wide/from16 v42, v9

    iget-wide v9, v13, Le1/y;->o:J

    move-wide/from16 v44, v9

    iget-wide v9, v13, Le1/y;->p:J

    move-wide/from16 v46, v9

    iget-boolean v9, v13, Le1/y;->q:Z

    iget-object v10, v13, Le1/y;->r:LV0/y;

    move/from16 v48, v9

    iget v9, v13, Le1/y;->s:I

    move/from16 v60, v14

    move/from16 v61, v15

    iget-wide v14, v13, Le1/y;->u:J

    move/from16 v50, v9

    iget v9, v13, Le1/y;->v:I

    move/from16 v54, v9

    iget-object v9, v13, Le1/y;->x:Ljava/lang/String;

    move-object/from16 v56, v9

    const-string v9, "id"

    move-object/from16 v62, v12

    iget-object v12, v13, Le1/y;->a:Ljava/lang/String;

    invoke-static {v12, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "state"

    invoke-static {v3, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "inputMergerClassName"

    invoke-static {v6, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "output"

    invoke-static {v5, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "constraints"

    invoke-static {v7, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "backoffPolicy"

    invoke-static {v8, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "outOfQuotaPolicy"

    invoke-static {v10, v9}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v24, Le1/y;

    const-string v27, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    iget v9, v13, Le1/y;->t:I

    iget v13, v13, Le1/y;->w:I

    move-object/from16 v26, v3

    move-object/from16 v30, v5

    move-object/from16 v28, v6

    move-object/from16 v37, v7

    move-object/from16 v39, v8

    move/from16 v51, v9

    move-object/from16 v49, v10

    move-object/from16 v25, v12

    move/from16 v55, v13

    move-wide/from16 v52, v14

    invoke-direct/range {v24 .. v56}, Le1/y;-><init>(Ljava/lang/String;LV0/A;Ljava/lang/String;Ljava/lang/String;Landroidx/work/b;Landroidx/work/b;JJJLV0/d;ILV0/a;JJJJZLV0/y;IIJIILjava/lang/String;)V

    move-object/from16 v13, v24

    goto :goto_15

    :cond_1b
    move/from16 v22, v7

    move-object/from16 v57, v8

    move-object/from16 v58, v9

    move-object/from16 v59, v10

    move-object/from16 v62, v12

    move/from16 v60, v14

    move/from16 v61, v15

    :goto_15
    invoke-interface {v4, v13}, Le1/z;->t(Le1/y;)V

    const-string v3, "id.toString()"

    iget-object v4, v11, LV0/C;->a:Ljava/util/UUID;

    if-eqz v22, :cond_1c

    array-length v5, v1

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_1c

    aget-object v7, v1, v6

    new-instance v8, Le1/a;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v7}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->a()Le1/b;

    move-result-object v7

    invoke-interface {v7, v8}, Le1/b;->a(Le1/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1c
    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->g()Le1/V;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v11, LV0/C;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v6, v7}, Le1/V;->b(Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    if-nez v17, :cond_1d

    invoke-virtual/range {v19 .. v19}, Landroidx/work/impl/WorkDatabase;->d()Le1/p;

    move-result-object v5

    new-instance v6, Le1/o;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v2, v4}, Le1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Le1/p;->b(Le1/o;)V

    :cond_1d
    move/from16 v6, v18

    move-wide/from16 v4, v20

    move/from16 v7, v22

    move-object/from16 v3, v23

    move-object/from16 v8, v57

    move-object/from16 v9, v58

    move-object/from16 v10, v59

    move/from16 v14, v60

    move/from16 v15, v61

    move-object/from16 v12, v62

    goto/16 :goto_10

    :cond_1e
    move/from16 v18, v6

    move/from16 v2, v18

    const/4 v1, 0x1

    :goto_17
    iput-boolean v1, v0, LW0/A;->h:Z

    return v2
.end method
