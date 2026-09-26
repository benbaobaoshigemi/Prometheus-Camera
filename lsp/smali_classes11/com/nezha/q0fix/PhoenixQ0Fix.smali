.class public Lcom/nezha/q0fix/PhoenixQ0Fix;
.super Ljava/lang/Object;
.source "PhoenixQ0Fix.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;
    }
.end annotation


# static fields
.field private static final CLS_D0:Ljava/lang/String; = "v2.d0"

.field private static final CLS_JE_E:Ljava/lang/String; = "Je.e"

.field private static final CLS_ML:Ljava/lang/String; = "com.android.camera.features.mode.masterlive.MasterLiveModule"

.field private static final CLS_ML_ENTRY:Ljava/lang/String; = "com.android.camera.features.mode.masterlive.MasterLiveModuleEntry"

.field private static final CLS_ML_H:Ljava/lang/String; = "com.android.camera.features.mode.masterlive.MasterLiveModule$h"

.field private static final DEVCFG_INDEX:I = 0x7

.field private static final FRESH_MS:J = 0xbb8L

.field private static final F_ALL_IMG:Ljava/lang/String; = "mIsAllImageReceived"

.field private static final F_DEVCFG:Z = false

.field private static final F_H_EVENT:Ljava/lang/String; = "a"

.field private static final F_H_MODULE:Ljava/lang/String; = "d"

.field private static final F_PROBE:Z = true

.field private static final F_SUPPORT:Z = true

.field private static final F_Y4:Z = true

.field private static final F_ZOOMFIX:Z = true

.field private static final F_ZOOM_DONE:Ljava/lang/String; = "mIsCaptureZoomCompleted"

.field private static final MODE_TAG:Ljava/lang/String; = "V4-CORE"

.field private static final M_G0:Ljava/lang/String; = "G0"

.field private static final M_GET_DEFAULT_VALUE:Ljava/lang/String; = "getDefaultValue"

.field private static final M_M:Ljava/lang/String; = "m"

.field private static final M_O:Ljava/lang/String; = "o"

.field private static final M_ON_ANIM_END:Ljava/lang/String; = "onAnimationEnd"

.field private static final M_Q:Ljava/lang/String; = "q"

.field private static final M_Q0:Ljava/lang/String; = "q0"

.field private static final M_R:Ljava/lang/String; = "R"

.field private static final M_RESET_ZOOM_AFTER:Ljava/lang/String; = "resetZoomRatioAfterRecording"

.field private static final M_SUPPORT:Ljava/lang/String; = "support"

.field private static final M_Y4:Ljava/lang/String; = "y4"

.field private static final NULL_LOG_LIMIT:I = 0x19

.field private static final PROFILE:Ljava/lang/String; = "BORROW"

