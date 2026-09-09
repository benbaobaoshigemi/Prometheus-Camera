.class public final Landroidx/appfunctions/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appfunctions/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appfunctions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/appfunctions/a;


# direct methods
.method public constructor <init>(Landroidx/appfunctions/a;)V
    .locals 1

    const-string/jumbo v0, "returnValue"

    invoke-static {p1, v0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appfunctions/c$b;->a:Landroidx/appfunctions/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;
    .locals 2

    new-instance v0, Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;

    iget-object p0, p0, Landroidx/appfunctions/c$b;->a:Landroidx/appfunctions/a;

    iget-object v1, p0, Landroidx/appfunctions/a;->b:Landroid/app/appsearch/GenericDocument;

    iget-object p0, p0, Landroidx/appfunctions/a;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1, p0}, Lcom/android/extensions/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    return-object v0
.end method
