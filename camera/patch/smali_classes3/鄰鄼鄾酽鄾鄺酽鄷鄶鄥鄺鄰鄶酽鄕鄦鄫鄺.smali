.class public final L鄰鄼鄾酽鄾鄺酽鄷鄶鄥鄺鄰鄶酽鄕鄦鄫鄺;
.super L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, L鄰鄼鄾酽鄾鄺酽鄷鄶鄥鄺鄰鄶酽鄕鄦鄫鄺;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, L鄰鄼鄾酽鄾鄺酽鄷鄶鄥鄺鄰鄶酽鄕鄦鄫鄺;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x24
        -0x18
        -0x9
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1b
        -0xc
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final A7()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d42\u3d5d\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final B1()Ljava/util/Map;
    .locals 5
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

    move-result-object v1

    const-string/jumbo v3, "\u3d41\u3d4b\u3d1e\u3d1e"

    invoke-static {v2, v3}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u3d40\u3d46\u3d1e\u3d1e"

    invoke-static {v2, v4}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "\u3d40\u3d5d\u3d41"

    invoke-static {v2, v1}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\u3d45\u3d5d\u3d47"

    invoke-static {v2, v3}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final C1()Landroid/util/SparseArray;
    .locals 10
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

    const v2, 0x404ccccd    # 3.2f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Float;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0xa3

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xa2

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final C5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final D5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final E1()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final E3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final F()I
    .locals 0

    const p0, 0xc96a80

    return p0
.end method

.method public final F3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d41\u3d5d\u3d40\u3d5d\u3d42\u3d2c\u3d40\u3d44\u3d4a\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final G0()I
    .locals 0

    const/16 p0, 0x13b

    return p0
.end method

.method public final H0()I
    .locals 0

    const p0, 0x1312d00

    return p0
.end method

.method public final H5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final H6()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d1e\u3d12\u3d10\u3d01\u3d1c\u3d49\u3d10\u3d12\u3d03\u3d07\u3d06\u3d01\u3d16\u3d2c\u3d1a\u3d1d\u3d07\u3d16\u3d1d\u3d07\u3d49\u3d06\u3d1f\u3d07\u3d01\u3d12\u3d2c\u3d04\u3d1a\u3d17\u3d16\u3d49\u3d03\u3d01\u3d1c"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I0()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public final I6()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public final J0()F
    .locals 0

    const/high16 p0, 0x3f400000    # 0.75f

    return p0
.end method

.method public final J3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final J7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final K()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final K4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final L()[I
    .locals 2

    const/16 p0, -0x18

    const/4 v0, 0x0

    const/16 v1, 0x9

    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final L5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final M6()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final N2()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d40\u3d43\u3d35\u3d23\u3d20"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final O()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final O0()S
    .locals 0

    sget-object p0, L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;->f:L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;

    iget-short p0, p0, L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;->a:S

    return p0
.end method

.method public final O1()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d40"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final O6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final P()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final P1()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final P7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Q()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d47\u3d49\u3d4b\u3d42\u3d4a\u3d41\u3d0b\u3d45\u3d42\u3d47\u3d47"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final Q3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Q4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final R()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final R1()I
    .locals 0

    const/16 p0, 0x1780

    return p0
.end method

.method public final R3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final R5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final S1()F
    .locals 0

    const/high16 p0, 0x41a00000    # 20.0f

    return p0
.end method

.method public final S3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final S7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final T()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final T5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final V0()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final V7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final W7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d46\u3d43\u3d43"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final X1()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final X3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final X5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Y()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Y2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Y6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Z()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public final Z4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final Z5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final a0()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b1()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b7()Z
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

    const-string/jumbo v2, "\u3d42\u3d40"

    invoke-static {v1, v2}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final d0()S
    .locals 0

    sget-object p0, L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;->c:L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;

    iget-short p0, p0, L큊큆큄퀇큄큀퀇큊큆큇큏큀큎큍큈큝큈퀇큺큅큆큞큤큆큝큀큆큇크큇큜큄;->a:S

    return p0
.end method

.method public final d7()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final d8()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d1b\u3d41\u3d45\u3d47"

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

.method public final e0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final e6()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f0()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final f3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d12\u3d06\u3d07\u3d1c"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g3()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i0()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d4a\u3d43\u3d5f\u3d45\u3d43"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i1()I
    .locals 0

    const/4 p0, 0x3

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

.method public final k()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d1e\u3d15\u3d1d\u3d01\u3d49\u3d42"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k1(Z)[I
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, L鄰鄼鄾酽鄾鄺酽鄷鄶鄥鄺鄰鄶酽鄕鄦鄫鄺;->c:[I

    return-object p0

    :cond_0
    sget-object p0, L鄰鄼鄾酽鄾鄺酽鄷鄶鄥鄺鄰鄶酽鄕鄦鄫鄺;->d:[I

    return-object p0
.end method

.method public final l3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d07\u3d01\u3d06\u3d16\u3d49\u3d47\u3d43\u3d43\u3d43\u3d0b\u3d40\u3d43\u3d43\u3d43"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n1()L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴$a;
    .locals 0

    sget-object p0, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴$a;->c:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴$a;

    return-object p0
.end method

.method public final n2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d5c\u3d05\u3d16\u3d1d\u3d17\u3d1c\u3d01\u3d5c\u3d16\u3d07\u3d10\u3d5c\u3d10\u3d12\u3d1e\u3d16\u3d01\u3d12"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final o6()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final p5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final q()I
    .locals 0

    const/16 p0, 0x186

    return p0
.end method

.method public final q1()[I
    .locals 0

    const/16 p0, 0x10

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final q7()Ljava/lang/String;
    .locals 1

    const p0, -0x378fc28d

    const-string/jumbo v0, "\u3d06\u3d1f\u3d07\u3d01\u3d12\u3d2c\u3d04\u3d1a\u3d17\u3d16\u3d49\u3d04\u3d1a\u3d17\u3d16"

    invoke-static {p0, v0}, LGt/a;->C(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r0()I
    .locals 0

    const/16 p0, 0xf

    return p0
.end method

.method public final r1()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final r2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final r6()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final s()I
    .locals 0

    const/16 p0, 0x168

    return p0
.end method

.method public final s0()[I
    .locals 1

    const/16 p0, 0x780

    const/16 v0, 0x438

    filled-new-array {p0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final s1()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final s3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final s5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final t0()F
    .locals 0

    const/high16 p0, 0x41700000    # 15.0f

    return p0
.end method

.method public final t1()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final t3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final t7()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final u()I
    .locals 0

    const/16 p0, 0x186

    return p0
.end method

.method public final u6()I
    .locals 0

    const/16 p0, 0xa0

    return p0
.end method

.method public final v1()Landroid/util/SparseArray;
    .locals 6
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

    const v3, 0x404ccccd    # 3.2f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0xa3

    invoke-virtual {p0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1, v2}, [Ljava/lang/Float;

    move-result-object v2

    const/16 v4, 0xaf

    invoke-virtual {p0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v0, v1, v3}, [Ljava/lang/Float;

    move-result-object v0

    const/16 v2, 0xad

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1, v3}, [Ljava/lang/Float;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final v2()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()I
    .locals 0

    const p0, 0x650001

    return p0
.end method

.method public final w0()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final w2()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x3()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x4()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final x6()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final y()I
    .locals 0

    const/16 p0, 0xfa0

    return p0
.end method

.method public final y6()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final z1()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final z4()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z5()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final z6()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final z7()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
