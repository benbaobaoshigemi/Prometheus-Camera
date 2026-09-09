.class public Lcom/android/camera/fragment/cai/CustomCaiActivity;
.super Lcom/android/camera/fragment/cai/InputEditActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/cai/CustomCaiActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic e0:I


# instance fields
.field public d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/cai/InputEditActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final Aq()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->a:I

    return p0
.end method

.method public final Bq()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, LB4/b;->a(Landroid/content/Intent;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iput-object v0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    if-nez v0, :cond_0

    const-string v0, "intentData is Null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CustomCaiActivity"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    invoke-super {p0}, Lcom/android/camera/fragment/cai/InputEditActivity;->Bq()V

    return-void
.end method

.method public final Cq(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CustomCaiActivity"

    const-string v2, "onclick save"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object v0, v0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v0, p1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, LWh/a;->g()LWh/a;

    invoke-virtual {v1, v0}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    invoke-virtual {v1}, LWh/a;->c()V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->d:Ljava/lang/String;

    const-string/jumbo v0, "save"

    invoke-static {v0, p0}, Liq/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final Dq(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->b:Ljava/lang/String;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0, p1}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    :goto_0
    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public final Ul()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CustomCaiActivity"

    const-string v2, "onclick close"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object v0, v0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->d:Ljava/lang/String;

    const-string v1, "back"

    invoke-static {v1, v0}, Liq/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public final oq()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->c:Ljava/lang/String;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final xq()Landroid/text/InputFilter;
    .locals 0

    new-instance p0, LB4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public final yq()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity;->d0:Lcom/android/camera/fragment/cai/CustomCaiActivity$a;

    iget-object p0, p0, Lcom/android/camera/fragment/cai/CustomCaiActivity$a;->b:Ljava/lang/String;

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, p0, v1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zq(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, LEw/k;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method
