.class public final LEs/CclockTop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La5/i$c;


# instance fields
.field public final a:Lr2/i;


# direct methods
.method public constructor <init>(Lr2/i;)V
    .locals 0

    iput-object p1, p0, LEs/CclockTop;->a:Lr2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)La5/j;
    .locals 3

    iget-object v0, p0, LEs/CclockTop;->a:Lr2/i;

    invoke-virtual {v0}, Lr2/i;->p()Z

    move-result v0

    new-instance v1, La5/j$a;

    invoke-direct {v1}, La5/j$a;-><init>()V

    sget v2, LQh/b;->ic_video_cclock_topbar_on:I

    iput v2, v1, La5/j$a;->a:I

    iput-boolean v0, v1, La5/j$a;->g:Z

    const v0, 0x7f1403c5

    iput v0, v1, La5/j$a;->e:I

    invoke-virtual {v1}, La5/j$a;->a()La5/j;

    move-result-object v0

    return-object v0
.end method
