.class final Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;
.super LVu/h;
.source "SourceFile"

# interfaces
.implements Lev/p;


# annotations
.annotation runtime LVu/e;
    c = "com.xiaomi.camera.cloudfilter.FilterDataSource$isResourceExist$2"
    f = "FilterDataSource.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/cloudfilter/FilterDataSource;->isResourceExist(ILTu/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LVu/h;",
        "Lev/p<",
        "Lyw/D;",
        "LTu/e<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $filterId:I

.field label:I


# direct methods
.method public constructor <init>(ILTu/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LTu/e<",
            "-",
            "Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->$filterId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LVu/h;-><init>(ILTu/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LTu/e;)LTu/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LTu/e<",
            "*>;)",
            "LTu/e<",
            "LPu/A;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;

    iget p0, p0, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->$filterId:I

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;-><init>(ILTu/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lyw/D;

    check-cast p2, LTu/e;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->invoke(Lyw/D;LTu/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lyw/D;LTu/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyw/D;",
            "LTu/e<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->create(Ljava/lang/Object;LTu/e;)LTu/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;

    sget-object p1, LPu/A;->a:LPu/A;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, LUu/a;->a:LUu/a;

    iget v0, p0, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, LPu/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/cloudfilter/database/base/FilterDatabase;->Companion:Lcom/xiaomi/camera/cloudfilter/database/base/FilterDatabase$Companion;

    invoke-virtual {p1}, Lcom/xiaomi/camera/cloudfilter/database/base/FilterDatabase$Companion;->getInstance()Lcom/xiaomi/camera/cloudfilter/database/base/FilterDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/cloudfilter/database/base/FilterDatabase;->resourceDownloadDao()Lcom/xiaomi/camera/cloudfilter/database/dao/ResourceDownloadDao;

    move-result-object p1

    iget p0, p0, Lcom/xiaomi/camera/cloudfilter/FilterDataSource$isResourceExist$2;->$filterId:I

    move v1, p0

    invoke-interface {p1, p0}, Lcom/xiaomi/camera/cloudfilter/database/dao/ResourceDownloadDao;->getDownloadInfo(I)Lcom/xiaomi/camera/cloudfilter/database/entity/ResourceDownloadInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/cloudfilter/database/entity/ResourceDownloadInfo;->getSavedPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/camera/cloudfilter/validate/Verifier$Md5;

    invoke-virtual {p0}, Lcom/xiaomi/camera/cloudfilter/database/entity/ResourceDownloadInfo;->getMd5()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/cloudfilter/validate/Verifier$Md5;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/camera/cloudfilter/validate/Verifier;->verify(Ljava/io/File;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {v1}, Lcom/xiaomi/camera/cloudfilter/util/StaticFilterAssets;->ensure(I)Z

    move-result p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
