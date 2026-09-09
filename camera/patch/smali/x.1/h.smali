.class public final Lx/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/h$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lx/h$a;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lx/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lx/h;

    iget-object v0, v0, Lx/h$a;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;

    iget-wide v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->d:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->d:J

    :cond_0
    new-instance v4, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-wide v8, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->d:J

    iget-wide v10, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->e:J

    iget v12, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->f:I

    new-instance v13, Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->g:LJ/a;

    invoke-virtual {v2}, LJ/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v14, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->h:Ljava/util/ArrayList;

    iget-object v5, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->a:Ljava/lang/String;

    iget-object v6, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->b:Ljava/lang/String;

    iget-object v7, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel$a;->c:Ljava/lang/String;

    invoke-direct/range {v4 .. v14}, Landroidx/appsearch/safeparcel/GenericDocumentParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v1, v4}, Lx/h;-><init>(Landroidx/appsearch/safeparcel/GenericDocumentParcel;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appsearch/safeparcel/GenericDocumentParcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    return-void
.end method

.method public static i(Lx/l;ILJ/a;)Ljava/lang/Object;
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lx/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge p1, v1, :cond_2c

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/l$a;

    iget-object v3, v1, Lx/l$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, LJ/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v3, -0x1

    iget v1, v1, Lx/l$a;->b:I

    if-eq v1, v3, :cond_9

    move-object v3, p2

    check-cast v3, Landroidx/appsearch/safeparcel/PropertyParcel;

    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->b:[Ljava/lang/String;

    if-eqz v4, :cond_2

    array-length p2, v4

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    goto :goto_1

    :cond_2
    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->c:[J

    if-eqz v4, :cond_3

    array-length p2, v4

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, v1, p2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p2

    goto :goto_1

    :cond_3
    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->d:[D

    if-eqz v4, :cond_4

    array-length p2, v4

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, v1, p2}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->e:[Z

    if-eqz v4, :cond_5

    array-length p2, v4

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, v1, p2}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object p2

    goto :goto_1

    :cond_5
    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->f:[[B

    if-eqz v4, :cond_6

    array-length p2, v4

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_6
    iget-object v4, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->g:[Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz v4, :cond_7

    array-length p2, v4

    if-ge v1, p2, :cond_1

    aget-object p2, v4, v1

    goto :goto_1

    :cond_7
    iget-object v3, v3, Landroidx/appsearch/safeparcel/PropertyParcel;->h:[Lx/g;

    if-eqz v3, :cond_8

    array-length p2, v3

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v3, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported value type: "

    invoke-static {p2, p1}, LF1/j3;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    if-eqz p2, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_a

    goto/16 :goto_10

    :cond_a
    instance-of v0, p2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz v0, :cond_b

    check-cast p2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object p2, p2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LJ/a;

    goto :goto_2

    :cond_b
    instance-of v0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;

    if-eqz v0, :cond_22

    check-cast p2, Landroidx/appsearch/safeparcel/PropertyParcel;

    iget-object p2, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->g:[Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz p2, :cond_22

    array-length v0, p2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_c

    aget-object p2, p2, v3

    iget-object p2, p2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LJ/a;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p2

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_e

    aget-object v6, p2, v5

    add-int/lit8 v7, p1, 0x1

    iget-object v6, v6, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LJ/a;

    invoke-static {p0, v7, v6}, Lx/h;->i(Lx/l;ILJ/a;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_f

    goto/16 :goto_11

    :cond_f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, [Ljava/lang/String;

    if-eqz p1, :cond_12

    move p0, v3

    move p1, p0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_10

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_10
    new-array p0, p1, [Ljava/lang/String;

    move p1, v3

    move p2, p1

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_11
    return-object p0

    :cond_12
    instance-of p1, p0, [J

    if-eqz p1, :cond_15

    move p0, v3

    move p1, p0

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_13

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_13
    new-array p0, p1, [J

    move p1, v3

    move p2, p1

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_14
    return-object p0

    :cond_15
    instance-of p1, p0, [D

    if-eqz p1, :cond_18

    move p0, v3

    move p1, p0

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_16

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [D

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_16
    new-array p0, p1, [D

    move p1, v3

    move p2, p1

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_17
    return-object p0

    :cond_18
    instance-of p1, p0, [Z

    if-eqz p1, :cond_1b

    move p0, v3

    move p1, p0

    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_19

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_a

    :cond_19
    new-array p0, p1, [Z

    move p1, v3

    move p2, p1

    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_1a
    return-object p0

    :cond_1b
    instance-of p1, p0, [[B

    if-eqz p1, :cond_1e

    move p0, v3

    move p1, p0

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_1c

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_1c
    new-array p0, p1, [[B

    move p1, v3

    move p2, p1

    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1d
    return-object p0

    :cond_1e
    instance-of p1, p0, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz p1, :cond_21

    move p0, v3

    move p1, p0

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p0, p2, :cond_1f

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    goto :goto_e

    :cond_1f
    new-array p0, p1, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    move p1, v3

    move p2, p1

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_20

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    array-length v2, v1

    invoke-static {v1, v3, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_20
    return-object p0

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected property type: "

    invoke-static {p0, p2}, LF1/j3;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to apply path to document; no nested value found: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSearchGenericDocumen"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_23
    :goto_10
    if-eqz p2, :cond_2b

    instance-of p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;

    if-eqz p0, :cond_2b

    check-cast p2, Landroidx/appsearch/safeparcel/PropertyParcel;

    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->b:[Ljava/lang/String;

    if-eqz p0, :cond_24

    return-object p0

    :cond_24
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->c:[J

    if-eqz p0, :cond_25

    return-object p0

    :cond_25
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->d:[D

    if-eqz p0, :cond_26

    return-object p0

    :cond_26
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->e:[Z

    if-eqz p0, :cond_27

    return-object p0

    :cond_27
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->f:[[B

    if-eqz p0, :cond_28

    return-object p0

    :cond_28
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->g:[Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz p0, :cond_29

    return-object p0

    :cond_29
    iget-object p0, p2, Landroidx/appsearch/safeparcel/PropertyParcel;->h:[Lx/g;

    if-eqz p0, :cond_2a

    return-object p0

    :cond_2a
    return-object v2

    :cond_2b
    return-object p2

    :cond_2c
    :goto_11
    return-object v2
.end method

.method public static j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error casting to requested type for path \""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppSearchGenericDocumen"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static l(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    const-string v0, "The value for \""

    const-string v1, "\" contains "

    const-string v2, " elements. Only the first one will be returned from getProperty"

    invoke-static {v0, p2, p0, v1, v2}, LCs/Q;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "(). Try getProperty"

    const-string v0, "Array()."

    invoke-static {p0, p1, p2, p1, v0}, LN/i;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppSearchGenericDocumen"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LD/b;)V
    .locals 11

    const-string/jumbo v0, "{\n"

    invoke-virtual {p1, v0}, LD/b;->a(Ljava/lang/String;)V

    iget v0, p1, LD/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, LD/b;->c:I

    const-string v0, "namespace: \""

    invoke-virtual {p1, v0}, LD/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    const-string v1, "\",\n"

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    const-string v2, "id: \""

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "score: "

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    iget v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    const-string v2, ",\n"

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "schemaType: \""

    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_0
    const-string v3, "\n"

    if-eqz v1, :cond_1

    const-string v4, "parentTypes: "

    invoke-virtual {p1, v4}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "creationTimestampMillis: "

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    iget-wide v4, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "timeToLiveMillis: "

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    iget-wide v4, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    const-string v1, "properties: {\n"

    invoke-virtual {p1, v1}, LD/b;->a(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LJ/a;

    invoke-virtual {v0}, LJ/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move v4, v1

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_a

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Lx/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, p1, LD/b;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p1, LD/b;->c:I

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "\""

    invoke-virtual {p1, v7}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, LD/b;->a(Ljava/lang/String;)V

    const-string v6, "\": ["

    invoke-virtual {p1, v6}, LD/b;->a(Ljava/lang/String;)V

    instance-of v6, v5, [Lx/h;

    if-eqz v6, :cond_3

    check-cast v5, [Lx/h;

    move v6, v1

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_8

    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    iget v7, p1, LD/b;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, LD/b;->c:I

    aget-object v7, v5, v6

    invoke-virtual {v7, p1}, Lx/h;->a(LD/b;)V

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_2

    const-string v7, ","

    invoke-virtual {p1, v7}, LD/b;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, LD/b;->b()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    move v8, v1

    :goto_3
    if-ge v8, v6, :cond_8

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_4

    invoke-virtual {p1, v7}, LD/b;->a(Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, LD/b;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    instance-of v10, v9, [B

    if-eqz v10, :cond_5

    check-cast v9, [B

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, LD/b;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, LD/b;->a(Ljava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v9, v6, -0x1

    if-eq v8, v9, :cond_7

    const-string v9, ", "

    invoke-virtual {p1, v9}, LD/b;->a(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    const-string v5, "]"

    invoke-virtual {p1, v5}, LD/b;->a(Ljava/lang/String;)V

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_9

    invoke-virtual {p1, v2}, LD/b;->a(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, LD/b;->b()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, LD/b;->b()V

    invoke-virtual {p1, v3}, LD/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, LD/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lx/l;

    invoke-direct {v0, p1}, Lx/l;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object p0, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LJ/a;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lx/h;->i(Lx/l;ILJ/a;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz v0, :cond_0

    new-instance p1, Lx/h;

    check-cast p0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    invoke-direct {p1, p0}, Lx/h;-><init>(Landroidx/appsearch/safeparcel/GenericDocumentParcel;)V

    filled-new-array {p1}, [Lx/h;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    if-eqz v0, :cond_3

    check-cast p0, [Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    array-length v0, p0

    new-array v0, v0, [Lx/h;

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The inner parcel is null at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", for path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppSearchGenericDocumen"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v3, Lx/h;

    invoke-direct {v3, v2}, Lx/h;-><init>(Landroidx/appsearch/safeparcel/GenericDocumentParcel;)V

    aput-object v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lx/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, [Z

    invoke-static {v0, p1, p0}, Lx/h;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Boolean"

    array-length v2, p0

    invoke-static {v2, v1, p1}, Lx/h;->l(ILjava/lang/String;Ljava/lang/String;)V

    aget-boolean p0, p0, v0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final d(Ljava/lang/String;)Lx/h;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lx/h;->e(Ljava/lang/String;)[Lx/h;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Document"

    array-length v1, p0

    invoke-static {v1, v0, p1}, Lx/h;->l(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Ljava/lang/String;)[Lx/h;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ArrayReturn"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lx/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, [Lx/h;

    invoke-static {v0, p1, p0}, Lx/h;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lx/h;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lx/h;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lx/h;

    iget-object p0, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object p1, p1, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    invoke-virtual {p0, p1}, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Lx/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, [J

    invoke-static {v0, p1, p0}, Lx/h;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Long"

    array-length v1, p0

    invoke-static {v1, v0, p1}, Lx/h;->l(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-wide p0, p0, p1

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lx/h;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "String"

    array-length v1, p0

    invoke-static {v1, v0, p1}, Lx/h;->l(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lx/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, [Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lx/h;->j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    invoke-virtual {p0}, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->hashCode()I

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/Class;Lx/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lx/f;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly/a;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lx/e;->a()Lx/e;

    move-result-object v0

    iget-object v1, p2, Lx/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lx/h;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->c:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Landroidx/appsearch/app/AppSearchDocumentClassMap;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object p1, v3

    goto :goto_2

    :cond_1
    iget-object v3, p2, Lx/f;->b:Ljava/util/Map;

    iget-object v4, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->c:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4, p1}, Landroidx/appsearch/app/AppSearchDocumentClassMap;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object p1, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find any compatible target class to deserialize. Perhaps the annotation processor was not run or the generated document class map was proguarded out?\nTry to deserialize to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " directly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppSearchGenericDocumen"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {v0, p1}, Lx/e;->b(Ljava/lang/Class;)Lx/d;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lx/d;->a(Lx/h;Lx/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, LD/b;

    invoke-direct {v0}, LD/b;-><init>()V

    invoke-virtual {p0, v0}, Lx/h;->a(LD/b;)V

    iget-object p0, v0, LD/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
