.class public final synthetic LF1/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/i$b;
.implements LYb/h$a;
.implements LVc/k$a;
.implements LH8/a$b;
.implements Lcom/hannto/avocado/lib/RequestListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LF1/r0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LZb/b$a;ZI)V
    .locals 0

    .line 2
    const/4 p1, 0x5

    iput p1, p0, LF1/r0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIII)I
    .locals 0

    sub-int/2addr p0, p1

    div-int/2addr p0, p2

    add-int/2addr p0, p3

    return p0
.end method

.method public static f(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/log/DumpTrace;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public b(I)La5/a;
    .locals 4

    iget p0, p0, LF1/r0;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, La5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La5/a;->a:I

    iput v0, p0, La5/a;->b:I

    const v1, 0x7f140d39

    iput v1, p0, La5/a;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, La5/a;->f:Ljava/lang/String;

    iput-boolean v0, p0, La5/a;->g:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, La5/a;->h:Z

    iput-object v1, p0, La5/a;->i:Lcom/android/camera/data/data/c;

    const/4 v3, -0x1

    iput v3, p0, La5/a;->d:I

    iput-object v1, p0, La5/a;->e:Ljava/lang/String;

    iput-boolean v0, p0, La5/a;->j:Z

    iput-boolean v2, p0, La5/a;->k:Z

    iput-boolean v0, p0, La5/a;->l:Z

    iput-boolean v2, p0, La5/a;->m:Z

    invoke-static {p1}, Lcom/android/camera/data/data/E;->G(I)Z

    move-result p1

    const v0, 0x7f080816

    iput v0, p0, La5/a;->a:I

    iput-boolean p1, p0, La5/a;->g:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1300b6

    goto :goto_0

    :cond_0
    const p1, 0x7f1300b5

    :goto_0
    iput p1, p0, La5/a;->b:I

    return-object p0

    :pswitch_0
    new-instance p0, La5/a$a;

    invoke-direct {p0}, La5/a$a;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v3

    const-class v1, Lv2/q0;

    invoke-virtual {v3, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/q0;

    invoke-virtual {v1, p1}, Lv2/q0;->isSwitchOn(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, La5/a$a;->f:Z

    sget-object v1, LX6/i;->a:LX6/j;

    if-eqz v0, :cond_1

    const v2, 0x7f080822

    goto :goto_2

    :cond_1
    const v2, 0x7f080821

    :goto_2
    iput v2, p0, La5/a$a;->a:I

    invoke-interface {v1, v0}, LX6/j;->g(Z)I

    move-result v2

    iput v2, p0, La5/a$a;->b:I

    sget v2, LQh/e;->pref_video_subtitle:I

    iput v2, p0, La5/a$a;->c:I

    invoke-virtual {p0}, La5/a$a;->a()La5/a;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, LS1/i;->g(Landroid/view/View;Lmiuix/animation/listener/TransitionListener;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)LYb/h;
    .locals 3

    const/4 p0, 0x0

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    invoke-static {v1}, LFz/a;->b(Z)V

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, LYb/L;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v1, p0}, LYb/L;-><init>(Z)V

    return-object v1

    :cond_1
    new-instance p0, LYb/L;

    invoke-direct {p0}, LYb/L;-><init>()V

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LZb/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onResponse(ZLorg/json/JSONObject;Lcom/hannto/laser/HanntoError;)V
    .locals 0

    return-void
.end method
