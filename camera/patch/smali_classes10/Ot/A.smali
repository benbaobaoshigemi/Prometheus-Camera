.class public final LOt/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot/d;


# instance fields
.field public final synthetic a:LOt/C;


# direct methods
.method public constructor <init>(LOt/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOt/A;->a:LOt/C;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LOt/A;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, LOt/A;->a:LOt/C;

    iget-boolean v0, v0, LOt/C;->k:Z

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    iget-object p2, p0, LOt/A;->a:LOt/C;

    iget-object v0, p2, LOt/C;->a:LRt/n;

    iget p2, p2, LOt/C;->h:I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v1

    new-instance v2, LRt/i;

    invoke-direct {v2, v0, p2, p1}, LRt/i;-><init>(LRt/n;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object p1, p0, LOt/A;->a:LOt/C;

    iget p2, p1, LOt/C;->h:I

    sget-object v0, Ldt/a;->a:[Ljava/lang/String;

    const/16 v0, 0xb

    if-ge p2, v0, :cond_3

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, LOt/C;->h:I

    new-instance v0, LOt/y;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1, p0}, LOt/y;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p1, LOt/C;->b:LYs/a;

    iget-boolean p1, p0, LYs/a;->c:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "OffLineRenderHandler"

    const-string p2, "queueEvent"

    invoke-static {p1, p2}, Lcom/faceunity/toolbox/utils/FULogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LYs/a;->a:LPu/n;

    invoke-virtual {p0}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p1, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, LOt/A;->b(Ljava/lang/String;Z)V

    return-void
.end method
