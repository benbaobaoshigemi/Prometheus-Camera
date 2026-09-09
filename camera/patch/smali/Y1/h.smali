.class public final LY1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LBw/e0;

.field public final b:LBw/a0;

.field public c:Lyw/B0;

.field public d:Lyw/B0;

.field public e:Lyw/B0;

.field public f:Z

.field public g:[F

.field public h:[F

.field public final i:[F

.field public final j:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, LBw/g0;->b(III)LBw/e0;

    move-result-object v0

    iput-object v0, p0, LY1/h;->a:LBw/e0;

    invoke-static {v0}, LBw/i;->b(LBw/Y;)LBw/a0;

    move-result-object v0

    iput-object v0, p0, LY1/h;->b:LBw/a0;

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, LY1/h;->g:[F

    new-array v1, v0, [F

    iput-object v1, p0, LY1/h;->h:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, LY1/h;->i:[F

    new-array v0, v0, [F

    iput-object v0, p0, LY1/h;->j:[F

    return-void
.end method

.method public static a(LY1/h;Landroid/hardware/SensorEvent;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, LY1/h;->g:[F

    invoke-virtual {p0}, LY1/h;->c()V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method public static b(LY1/h;Landroid/hardware/SensorEvent;)LPu/A;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, LY1/h;->h:[F

    invoke-virtual {p0}, LY1/h;->c()V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 5

    iget-object v0, p0, LY1/h;->g:[F

    iget-object v1, p0, LY1/h;->h:[F

    const-string v2, "accelerometerValues"

    invoke-static {v0, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "magneticFieldValues"

    invoke-static {v1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "rotationMatrix"

    iget-object v3, p0, LY1/h;->i:[F

    invoke-static {v3, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "orientationOutput"

    iget-object v4, p0, LY1/h;->j:[F

    invoke-static {v4, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x1

    aget v1, v4, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v4, v0

    const/4 v1, 0x2

    aget v2, v4, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v4, v1

    aget v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, LY1/h;->d(FF)V

    return-void
.end method

.method public final d(FF)V
    .locals 5

    iget-boolean v0, p0, LY1/h;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0xa

    add-int/2addr v3, v2

    rsub-int v2, v2, 0xaa

    int-to-float v3, v3

    cmpg-float v4, p1, v3

    if-lez v4, :cond_1

    int-to-float v4, v2

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_3

    :cond_1
    cmpg-float p1, p2, v3

    if-lez p1, :cond_2

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eq v1, v0, :cond_4

    iput-boolean v1, p0, LY1/h;->f:Z

    iget-object p0, p0, LY1/h;->a:LBw/e0;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, LBw/e0;->c(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
