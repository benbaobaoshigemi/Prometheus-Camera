.class public final LOt/B;
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

    iput-object p1, p0, LOt/B;->a:LOt/C;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LOt/B;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, LOt/B;->a:LOt/C;

    iget-boolean v0, v0, LOt/C;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, LOt/B;->a:LOt/C;

    iget-object p1, p1, LOt/C;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, LOt/B;->a:LOt/C;

    iget-object p0, p0, LOt/C;->a:LRt/n;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object p1

    new-instance p2, LCs/q;

    const/4 v0, 0x6

    invoke-direct {p2, p0, v0}, LCs/q;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, LRt/n;->Qq()V

    sget-object p1, Ldt/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, LRt/n;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, LRt/n;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, LRt/n;->q:Z

    sget-object p0, LFs/y;->n:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvr/z;->c([Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Emoticon: "

    const-string v2, "MIMOJI_EmoticonPresenterImpl"

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldt/a;->a:[Ljava/lang/String;

    iget-object v3, p0, LOt/B;->a:LOt/C;

    iget-object v4, v3, LOt/C;->f:Ljava/util/ArrayList;

    iget v3, v3, LOt/C;->i:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    const-string v3, " save success"

    invoke-static {p2, v0, v3}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldt/a;->a:[Ljava/lang/String;

    iget-object v3, p0, LOt/B;->a:LOt/C;

    iget-object v4, v3, LOt/C;->f:Ljava/util/ArrayList;

    iget v3, v3, LOt/C;->i:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    const-string v3, "  save failed"

    invoke-static {p2, v0, v3}, LS1/h;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p2, p0, LOt/B;->a:LOt/C;

    iget v0, p2, LOt/C;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p2, LOt/C;->i:I

    iget-object p2, p2, LOt/C;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge v0, p2, :cond_4

    iget-object p2, p0, LOt/B;->a:LOt/C;

    iget-object v0, p2, LOt/C;->f:Ljava/util/ArrayList;

    iget v1, p2, LOt/C;->i:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, LOt/x;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p2, p0}, LOt/x;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p2, LOt/C;->b:LYs/a;

    iget-boolean v0, p2, LYs/a;->c:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "OffLineRenderHandler"

    const-string v2, "queueEvent"

    invoke-static {v0, v2}, Lcom/faceunity/toolbox/utils/FULogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p2, LYs/a;->a:LPu/n;

    invoke-virtual {p2}, LPu/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, LOt/B;->a:LOt/C;

    iget-object p2, p2, LOt/C;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object p0, p0, LOt/B;->a:LOt/C;

    iget-object p2, p0, LOt/C;->a:LRt/n;

    iget p0, p0, LOt/C;->i:I

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/l;

    move-result-object v0

    new-instance v1, LRt/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2, p1}, LRt/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p1, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, LOt/B;->b(Ljava/lang/String;Z)V

    return-void
.end method
