.class public final Ll1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Ljava/util/HashMap;

.field public c:Ljava/util/HashMap;

.field public d:Ljava/util/regex/Pattern;


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lo1/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll1/r;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo1/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll1/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ll1/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk1/c;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ll1/e;->c(Ljava/lang/String;)V

    invoke-static {p2}, Ll1/e;->b(Ljava/lang/String;)V

    invoke-static {p3}, Ll1/e;->c(Ljava/lang/String;)V

    invoke-static {p4}, Ll1/e;->b(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance v0, Ln1/a;

    new-instance v1, Ln1/e;

    iget p5, p5, Ln1/c;->a:I

    invoke-direct {v1, p5}, Ln1/c;-><init>(I)V

    const/4 p5, 0x0

    invoke-static {v1, p5}, Ll1/p;->i(Ln1/e;Ljava/lang/Object;)Ln1/e;

    move-result-object p5

    iget p5, p5, Ln1/c;->a:I

    invoke-direct {v0, p5}, Ln1/c;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ln1/a;

    invoke-direct {v0}, Ln1/c;-><init>()V

    :goto_0
    iget-object p5, p0, Ll1/r;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Ll1/r;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p5, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p0, p1}, Ll1/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Ll1/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/16 v1, 0x65

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ll1/r;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_2

    iget-object p2, p0, Ll1/r;->c:Ljava/util/HashMap;

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ll1/r$a;

    invoke-direct {p2, p3, p5, p4, v0}, Ll1/r$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    iget-object p3, p0, Ll1/r;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Lk1/c;

    const-string p2, "Actual property is already an alias, use the base property"

    invoke-direct {p1, p2, v1}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Lk1/c;

    const-string p2, "Alias is already existing"

    invoke-direct {p1, p2, v1}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Lk1/c;

    const-string p2, "Actual namespace is not registered"

    invoke-direct {p1, p2, v1}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Lk1/c;

    const-string p2, "Alias namespace is not registered"

    invoke-direct {p1, p2, v1}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lk1/c;

    const-string p2, "Alias and actual property names must be simple"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk1/c;
        }
    .end annotation

    const-string v0, ":"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ll1/e;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll1/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ll1/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Ll1/r;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v3, :cond_3

    move-object v0, p2

    move v3, v2

    :goto_1
    :try_start_1
    iget-object v4, p0, Ll1/r;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object p2, v0

    :cond_3
    iget-object v0, p0, Ll1/r;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ll1/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    :try_start_2
    new-instance p1, Lk1/c;

    const-string p2, "The prefix is a bad XML name"

    const/16 v0, 0xc9

    invoke-direct {p1, p2, v0}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lk1/c;

    const-string p2, "Empty prefix"

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lk1/c;-><init>(Ljava/lang/String;I)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final f()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk1/c;
        }
    .end annotation

    new-instance v5, Ln1/a;

    invoke-direct {v5}, Ln1/c;-><init>()V

    const/16 v0, 0x600

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Ln1/c;->e(IZ)V

    new-instance v11, Ln1/a;

    invoke-direct {v11}, Ln1/c;-><init>()V

    const/16 v0, 0x1e00

    invoke-virtual {v11, v0, v1}, Ln1/c;->e(IZ)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Author"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "creator"

    const/16 v17, 0x0

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Authors"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "description"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Description"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "format"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Format"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string/jumbo v16, "subject"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Keywords"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "language"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Locale"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string/jumbo v16, "title"

    const-string v13, "http://ns.adobe.com/xap/1.0/"

    const-string v14, "Title"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string/jumbo v16, "rights"

    const-string v13, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v14, "Copyright"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "BaseURL"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "BaseURL"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "CreateDate"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "CreationDate"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "Creator"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/pdf/1.3/"

    const-string v14, "ModDate"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Subject"

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/pdf/1.3/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/photoshop/1.0/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Caption"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Copyright"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string/jumbo v16, "subject"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "Keywords"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "Marked"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "Marked"

    const-string v15, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/photoshop/1.0/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "WebStatement"

    const-string v13, "http://ns.adobe.com/photoshop/1.0/"

    const-string v14, "WebStatement"

    const-string v15, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/tiff/1.0/"

    const-string v2, "Artist"

    invoke-virtual/range {v0 .. v5}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string/jumbo v16, "rights"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "Copyright"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "DateTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "description"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "ImageDescription"

    const-string v15, "http://purl.org/dc/elements/1.1/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/tiff/1.0/"

    const-string v14, "Software"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const-string v4, "creator"

    const-string v1, "http://ns.adobe.com/png/1.0/"

    const-string v2, "Author"

    invoke-virtual/range {v0 .. v5}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "rights"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Copyright"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "CreateDate"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "CreationTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string v10, "description"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Description"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "ModifyDate"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "ModificationTime"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v16, "CreatorTool"

    const-string v13, "http://ns.adobe.com/png/1.0/"

    const-string v14, "Software"

    const-string v15, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual/range {v12 .. v17}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    const-string v9, "http://purl.org/dc/elements/1.1/"

    const-string/jumbo v10, "title"

    const-string v7, "http://ns.adobe.com/png/1.0/"

    const-string v8, "Title"

    invoke-virtual/range {v6 .. v11}, Ll1/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln1/a;)V

    return-void
.end method

.method public final g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk1/c;
        }
    .end annotation

    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v1, "xml"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v1, "rdf"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpExt/2008-02-29/"

    const-string v1, "Iptc4xmpExt"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/DICOM/"

    const-string v1, "DICOM"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.useplus.org/ldf/xmp/1.0/"

    const-string v1, "plus"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adobe:ns:meta/"

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v1, "xmp"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string/jumbo v1, "xmpRights"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string/jumbo v1, "xmpMM"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string/jumbo v1, "xmpBJ"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string/jumbo v1, "xmpNote"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string v1, "pdf"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string v1, "pdfx"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string v1, "pdfxid"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string v1, "pdfaSchema"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string v1, "pdfaProperty"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string v1, "pdfaType"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string v1, "pdfaField"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string v1, "pdfaid"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string v1, "pdfaExtension"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string v1, "photoshop"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://cipa.jp/exif/1.0/"

    const-string v1, "exifEX"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string/jumbo v1, "tiff"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string v1, "png"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string/jumbo v1, "wav"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/bwf/bext/1.0/"

    const-string v1, "bext"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/riff/info/"

    const-string/jumbo v1, "riffinfo"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/Script/"

    const-string/jumbo v1, "xmpScript"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/TransformXMP/"

    const-string/jumbo v1, "txmp"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/swf/1.0/"

    const-string/jumbo v1, "swf"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string/jumbo v1, "xmpDM"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string/jumbo v1, "xmpx"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string/jumbo v1, "xmpT"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string/jumbo v1, "xmpTPg"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string/jumbo v1, "xmpG"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string/jumbo v1, "xmpGImg"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string/jumbo v1, "stFnt"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string/jumbo v1, "stDim"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string/jumbo v1, "stEvt"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string/jumbo v1, "stRef"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string/jumbo v1, "stVer"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string/jumbo v1, "stJob"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string/jumbo v1, "stMfs"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string/jumbo v1, "xmpidq"

    invoke-virtual {p0, v0, v1}, Ll1/r;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
