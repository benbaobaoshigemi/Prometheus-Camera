.class public final Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/fragment/smartComposition/cloud/IRequest;
.implements LUy/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Data;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Output;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Outputs;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;,
        Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$WorkflowRespone;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 02\u00020\u00012\u00020\u0002:\u0006012345B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0012\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001c\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u001c\u0010\"\u001a\u00020\u00142\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0002J\u0018\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010(\u001a\u00020\r2\u0006\u0010$\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u0014H\u0002J\u0018\u0010,\u001a\u00020\r2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;",
        "Lcom/android/camera/fragment/smartComposition/cloud/IRequest;",
        "Lokhttp3/Callback;",
        "<init>",
        "()V",
        "mUploadImageByte",
        "",
        "mUploadAudioByte",
        "mAiAgentWorkspaceItem",
        "Lcom/android/camera/features/mode/ai/AiAgentWorkspaceItem;",
        "isUpdateAudio",
        "",
        "initContext",
        "",
        "context",
        "Landroid/content/Context;",
        "isUpdateImage",
        "setUpdateImage",
        "byteArray",
        "getUploadUrl",
        "",
        "getWorkFlowUrl",
        "addUploadRequestHeaders",
        "builder",
        "Lokhttp3/Request$Builder;",
        "getUploadRequestBody",
        "Lokhttp3/RequestBody;",
        "getUploadAudioRequestBody",
        "addWorkFlowRequestHeaders",
        "getWorkFlowRequestBody",
        "imageFileId",
        "audioFileId",
        "getUpdateRequestCallback",
        "getWorkFlowRequestCallback",
        "getWorkflowRequestBody",
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "getCurrentState",
        "updateWorkspaceParam",
        "parameters",
        "",
        "Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;",
        "Companion",
        "WorkflowRespone",
        "Data",
        "Outputs",
        "Output",
        "Parameter",
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
.field public static final AUTHORIZATION:Ljava/lang/String; = "Bearer app-tUq8lWHeQUWrmw6WMh8e30cJ"

.field public static final Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;

.field private static final MEMORY_FILE_NAME:Ljava/lang/String; = "memory.json"

.field private static final MEMORY_FILE_PATH:Ljava/lang/String; = "Android/data/com.android.camera/files"

.field public static final TAG:Ljava/lang/String; = "AITuneParamRequest"

.field public static final UPLOAD_URL:Ljava/lang/String; = "https://service.mify.mioffice.cn/api/v1/files/upload"

.field public static final USER:Ljava/lang/String; = "zhangnong"

.field public static final WORKFLOW_URL:Ljava/lang/String; = "https://service.mify.mioffice.cn/api/v1/workflows/run"


# instance fields
.field private final mAiAgentWorkspaceItem:Lz3/c;

