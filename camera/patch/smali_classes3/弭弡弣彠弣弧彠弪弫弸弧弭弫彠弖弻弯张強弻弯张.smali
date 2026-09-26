.class public final L弭弡弣彠弣弧彠弪弫弸弧弭弫彠弖弻弯张強弻弯张;
.super L偣偯偭倮偭偩倮偤健偶偩偣健倮偸偩偡偯偭偩倮偃偯偭偭偯偮偆偬偡偧偳偨偩偰;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L偣偯偭倮偭偩倮偤健偶偩偣健倮偸偩偡偯偭偩倮偃偯偭偭偯偮偆偬偡偧偳偨偩偰;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final A0()[I
    .locals 3

    const/16 p0, 0xa2

    const/16 v0, 0xe1

    const/16 v1, 0xa3

    const/16 v2, 0xba

    filled-new-array {v1, v2, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final A7()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d41\u3d5d\u3d4b"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final B0()[I
    .locals 2

    const/16 p0, 0xb4

    const/16 v0, 0xa4

    const/16 v1, 0xa7

    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final B1()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v1, "\u3d42\u3d5d\u3d43"

    const v2, -0x378fc28d

    invoke-static {v2, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u3d41\u3d4b\u3d1e\u3d1e"

    invoke-static {v2, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u3d40\u3d46\u3d1e\u3d1e"

    invoke-static {v2, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v5, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "\u3d47\u3d5d\u3d40\u3d5e\u3d42\u3d43\u3d43\u3d1e\u3d1e"

    invoke-static {v2, v3}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "\u3d41\u3d43\u3d43\u3d1e\u3d1e"

    invoke-static {v2, v5}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "\u3d47\u3d43\u3d43\u3d1e\u3d1e"

    invoke-static {v2, v7}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v5, v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0xa3

    invoke-static {v3, p0, v0}, LMe/a;->a(ILjava/util/HashMap;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v2, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final B4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final C0()[I
    .locals 3

    const/16 p0, 0xa4

    const/16 v0, 0xa9

    const/16 v1, 0xa7

    const/16 v2, 0xb4

    filled-new-array {v1, v2, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final C1()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const v2, 0x4089999a    # 4.3f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Float;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xa3

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa2

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final D()I
    .locals 0

    const p0, 0x646464

    return p0
.end method

.method public final D0()J
    .locals 2

    const-wide/16 v0, 0x37

    return-wide v0
.end method

.method public final D4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final D6()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E3()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final E5()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final F2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final G5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()F
    .locals 0

    const/high16 p0, 0x40a00000    # 5.0f

    return p0
.end method

.method public final I()[F
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f666666    # 0.9f
        0x0
    .end array-data
.end method

.method public final I0()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public final I1()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final I5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final J()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final K1()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public final L1()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public final M()[I
    .locals 0

    const/16 p0, 0x8

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0xe7
        0xa7
        0xa2
        0xa3
        0xab
        0xba
        0xaf
        0xfe
    .end array-data
.end method

.method public final M0()I
    .locals 0

    const/16 p0, 0x32

    return p0
.end method

.method public final M5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final M6()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final O3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final P0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d47\u3d49\u3d4b\u3d42\u3d4a\u3d41\u3d0b\u3d45\u3d42\u3d47\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d47\u3d49\u3d4b\u3d42\u3d4a\u3d41\u3d0b\u3d45\u3d42\u3d47\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Q4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final R0()[I
    .locals 3

    const/16 p0, 0x15

    const/16 v0, 0x17

    const/4 v1, 0x0

    const/16 v2, 0x14

    filled-new-array {v1, v2, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final R3()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final R7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final S0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d47\u3d49\u3d4b\u3d42\u3d4a\u3d41\u3d0b\u3d45\u3d42\u3d47\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final S6()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa3

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xad

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xba

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xaf

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xb8

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xcd

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xe1

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xe5

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xbc

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe7

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final T()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final T0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d47\u3d49\u3d4b\u3d42\u3d4a\u3d41\u3d0b\u3d45\u3d42\u3d47\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T4()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final T6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final U1()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final V4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final V7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final W5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Y()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Y5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Z3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final a0()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public final a3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b8()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d41\u3d5d\u3d4b"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    const-string/jumbo v0, "\u3d2b\u3d3a\u3d32\u3d3c\u3d3e\u3d3a"

    const v1, -0x378fc28d

    invoke-static {v1, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u3d42\u3d46\u3d53\u3d26\u3d1f\u3d07\u3d01\u3d12"

    invoke-static {v1, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final d8()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d1b\u3d41\u3d45\u3d46"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d42"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e1()Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "LLe/b;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v0, LLe/b;

    invoke-direct {v0}, LLe/b;-><init>()V

    new-instance v1, LLe/b;

    const/high16 v2, 0x420c0000    # 35.0f

    const/high16 v3, 0x41b80000    # 23.0f

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v3, v4}, LLe/b;-><init>(FFFI)V

    new-instance v2, LLe/b;

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x42380000    # 46.0f

    const/4 v7, 0x2

    invoke-direct {v2, v5, v6, v3, v7}, LLe/b;-><init>(FFFI)V

    new-instance v5, LLe/b;

    const/high16 v6, 0x42960000    # 75.0f

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-direct {v5, v6, v8, v3, v7}, LLe/b;-><init>(FFFI)V

    new-instance v6, LLe/b;

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-direct {v6, v7, v8, v3, v4}, LLe/b;-><init>(FFFI)V

    new-instance v7, LLe/b;

    const/high16 v8, 0x43070000    # 135.0f

    const/high16 v9, 0x42d40000    # 106.0f

    invoke-direct {v7, v8, v9, v3, v4}, LLe/b;-><init>(FFFI)V

    const/16 v3, 0x1c

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x23

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x32

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x4b

    invoke-virtual {p0, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x5a

    invoke-virtual {p0, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x87

    invoke-virtual {p0, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final e5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final f1()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x410c28f6    # 8.76f
        0x3fd0a3d7    # 1.63f
    .end array-data
.end method

.method public final g5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i4()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j1()[Ljava/lang/Float;
    .locals 3

    const/high16 p0, 0x40a00000    # 5.0f

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final k3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final m7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o3()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o6()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final o7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final p()I
    .locals 0

    const/16 p0, 0x3e8

    return p0
.end method

.method public final p1()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d42\u3d45\u3d44\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d49\u3d40\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d48\u3d42\u3d4b\u3d43\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d48\u3d42\u3d45\u3d47\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d48\u3d42\u3d45\u3d4a\u3d49\u3d42\u3d41\u3d46\u3d43\u3d43\u3d43\u3d49\u3d40\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43\u3d43"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q0()Ljava/util/Map;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LLe/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, LLe/a;

    invoke-direct {v1}, LLe/a;-><init>()V

    const-string/jumbo v2, "\u3d41"

    const v3, -0x378fc28d

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LLe/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "\u3d06\u3d1f\u3d07\u3d01\u3d12"

    invoke-static {v3, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u3d04\u3d1a\u3d17\u3d16"

    invoke-static {v3, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u3d07\u3d16\u3d1f\u3d16"

    invoke-static {v3, v8}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\u3d20\u3d07\u3d12\u3d1d\u3d17\u3d12\u3d1f\u3d1c\u3d1d\u3d16"

    invoke-static {v3, v10}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v5, v7, v9, v11}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v1, LLe/a;->b:Ljava/util/List;

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/high16 v19, 0x40c00000    # 6.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/high16 v20, 0x40400000    # 3.0f

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/high16 v21, 0x41100000    # 9.0f

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v22, 0x4089999a    # 4.3f

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const v23, 0x414e6666    # 12.9f

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    filled-new-array/range {v11 .. v18}, [Ljava/lang/Float;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, LLe/a;->c:Ljava/util/List;

    sget-object v24, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v25, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v26, v24

    move-object/from16 v27, v25

    move-object/from16 v28, v24

    move-object/from16 v29, v25

    move-object/from16 v30, v24

    move-object/from16 v31, v25

    filled-new-array/range {v24 .. v31}, [Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, LLe/a;->d:Ljava/util/List;

    const-string/jumbo v11, "\u3d41\u3d49\u3d43\u3d5d\u3d45"

    invoke-static {v3, v11}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\u3d47\u3d5d\u3d40\u3d49\u3d42"

    invoke-static {v3, v12}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\u3d4b\u3d5d\u3d45\u3d49\u3d47\u3d5d\u3d40"

    invoke-static {v3, v13}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v13}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v11, v12, v14, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, LLe/a;->e:Ljava/util/List;

    const/4 v11, 0x1

    iput-boolean v11, v1, LLe/a;->g:Z

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LLe/a;

    invoke-direct {v1}, LLe/a;-><init>()V

    const-string/jumbo v2, "\u3d40"

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, LLe/a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v8}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v10}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v6, v8, v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, LLe/a;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v10 .. v17}, [Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, LLe/a;->c:Ljava/util/List;

    move-object/from16 v12, v25

    move-object/from16 v13, v25

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v25

    move-object/from16 v18, v25

    move-object/from16 v11, v25

    filled-new-array/range {v11 .. v18}, [Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, LLe/a;->d:Ljava/util/List;

    const-string/jumbo v4, "\u3d43\u3d5d\u3d45\u3d49\u3d41"

    invoke-static {v3, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\u3d42\u3d49\u3d47\u3d5d\u3d40"

    invoke-static {v3, v5}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u3d47\u3d5d\u3d40\u3d49\u3d4b\u3d5d\u3d45"

    invoke-static {v3, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v5, v7, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, LLe/a;->e:Ljava/util/List;

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LLe/a;

    invoke-direct {v1}, LLe/a;-><init>()V

    const-string/jumbo v2, "\u3d43"

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LLe/a;->a:Ljava/lang/String;

    invoke-static {v3, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final q1()[I
    .locals 0

    const/16 p0, 0x10

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final r1()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final t1()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final t5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final u1()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final v1()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x4089999a    # 4.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0xa3

    invoke-virtual {p0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0xaf

    invoke-virtual {p0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0xad

    invoke-virtual {p0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Float;

    move-result-object v5

    const/16 v6, 0xac

    invoke-virtual {p0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Float;

    move-result-object v2

    const/16 v5, 0xab

    invoke-virtual {p0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Float;

    move-result-object v2

    const/16 v5, 0xa7

    invoke-virtual {p0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final v2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final v4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final v5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final w()I
    .locals 0

    const p0, 0x830001

    return p0
.end method

.method public final w4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final w5()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final x0()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final y0()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const v0, 0x4089999a    # 4.3f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v0, 0x4109999a    # 8.6f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const v0, 0x4189999a    # 17.2f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final y1()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d07\u3d16\u3d1f\u3d16"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y4()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final y7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final z0()I
    .locals 0

    const/16 p0, 0x16d

    return p0
.end method

.method public final z1()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
