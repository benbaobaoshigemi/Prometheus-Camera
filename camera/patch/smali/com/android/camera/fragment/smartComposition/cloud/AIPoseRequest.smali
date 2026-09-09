.class public final Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/fragment/smartComposition/cloud/IRequest;
.implements LUy/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Companion;,
        Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Data;,
        Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;,
        Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;,
        Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$WorkflowRespone;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0005\'()*+B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001c\u0010\u0018\u001a\u00020\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0018\u0010\"\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0016J\u001c\u0010%\u001a\u00020\u00102\u0008\u0010&\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;",
        "Lcom/android/camera/fragment/smartComposition/cloud/IRequest;",
        "Lokhttp3/Callback;",
        "<init>",
        "()V",
        "mUploadImageByte",
        "",
        "setUpdateImage",
        "",
        "byteArray",
        "initContext",
        "context",
        "Landroid/content/Context;",
        "isUpdateImage",
        "",
        "getUploadUrl",
        "",
        "getWorkFlowUrl",
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
        "onFailure",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "getWorkflowRequestBody",
        "fileId",
        "Companion",
        "WorkflowRespone",
        "Data",
        "Outputs",
        "ImageFile",
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
.field public static final Companion:Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Companion;

.field public static final TAG:Ljava/lang/String; = "AIPoseRequest"

.field public static final UPLOAD_URL:Ljava/lang/String; = "https://service.mify.mioffice.cn/api/v1/files/upload"

.field public static final WORKFLOW_URL:Ljava/lang/String; = "https://service.mify.mioffice.cn/api/v1/workflows/run"