.field private mUploadAudioByte:[B

.field private mUploadImageByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz3/c;

    invoke-direct {v0}, Lz3/c;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mAiAgentWorkspaceItem:Lz3/c;

    const-string v0, "audio_data_preprocessing"

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->startLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/camera/basic/Global;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApplication(...)"

    invoke-static {v1, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audio_1.wav"

    invoke-static {v1, v2}, Lvr/Q;->g(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadAudioByte:[B

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->endLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$6$lambda$5$lambda$3(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LV9/P2;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$12$lambda$11(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/camera/fragment/smartComposition/cloud/d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onFailure$lambda$2$lambda$1(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$12()V

    return-void
.end method

.method public static synthetic e(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onFailure$lambda$2$lambda$0(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LKi/i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$9$lambda$8(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onFailure$lambda$2()V

    return-void
.end method

.method private final getCurrentState()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mAiAgentWorkspaceItem:Lz3/c;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lz3/c;->g(I)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mAiAgentWorkspaceItem:Lz3/c;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, LT9/r;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/c;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    iget p0, p0, Lv2/D0;->E:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "scene_id"

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toString(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCurrentState -> "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AITuneParamRequest"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getWorkflowRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "workflow_generate_data"

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->startLog(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "current_state"

    invoke-direct {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->getCurrentState()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;->readMemoryToBase64()Ljava/lang/String;

    move-result-object p0

    const-string v3, "memory"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "transfer_method"

    const-string v4, "local_file"

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "upload_file_id"

    invoke-virtual {p0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "type"

    const-string v6, "image"

    invoke-virtual {p0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "audio"

    invoke-virtual {v7, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "inputs"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "response_mode"

    const-string p1, "blocking"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "user"

    const-string/jumbo p1, "zhangnong"

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "toString(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentPerformanceLogKt;->endLog(Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic h(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$12$lambda$10(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(LV9/s5;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$6$lambda$5$lambda$4(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$9()V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$6$lambda$5()V

    return-void
.end method

.method public static synthetic l(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->onResponse$lambda$9$lambda$7(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method private static final onFailure$lambda$2()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/fragment/smartComposition/cloud/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/smartComposition/cloud/d;-><init>(I)V

    new-instance v2, LC4/y;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, LC4/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onFailure$lambda$2$lambda$0(Lz3/a;)LPu/A;
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

.method private static final onFailure$lambda$2$lambda$1(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onResponse$lambda$12()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LV9/P2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LV9/P2;-><init>(I)V

    new-instance v2, LC4/A;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, LC4/A;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$12$lambda$10(Lz3/a;)LPu/A;
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

.method private static final onResponse$lambda$12$lambda$11(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onResponse$lambda$6$lambda$5()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LV9/s5;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LV9/s5;-><init>(I)V

    new-instance v2, LK4/l;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, LK4/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$6$lambda$5$lambda$3(Lz3/a;)LPu/A;
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

.method private static final onResponse$lambda$6$lambda$5$lambda$4(Lev/l;Ljava/lang/Object;)V
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

    new-instance v1, LKi/i;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LKi/i;-><init>(I)V

    new-instance v2, LCs/t;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, LCs/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$9$lambda$7(Lz3/a;)LPu/A;
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

.method private static final onResponse$lambda$9$lambda$8(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateWorkspaceParam(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;

    new-instance v0, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;

    invoke-direct {v0}, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;-><init>()V

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;->getSpecifiedKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;->getSpecifiedControl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Parameter;->getSpecifiedValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/camera/provider/CameraAgentProvider$FunctionInput;->b:Ljava/lang/String;

    sget-object p1, Lcom/android/camera/provider/CameraAgentProvider;->b:Lzr/b;

    iget v1, p1, Landroidx/lifecycle/C;->c:I

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Lzr/b;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addUploadRequestHeaders(LUy/A$a;)V
    .locals 1

    const-string p0, "builder"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Authorization"

    const-string v0, "Bearer app-tUq8lWHeQUWrmw6WMh8e30cJ"

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

    const-string v0, "Bearer app-tUq8lWHeQUWrmw6WMh8e30cJ"

    invoke-virtual {p1, p0, v0}, LUy/A$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getUpdateRequestCallback()LUy/f;
    .locals 0

    return-object p0
.end method

.method public getUploadAudioRequestBody()LUy/E;
    .locals 6

    new-instance v0, LUy/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUy/x$a;-><init>(I)V

    sget-object v2, LUy/x;->f:LUy/w;

    invoke-virtual {v0, v2}, LUy/x$a;->d(LUy/w;)V

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "zhangnong"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string v3, "audio/wav"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LUy/E;->Companion:LUy/E$a;

    iget-object v4, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadAudioByte:[B

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    sget-object v5, LUy/w;->e:Ljava/util/regex/Pattern;

    invoke-static {v3}, LUy/w$a;->b(Ljava/lang/String;)LUy/w;

    move-result-object v3

    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadAudioByte:[B

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    array-length p0, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v1, p0}, LUy/E$a;->a(LUy/w;[BII)LUy/D;

    move-result-object p0

    const-string v1, "audio_1.wav"

    invoke-virtual {v0, p0, v1}, LUy/x$a;->a(LUy/D;Ljava/lang/String;)V

    invoke-virtual {v0}, LUy/x$a;->c()LUy/x;

    move-result-object p0

    return-object p0
.end method

.method public getUploadRequestBody()LUy/E;
    .locals 6

    new-instance v0, LUy/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUy/x$a;-><init>(I)V

    sget-object v2, LUy/x;->f:LUy/w;

    invoke-virtual {v0, v2}, LUy/x$a;->d(LUy/w;)V

    const-string/jumbo v2, "user"

    const-string/jumbo v3, "zhangnong"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LUy/E;->Companion:LUy/E$a;

    iget-object v4, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadImageByte:[B

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    sget-object v5, LUy/w;->e:Ljava/util/regex/Pattern;

    invoke-static {v3}, LUy/w$a;->b(Ljava/lang/String;)LUy/w;

    move-result-object v3

    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadImageByte:[B

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    array-length p0, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v1, p0}, LUy/E$a;->a(LUy/w;[BII)LUy/D;

    move-result-object p0

    const-string v1, "preview.jpg"

    invoke-virtual {v0, p0, v1}, LUy/x$a;->a(LUy/D;Ljava/lang/String;)V

    invoke-virtual {v0}, LUy/x$a;->c()LUy/x;

    move-result-object p0

    return-object p0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://service.mify.mioffice.cn/api/v1/files/upload"

    return-object p0
.end method

.method public getWorkFlowRequestBody(Ljava/lang/String;Ljava/lang/String;)LUy/E;
    .locals 1

    sget-object v0, LUy/E;->Companion:LUy/E$a;

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->getWorkflowRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LUy/w;->e:Ljava/util/regex/Pattern;

    const-string p1, "application/json"

    invoke-static {p1}, LUy/w$a;->b(Ljava/lang/String;)LUy/w;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const-string p0, "https://service.mify.mioffice.cn/api/v1/workflows/run"

    return-object p0
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "AITuneParamRequest"

    const-string v0, "initContext"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isUpdateAudio()Z
    .locals 0

    const/4 p0, 0x1

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

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo p1, "sMainThreadScheduler"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LF1/P2;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LF1/P2;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onResponse(LUy/e;LUy/F;)V
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v1, "sMainThreadScheduler"

    const-string v2, "WorkflowRespone\uff1a outputJSONObject="

    const-string v3, "call"

    invoke-static {p1, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "response"

    invoke-static {p2, v3}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LUy/e;->e()LUy/A;

    move-result-object p1

    iget-object p1, p1, LUy/A;->a:LUy/u;

    iget-object p1, p1, LUy/u;->i:Ljava/lang/String;

    const-string v3, "onResponse: call request url="

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "AITuneParamRequest"

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iget-object p2, p2, LUy/F;->g:LUy/G;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LUy/G;->i()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->getWorkFlowUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "step-3: The pose generation was successful!"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v5, p1, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$onResponse$bodyObject$1;

    invoke-direct {v4}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$onResponse$bodyObject$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "fromJson(...)"

    invoke-static {p1, p2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$WorkflowRespone;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "WorkflowRespone\uff1a bodyObject="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$WorkflowRespone;->getData()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Data;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Data;->getOutputs()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Outputs;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Outputs;->getOutput()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v4}, Lcom/android/camera/fragment/smartComposition/cloud/AiAgentUtilKt;->fixJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$onResponse$result$1$outputJSONObject$1;

    invoke-direct {v6}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$onResponse$result$1$outputJSONObject$1;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Output;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, p2, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$WorkflowRespone;->getData()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Data;->getOutputs()Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Outputs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Outputs;->getMemory()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Companion;->writeMemoryFromBase64(Ljava/lang/String;)Z

    invoke-virtual {v3}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request$Output;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->updateWorkspaceParam(Ljava/util/List;)V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-static {p0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/smartComposition/cloud/c;

    invoke-direct {p1, v0}, Lcom/android/camera/fragment/smartComposition/cloud/c;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-static {p0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LR3/g;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, LR3/g;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_2
    sget-object p0, LPu/A;->a:LPu/A;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    invoke-static {p0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, LF1/O2;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, LF1/O2;-><init>(I)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_3
    return-void
.end method

.method public setUpdateImage([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AiTunningParamV1Request;->mUploadImageByte:[B

    return-void
.end method

.method public setWorkFlowRequestParam(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->setWorkFlowRequestParam(Ljava/lang/String;)V

    return-void
.end method

.method public snapshot()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/smartComposition/cloud/IRequest;->snapshot()V

    return-void
.end method
