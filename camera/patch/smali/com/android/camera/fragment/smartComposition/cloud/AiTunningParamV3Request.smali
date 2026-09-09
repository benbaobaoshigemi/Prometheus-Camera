.class public final Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/fragment/smartComposition/cloud/IRequest;
.implements LUy/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Companion;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Data;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Outputs;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$WorkflowRespone;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 52\u00020\u00012\u00020\u0002:\u000556789B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u001c\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u001e\u001a\u00020\u0002H\u0016J\u0008\u0010\u001f\u001a\u00020\u0002H\u0016J\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u0006H\u0016J\u0008\u0010\"\u001a\u00020\u000fH\u0016J\u0012\u0010#\u001a\u00020\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u0002J\n\u0010$\u001a\u0004\u0018\u00010\u0006H\u0002J\u0018\u0010%\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0016J\u001c\u0010-\u001a\u00020\u000f2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u00100\u001a\u0004\u0018\u00010\u0006H\u0003J$\u00101\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u00102\u001a\u0002032\u0008\u00100\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u00104\u001a\u00020\u00062\u0008\u00100\u001a\u0004\u0018\u00010\u0006H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;",
        "Lcom/android/camera/fragment/smartComposition/cloud/IRequest;",
        "Lokhttp3/Callback;",
        "<init>",
        "()V",
        "mRealTimeWorkflowRequestParam",
        "",
        "mSnapshotWorkflowRequestParam",
        "mContext",
        "Landroid/content/Context;",
        "mDialog",
        "Lmiuix/appcompat/app/AlertDialog;",
        "mUploadImageByte",
        "",
        "initContext",
        "",
        "context",
        "isUpdateImage",
        "",
        "setUpdateImage",
        "byteArray",
        "addUploadRequestHeaders",
        "builder",
        "Lokhttp3/Request$Builder;",
        "getUploadRequestBody",
        "Lokhttp3/RequestBody;",
        "addWorkFlowRequestHeaders",
        "getWorkFlowRequestBody",
        "imageFileId",
        "audioFileId",
        "getUpdateRequestCallback",
        "getWorkFlowRequestCallback",
        "setWorkFlowRequestParam",
        "param",
        "snapshot",
        "getWorkflowRequestBody",
        "getExif",
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "updateWorkspaceParam",
        "text",
        "Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;",
        "serverElapsedSec",
        "showAiTunningScneDialog",
        "agentItem",
        "Lcom/android/camera/features/mode/capture/AgentItem;",
        "buildDurationLine",
        "Companion",
        "WorkflowRespone",
        "Data",
        "Outputs",
        "Text",
        "app_cnRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AUTHORIZATION:Ljava/lang/String; = "Bearer app-iMfLUuJUryMuLSF8qgGVoZb7"

.field public static final Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Companion;

.field public static final TAG:Ljava/lang/String; = "AiTunningParamV3Request"

.field public static final USER:Ljava/lang/String; = "zhangzhichao15"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/h;

.field private mRealTimeWorkflowRequestParam:Ljava/lang/String;

.field private mSnapshotWorkflowRequestParam:Ljava/lang/String;

.field private mUploadImageByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$3()V

    return-void
.end method