# instance fields
.field private mUploadImageByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LQ4/y;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onFailure$lambda$2$lambda$1(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol;)LPu/A;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onResponse$lambda$8$lambda$7$lambda$5(Ljava/util/List;Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onResponse$lambda$8$lambda$7$lambda$3(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onResponse$lambda$8$lambda$7(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lz3/a;)LPu/A;
    .locals 0

    invoke-static {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onFailure$lambda$2$lambda$0(Lz3/a;)LPu/A;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LO9/h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onResponse$lambda$8$lambda$7$lambda$6(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/camera/fragment/smartComposition/cloud/a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onResponse$lambda$8$lambda$7$lambda$4(Lev/l;Ljava/lang/Object;)V

    return-void
.end method

.method private final getWorkflowRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "getWorkflowRequestBody: "

    const-string v0, " | "

    invoke-static {p0, p1, v0, p2}, LF1/t2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "AIPoseRequest"

    invoke-static {v0, p0, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "{\n    \"inputs\": {\n        \"image_list\": [\n            {\n                \"transfer_method\": \"local_file\",\n                \"upload_file_id\": \""

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \n                \"type\": \"image\"\n            }\n        ]\n    },\n    \"response_mode\": \"blocking\",\n    \"user\": \"kongzhe\"\n}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->onFailure$lambda$2()V

    return-void
.end method

.method private static final onFailure$lambda$2()V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LQ4/y;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LQ4/y;-><init>(I)V

    new-instance v2, LC4/j;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, LC4/j;-><init>(Ljava/lang/Object;I)V

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

.method private static final onResponse$lambda$8$lambda$7(Ljava/util/List;)V
    .locals 4

    sget-object v0, LN6/h$a;->a:LN6/h;

    const-class v1, Lz3/a;

    invoke-virtual {v0, v1}, LN6/h;->d(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "getAttachProtocol2(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/fragment/smartComposition/cloud/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/camera/fragment/smartComposition/cloud/a;-><init>(I)V

    new-instance v2, LG3/a;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, LG3/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol;->Companion:Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol$Companion;

    invoke-virtual {v0}, Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol$Companion;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LO9/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LO9/h;-><init>(Ljava/lang/Object;I)V

    new-instance p0, LCs/o;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, LCs/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final onResponse$lambda$8$lambda$7$lambda$3(Lz3/a;)LPu/A;
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

.method private static final onResponse$lambda$8$lambda$7$lambda$4(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onResponse$lambda$8$lambda$7$lambda$5(Ljava/util/List;Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol;)LPu/A;
    .locals 1

    const-string v0, "compositionPoseProtocol"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/camera/fragment/smartComposition/cloud/CompositionPoseProtocol;->setPostDatas(Ljava/util/List;)V

    sget-object p0, LPu/A;->a:LPu/A;

    return-object p0
.end method

.method private static final onResponse$lambda$8$lambda$7$lambda$6(Lev/l;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lev/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addUploadRequestHeaders(LUy/A$a;)V
    .locals 1

    const-string p0, "builder"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Authorization"

    const-string v0, "Bearer app-bvLakDpHyRLBJ5MiXPX59aKQ"

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

    const-string v0, "Bearer app-bvLakDpHyRLBJ5MiXPX59aKQ"

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
    .locals 6

    new-instance v0, LUy/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LUy/x$a;-><init>(I)V

    sget-object v2, LUy/x;->f:LUy/w;

    invoke-virtual {v0, v2}, LUy/x$a;->d(LUy/w;)V

    const-string/jumbo v2, "user"

    const-string v3, "kongzhe"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, LUy/x$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, LUy/E;->Companion:LUy/E$a;

    iget-object v4, p0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->mUploadImageByte:[B

    invoke-static {v4}, Lfv/l;->e(Ljava/lang/Object;)V

    sget-object v5, LUy/w;->e:Ljava/util/regex/Pattern;

    invoke-static {v3}, LUy/w$a;->b(Ljava/lang/String;)LUy/w;

    move-result-object v3

    iget-object p0, p0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->mUploadImageByte:[B

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    array-length p0, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v1, p0}, LUy/E$a;->a(LUy/w;[BII)LUy/D;

    move-result-object p0

    const-string/jumbo v1, "test.jpg"

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

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->getWorkflowRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    const-string p1, "AIPoseRequest"

    const-string v0, "initContext"

    invoke-static {p1, v0, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo p1, "sMainThreadScheduler"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/camera/fragment/smartComposition/cloud/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    return-void
.end method

.method public onResponse(LUy/e;LUy/F;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LUy/e;->e()LUy/A;

    move-result-object p1

    iget-object p1, p1, LUy/A;->a:LUy/u;

    iget-object p1, p1, LUy/u;->i:Ljava/lang/String;

    const-string v0, "onResponse: call request url="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AiAgentRequestManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object p2, p2, LUy/F;->g:LUy/G;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LUy/G;->i()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->getWorkFlowUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string/jumbo p0, "step-3: The pose generation was successful!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_7

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$onResponse$1$bodyObject$1;

    invoke-direct {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$onResponse$1$bodyObject$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "fromJson(...)"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$WorkflowRespone;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "WorkflowRespone="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$WorkflowRespone;->getData()Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Data;->getOutputs()Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getFilesOne()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getFilesTwo()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getFilesThree()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getInstructOne()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getInstructTwo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$Outputs;->getInstructThree()Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, -0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/camera/data/data/d;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v6, v7, Lcom/android/camera/data/data/d;->c:I

    iput v6, v7, Lcom/android/camera/data/data/d;->d:I

    iput v6, v7, Lcom/android/camera/data/data/d;->e:I

    iput v6, v7, Lcom/android/camera/data/data/d;->f:I

    iput v6, v7, Lcom/android/camera/data/data/d;->h:I

    iput v6, v7, Lcom/android/camera/data/data/d;->j:I

    iput v6, v7, Lcom/android/camera/data/data/d;->k:I

    iput v1, v7, Lcom/android/camera/data/data/d;->z:I

    iput-object v0, v7, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;

    invoke-virtual {p1}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/camera/data/data/d;->w:Ljava/lang/String;

    iput-object v3, v7, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/android/camera/data/data/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v6, p1, Lcom/android/camera/data/data/d;->c:I

    iput v6, p1, Lcom/android/camera/data/data/d;->d:I

    iput v6, p1, Lcom/android/camera/data/data/d;->e:I

    iput v6, p1, Lcom/android/camera/data/data/d;->f:I

    iput v6, p1, Lcom/android/camera/data/data/d;->h:I

    iput v6, p1, Lcom/android/camera/data/data/d;->j:I

    iput v6, p1, Lcom/android/camera/data/data/d;->k:I

    iput v1, p1, Lcom/android/camera/data/data/d;->z:I

    iput-object v0, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;

    invoke-virtual {p2}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/camera/data/data/d;->w:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/android/camera/data/data/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput v6, p1, Lcom/android/camera/data/data/d;->c:I

    iput v6, p1, Lcom/android/camera/data/data/d;->d:I

    iput v6, p1, Lcom/android/camera/data/data/d;->e:I

    iput v6, p1, Lcom/android/camera/data/data/d;->f:I

    iput v6, p1, Lcom/android/camera/data/data/d;->h:I

    iput v6, p1, Lcom/android/camera/data/data/d;->j:I

    iput v6, p1, Lcom/android/camera/data/data/d;->k:I

    iput v1, p1, Lcom/android/camera/data/data/d;->z:I

    iput-object v0, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;

    invoke-virtual {p2}, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest$ImageFile;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/camera/data/data/d;->w:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/camera/data/data/d;->n:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sMainThreadScheduler:Lio/reactivex/v;

    const-string/jumbo p1, "sMainThreadScheduler"

    invoke-static {p0, p1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/fragment/app/d;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v5}, Landroidx/fragment/app/d;-><init>(ILjava/util/ArrayList;)V

    invoke-static {p0, p1}, LAr/d;->f(Lio/reactivex/v;Ljava/lang/Runnable;)Lio/reactivex/disposables/b;

    :cond_7
    return-void
.end method

.method public setUpdateImage([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/smartComposition/cloud/AIPoseRequest;->mUploadImageByte:[B

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
