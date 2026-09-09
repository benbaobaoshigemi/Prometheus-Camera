.class public final synthetic Ls7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls7/g;

.field public final synthetic b:LRh/r;

.field public final synthetic c:LF1/w4;

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Ls7/g;LRh/r;LF1/w4;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls7/f;->a:Ls7/g;

    iput-object p2, p0, Ls7/f;->b:LRh/r;

    iput-object p3, p0, Ls7/f;->c:LF1/w4;

    iput-object p4, p0, Ls7/f;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ls7/f;->a:Ls7/g;

    iget-object v2, v0, Ls7/f;->b:LRh/r;

    iget-object v3, v0, Ls7/f;->c:LF1/w4;

    iget-object v5, v0, Ls7/f;->d:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "save heif cost "

    const-string/jumbo v14, "save heif image failed:"

    const-string/jumbo v0, "save preview heic "

    const-string/jumbo v15, "shot_2_gallery_"

    iget-object v4, v2, LRh/r;->k:LRh/A;

    iget-object v4, v4, LRh/A;->g:Ljava/lang/String;

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-object v6, v2, LRh/r;->a:LRh/z;

    iget v10, v6, LRh/z;->a:I

    iget v11, v6, LRh/z;->b:I

    iget v9, v6, LRh/z;->c:I

    iget-object v6, v2, LRh/r;->k:LRh/A;

    iget-object v6, v6, LRh/A;->l:Ljava/lang/Object;

    instance-of v7, v6, Lk7/A;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    check-cast v6, Lk7/A;

    move-object v7, v8

    goto :goto_0

    :cond_0
    move-object v6, v8

    move-object v7, v6

    :goto_0
    invoke-virtual {v2}, LRh/r;->m()Z

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const-string v7, "intern(...)"

    invoke-static {v12, v7}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v12

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lav/j;->m(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->getPriority()I

    move-result v13

    move-object/from16 v16, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object/from16 v18, v6

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, LBw/i;->u()LF2/d;

    move-result-object v5

    iget-object v5, v5, LF2/d;->a:LF2/b;

    invoke-virtual {v5, v4}, LF2/b;->f(Ljava/lang/String;)LE2/a;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Lk7/A;->h()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_a

    :cond_1
    :goto_1
    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "save preview: task not existed! image maybe already saved"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    return-void

    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    iget-object v3, v3, LF1/w4;->b:Landroid/graphics/Bitmap;

    move-object v6, v3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-object v3, v2, LRh/r;->b:LRh/a;

    iget v3, v3, LRh/a;->g:I

    if-nez v3, :cond_4

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v3

    iget v5, v3, Lu2/Q;->u:I

    invoke-virtual {v3, v5}, Lu2/Q;->E(I)I

    move-result v3

    :cond_4
    move-object v5, v4

    new-instance v4, Lm7/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v12

    move v12, v3

    const/4 v3, 0x0

    :try_start_2
    invoke-direct/range {v4 .. v12}, Lm7/c;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/String;ZIIII)V

    move v6, v8

    invoke-static/range {v18 .. v18}, Lfv/l;->e(Ljava/lang/Object;)V

    move-object/from16 v8, v18

    invoke-interface {v8, v4}, Lk7/A;->n(Lm7/e;)V

    iget-object v4, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v9, "PreviewSaveRequest: image save finished"

    invoke-static {v4, v9}, LF6/k;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v9, "CAPTURE"

    iget-object v10, v2, LRh/r;->k:LRh/A;

    iget-object v10, v10, LRh/A;->b:Ljava/lang/String;

    const/16 v11, 0x8

    invoke-static {v9, v11, v10}, Lcom/xiaomi/camera/mivi/util/LogPrefixUtil;->getPrefix(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, LRh/r;->a:LRh/z;

    iget-wide v10, v10, LRh/z;->f:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "image save finished, timestamp: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    iget-object v9, v2, LRh/r;->a:LRh/z;

    iget-wide v9, v9, LRh/z;->h:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, LF6/q;->g(Ljava/lang/String;)J

    invoke-static {}, LF6/q;->i()LF6/q;

    move-result-object v4

    const-string/jumbo v9, "shot_thumbnail_gap"

    invoke-virtual {v4, v9}, LF6/q;->q(Ljava/lang/String;)V

    invoke-virtual {v2}, LRh/r;->m()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, LQg/e;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "rw"

    invoke-virtual {v4, v5, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iget-object v11, v1, Lp7/d;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pfd "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v12, v3, [Ljava/lang/Object;

    invoke-static {v11, v0, v12}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v11, Ls7/g;->d:Ljava/lang/Object;

    monitor-enter v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Ls7/g;->h(LRh/r;Ljava/io/FileDescriptor;)V

    sget-object v0, LPu/A;->a:LPu/A;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit v11

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "is_pending"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v12, 0x0

    :try_start_7
    invoke-virtual {v11, v5, v0, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    move-object v8, v4

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    goto :goto_4

    :catchall_3
    move-exception v0

    const/4 v12, 0x0

    :try_start_9
    monitor-exit v11

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_4
    move-exception v0

    const/4 v12, 0x0

    move-object v8, v12

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v12, 0x0

    move-object v4, v12

    :goto_4
    :try_start_a
    iget-object v11, v1, Lp7/d;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v11, v0, v14}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    :try_start_b
    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v9, v17

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v18, v8

    goto :goto_8

    :goto_7
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_6
    throw v0

    :cond_7
    const/4 v12, 0x0

    goto :goto_6

    :goto_8
    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object/from16 v4, v18

    invoke-interface/range {v4 .. v9}, Lk7/A;->o(Landroid/net/Uri;ZLjava/lang/String;IZ)V

    iget-object v0, v2, LRh/r;->a:LRh/z;

    iget-wide v5, v0, LRh/z;->h:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v2, LRh/r;->a:LRh/z;

    iget-wide v7, v0, LRh/z;->h:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v7, "key_camera_performance"

    new-instance v8, Lgq/h;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v7, v8, Lgq/h;->a:Ljava/lang/String;

    new-instance v7, Lgq/f;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v7, Lgq/f;->a:Ljava/util/LinkedHashMap;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v7, Lgq/f;->b:Ljava/util/LinkedHashMap;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, v7, Lgq/f;->e:Ljava/util/LinkedHashMap;

    iput-object v7, v8, Lgq/h;->b:Lgq/f;

    const-string v7, "attr_cost_time"

    invoke-virtual {v8, v0, v7}, Lgq/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhq/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v0}, Lgq/h;->b(Lgq/e;)V

    invoke-virtual {v8}, Lgq/h;->d()V

    const-wide/16 v7, 0x320

    cmp-long v0, v5, v7

    if-lez v0, :cond_8

    invoke-interface {v4, v5, v6}, Lk7/A;->c(J)V

    :cond_8
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lk7/K;->f(Landroid/app/Application;)V

    iget-object v0, v2, LRh/r;->k:LRh/A;

    iget-boolean v0, v0, LRh/A;->d:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v4, "preview heic mark finished"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object/from16 v5, v19

    invoke-static {v0, v5}, LH2/a;->c(Landroid/content/Context;LE2/a;)V

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v0, LPu/A;->a:LPu/A;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit v16

    iget-object v0, v1, Lp7/d;->a:Ljava/lang/String;

    const-string v3, "Preview save onFinish"

    invoke-static {v0, v3}, Lcom/android/camera/log/LogK;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, LRh/r;->k:LRh/A;

    iget-object v0, v0, LRh/A;->l:Ljava/lang/Object;

    instance-of v3, v0, Lk7/A;

    if-eqz v3, :cond_a

    move-object v8, v0

    check-cast v8, Lk7/A;

    goto :goto_9

    :cond_a
    move-object v8, v12

    :goto_9
    invoke-virtual {v2}, LRh/r;->s()V

    if-eqz v8, :cond_b

    iget v0, v1, Ls7/g;->b:I

    invoke-interface {v8, v0}, Lk7/A;->p(I)V

    :cond_b
    return-void

    :goto_a
    monitor-exit v16

    throw v0
.end method
