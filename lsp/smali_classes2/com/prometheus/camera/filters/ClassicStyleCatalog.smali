.class public final Lcom/prometheus/camera/filters/ClassicStyleCatalog;
.super Ljava/lang/Object;
.source "ClassicStyleCatalog.java"


# static fields
.field public static final DEFAULT_MODEL:Ljava/lang/String; = "17u"

.field public static final MODEL_IDS:[Ljava/lang/String;

.field public static final MODEL_LABELS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    const-string v6, "17u"

    const-string v7, "blackwhite"

    const-string v0, "m9"

    const-string v1, "passthrough"

    const-string v2, "neutral"

    const-string v3, "12su"

    const-string v4, "fuxi"

    const-string v5, "14u"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_IDS:[Ljava/lang/String;

    .line 7
    const-string v7, "\u5c0f\u7c73 17 Ultra"

    const-string v8, "\u9ed1\u767d"

    const-string v1, "M9"

    const-string v2, "\u900f\u4f20"

    const-string v3, "\u4e2d\u6027"

    const-string v4, "\u5c0f\u7c73 12S Ultra"

    const-string v5, "\u5c0f\u7c73 13"

    const-string v6, "\u5c0f\u7c73 14 Ultra"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/filters/ClassicStyleCatalog;->MODEL_LABELS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
