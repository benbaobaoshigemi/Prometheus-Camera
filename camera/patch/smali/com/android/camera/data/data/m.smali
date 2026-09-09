.class public final Lcom/android/camera/data/data/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
.end annotation


# static fields
.field public static a:Z


# direct methods
.method public static A(I)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/camera/data/data/w;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v1

    iget v1, v1, Lv2/D0;->F:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/f0;

    invoke-virtual {v1, v2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LX9/z;

    invoke-direct {v2, p0, v0}, LX9/z;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/16 v1, 0xa2

    if-ne p0, v1, :cond_1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->E5()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xce

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p0, "getVisibleConfigItemListInRecording: list = "

    invoke-static {p0, v0}, LF1/b0;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConfigUtil"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static A0(I)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_ai_beauty_mode_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LWh/a;->p(ILjava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static B(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "6,60"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static B0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_ai_beauty_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static C()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->H()Z

    move-result v0

    return v0
.end method

.method public static C0(ILjava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups2"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static D()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->B()Z

    move-result v0

    return v0
.end method

.method public static D0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_none_beauty_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static E(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "8,120"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static E0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    const-string p0, "ON"

    goto :goto_0

    :cond_0
    const-string p0, "OFF"

    :goto_0
    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static F()Z
    .locals 4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/k0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/k0;

    iget-boolean v0, v0, Lv2/k0;->S:Z

    const-string v1, "ConfigUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "getAIBeautyStatus Unsupport AI Beauty!"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getAIBeautyStatus none beauty status."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/camera/log/LogC;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_ai_beauty_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static F0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isVideoModeSupportFastMotion"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/s;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/camera/data/data/k;

    invoke-direct {v1, p0}, Lcom/android/camera/data/data/k;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static G(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/d;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/d;

    invoke-virtual {v0, p0}, Lr2/d;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static G0(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    invoke-virtual {v0, p0, p1}, Lr2/w;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static H(I)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    const/16 v0, 0xac

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/m;->U(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v0, Lr2/W;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/W;

    invoke-virtual {p0}, Lr2/W;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static H0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedSuperNightScene"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_camera_from_super_nigtht_video_module"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    return-void
.end method

.method public static I(I)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "useSlowMotionTab"
        type = 0x0
    .end annotation

    const/16 v0, 0xac

    if-ne p0, v0, :cond_1

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->O0()S

    move-result p0

    const/16 v1, 0x1e0

    if-lt p0, v1, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v1, Lr2/W;

    invoke-virtual {p0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr2/W;

    invoke-virtual {p0, v0}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slow_motion_480"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slow_motion_960"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "slow_motion_1920"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr2/W;->q()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static I0(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "pref_camera_hsr_value_key_u"

    goto :goto_0

    :cond_0
    const-string p1, "pref_camera_hsr_value_key"

    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-virtual {v0, p1, p0}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static J(I)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportGain"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/g;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LM6/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LM6/o;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static J0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_camera_from_pro_video_module"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    return-void
.end method

.method public static K()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->F()Z

    move-result v0

    return v0
.end method

.method public static K0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportLiveShot"
        type = 0x0
    .end annotation

    invoke-static {}, Lvr/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/B;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B;

    invoke-virtual {v0, p0}, Lr2/B;->p(Z)V

    :cond_0
    return-void
.end method

.method public static L(IZ)Z
    .locals 2

    const-string v0, "pref_beauty_switch_"

    invoke-static {p0, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_ext_screen"

    invoke-static {p0, v1}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0, p1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static L0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_mic_state"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static M(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedCclock"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/i;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/i;

    invoke-virtual {v0, p0}, Lr2/i;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static M0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_motion_detection_animator"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static N()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportedCclock"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/i;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/i;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lr2/i;->b:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lr2/i;->f:I

    invoke-virtual {v0, v1}, Lr2/i;->isSupportMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr2/i;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lr2/i;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lr2/i;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr2/i;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lr2/i;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static N0(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_motion_detection_state"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static O(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0, p0}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2.39x1"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2.39x1_new"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static O0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_play_tone_on_capture_start_key"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static P()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/q;

    iget v1, v0, Lr2/q;->a:I

    if-eqz v1, :cond_0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static P0()V
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSkinColor"
        type = 0x2
    .end annotation

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->L3(Lj9/e;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_skin_color_type_key"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, LWh/a;->r(Ljava/lang/String;Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static Q()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/q;

    iget v0, v0, Lr2/q;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Q0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_slow_motion_menu"

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static R()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isVideoModeSupportFastMotion"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/s;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LE4/o;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LE4/o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static R0(IZ)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "ON"

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/d0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/d0;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static S()Z
    .locals 2

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v0

    iget v1, v0, Lu2/Q;->u:I

    invoke-virtual {v0, v1}, Lu2/Q;->E(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/data/data/m;->T(I)Z

    move-result v0

    return v0
.end method

.method public static S0(I)V
    .locals 2

    invoke-static {p0}, Lcom/android/camera/data/data/m;->t0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_0
    return-void
.end method

.method public static T(I)Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportLiveShot"
        type = 0x0
    .end annotation

    const/16 v0, 0xa3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xab

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe7

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/B;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/B;

    invoke-virtual {v0, p0}, Lr2/B;->isSwitchOn(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lr2/B;->a:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static T0(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperViewfinderForStreet"
        type = 0x2
    .end annotation

    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/j0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/j0;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static U(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/H;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/H;

    invoke-virtual {v0, p0}, Lr2/H;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static U0(I)Z
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    invoke-virtual {v0, p0}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/data/m;->S()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa3

    if-ne p0, v0, :cond_0

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->x6()Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "ConfigUtil"

    const-string/jumbo v1, "shouldMuteLivePhotoWaterMarkWithHDR"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public static V()Z
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_none_beauty_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static V0()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPresentationDisplay"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/q;

    invoke-virtual {v0, v1}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LH8/q;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LH8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static W(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0, p0}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "open_gate"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static W0(IZ)V
    .locals 2

    const-string v0, "pref_beauty_switch_"

    invoke-static {p0, v0}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_ext_screen"

    invoke-static {p0, v1}, Lcom/faceunity/core/avatar/business/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {v0, p0, p1}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static X()Z
    .locals 5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_photo_item_beauty_switch"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v2

    const-class v3, Lv2/k0;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/k0;

    iget-object v2, v2, Lv2/k0;->h:Lm9/b;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Lm9/b;->a:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static X0()V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    invoke-virtual {v0}, Lr2/S;->t()V

    return-void
.end method

.method public static Y(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/N;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/N;

    invoke-virtual {v0, p0}, Lr2/N;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static Y0()V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lr2/c0;->Q()V

    return-void
.end method

.method public static Z()Z
    .locals 3

    sget v0, Lcom/android/camera/module/Y;->a:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/Q;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0, v1}, Lr2/Q;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1x1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Z0(Z)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_photo_item_beauty_switch"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-static {}, Lcom/android/camera/data/data/j;->u1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->M()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Ls2/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa2

    invoke-static {v0}, Ls2/c;->m(I)[I

    move-result-object v0

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->S()Lj9/e;

    move-result-object v1

    invoke-static {v0, v1}, Ls2/c;->s([ILj9/e;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/f0;->A()Z

    move-result v0

    return v0
.end method

.method public static a0(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    invoke-virtual {v0, p0}, Lr2/S;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static a1(Z)V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBeautyItem"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_video_item_beauty_switch"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, LWh/a;->n(Ljava/lang/String;Z)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static b(IILjava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/data/j;->v1(I)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->k()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v0

    :goto_1
    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object p2, v1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-static {p1, p0}, Lcom/android/camera/data/data/m;->I0(Ljava/lang/String;Z)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    :goto_3
    const-string p0, "5"

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b0(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0, p0}, Lr2/Q;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "10x16.38"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "10x15.80"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "10x15.30"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b1(F)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_camera_target_zoom_key"

    invoke-virtual {v0, v1, p0}, LWh/a;->o(Ljava/lang/String;F)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static c()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isTrueColourVideoSupported"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->G2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Ls2/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/c;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Ls2/c;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls2/c;->u(Z)V

    :cond_0
    return-void
.end method

.method public static c0(I)Z
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/X;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/X;

    invoke-virtual {v0, p0}, Lr2/X;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/W;

    invoke-virtual {v1, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/W;

    invoke-virtual {v1, p0}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "slow_motion_120"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isTrueColourVideoSupported"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Ls2/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/c;

    invoke-virtual {v0}, Ls2/c;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Ls2/c;->n(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d0(I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xac

    if-ne p0, v2, :cond_b

    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    iget-object v3, v3, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v3}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->g5()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v2

    const-class v3, Lr2/W;

    invoke-virtual {v2, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/W;

    if-eqz v2, :cond_c

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v3

    const-class v4, Lr2/X;

    invoke-virtual {v3, v4}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/X;

    invoke-virtual {v3, p0}, Lr2/X;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "6"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1280x720:"

    goto :goto_0

    :cond_0
    const-string v3, "3840x2160:"

    goto :goto_0

    :cond_1
    const-string v3, "1920x1080:"

    :goto_0
    invoke-virtual {v2, p0}, Lr2/W;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v6, "slow_motion_480_direct"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "slow_motion_960"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "slow_motion_480"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "slow_motion_240"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "slow_motion_120"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "slow_motion_3840"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "slow_motion_1920"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    move v5, v0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "slow_motion_960_direct"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    move v5, v1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xf0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lr2/W;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x78

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lr2/W;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :pswitch_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x1e0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lr2/W;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_2

    :pswitch_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3c0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lr2/W;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    iget-object p0, v2, Lr2/W;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_a
    :goto_2
    return v0

    :cond_b
    if-ne p0, v2, :cond_c

    sget-boolean p0, LJe/c;->k:Z

    sget-object p0, LJe/c$b;->a:LJe/c;

    iget-object p0, p0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x52d5e5a0 -> :sswitch_7
        -0x4d7933ef -> :sswitch_6
        -0x4d784eb4 -> :sswitch_5
        -0x44904cdc -> :sswitch_4
        -0x449048dd -> :sswitch_3
        -0x449040df -> :sswitch_2
        -0x44902e58 -> :sswitch_1
        0x1043c2c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static e(I)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isTrueColourVideoSupported"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getPreferComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Ls2/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/c;

    invoke-virtual {v0}, Ls2/c;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Ls2/c;->n(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e0()Z
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_slow_motion_menu"

    invoke-virtual {v0, v2, v1}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()I
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_ai_beauty_mode_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, LWh/a;->j(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f0()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/android/camera/module/Y;->a:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0}, Lr2/Q;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyMode"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/h;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/h;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g0(I)Z
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "enableLongExposureMode"
        type = 0x0
    .end annotation

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    iget-object v0, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v0}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->l0()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/z0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z0;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h0()Z
    .locals 4

    sget-boolean v0, Lcom/android/camera/data/data/m;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pref_super_night_force_disabled"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v2

    iget v3, v2, Lu2/Q;->u:I

    invoke-virtual {v2, v3}, Lu2/Q;->E(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static i(I)I
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr2/j1;->e(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i0(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/camera/data/data/j;->a1(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, LK2/b;->a0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->h0()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/w;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/w;

    invoke-virtual {v0, p0}, Lr2/w;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j0()Z
    .locals 1

    invoke-static {}, LK2/b;->b0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static k(FI)I
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object v1

    invoke-virtual {v1}, Lu2/Q;->O()Z

    move-result v1

    const/16 v2, 0xab

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_7

    const/16 v1, 0xe1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xe5

    if-eq p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v2, Lr2/l0;

    invoke-virtual {v1, v2}, LWh/b;->u(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LM6/n;

    invoke-direct {v2, p1, v0}, LM6/n;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget v2, Lur/i;->a:F

    invoke-static {}, Lj9/f;->J3()Z

    move-result v2

    if-nez v2, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    move p0, p1

    :cond_1
    invoke-static {p0}, LO0/A;->B(F)F

    move-result p0

    const/high16 p1, 0x41200000    # 10.0f

    mul-float v0, p0, p1

    rem-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    div-float/2addr p0, v1

    const/high16 p1, 0x41b80000    # 23.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    float-to-int p0, p0

    return p0

    :cond_4
    sget-object p1, LJe/c$b;->a:LJe/c;

    invoke-virtual {p1}, LJe/c;->f()Landroid/util/SparseArray;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LLe/b;

    iget v1, v1, LLe/b;->b:F

    cmpl-float v1, p0, v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_5
    add-int/2addr v3, v0

    goto :goto_2

    :cond_6
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->p()I

    move-result p0

    return p0

    :cond_7
    sget-boolean p1, LJe/c;->k:Z

    sget-object p1, LJe/c$b;->a:LJe/c;

    iget-object v1, p1, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {v1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->D4()Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Lur/i;->a:F

    invoke-virtual {p1}, LJe/c;->g()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_3
    if-ltz v1, :cond_9

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLe/b;

    iget v0, v0, LLe/b;->b:F

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_9
    sget-object p0, LJe/c$b;->a:LJe/c;

    invoke-virtual {p0}, LJe/c;->k()I

    move-result p0

    return p0

    :cond_a
    :goto_4
    return v3

    :cond_b
    invoke-static {p1, v3}, Lcom/android/camera/data/data/j;->U(IZ)[F

    move-result-object p1

    sget v2, Lur/i;->a:F

    sget-boolean v2, LJe/c;->k:Z

    sget-object v2, LJe/c$b;->a:LJe/c;

    invoke-virtual {v2, v1}, LJe/c;->l(Z)[I

    move-result-object v1

    array-length v2, p1

    array-length v4, v1

    if-eq v2, v4, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getZoomRatioSparseArray: invalid data! opticalZoomRatios = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", focalLengthArray = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ZoomUtil"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    array-length v2, p1

    array-length v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_5
    if-ge v3, v2, :cond_e

    aget v4, p1, v3

    sub-float v4, p0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v4, v6

    if-gez v4, :cond_d

    aget p0, v1, v3

    return p0

    :cond_d
    add-int/2addr v3, v0

    goto :goto_5

    :cond_e
    return v2
.end method

.method public static k0(Lj9/e;)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/m;->f0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/module/Y;->j()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lj9/f;->A4(Lj9/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/android/camera/module/Y;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lj9/f;->u3(Lj9/e;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static l(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/camera/data/data/j;->N(I)F

    move-result v0

    invoke-static {v0, p0}, Lcom/android/camera/data/data/m;->k(FI)I

    move-result p0

    return p0
.end method

.method public static l0()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->M()Z

    move-result v0

    return v0
.end method

.method public static m()I
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/I0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/I0;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static m0(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0, p0}, Lr2/c0;->isSupportMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Lr2/c0;->isSwitchOn(I)Z

    move-result p0

    return p0
.end method

.method public static n()I
    .locals 3

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    iget-object v0, v0, Lu6/f;->a:Lu6/b;

    iget v0, v0, Lu6/b;->a:I

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v1

    invoke-virtual {v1}, Lu6/f;->k()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "pref_camera_hsr_value_key_u"

    goto :goto_0

    :cond_0
    const-string v0, "pref_camera_hsr_value_key"

    :goto_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static n0()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lr2/S;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, LJe/c;->z0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FrontCapture"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/m;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "female"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FrontClassicalCapture"

    return-object v0

    :cond_1
    const-string v0, "FrontTextureCapture"

    return-object v0
.end method

.method public static o0()Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c0;

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lr2/c0;->J()Z

    move-result v0

    return v0
.end method

.method public static p(I)[I
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LK2/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/camera/data/data/E;->m0(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static p0(ILj9/e;)Z
    .locals 1

    invoke-static {p1}, Lj9/f;->Y3(Lj9/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p1

    const-class v0, Lr2/S;

    invoke-virtual {p1, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/S;

    invoke-virtual {p1, p0}, Lr2/S;->r(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups2"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q0(I)Z
    .locals 3

    const/16 v0, 0xa2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/z;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/z;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/data/data/c;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lr2/z;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isVhdrOn: hdr component not init or empty"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "ConfigUtil"

    invoke-static {v2, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static r(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/D;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/D;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r0(ILj9/e;)Z
    .locals 0

    invoke-static {p1}, Lj9/f;->k4(Lj9/e;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/android/camera/data/data/m;->q0(I)Z

    move-result p0

    return p0
.end method

.method public static s()Z
    .locals 3

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_mic_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s0(I)Z
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static t()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v1, "pref_motion_detection_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LWh/a;->h(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static t0(I)Z
    .locals 3

    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v2, Lr2/f0;

    invoke-virtual {v0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3001"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3001,24"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static u(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/Q;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/Q;

    invoke-virtual {v0, p0}, Lr2/Q;->q(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u0(II)Z
    .locals 1

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/data/data/j;->C0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/camera/data/data/j;->D0()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/camera/data/data/m;->s0(I)Z

    move-result p0

    return p0
.end method

.method public static v(II)I
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p1}, Lr2/f0;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/data/data/m;->b(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v0()V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, LWh/a;->s(Ljava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method

.method public static w(Lj9/e;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj9/e;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/S;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/S;

    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lr2/S;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lj9/e;->m0(I)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_1
    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lr2/S;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JPEG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj9/e;->m0(I)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_3
    sget v1, Lcom/android/camera/module/Y;->a:I

    invoke-virtual {v0, v1}, Lr2/S;->r(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lj9/e;->m0(I)Landroid/util/Range;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lj9/e;->z()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public static w0(I)V
    .locals 2

    invoke-static {p0}, Lcom/android/camera/data/data/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/f0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/f0;

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->reset(I)V

    :cond_0
    return-void
.end method

.method public static x()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSkinColor"
        type = 0x2
    .end annotation

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->L3(Lj9/e;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-string v2, "pref_skin_color_type_key"

    invoke-virtual {v0, v2, v1}, LWh/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static x0(IZ)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAiAudioNew"
        type = 0x0
    .end annotation

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/d;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/d;

    invoke-virtual {v0, p0}, Lr2/d;->isSupportMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb4

    const/4 v2, 0x0

    if-eq p0, v1, :cond_2

    const/16 v1, 0xa4

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-boolean v3, LJe/c;->k:Z

    sget-object v3, LJe/c$b;->a:LJe/c;

    invoke-virtual {v3}, LJe/c;->v0()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    iget-object p1, v0, Lr2/d;->i:Lcom/android/camera/data/data/d;

    iget-object p1, p1, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnabled: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", value = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lr2/d;->i:Lcom/android/camera/data/data/d;

    iget-object p0, p0, Lcom/android/camera/data/data/d;->q:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "ComponentConfigAiAudioNew"

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    const-string p1, "2"

    goto :goto_2

    :cond_4
    const-string p1, "1"

    :goto_2
    invoke-virtual {v0, p0, p1}, Lcom/android/camera/data/data/c;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public static y()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperViewfinderForStreet"
        type = 0x2
    .end annotation

    sget v0, Lcom/android/camera/module/Y;->a:I

    invoke-static {v0}, Lcom/android/camera/module/Y;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj9/f;->S3()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/j0;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/j0;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "-1.0"

    return-object v0
.end method

.method public static y0(IZ)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    const-class v1, Lr2/c;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/c;

    invoke-virtual {v0, p0, p1}, Lr2/c;->p(IZ)V

    return-void
.end method

.method public static z()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportSuperViewfinderForStreet"
        type = 0x2
    .end annotation

    const-string v0, "-1.0"

    invoke-static {}, Lcom/android/camera/data/data/m;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static z0(I)V
    .locals 2

    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v0

    invoke-virtual {v0}, LWh/a;->g()LWh/a;

    const-string v1, "pref_ai_beauty_animation_key"

    invoke-static {v1}, Lcom/android/camera/data/data/j;->R1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LWh/a;->p(ILjava/lang/String;)LWh/a;

    invoke-virtual {v0}, LWh/a;->c()V

    return-void
.end method
