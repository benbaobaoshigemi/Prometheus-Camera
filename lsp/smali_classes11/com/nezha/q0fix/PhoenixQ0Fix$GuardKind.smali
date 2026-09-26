.class final enum Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;
.super Ljava/lang/Enum;
.source "PhoenixQ0Fix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nezha/q0fix/PhoenixQ0Fix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GuardKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

.field public static final enum MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

.field public static final enum STRING:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

.field public static final enum VOID:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;


# direct methods
.method private static synthetic $values()[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;
    .locals 3

    .line 842
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v1, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->STRING:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->VOID:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    filled-new-array {v0, v1, v2}, [Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 842
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    const-string v1, "STRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->STRING:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    const-string v1, "VOID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->VOID:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->$values()[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    move-result-object v0

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->$VALUES:[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 842
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;
    .locals 1

    .line 842
    const-class v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    return-object p0
.end method

.method public static values()[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;
    .locals 1

    .line 842
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->$VALUES:[Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    invoke-virtual {v0}, [Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    return-object v0
.end method
