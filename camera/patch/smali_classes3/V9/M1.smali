.class public final synthetic LV9/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/i$c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LV9/M1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)La5/j;
    .locals 5

    iget p0, p0, LV9/M1;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, La5/j$a;

    invoke-direct {p0}, La5/j$a;-><init>()V

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/q0;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LV9/k3;

    invoke-direct {v1, p1, p0}, LV9/k3;-><init>(ILa5/j$a;)V

    new-instance p1, LV9/l3;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, LV9/l3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget v0, p0, La5/j$a;->a:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, La5/j$a;->g:Z

    if-eqz v0, :cond_0

    sget v0, LQh/b;->ic_vector_config_subtitle_on_mm:I

    goto :goto_0

    :cond_0
    sget v0, LQh/b;->ic_vector_config_subtitle_off_mm:I

    :goto_0
    iput v0, p0, La5/j$a;->a:I

    :cond_1
    invoke-virtual {p0}, La5/j$a;->a()La5/j;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lg2/a;->h()Lt2/j;

    move-result-object p0

    iget-boolean p0, p0, Lt2/j;->q:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0804c3

    goto :goto_1

    :cond_2
    const p0, 0x7f0804c4

    :goto_1
    const p1, 0x7f141305

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, LV9/F2;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, La5/j;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput p0, v2, La5/j;->a:I

    const/4 p0, 0x0

    iput p0, v2, La5/j;->d:I

    iput p0, v2, La5/j;->e:I

    iput p0, v2, La5/j;->f:I

    iput-object p1, v2, La5/j;->g:Ljava/lang/String;

    iput-boolean p0, v2, La5/j;->h:Z

    const/4 p1, 0x1

    iput-boolean p1, v2, La5/j;->i:Z

    iput p0, v2, La5/j;->j:I

    iput-boolean p0, v2, La5/j;->k:Z

    iput-boolean p1, v2, La5/j;->l:Z

    iput-boolean p1, v2, La5/j;->m:Z

    iput-object v1, v2, La5/j;->b:[I

    iput-object v0, v2, La5/j;->c:[Ljava/lang/String;

    return-object v2

    :pswitch_1
    const/4 p0, 0x2

    new-array p1, p0, [I

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v0

    sget-object v1, LX6/i;->a:LX6/j;

    invoke-interface {v1, v0}, LX6/j;->v0(Z)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const v3, 0x7f1410e5

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, LV9/F2;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f1400d5

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f140058

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, La5/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v2, v3, La5/j;->a:I

    iput v2, v3, La5/j;->d:I

    iput v1, v3, La5/j;->e:I

    iput v2, v3, La5/j;->f:I

    iput-object v0, v3, La5/j;->g:Ljava/lang/String;

    iput-boolean v2, v3, La5/j;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, v3, La5/j;->i:Z

    iput v2, v3, La5/j;->j:I

    iput-boolean v2, v3, La5/j;->k:Z

    iput-boolean v0, v3, La5/j;->l:Z

    iput-boolean v0, v3, La5/j;->m:Z

    iput-object p1, v3, La5/j;->b:[I

    iput-object p0, v3, La5/j;->c:[Ljava/lang/String;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
