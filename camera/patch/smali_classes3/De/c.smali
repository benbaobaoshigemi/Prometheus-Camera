.class public final synthetic LDe/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/b;
.implements LWb/a;
.implements Lj2/i;


# static fields
.field public static volatile a:Z


# direct methods
.method public static c(Ljava/util/AbstractCollection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static d(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/camera/features/mode/cinematic/k;->e(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0
.end method

.method public static e(Ljava/util/List;Lge/f;II)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p3, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lge/f;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-lt p3, p2, :cond_2

    invoke-interface {p0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static f(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown zooming action: "

    invoke-static {p0, v1}, Lc/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "ZOOMING_BY_ASD"

    return-object p0

    :pswitch_1
    const-string p0, "ZOOMING_BY_OPTICAL"

    return-object p0

    :pswitch_2
    const-string p0, "ZOOMING_BY_SMART_COMPOSITION"

    return-object p0

    :pswitch_3
    const-string p0, "ZOOMING_BY_SMART_SCENE_MUTEX"

    return-object p0

    :pswitch_4
    const-string p0, "ZOOMING_BY_PANEL_SCALE_VALUE_CLICK"

    return-object p0

    :pswitch_5
    const-string p0, "ZOOMING_BY_AI_AGENT"

    return-object p0

    :pswitch_6
    const-string p0, "ZOOMING_BY_TOGGLE_BUTTON_BY_LENS"

    return-object p0

    :pswitch_7
    const-string p0, "ZOOMING_BY_INPROCESS_TOGGLE_FOCAL_BUTTON"

    return-object p0

    :pswitch_8
    const-string p0, "ZOOMING_SEGMENT_BY_CAMERA_HANDLE"

    return-object p0

    :pswitch_9
    const-string p0, "ZOOMING_RING_BY_CAMERA_HANDLE"

    return-object p0

    :pswitch_a
    const-string p0, "ZOOMING_BY_AUTO_ZOOM_RESET_AFTER_CAPTURE"

    return-object p0

    :pswitch_b
    const-string p0, "ZOOMING_BY_DOLLY_AUTO_ZOOM_RESET"

    return-object p0

    :pswitch_c
    const-string p0, "ZOOMING_BY_DOLLY_AUTO_ZOOM"

    return-object p0

    :pswitch_d
    const-string p0, "ZOOMING_BY_WORKSPACE"

    return-object p0

    :pswitch_e
    const-string p0, "ZOOMING_BY_ZOOM_RING"

    return-object p0

    :pswitch_f
    const-string p0, "ZOOMING_BY_LAYOUT_CHANGE"

    return-object p0

    :pswitch_10
    const-string p0, "ZOOMING_BY_MIRROR_ANY_CROP"

    return-object p0

    :pswitch_11
    const-string p0, "ZOOMING_BY_VIDEO_BAR"

    return-object p0

    :pswitch_12
    const-string p0, "ZOOMING_BY_INPROCESS_TOGGLE_BUTTON"

    return-object p0

    :pswitch_13
    const-string p0, "ZOOMING_BY_STABILIZER_KEY_EVENT"

    return-object p0

    :pswitch_14
    const-string p0, "ZOOMING_BY_SLIDER_BAR_BUTTON"

    return-object p0

    :pswitch_15
    const-string p0, "ZOOMING_BY_SLIDER_BAR"

    return-object p0

    :pswitch_16
    const-string p0, "ZOOMING_BY_PINCH_GESTURE"

    return-object p0

    :pswitch_17
    const-string p0, "ZOOMING_BY_VOLUME_KEY"

    return-object p0

    :pswitch_18
    const-string p0, "ZOOMING_BY_TOGGLE_BUTTON"

    return-object p0

    :pswitch_19
    const-string p0, "ZOOMING_BY_UNKNOWN_SOURCE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lj9/e;)Lcom/android/camera/data/data/F;
    .locals 1

    const-string p0, "category"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "type"

    invoke-static {p2, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p"

    invoke-static {p3, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "pref_beautify_hairline_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_hair_lc:I

    sget p3, LQh/e;->edit_hairline:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_1
    const-string p0, "pref_beautify_makeup_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_makeup_lc:I

    invoke-virtual {p3}, Lj9/e;->m()I

    move-result p3

    const/16 v0, 0x9

    if-ne p3, v0, :cond_0

    sget p3, LQh/e;->beauty_fx_makeup_cv:I

    goto :goto_0

    :cond_0
    sget p3, LQh/e;->beauty_makeups_subeffect_makeup:I

    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_2
    const-string p0, "pref_beautify_enlarge_eye_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_eye_large_lc:I

    sget p3, LQh/e;->edit_eye_large:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_3
    const-string p0, "pref_beautify_nose_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_nose_lc:I

    sget p3, LQh/e;->edit_nose:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_4
    const-string p0, "pref_beautify_skin_smooth_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_smooth_lc:I

    invoke-static {}, Lv2/I0;->e()I

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_5
    const-string p0, "pref_beautify_slim_face_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_face_slender_lc:I

    sget p3, LQh/e;->edit_face_slender:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_6
    const-string p0, "pref_beautify_hair_puffy_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_shine_hair_puffy_lc:I

    sget p3, LQh/e;->shine_hair_puffy:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_7
    const-string p0, "pref_beautify_whiten_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_whiten_lc:I

    sget p3, LQh/e;->edit_skin_white:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_8
    const-string p0, "pref_beautify_tooth_white_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_beauty_teeth_whiten_lc:I

    sget p3, LQh/e;->ic_beauty_teeth_whiten:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_9
    const-string p0, "pref_beautify_down_head_narrow"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_head_narrow_lc:I

    sget p3, LQh/e;->edit_head_narrow:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :sswitch_a
    const-string p0, "pref_beautify_solid_ratio_key"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/camera/data/data/F;

    sget p1, LQh/b;->ic_vector_beauty_solid_lc:I

    sget p3, LQh/e;->edit_solid:I

    invoke-direct {p0, p1, p3, p2}, Lcom/android/camera/data/data/F;-><init>(IILjava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported beauty type: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5eed1fcd -> :sswitch_a
        -0x3bfb299f -> :sswitch_9
        -0x8817ed2 -> :sswitch_8
        0x2b95f4b5 -> :sswitch_7
        0x330df2fb -> :sswitch_6
        0x35532ea7 -> :sswitch_5
        0x36aaa8f8 -> :sswitch_4
        0x3ad8a2a3 -> :sswitch_3
        0x3e8271ec -> :sswitch_2
        0x55d54f59 -> :sswitch_1
        0x62f067e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public d0(Lme/u;)Ljava/lang/Object;
    .locals 3

    new-instance p0, LDe/d;

    const-class v0, LDe/f;

    invoke-virtual {p1, v0}, Lme/u;->H(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDe/f;

    const-class v1, Lxe/d;

    invoke-virtual {p1, v1}, Lme/u;->H(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxe/d;

    const-class v2, Lxe/h;

    invoke-virtual {p1, v2}, Lme/u;->H(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxe/h;

    invoke-direct {p0, v0, v1, p1}, LDe/d;-><init>(LDe/f;Lxe/d;Lxe/h;)V

    return-object p0
.end method