.field private static final Q0_CLASSES:[Ljava/lang/String;

.field private static final Q0_NAMES:[Ljava/lang/String;

.field private static final SAFE_ARRAY_LEN:I = 0x3

.field private static final STACK_LIMIT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Q0Fix"

.field private static final TARGET_PKG:Ljava/lang/String; = "com.android.camera"

.field private static sAnimEnd:I

.field private static sAnimEnd2:I

.field private static volatile sBorrowResolved:Z

.field private static volatile sBorrowed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sCl:Ljava/lang/ClassLoader;

.field private static sDefaultValueHits:I

.field private static sG0Calls:I

.field private static sG0Pass:I

.field private static sG0Sub:I

.field private static volatile sInBorrow:Z

.field private static final sInstCache:[Ljava/lang/Object;

.field private static volatile sLastAnimModule:Ljava/lang/Object;

.field private static volatile sLastAnimMs:J

.field private static sNullM:I

.field private static sNullO:I

.field private static sOutletThrow:I

.field private static sQ0Calls:I

.field private static sQ0Null:I

.field private static sQ0Pass:I

.field private static sQ0Throw:I

.field private static volatile sRootClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sRzCalls:I

.field private static sRzForced:I

.field private static sShortM:I

.field private static volatile sSubstitute:Ljava/lang/Object;

.field private static sSupCalls:I

.field private static sSupFlipped:I

.field private static sSupPass:I

.field private static sY4Calls:I

.field private static sY4Flipped:I

.field private static sY4Pass:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 111
    const-string v6, "\uc334\uc338\uc33a\uc379\uc33a\uc33e\uc379\uc333\uc332\uc321\uc33e\uc334\uc332\uc379\uc304\uc338\uc339\uc330\uc32e\uc322\uc336\uc339"

    const-string v7, "\ucf6b\ucf67\ucf65\ucf26\ucf65\ucf61\ucf26\ucf6c\ucf6d\ucf7e\ucf61\ucf6b\ucf6d\ucf26\ucf46\ucf6d\ucf72\ucf60\ucf69"

    const-string v0, "\u85f9\u85f5\u85f7\u85b4\u85f7\u85f3\u85b4\u85fe\u85ff\u85ec\u85f3\u85f9\u85ff\u85b4\u85f9\u85f5\u85f7\u85f7\u85f5\u85f4\u85b4\u85d9\u85f5\u85f7\u85f7\u85f5\u85f4"

    const-string v1, "\u404b\u4047\u4045\u4006\u4045\u4041\u4006\u404c\u404d\u405e\u4041\u404b\u404d\u4006\u406b\u4040\u4049\u404f\u4049\u4044\u4044\u4077\u404f\u4044"

    const-string v2, "\ud45b\ud457\ud455\ud416\ud455\ud451\ud416\ud45c\ud45d\ud44e\ud451\ud45b\ud45d\ud416\ud46f\ud459\ud44a\ud450\ud457\ud454\ud467\ud45f\ud454"

    const-string v3, "\u5f2d\u5f21\u5f23\u5f60\u5f23\u5f27\u5f60\u5f2a\u5f2b\u5f38\u5f27\u5f2d\u5f2b\u5f60\u5f16\u5f3b\u5f2f\u5f20\u5f37\u5f3b\u5f2f\u5f20"

    const-string v4, "\u76aa\u76a6\u76a4\u76e7\u76a4\u76a0\u76e7\u76ad\u76ac\u76bf\u76a0\u76aa\u76ac\u76e7\u768b\u76b0\u76bb\u76a6\u76a7"

    const-string v5, "\ub25d\ub251\ub253\ub210\ub253\ub257\ub210\ub25a\ub25b\ub248\ub257\ub25d\ub25b\ub210\ub27f\ub24a\ub256\ub25b\ub250\ub24d"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    .line 114
    const-string v7, "com.mi.device.Songyuan"

    const-string v8, "com.mi.device.Nezha"

    const-string v1, "com.mi.device.common.Common"

    const-string v2, "com.mi.device.Chagall_gl"

    const-string v3, "com.mi.device.Warhol_gl"

    const-string v4, "com.mi.device.Xuanyuan"

    const-string v5, "com.mi.device.Byron"

    const-string v6, "com.mi.device.Athens"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Calls:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Null:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Pass:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Throw:I

    .line 154
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sOutletThrow:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sDefaultValueHits:I

    .line 155
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullO:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullM:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sShortM:I

    .line 156
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Calls:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Flipped:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Pass:I

    .line 157
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupCalls:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupFlipped:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupPass:I

    .line 158
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd2:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzCalls:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzForced:I

    .line 159
    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Calls:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Sub:I

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Pass:I

    .line 162
    sput-boolean v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z

    .line 163
    sput-boolean v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowResolved:Z

    const/4 v0, 0x0

    .line 164
    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowed:Ljava/util/Map;

    .line 167
    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimModule:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 168
    sput-wide v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimMs:J

    .line 171
    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSubstitute:Ljava/lang/Object;

    .line 172
    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRootClass:Ljava/lang/Class;

    const/16 v0, 0x40

    .line 173
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInstCache:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Calls:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Calls:I

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)Z
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->objField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd2:I

    return v0
.end method

.method static synthetic access$1108()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd2:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd2:I

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    .line 92
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimModule:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    sput-object p0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimModule:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300()J
    .locals 2

    .line 92
    sget-wide v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimMs:J

    return-wide v0
.end method

.method static synthetic access$1302(J)J
    .locals 0

    .line 92
    sput-wide p0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sLastAnimMs:J

    return-wide p0
.end method

.method static synthetic access$1400()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzCalls:I

    return v0
.end method

.method static synthetic access$1408()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzCalls:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzCalls:I

    return v0
.end method

.method static synthetic access$1500(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->boolField(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->setBoolField(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzForced:I

    return v0
.end method

.method static synthetic access$1708()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzForced:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRzForced:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Calls:I

    return v0
.end method

.method static synthetic access$1808()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Calls:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Calls:I

    return v0
.end method

.method static synthetic access$1900()Ljava/lang/Class;
    .locals 1

    .line 92
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRootClass:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Flipped:I

    return v0
.end method

.method static synthetic access$2000(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->strField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Flipped:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Flipped:I

    return v0
.end method

.method static synthetic access$2108()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Pass:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Pass:I

    return v0
.end method

.method static synthetic access$2200()Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->substitute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Sub:I

    return v0
.end method

.method static synthetic access$2308()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Sub:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sG0Sub:I

    return v0
.end method

.method static synthetic access$2400(I)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/nezha/q0fix/PhoenixQ0Fix;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->handleQ0(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sOutletThrow:I

    return v0
.end method

.method static synthetic access$2608()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sOutletThrow:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sOutletThrow:I

    return v0
.end method

.method static synthetic access$2700(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->shortName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Ljava/lang/Throwable;)V
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logStack(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$2900()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullO:I

    return v0
.end method

.method static synthetic access$2908()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullO:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullO:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000()[Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->safeArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullM:I

    return v0
.end method

.method static synthetic access$3108()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullM:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sNullM:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sShortM:I

    return v0
.end method

.method static synthetic access$3208()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sShortM:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sShortM:I

    return v0
.end method

.method static synthetic access$3300()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sDefaultValueHits:I

    return v0
.end method

.method static synthetic access$3308()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sDefaultValueHits:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sDefaultValueHits:I

    return v0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Pass:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sY4Pass:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupCalls:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupCalls:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupFlipped:I

    return v0
.end method

.method static synthetic access$608()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupFlipped:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupFlipped:I

    return v0
.end method

.method static synthetic access$708()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupPass:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSupPass:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd:I

    return v0
.end method

.method static synthetic access$808()I
    .locals 2

    .line 92
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sAnimEnd:I

    return v0
.end method

.method static synthetic access$900(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->intField(Ljava/lang/Object;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static banner()V
    .locals 1

    .line 1176
    const-string v0, "[Q0Fix] ============================================================"

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return-void
.end method

.method private static boolField(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 0

    .line 1057
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getBooleanField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p2
.end method

.method private static brevity(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 589
    const-string p0, "null"

    return-object p0

    .line 591
    :cond_0
    instance-of v0, p0, Landroid/util/SparseArray;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 592
    check-cast p0, Landroid/util/SparseArray;

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "SparseArray{size="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-ge v2, v1, :cond_1

    .line 595
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->brevity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 597
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 599
    :cond_2
    instance-of v0, p0, [F

    if-eqz v0, :cond_3

    .line 600
    check-cast p0, [F

    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callFloatArrayLike([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 602
    :cond_3
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    check-cast p0, [Ljava/lang/Object;

    .line 605
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    if-ge v2, v1, :cond_5

    if-lez v2, :cond_4

    .line 607
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_4
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/16 p0, 0x5d

    .line 611
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 613
    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static callBool(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    .line 547
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 548
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->isTrue(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method private static callFloatArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 572
    invoke-static {p0, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 573
    instance-of p1, p0, [F

    if-nez p1, :cond_0

    .line 574
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 576
    :cond_0
    check-cast p0, [F

    .line 577
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 578
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    .line 580
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_1
    aget v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 584
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static callFloatArrayLike([F)Ljava/lang/String;
    .locals 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 618
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 620
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_0
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 624
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static callInt(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3

    const/high16 v0, -0x80000000

    .line 556
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 557
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v0
.end method

.method private static callObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 565
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private static castMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 792
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static desc(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1131
    const-string p0, "null"

    return-object p0

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 999
    :try_start_0
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sCl:Ljava/lang/ClassLoader;

    invoke-static {p0, v0}, Lde/robv/android/xposed/XposedHelpers;->findClassIfExists(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    .line 1006
    :catchall_0
    :cond_0
    :try_start_1
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sCl:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1018
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 1019
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 1020
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    if-eq v5, p2, :cond_1

    goto :goto_1

    .line 1021
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p3, :cond_2

    goto :goto_1

    .line 1022
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v2, :cond_3

    .line 1024
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8b66\u544a: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->sig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u4e0e\u5df2\u9009\u4e2d\u7684 "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->sig(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u5f62\u72b6\u76f8\u540c\uff0c\u53ea\u6302\u7b2c\u4e00\u4e2a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1024
    const-string v5, "Q0Fix"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object v2, v4

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private static findStatic(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    .line 1038
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1039
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    if-eq v4, p2, :cond_1

    goto :goto_1

    .line 1040
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p3, :cond_2

    goto :goto_1

    .line 1041
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private guard(Ljava/lang/String;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;)Lde/robv/android/xposed/XC_MethodHook;
    .locals 1

    .line 845
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix$7;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;Ljava/lang/String;)V

    return-object v0
.end method

.method private guardArray()Lde/robv/android/xposed/XC_MethodHook;
    .locals 1

    .line 904
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$9;

    invoke-direct {v0, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$9;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    return-object v0
.end method

.method private guardList()Lde/robv/android/xposed/XC_MethodHook;
    .locals 1

    .line 872
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$8;

    invoke-direct {v0, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$8;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    return-object v0
.end method

.method private handleQ0(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Ljava/lang/String;)V
    .locals 7

    const-string v0, "\u501f\u7528\u8868 size="

    const-string v1, "[Q0Fix] #"

    const-string v2, "[Q0Fix] q0() \u8fd4\u56de\u975e\u7a7a "

    const-string v3, "[Q0Fix] q0() \u629b "

    .line 654
    :try_start_0
    sget-boolean v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z

    if-eqz v4, :cond_0

    return-void

    .line 657
    :cond_0
    sget v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Calls:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Calls:I

    .line 659
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const-string v6, "]"

    if-eqz v4, :cond_1

    .line 660
    :try_start_1
    sget v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Throw:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Throw:I

    .line 661
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->shortName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> \u541e\u6389\u5e76\u8fd4\u56de\u515c\u5e95\u8868  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 662
    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    .line 664
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logStack(Ljava/lang/Throwable;)V

    .line 665
    invoke-virtual {p1, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    .line 666
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->supplyMap()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 670
    :cond_1
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x19

    if-nez v3, :cond_3

    .line 672
    sget v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Null:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Null:I

    .line 673
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->supplyMap()Ljava/util/Map;

    move-result-object v2

    .line 674
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 675
    sget p1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Null:I

    if-gt p1, v4, :cond_4

    .line 676
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Null:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " q0() \u8fd4\u56de null -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "emptyMap"

    goto :goto_0

    .line 678
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  [\u8bbe\u5907\u7c7b="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    .line 680
    invoke-static {v5}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logStack(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 683
    :cond_3
    sget p1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Pass:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/nezha/q0fix/PhoenixQ0Fix;->sQ0Pass:I

    if-gt p1, v4, :cond_4

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->desc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> \u539f\u6837\u653e\u884c  [\u8bbe\u5907\u7c7b="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 685
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 690
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[Q0Fix] q0 hook \u5185\u90e8\u5f02\u5e38(\u5df2\u5ffd\u7565): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private hookDeviceFactory(Ljava/lang/ClassLoader;)I
    .locals 3

    .line 421
    const-string p1, "Je.e"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 423
    const-string p1, "[Q0Fix][DEVCFG] !! \u627e\u4e0d\u5230 Je.e"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 426
    :cond_0
    const-string v1, "G0"

    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRootClass:Ljava/lang/Class;

    invoke-static {p1, v1, v0, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findStatic(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix][DEVCFG] !! \u6ca1\u627e\u5230 Je/e.G0()L"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 432
    :cond_1
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$5;

    invoke-direct {v0, p0, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix$5;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/Class;)V

    invoke-static {v1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 473
    const-string p1, "[Q0Fix][DEVCFG] \u5df2\u6302 Je/e.G0()\uff0c\u66ff\u6362\u76ee\u6807 = \uff08\u672a\u542f\u7528\uff0c\u53ea\u89c2\u6d4b\uff09"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private hookObserveDefaultValue(Ljava/lang/ClassLoader;)I
    .locals 4

    .line 957
    const-string p1, "v2.d0"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 961
    :cond_0
    const-string v1, "getDefaultValue"

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    .line 963
    const-string p1, "[Q0Fix] (\u89c2\u6d4b) \u6ca1\u627e\u5230 getDefaultValue(int)Ljava/lang/String; \u2014\u2014 \u8df3\u8fc7"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 966
    :cond_1
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$10;

    invoke-direct {v0, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$10;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 991
    const-string p1, "[Q0Fix] (\u89c2\u6d4b) \u5df2\u6302 getDefaultValue(I)Ljava/lang/String;"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v3
.end method

.method private hookOutlets(Ljava/lang/ClassLoader;)I
    .locals 4

    .line 798
    const-string p1, "v2.d0"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 800
    const-string p1, "[Q0Fix] !! \u627e\u4e0d\u5230 v2.d0 \u2014\u2014 \u51fa\u53e3\u515c\u5e95\u8df3\u8fc7"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 805
    :cond_0
    const-class v1, Ljava/util/Map;

    const-string v2, "q"

    invoke-static {p1, v2, v0, v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 807
    sget-object v3, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->MAP:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    invoke-direct {p0, v2, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->guard(Ljava/lang/String;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v2

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v1, 0x1

    goto :goto_0

    .line 810
    :cond_1
    const-string v1, "[Q0Fix] !! \u6ca1\u627e\u5230 q()Ljava/util/Map;"

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    move v1, v0

    .line 814
    :goto_0
    const-string v2, "o"

    const-class v3, Ljava/util/List;

    invoke-static {p1, v2, v0, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 816
    invoke-direct {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->guardList()Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v3

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    :cond_2
    const-string v2, "[Q0Fix] !! \u6ca1\u627e\u5230 o()Ljava/util/List;"

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    .line 824
    :goto_1
    const-string v2, "m"

    const-class v3, [Ljava/lang/String;

    invoke-static {p1, v2, v0, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 826
    invoke-direct {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->guardArray()Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v3

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 829
    :cond_3
    const-string v2, "[Q0Fix] (\u6ce8\u610f) \u6ca1\u627e\u5230 m()[Ljava/lang/String; \u2014\u2014 \u68c0\u67e5\u8fc7\u5f62\u72b6\u518d\u51b3\u5b9a\u662f\u5426\u8981\u515c"

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    .line 832
    :goto_2
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v3, "R"

    invoke-static {p1, v3, v0, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 834
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;->VOID:Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;

    invoke-direct {p0, v3, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->guard(Ljava/lang/String;Lcom/nezha/q0fix/PhoenixQ0Fix$GuardKind;)Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v0

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    add-int/lit8 v1, v1, 0x1

    .line 838
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Q0Fix] \u51fa\u53e3\u515c\u5e95\u5df2\u6302 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5904\uff08q/o/m/R\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v1
.end method

.method private hookQ0(Ljava/lang/ClassLoader;Ljava/lang/String;)I
    .locals 3

    .line 630
    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 632
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix] !! \u672a\u627e\u5230\u8bbe\u5907\u7c7b "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 635
    :cond_0
    const-string v1, "q0"

    const-class v2, Ljava/util/Map;

    invoke-static {p1, v1, v0, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix] !! "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u65e0 q0()Ljava/util/Map; \u2014\u2014 \u8df3\u8fc7"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 640
    :cond_1
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$6;

    invoke-direct {v0, p0, p2}, Lcom/nezha/q0fix/PhoenixQ0Fix$6;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix] \u5df2\u6302 q0(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "  [final]"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 646
    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private hookSupport(Ljava/lang/ClassLoader;)I
    .locals 3

    .line 276
    const-string p1, "com.android.camera.features.mode.masterlive.MasterLiveModuleEntry"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 278
    const-string p1, "[Q0Fix][SUP] !! \u627e\u4e0d\u5230 com.android.camera.features.mode.masterlive.MasterLiveModuleEntry"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 281
    :cond_0
    const-string v1, "support"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1, v0, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-nez p1, :cond_1

    .line 283
    const-string p1, "[Q0Fix][SUP] !! \u6ca1\u627e\u5230 support()Z"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v0

    .line 286
    :cond_1
    new-instance v0, Lcom/nezha/q0fix/PhoenixQ0Fix$2;

    invoke-direct {v0, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$2;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    invoke-static {p1, v0}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 306
    const-string p1, "[Q0Fix][SUP] \u5df2\u6302 MasterLiveModuleEntry.support()Z"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private hookY4(Ljava/lang/ClassLoader;)I
    .locals 6

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 234
    :goto_0
    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 235
    aget-object v2, v2, v0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->shortNameAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Q0Fix][Y4] !! \u672a\u627e\u5230\u8bbe\u5907\u7c7b "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_2

    .line 242
    :cond_0
    const-string v2, "y4"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2, p1, v5}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[Q0Fix][Y4] \uff08\u8df3\u8fc7\uff09"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u65e0 y4()Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_1
    new-instance v4, Lcom/nezha/q0fix/PhoenixQ0Fix$1;

    invoke-direct {v4, p0, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix$1;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Q0Fix][Y4] \u5df2\u6302 y4(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "  [final]"

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 271
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Q0Fix][Y4] y4() \u5f00\u5173\u6302\u8f7d\u5b8c\u6210\uff0c\u5171 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u7c7b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return v1
.end method

.method private hookZoomReset(Ljava/lang/ClassLoader;)I
    .locals 5

    .line 315
    const-string p1, "com.android.camera.features.mode.masterlive.MasterLiveModule$h"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 317
    const-string v2, "onAnimationEnd"

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2, v0, v3}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 319
    new-instance v2, Lcom/nezha/q0fix/PhoenixQ0Fix$3;

    invoke-direct {v2, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$3;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    invoke-static {p1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 346
    const-string p1, "[Q0Fix][ZOOM] \u5df2\u6302 com.android.camera.features.mode.masterlive.MasterLiveModule$h.onAnimationEnd(Animator)"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    move p1, v0

    goto :goto_1

    .line 349
    :cond_0
    const-string p1, "[Q0Fix][ZOOM] !! \u6ca1\u627e\u5230 $h.onAnimationEnd(Animator)V"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :cond_1
    const-string p1, "[Q0Fix][ZOOM] !! \u627e\u4e0d\u5230 com.android.camera.features.mode.masterlive.MasterLiveModule$h"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    :goto_0
    move p1, v1

    .line 355
    :goto_1
    const-string v2, "com.android.camera.features.mode.masterlive.MasterLiveModule"

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    .line 357
    const-string v0, "[Q0Fix][ZOOM] !! \u627e\u4e0d\u5230 com.android.camera.features.mode.masterlive.MasterLiveModule"

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return p1

    .line 360
    :cond_2
    const-string v3, "resetZoomRatioAfterRecording"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v1, v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_3

    .line 362
    const-string v0, "[Q0Fix][ZOOM] !! \u6ca1\u627e\u5230 resetZoomRatioAfterRecording()Z"

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return p1

    .line 365
    :cond_3
    new-instance v2, Lcom/nezha/q0fix/PhoenixQ0Fix$4;

    invoke-direct {v2, p0}, Lcom/nezha/q0fix/PhoenixQ0Fix$4;-><init>(Lcom/nezha/q0fix/PhoenixQ0Fix;)V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 412
    const-string v1, "[Q0Fix][ZOOM] \u5df2\u6302 resetZoomRatioAfterRecording()Z  [active \u5f3a\u5236\u653e\u884c]"

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    add-int/2addr p1, v0

    return p1
.end method

.method private static indexOf(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 782
    :goto_0
    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 783
    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static instanceAt(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-ltz p0, :cond_3

    .line 497
    sget-object v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    if-lt p0, v2, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInstCache:[Ljava/lang/Object;

    aget-object v3, v2, p0

    if-eqz v3, :cond_1

    return-object v3

    .line 505
    :cond_1
    :try_start_0
    aget-object v1, v1, p0

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 509
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    .line 510
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 511
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 512
    aput-object v1, v2, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Q0Fix] \u5b9e\u4f8b\u5316 #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->shortNameAt(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \u5931\u8d25: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static intField(Ljava/lang/Object;Ljava/lang/String;I)I
    .locals 0

    .line 1072
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getIntField(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p2
.end method

.method private static isTrue(Ljava/lang/Object;)Z
    .locals 1

    .line 1052
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static logBoth(Ljava/lang/String;)V
    .locals 1

    .line 1181
    :try_start_0
    const-string v0, "Q0Fix"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :catchall_0
    :try_start_1
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private static logStack(Ljava/lang/Throwable;)V
    .locals 7

    if-eqz p0, :cond_0

    .line 1152
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    goto :goto_0

    .line 1154
    :cond_0
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_a

    .line 1156
    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_4

    .line 1157
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Q0Fix]     \u8c03\u7528\u6808: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_9

    aget-object v4, p0, v2

    .line 1160
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 1162
    :cond_2
    const-string v6, "de.robv.android.xposed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 1163
    :cond_3
    const-string v6, "com.nezha.q0fix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 1164
    :cond_4
    const-string v6, "java.lang.Thread"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1165
    :cond_5
    const-string v6, "android.os."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    if-lez v3, :cond_7

    .line 1166
    const-string v6, " <- "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1170
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_a
    :goto_4
    return-void
.end method

.method private static nameAt(I)Ljava/lang/String;
    .locals 4

    .line 1098
    const-string v0, " "

    const-string v1, "#"

    if-ltz p0, :cond_0

    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_NAMES:[Ljava/lang/String;

    array-length v3, v2

    if-ge p0, v3, :cond_0

    aget-object v3, v2, p0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v2, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1101
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz p0, :cond_1

    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object p0, v0, p0

    goto :goto_0

    :cond_1
    const-string p0, "?"

    :goto_0
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static objField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1080
    :try_start_0
    invoke-static {p0, p1}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private probeCapabilities()V
    .locals 5

    .line 523
    const-string v0, "[Q0Fix][PROBE] ===== 8 \u4e2a\u8bbe\u5907\u914d\u7f6e\u7c7b\u80fd\u529b\u6307\u7eb9\uff08\u6311 DEVCFG_INDEX \u7528\uff09====="

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 524
    :goto_0
    sget-object v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 525
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->instanceAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 526
    const-string v2, " "

    const-string v3, "[Q0Fix][PROBE] #"

    if-nez v1, :cond_0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : \u5b9e\u4f8b\u5316\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 530
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  y4="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "y4"

    .line 531
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " b2="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b2"

    .line 532
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " D4="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "D4"

    .line 533
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " z2="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "z2"

    .line 534
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " x2="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x2"

    .line 535
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " C4="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "C4"

    .line 536
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callBool(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " F="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "F"

    .line 537
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " z1="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "z1"

    .line 538
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " E="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "E"

    .line 539
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callFloatArray(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " w1="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "w1"

    .line 540
    invoke-static {v1, v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->callObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->brevity(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 542
    :cond_1
    const-string v0, "[Q0Fix][PROBE] ====================================================="

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized resolveBorrow()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "[Q0Fix] [BORROW] \u5f00\u59cb\u904d\u5386 "

    const-class v1, Lcom/nezha/q0fix/PhoenixQ0Fix;

    monitor-enter v1

    .line 720
    :try_start_0
    sget-boolean v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowResolved:Z

    if-eqz v2, :cond_1

    .line 721
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowed:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowed:Ljava/util/Map;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 723
    :try_start_1
    sput-boolean v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowResolved:Z

    .line 724
    sput-boolean v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 728
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u8bbe\u5907\u914d\u7f6e\u7c7b\u627e\u53ef\u7528\u8868"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v3

    move-object v6, v5

    move v0, v4

    .line 729
    :goto_1
    :try_start_3
    sget-object v7, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v8, v7

    if-ge v0, v8, :cond_8

    .line 730
    aget-object v7, v7, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 732
    :try_start_4
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->instanceAt(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : \u5b9e\u4f8b\u5316\u5931\u8d25"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 737
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "q0"

    const-class v11, Ljava/util/Map;

    invoke-static {v9, v10, v4, v11}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findShape(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-nez v9, :cond_3

    .line 739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : \u65e0 q0()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 742
    :cond_3
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 743
    invoke-virtual {v9, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : q0() = null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 748
    :cond_4
    instance-of v9, v8, Ljava/util/Map;

    if-nez v9, :cond_5

    .line 749
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : q0() \u975e Map -> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-static {v8}, Lcom/nezha/q0fix/PhoenixQ0Fix;->desc(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 749
    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_2

    .line 753
    :cond_5
    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    .line 754
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : Map size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    if-lez v9, :cond_7

    if-eqz v5, :cond_6

    .line 755
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v10

    if-le v9, v10, :cond_7

    .line 756
    :cond_6
    invoke-static {v8}, Lcom/nezha/q0fix/PhoenixQ0Fix;->castMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v7

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 760
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Q0Fix] [BORROW]   \u5019\u9009 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : \u5931\u8d25 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->shortName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 766
    :cond_8
    :try_start_6
    sput-boolean v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v3

    .line 764
    :goto_3
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Q0Fix] [BORROW] \u904d\u5386\u5f02\u5e38(\u5df2\u5ffd\u7565): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 766
    :try_start_8
    sput-boolean v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z

    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_9

    .line 769
    sput-object v5, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowed:Ljava/util/Map;

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Q0Fix] [BORROW] => \u9009\u5b9a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/nezha/q0fix/PhoenixQ0Fix;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u7684\u8868 (size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_5

    .line 773
    :cond_9
    const-string v0, "[Q0Fix] [BORROW] => \u6ca1\u6709\u4efb\u4f55\u8bbe\u5907\u7c7b\u7ed9\u51fa\u975e\u7a7a\u8868\uff0c\u4ecd\u7528 emptyMap"

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    :goto_5
    if-eqz v5, :cond_a

    goto :goto_6

    .line 775
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_6
    monitor-exit v1

    return-object v5

    :catchall_3
    move-exception v0

    .line 766
    :try_start_9
    sput-boolean v4, Lcom/nezha/q0fix/PhoenixQ0Fix;->sInBorrow:Z

    .line 767
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static safeArray()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    .line 947
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 949
    const-string v3, "1"

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static setBoolField(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 1065
    :try_start_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedHelpers;->setBooleanField(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static shortName(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 1137
    const-string p0, "null"

    return-object p0

    .line 1138
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 1142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  <- "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private static shortNameAt(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    .line 1105
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    aget-object v1, v0, p0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1106
    aget-object p0, v0, p0

    const/16 v0, 0x2e

    .line 1107
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1108
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    if-ltz p0, :cond_2

    .line 1110
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object p0, v0, p0

    goto :goto_1

    :cond_2
    const-string p0, "?"

    :goto_1
    invoke-static {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sig(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 1116
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    const/16 v3, 0x2c

    .line 1117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1118
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    .line 1120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static strField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1088
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 1089
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p1, 0x0

    .line 1090
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1091
    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    .line 1093
    :catchall_0
    const-string p0, "?"

    return-object p0
.end method

.method private static declared-synchronized substitute()Ljava/lang/Object;
    .locals 5

    const-string v0, "[Q0Fix][DEVCFG] \u76ee\u6807\u7c7b\u5b9e\u4f8b\u5316\u5931\u8d25 "

    const-class v1, Lcom/nezha/q0fix/PhoenixQ0Fix;

    monitor-enter v1

    .line 479
    :try_start_0
    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSubstitute:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 480
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSubstitute:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 482
    :cond_0
    :try_start_1
    sget-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-lt v4, v2, :cond_1

    .line 483
    const-string v0, "[Q0Fix][DEVCFG] DEVCFG_INDEX=7 \u975e\u6cd5\uff0c\u653e\u5f03\u66ff\u6362"

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit v1

    return-object v3

    .line 486
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->instanceAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->nameAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    monitor-exit v1

    return-object v3

    .line 491
    :cond_2
    :try_start_3
    sput-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sSubstitute:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static supplyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 701
    sget-object v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowed:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 705
    :cond_0
    sget-boolean v0, Lcom/nezha/q0fix/PhoenixQ0Fix;->sBorrowResolved:Z

    if-eqz v0, :cond_1

    .line 706
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 708
    :cond_1
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->resolveBorrow()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static tail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 1124
    const-string p0, "null"

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 1125
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1126
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1127
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 6

    const-string v0, " \u5f00\u5173[y4=true sup=true zoom=true devcfg=false probe=true]"

    const-string v1, " \u53d8\u4f53=V4-CORE \u8bbe\u5907\u7c7b="

    const-string v2, "[Q0Fix] \u76ee\u6807\u5305="

    if-eqz p1, :cond_3

    .line 180
    :try_start_0
    const-string v3, "com.android.camera"

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-object v3, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    sput-object v3, Lcom/nezha/q0fix/PhoenixQ0Fix;->sCl:Ljava/lang/ClassLoader;

    .line 184
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->banner()V

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u8fdb\u7a0b="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nezha/q0fix/PhoenixQ0Fix;->Q0_CLASSES:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/nezha/q0fix/PhoenixQ0Fix;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/nezha/q0fix/PhoenixQ0Fix;->sRootClass:Ljava/lang/Class;

    .line 194
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    .line 195
    iget-object v5, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v5, v4}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookQ0(Ljava/lang/ClassLoader;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookOutlets(Ljava/lang/ClassLoader;)I

    move-result v0

    add-int/2addr v3, v0

    .line 198
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookObserveDefaultValue(Ljava/lang/ClassLoader;)I

    move-result v0

    add-int/2addr v3, v0

    .line 201
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookY4(Ljava/lang/ClassLoader;)I

    move-result v0

    add-int/2addr v3, v0

    .line 204
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookSupport(Ljava/lang/ClassLoader;)I

    move-result v0

    add-int/2addr v3, v0

    .line 207
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookZoomReset(Ljava/lang/ClassLoader;)I

    move-result v0

    add-int/2addr v3, v0

    .line 209
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->hookDeviceFactory(Ljava/lang/ClassLoader;)I

    move-result p1

    add-int/2addr v3, p1

    .line 212
    invoke-direct {p0}, Lcom/nezha/q0fix/PhoenixQ0Fix;->probeCapabilities()V

    if-nez v3, :cond_2

    .line 216
    const-string p1, "[Q0Fix] !! \u4e00\u5904\u90fd\u6ca1\u6302\u4e0a \u2014\u2014 \u672c\u6a21\u5757\u4e0d\u4f1a\u751f\u6548"

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Q0Fix] hook \u5b8c\u6210\uff0c\u5171 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5904"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nezha/q0fix/PhoenixQ0Fix;->logBoth(Ljava/lang/String;)V

    .line 220
    :goto_1
    invoke-static {}, Lcom/nezha/q0fix/PhoenixQ0Fix;->banner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 224
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Q0Fix] handleLoadPackage \u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    :goto_2
    return-void
.end method
