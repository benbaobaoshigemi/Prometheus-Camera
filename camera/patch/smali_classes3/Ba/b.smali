.class public final LBa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lra/l;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# virtual methods
.method public b(Lra/i;)Lra/c;
    .locals 0

    sget-object p0, Lra/c;->b:Lra/c;

    return-object p0
.end method

.method public c(Ljava/lang/Object;Ljava/io/File;Lra/i;)Z
    .locals 2

    check-cast p1, Lua/s;

    new-instance v0, LBa/d;

    invoke-interface {p1}, Lua/s;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, LBa/b;->a:Ljava/lang/Object;

    check-cast v1, Lva/b;

    invoke-direct {v0, p1, v1}, LBa/d;-><init>(Landroid/graphics/Bitmap;Lva/b;)V

    iget-object p0, p0, LBa/b;->b:Ljava/lang/Object;

    check-cast p0, LBa/c;

    invoke-virtual {p0, v0, p2, p3}, LBa/c;->c(Ljava/lang/Object;Ljava/io/File;Lra/i;)Z

    move-result p0

    return p0
.end method
