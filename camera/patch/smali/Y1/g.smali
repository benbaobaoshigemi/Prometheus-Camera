.class public final LY1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY1/g$a;,
        LY1/g$b;,
        LY1/g$c;
    }
.end annotation


# instance fields
.field public final a:LBw/e0;

.field public final b:LBw/a0;

.field public final c:LBw/e0;

.field public final d:LBw/a0;

.field public final e:LBw/e0;

.field public f:Lyw/B0;

.field public g:Lyw/B0;

.field public h:Lyw/B0;

.field public i:Lyw/B0;

.field public j:F

.field public k:Z

.field public l:I

.field public final m:[F

.field public final n:[F

.field public o:[F

.field public p:[F

.field public final q:[F

.field public final r:[F

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v0, v0, v1}, LBw/g0;->b(III)LBw/e0;

    move-result-object v1

    iput-object v1, p0, LY1/g;->a:LBw/e0;

    invoke-static {v1}, LBw/i;->b(LBw/Y;)LBw/a0;

    move-result-object v1

    iput-object v1, p0, LY1/g;->b:LBw/a0;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, LBw/g0;->b(III)LBw/e0;

    move-result-object v3

    iput-object v3, p0, LY1/g;->c:LBw/e0;

    invoke-static {v3}, LBw/i;->b(LBw/Y;)LBw/a0;

    move-result-object v3

    iput-object v3, p0, LY1/g;->d:LBw/a0;

    invoke-static {v1, v0, v2}, LBw/g0;->b(III)LBw/e0;

    move-result-object v0

    iput-object v0, p0, LY1/g;->e:LBw/e0;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LY1/g;->j:F

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, LY1/g;->m:[F

    new-array v1, v0, [F

    iput-object v1, p0, LY1/g;->n:[F

    new-array v1, v0, [F

    iput-object v1, p0, LY1/g;->o:[F

    new-array v1, v0, [F

    iput-object v1, p0, LY1/g;->p:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, LY1/g;->q:[F

    new-array v0, v0, [F

    iput-object v0, p0, LY1/g;->r:[F

    const-string v0, "Unknown"

    iput-object v0, p0, LY1/g;->s:Ljava/lang/String;

    return-void
.end method

.method public static a(LY1/g;Landroid/hardware/SensorEvent;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, LY1/g;->p:[F

    invoke-virtual {p0}, LY1/g;->d()V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static b(LY1/g;Landroid/hardware/SensorEvent;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, LY1/g;->o:[F

    invoke-virtual {p0}, LY1/g;->d()V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method


# virtual methods
.method public final c(FFZ)V
    .locals 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, LY1/g;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v3, 0x1a

    add-int/2addr v3, v1

    rsub-int v1, v1, 0x99

    int-to-float v3, v3

    cmpg-float v4, p1, v3

    const/4 v5, 0x1

    if-lez v4, :cond_1

    int-to-float v4, v1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_2

    :cond_1
    cmpg-float p1, v0, v3

    if-lez p1, :cond_3

    int-to-float p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v5

    :goto_2
    const/16 v1, 0x5a

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42340000    # 45.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    const/4 v2, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    cmpg-float p2, p2, v0

    if-gez p2, :cond_5

    :goto_3
    move v2, v5

    goto :goto_4

    :cond_4
    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iget-boolean p2, p0, LY1/g;->k:Z

    if-ne p1, p2, :cond_7

    iget p2, p0, LY1/g;->l:I

    if-eq v2, p2, :cond_6

    goto :goto_5

    :cond_6
    return-void

    :cond_7
    :goto_5
    iput-boolean p1, p0, LY1/g;->k:Z

    iput v2, p0, LY1/g;->l:I

    iget-object p2, p0, LY1/g;->a:LBw/e0;

    new-instance p3, LY1/g$c;

    iget p0, p0, LY1/g;->j:F

    invoke-direct {p3, p0, v2, p1}, LY1/g$c;-><init>(FIZ)V

    invoke-virtual {p2, p3}, LBw/e0;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, LY1/g;->o:[F

    iget-object v1, p0, LY1/g;->p:[F

    const-string v2, "accelerometerValues"

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "magneticFieldValues"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, LY1/g;->q:[F

    const-string/jumbo v3, "rotationMatrix"

    invoke-static {v2, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, LY1/g;->r:[F

    const-string v4, "orientationOutput"

    invoke-static {v3, v4}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    invoke-static {v2, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x1

    aget v1, v3, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v3, v0

    const/4 v1, 0x2

    aget v2, v3, v1

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v3, v1

    aget v0, v3, v0

    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-nez v3, :cond_0

    cmpg-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LY1/g;->c:LBw/e0;

    new-instance v3, LY1/g$b;

    invoke-direct {v3, v0, v2}, LY1/g$b;-><init>(FF)V

    invoke-virtual {v1, v3}, LBw/e0;->c(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, LY1/g;->c(FFZ)V

    return-void
.end method