.method public static synthetic b(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->updateWorkspaceParam$lambda$10(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V

    return-void
.end method

.method private final buildDurationLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentRequestManager;->INSTANCE:Lcom/android/camera/fragment/smartComposition/cloud/AiAgentRequestManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentRequestManager;->getRequestStartElapsedMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Lww/k;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz p0, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\n\u8bc6\u522b\u8017\u65f6\uff1a%.1f\u79d2(\u4e91\u7aef %.1f\u79d2)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\n\u8bc6\u522b\u8017\u65f6\uff1a%.1f\u79d2"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic c(Lcom/android/camera/features/mode/capture/a;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->showAiTunningScneDialog$lambda$11(Lcom/android/camera/features/mode/capture/a;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$3$lambda$1(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->showAiTunningScneDialog$lambda$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(LH4/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$6$lambda$5(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$9$lambda$7(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method private final getExif()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mSnapshotWorkflowRequestParam:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mSnapshotWorkflowRequestParam:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "null"

    return-object p0
.end method

.method private final getWorkflowRequestBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "workflow_generate_data"

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->startLog(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "transfer_method"

    const-string v5, "local_file"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "upload_file_id"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "type"

    const-string v4, "image"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "inputs"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "img"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "exif"

    invoke-direct {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->getExif()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "response_mode"

    const-string p1, "blocking"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "user"

    const-string/jumbo p1, "zhangzhichao15"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toString(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->endLog(Ljava/lang/String;)V

    const-string p1, "getWorkflowRequestBody="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AiTunningParamV3Request"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$9()V

    return-void
.end method

.method public static synthetic i(LAk/h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$9$lambda$8(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(LFn/O;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$3$lambda$2(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->onResponse$lambda$6$lambda$4(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method private static final onResponse$lambda$3()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LFn/O;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LFn/O;-><init>(I)V

    new-instance v2, LFn/P;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, LFn/P;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$3$lambda$1(Lz3/a;)LPu/A;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1405e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lz3/a;->k3(Ljava/lang/String;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final onResponse$lambda$3$lambda$2(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onResponse$lambda$6()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LH4/l;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LH4/l;-><init>(I)V

    new-instance v2, LF1/y;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, LF1/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$6$lambda$4(Lz3/a;)LPu/A;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1405e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lz3/a;->k3(Ljava/lang/String;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final onResponse$lambda$6$lambda$5(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onResponse$lambda$9()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LAk/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LAk/h;-><init>(I)V

    new-instance v2, LFn/K;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, LFn/K;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$9$lambda$7(Lz3/a;)LPu/A;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1405e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lz3/a;->k3(Ljava/lang/String;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final onResponse$lambda$9$lambda$8(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showAiTunningScneDialog(Landroid/content/Context;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mDialog:Lmiuix/appcompat/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/camera/features/mode/capture/a;->d:[Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p2, Lcom/android/camera/features/mode/capture/a;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->buildDurationLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lmiuix/appcompat/app/h$a;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/h$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->f(Z)V

    iget-object v1, p2, Lcom/android/camera/features/mode/capture/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/h$a;->C(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/h$a;->n(Ljava/lang/CharSequence;)V

    new-instance p3, Lcom/android/camera/fragment/smartComposition/cloud/j;

    invoke-direct {p3, p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/j;-><init>(Landroid/content/Context;Lcom/android/camera/features/mode/capture/a;)V

    const p1, 0x7f140610

    invoke-virtual {v0, p1, p3}, Lmiuix/appcompat/app/h$a;->x(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, LR5/b;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LR5/b;-><init>(I)V

    const p2, 0x7f1405fe

    invoke-virtual {v0, p2, p1}, Lmiuix/appcompat/app/h$a;->p(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/h$a;->E()Lmiuix/appcompat/app/h;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mDialog:Lmiuix/appcompat/app/h;

    return-void
.end method

.method private static final showAiTunningScneDialog$lambda$11(Lcom/android/camera/features/mode/capture/a;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/features/mode/capture/a;->a()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final showAiTunningScneDialog$lambda$12(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final updateWorkspaceParam(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ScheduleDirect"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/camera/features/mode/capture/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;->getSceneId()I

    move-result p1

    invoke-static {v0, p1}, LA3/m;->h(Lcom/android/camera/features/mode/capture/a;I)V

    sget-object p1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    new-instance v1, Lcom/android/camera/fragment/smartComposition/cloud/i;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/camera/fragment/smartComposition/cloud/i;-><init>(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/v;->b(Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method private static final updateWorkspaceParam$lambda$10(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->showAiTunningScneDialog(Landroid/content/Context;Lcom/android/camera/features/mode/capture/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addUploadRequestHeaders(LUy/A$a;)V
    .locals 1

    const-string p0, "builder"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Authorization"

    const-string v0, "Bearer app-iMfLUuJUryMuLSF8qgGVoZb7"

    invoke-virtual {p1, p0, v0}, LUy/A$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v0, "multipart/form-data"

    invoke-virtual {p1, p0, v0}, LUy/A$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addWorkFlowRequestHeaders(LUy/A$a;)V
    .locals 1

    const-string p0, "builder"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v0, "application/json"

    invoke-virtual {p1, p0, v0}, LUy/A$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Authorization"

    const-string v0, "Bearer app-iMfLUuJUryMuLSF8qgGVoZb7"

    invoke-virtual {p1, p0, v0}, LUy/A$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getUpdateRequestCallback()LUy/f;
    .locals 0

    return-object p0
.end method

.method public getUploadAudioRequestBody()LUy/E;
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->getUploadAudioRequestBody()LUy/E;

    move-result-object p0

    return-object p0
.end method

.method public getUploadRequestBody()LUy/E;
    .locals 5

    new-instance v0, LUy/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUy/x$a;-><init>(I)V

    sget-object v2, LUy/x;->f:LUy/w;

    invoke-virtual {v0, v2}, LUy/x$a;->d(LUy/w;)V

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "zhangzhichao15"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LUy/E;->Companion:LUy/E$a;

    iget-object v3, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mUploadImageByte:[B

    invoke-static {v3}, Lfv/l;->e(Ljava/lang/Object;)V

    sget-object v4, LUy/w;->e:Ljava/util/regex/Pattern;

    const-string v4, "image/jpeg"

    invoke-static {v4}, LUy/w$a;->b(Ljava/lang/String;)LUy/w;

    move-result-object v4

    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mUploadImageByte:[B

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    array-length p0, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3, v1, p0}, LUy/E$a;->a(LUy/w;[BII)LUy/D;

    move-result-object p0

    const-string v1, "preview.jpg"

    invoke-virtual {v0, p0, v1}, LUy/x$a;->a(LUy/D;Ljava/lang/String;)V

    invoke-virtual {v0}, LUy/x$a;->c()LUy/x;

    move-result-object p0

    return-object p0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->getUploadUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWorkFlowRequestBody(Ljava/lang/String;Ljava/lang/String;)LUy/E;
    .locals 0

    sget-object p2, LUy/E;->Companion:LUy/E$a;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->getWorkflowRequestBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p0, p1}, LUy/E$a;->b(Ljava/lang/String;LUy/w;)LUy/D;

    move-result-object p0

    return-object p0
.end method

.method public getWorkFlowRequestCallback()LUy/f;
    .locals 0

    return-object p0
.end method

.method public getWorkFlowUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->getWorkFlowUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isUpdateAudio()Z
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->isUpdateAudio()Z

    move-result p0

    return p0
.end method

.method public isUpdateImage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFailure(LUy/e;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "e"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "AiTunningParamV3Request"

    const-string p2, "onFailure"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(LUy/e;LUy/F;)V
    .locals 6

    const-string/jumbo v0, "sMainThreadScheduler"

    const-string v1, "WorkflowRespone\uff1a result="

    const-string v2, "call"

    invoke-static {p1, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {p2, v2}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LUy/e;->e()LUy/A;

    move-result-object p1

    iget-object p1, p1, LUy/A;->a:LUy/u;

    iget-object p1, p1, LUy/u;->i:Ljava/lang/String;

    const-string v2, "onResponse: call request url="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "AiTunningParamV3Request"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p2, LUy/F;->g:LUy/G;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LUy/G;->i()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v2, "onResponse: body="

    invoke-static {v2, p2}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->getWorkFlowUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "step-3: Response was successful!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$onResponse$bodyObject$1;

    invoke-direct {v2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$onResponse$bodyObject$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromJson(...)"

    invoke-static {p1, p2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$WorkflowRespone;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "WorkflowRespone\uff1a bodyObject="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, p2, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$WorkflowRespone;->getData()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Data;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Data;->getOutputs()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Outputs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Outputs;->getText()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentUtilKt;->fixJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$onResponse$result$1$1;

    invoke-direct {v4}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$onResponse$result$1$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;

    const-string v2, "let(...)"

    invoke-static {p2, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$WorkflowRespone;->getData()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Data;->getElapsedTime()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->updateWorkspaceParam(Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request$Text;Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/smartComposition/cloud/g;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/g;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "onResponse"

    invoke-static {v5, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/smartComposition/cloud/h;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/h;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_1
    return-void
.end method

.method public setUpdateImage([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mUploadImageByte:[B

    return-void
.end method

.method public setWorkFlowRequestParam(Ljava/lang/String;)V
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mRealTimeWorkflowRequestParam:Ljava/lang/String;

    return-void
.end method

.method public snapshot()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mRealTimeWorkflowRequestParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV3Request;->mSnapshotWorkflowRequestParam:Ljava/lang/String;

    return-void
.end method
