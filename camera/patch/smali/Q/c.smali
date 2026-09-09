.class public abstract LQ/c;
.super LN/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LQ/c$b;,
        LQ/c$a;,
        LQ/c$c;,
        LQ/c$f;,
        LQ/c$g;,
        LQ/c$h;,
        LQ/c$d;,
        LQ/c$i;,
        LQ/c$j;,
        LQ/c$k;,
        LQ/c$l;,
        LQ/c$m;,
        LQ/c$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LN/f;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, LN/f;->d:Ljava/lang/String;

    iput v0, p0, LN/f;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN/f;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static d(Ljava/lang/String;)LQ/c;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CUSTOM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, LQ/c$b;

    invoke-direct {p0}, LQ/c$b;-><init>()V

    return-object p0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "waveOffset"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "alpha"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "transitionPathRotate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "elevation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "rotation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "waveVariesBy"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v2, "scaleY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "scaleX"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "progress"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "translationZ"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_a
    const-string/jumbo v2, "translationY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "translationX"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_c
    const-string/jumbo v2, "rotationY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_d
    const-string/jumbo v2, "rotationX"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, LQ/c$a;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, LQ/c$a;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, LQ/c$d;

    invoke-direct {p0}, LQ/c$d;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LQ/c$c;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, LQ/c$f;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, LQ/c$a;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, LQ/c$j;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, LQ/c$i;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, LQ/c$e;

    invoke-direct {p0}, LQ/c;-><init>()V

    iput-boolean v0, p0, LQ/c$e;->g:Z

    return-object p0

    :pswitch_9
    new-instance p0, LQ/c$m;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, LQ/c$l;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_b
    new-instance p0, LQ/c$k;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_c
    new-instance p0, LQ/c$h;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :pswitch_d
    new-instance p0, LQ/c$g;

    invoke-direct {p0}, LQ/c;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract e(Landroid/view/View;F)V
.end method
