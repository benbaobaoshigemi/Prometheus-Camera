.class public final Lmiuix/autodensity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX6/j;
.implements Lme/b;
.implements Lp9/g;


# static fields
.field public static volatile a:F

.field public static b:Ljava/lang/String;

.field public static c:I


# direct methods
.method public static G0()Z
    .locals 2

    sget v0, Lmiuix/autodensity/d;->c:I

    if-gtz v0, :cond_1

    sget v0, Lmiuix/autodensity/d;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget-object v0, Lmiuix/autodensity/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static H0(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v1

    :goto_1
    const-string v4, "g"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    const-string v4, "b"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    goto :goto_3

    :cond_2
    move v9, v1

    :goto_3
    const-string v4, "intensity"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_4
    move v10, v3

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    new-instance v5, LAt/a;

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, LAt/a;-><init>(Ljava/lang/String;IIIF)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object p0, v6

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static I0(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lmiuix/autodensity/d;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AutoDensity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_new_ai_scene_on_mm:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_new_ai_scene_off_mm:I

    return p0
.end method

.method public A0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->top_anim_doc_auto_shutter_open:I

    return p0

    :cond_0
    sget p0, LQh/d;->top_anim_doc_auto_shutter_off:I

    return p0
.end method

.method public B(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_vector_config_ai_audio_single_on_mm:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_vector_config_ai_audio_single_off_mm:I

    return p0
.end method

.method public B0(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public C(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_portrait_style_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_portrait_style_off_lc_sp:I

    return p0
.end method

.method public C0(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public D(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public D0(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public E()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_custom_shutter_remove_lc_sp:I

    return p0
.end method

.method public E0()I
    .locals 0

    sget p0, LQh/b;->ic_collapse_arrow_lc:I

    return p0
.end method

.method public F(Ljava/lang/String;Z)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_fps_24_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    if-eqz p2, :cond_5

    const/16 v0, 0x642

    if-eq p2, v0, :cond_4

    const/16 v0, 0x6ba

    if-eq p2, v0, :cond_2

    const v0, 0xbe2f

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "120"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_fps_120_lc_sp:I

    return p0

    :cond_2
    const-string p2, "60"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_top_config_fps_60_lc_sp:I

    return p0

    :cond_4
    const-string p2, "24"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :cond_5
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    return p0

    :cond_6
    sget p0, LQh/b;->ic_top_config_fps_30_lc_sp:I

    return p0
.end method

.method public F0(Ljava/lang/String;)I
    .locals 0

    const-string p0, "off"

    invoke-static {p1, p0}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/d;->anim_top_config_hdr_off_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_hdr_on_lc_sp:I

    return p0
.end method

.method public G()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public H()I
    .locals 0

    sget p0, LQh/b;->ic_parameter_focus_peak_lc_sp:I

    return p0
.end method

.method public I()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_equip_street_lc_sp:I

    return p0
.end method

.method public J(Ljava/lang/String;)I
    .locals 2

    sget p0, LQh/b;->ic_top_config_hdr_auto:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df94319

    if-eq v0, v1, :cond_2

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_0

    return p0

    :cond_0
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p0, LQh/b;->ic_top_config_hdr_off:I

    :cond_1
    return p0

    :cond_2
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p0, LQh/b;->ic_new_config_hdr_normal_top_mm:I

    return p0
.end method

.method public K(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_focus_peak_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_focus_peak_off_lc_sp:I

    return p0
.end method

.method public L(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_beauty_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_beauty_off_lc_sp:I

    return p0
.end method

.method public M(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_carpanning_on_lc:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_carpanning_off_lc:I

    return p0
.end method

.method public N(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->top_anim_ai_scene_on:I

    return p0

    :cond_0
    sget p0, LQh/d;->top_anim_ai_scene_off:I

    return p0
.end method

.method public O()I
    .locals 0

    sget p0, LQh/b;->ic_tip_close_lc:I

    return p0
.end method

.method public P(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->top_anim_ai_audio_single_on:I

    return p0

    :cond_0
    sget p0, LQh/d;->top_anim_ai_audio_single_off:I

    return p0
.end method

.method public Q(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_custom_shutter_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_custom_shutter_off_lc_sp:I

    return p0
.end method

.method public R(Ljava/lang/String;)I
    .locals 0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/b;->ic_top_config_master_portrait_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_top_config_leica_portrait_lc_sp:I

    return p0
.end method

.method public S(Ljava/lang/String;)I
    .locals 3

    sget p0, LQh/b;->ic_ratio_3_4_lc_sp:I

    sget-object v0, Lr2/b;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, LQu/l;->I(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "2.39x1_new"

    const-string v2, "2.39x1"

    if-eqz v0, :cond_2

    invoke-static {p1, v2}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/b;->ic_ratio_cinematic_lc_sp:I

    return p0

    :cond_0
    invoke-static {p1, v1}, Lfv/l;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, LQh/b;->ic_ratio_2_39_lc_sp:I

    return p0

    :cond_1
    sget p0, LQh/b;->ic_ratio_full_lc_sp:I

    return p0

    :cond_2
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_ratio_cinematic_lc_sp:I

    return p0

    :sswitch_1
    const-string v0, "16x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    sget p0, LQh/b;->ic_ratio_9_16_lc_sp:I

    return p0

    :sswitch_2
    const-string v0, "4x3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const-string v0, "3x2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget p0, LQh/b;->ic_ratio_2_3_lc_sp:I

    return p0

    :sswitch_4
    const-string v0, "1x1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    sget p0, LQh/b;->ic_ratio_1_1_lc_sp:I

    return p0

    :sswitch_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    sget p0, LQh/b;->ic_ratio_2_39_lc_sp:I

    :cond_8
    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c97f0c4 -> :sswitch_5
        0xc6aa -> :sswitch_4
        0xce2d -> :sswitch_3
        0xd1ef -> :sswitch_2
        0x171fa6 -> :sswitch_1
        0x57f29bdb -> :sswitch_0
    .end sparse-switch
.end method

.method public T(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public U(Ljava/lang/String;)I
    .locals 2

    sget p0, LQh/b;->ic_new_config_flash_fill_light_off_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    const v1, 0xbdf5

    if-eq v0, v1, :cond_2

    const v1, 0xbdf8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "107"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_new_config_flash_fill_light_soft_light:I

    return p0

    :cond_2
    const-string v0, "104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_new_config_flash_fill_light_soft_halo_lc_sp:I

    return p0

    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return p0

    :cond_5
    sget p0, LQh/b;->ic_new_config_flash_fill_light_auto_lc_sp:I

    return p0

    :cond_6
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0
.end method

.method public V(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_video_prompter_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_video_prompter_off_lc_sp:I

    return p0
.end method

.method public W(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_vector_config_tilt_on_mm:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_vector_config_tilt_off_mm:I

    return p0
.end method

.method public X(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_flash_off_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_flash_auto_lc_sp:I

    return p0

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_flash_torch_lc_sp:I

    return p0

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return p0

    :cond_2
    sget p0, LQh/b;->ic_top_config_flash_on_lc_sp:I

    return p0

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Y(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_top_config_pro_mode_bt2020_on:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_top_config_pro_mode_bt2020_off:I

    return p0
.end method

.method public Z()I
    .locals 0

    sget p0, LQh/b;->ic_parameter_exposure_feedback_lc_sp:I

    return p0
.end method

.method public a()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_cine_popup_camera_lc_sp:I

    return p0
.end method

.method public a0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_smart_composition_on_lc:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_smart_composition_off_lc:I

    return p0
.end method

.method public b(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_night_video_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_night_video_off_lc_sp:I

    return p0
.end method

.method public b0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_halo_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_halo_off_lc_sp:I

    return p0
.end method

.method public c(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_macro_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_macro_off_lc_sp:I

    return p0
.end method

.method public c0(Ljava/lang/String;)I
    .locals 0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/b;->ic_top_config_master_portrait_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_top_config_leica_portrait_lc_sp:I

    return p0
.end method

.method public d(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_timerburst_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_timerburst_off_lc_sp:I

    return p0
.end method

.method public d0(Lme/u;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lxe/i;

    invoke-direct {p0}, Lxe/i;-><init>()V

    return-object p0
.end method

.method public e(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e0(Ljava/lang/String;)I
    .locals 0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/b;->ic_top_config_cvtype_vibr_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_top_config_cvtype_auth_lc_sp:I

    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f0(Ljava/lang/String;)I
    .locals 2

    sget p0, LQh/b;->ic_new_config_flash_fill_light_off_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    const v1, 0xbdf5

    if-eq v0, v1, :cond_2

    const v1, 0xbdf8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "107"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_new_config_flash_fill_light_soft_light:I

    return p0

    :cond_2
    const-string v0, "104"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_new_config_flash_fill_light_soft_halo_lc_sp:I

    return p0

    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return p0

    :cond_5
    sget p0, LQh/b;->ic_new_config_flash_fill_light_auto_lc_sp:I

    return p0

    :cond_6
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0
.end method

.method public g(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->top_anim_subtitle_on:I

    return p0

    :cond_0
    sget p0, LQh/d;->top_anim_subtitle_off:I

    return p0
.end method

.method public g0(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_new_config_meter_frame_average:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_meter_point_lc_sp:I

    return p0

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_meter_center_lc_sp:I

    return p0

    :pswitch_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return p0

    :cond_2
    sget p0, LQh/b;->ic_top_config_meter_average_lc_sp:I

    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h0()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_googlelens_lc_sp:I

    return p0
.end method

.method public i(Ljava/lang/String;)I
    .locals 0

    const-string p0, "0"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/b;->ic_top_config_cvtype_vibr_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_top_config_cvtype_auth_lc_sp:I

    return p0
.end method

.method public i0(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_portrait_repair_on_lc:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_portrait_repair_off_lc:I

    return p0
.end method

.method public j(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_watermark_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_watermark_off_lc_sp:I

    return p0
.end method

.method public j0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_log_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_log_off_lc_sp:I

    return p0
.end method

.method public k()Lq4/i;
    .locals 0

    new-instance p0, Lz9/a;

    invoke-direct {p0}, Lz9/a;-><init>()V

    return-object p0
.end method

.method public k0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_vector_config_subtitle_on_mm:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_vector_config_subtitle_off_mm:I

    return p0
.end method

.method public l(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public l0(ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_menu_expanded_light:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_menu_collapsed_light:I

    return p0

    :cond_1
    if-eqz p1, :cond_2

    sget p0, LQh/d;->anim_top_config_menu_expanded:I

    return p0

    :cond_2
    sget p0, LQh/d;->anim_top_config_menu_collapsed:I

    return p0
.end method

.method public m(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_livephoto_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_livephoto_off_lc_sp:I

    return p0
.end method

.method public m0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_portrait_repair_on_lc:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_portrait_repair_off_lc:I

    return p0
.end method

.method public n(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_exposure_feedback_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_exposure_feedback_off_lc_sp:I

    return p0
.end method

.method public n0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_super_eis_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_super_eis_off_lc_sp:I

    return p0
.end method

.method public o()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_privacy_watermark_lc_sp:I

    return p0
.end method

.method public o0(Ljava/lang/String;Z)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_quality_720_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x17e91e

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_quality_4k_lc_sp:I

    return p0

    :pswitch_1
    const-string p2, "7"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_quality_2_8k_lc_sp:I

    return p0

    :pswitch_2
    const-string p2, "6"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p0, LQh/b;->ic_top_config_quality_1080_lc_sp:I

    return p0

    :pswitch_3
    const-string p2, "5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :cond_3
    const-string p2, "3001"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return p0

    :cond_4
    sget p0, LQh/b;->ic_top_config_quality_8k_lc_sp:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_motion_capture_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_motion_capture_off_lc_sp:I

    return p0
.end method

.method public p0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_eis_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_eis_off_lc_sp:I

    return p0
.end method

.method public q(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->top_anim_tilt_on:I

    return p0

    :cond_0
    sget p0, LQh/d;->top_anim_tilt_off:I

    return p0
.end method

.method public q0()I
    .locals 0

    sget p0, LQh/b;->ic_composition_guide_close_lc:I

    return p0
.end method

.method public r(Ljava/lang/String;)I
    .locals 2

    sget p0, LQh/b;->ic_top_bar_quality_720_ox:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x35

    if-eq v0, v1, :cond_4

    const/16 v1, 0x36

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_quality_4k_lc_sp:I

    return p0

    :cond_2
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_top_config_quality_1080_lc_sp:I

    return p0

    :cond_4
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return p0

    :cond_5
    sget p0, LQh/b;->ic_top_config_quality_720_lc_sp:I

    return p0
.end method

.method public r0(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_picture_format_jpg_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "JPEG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :sswitch_1
    const-string v0, "HEIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_picture_format_heif_ox:I

    return p0

    :sswitch_2
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_picture_format_raw_lc_sp:I

    return p0

    :sswitch_3
    const-string v0, "Ultra RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return p0

    :cond_2
    sget p0, LQh/b;->ic_top_config_picture_format_uraw_lc_sp:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x3206368c -> :sswitch_3
        0x13c08 -> :sswitch_2
        0x21c6da -> :sswitch_1
        0x22d868 -> :sswitch_0
    .end sparse-switch
.end method

.method public s(Ljava/lang/String;Z)I
    .locals 1

    sget p0, LQh/b;->ic_menu_picture_pixel_8_ox:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "PIXEL_16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget p0, LQh/b;->ic_top_bar_picture_pixel_16_ox:I

    return p0

    :cond_1
    sget p0, LQh/b;->ic_menu_picture_pixel_16_ox:I

    return p0

    :sswitch_1
    const-string v0, "PIXEL_12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_3

    sget p0, LQh/b;->ic_top_bar_picture_pixel_12_ox:I

    return p0

    :cond_3
    sget p0, LQh/b;->ic_menu_picture_pixel_12_ox:I

    return p0

    :sswitch_2
    const-string p2, "PIXEL_12_5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    sget p0, LQh/b;->ic_top_config_pixel_12_5_lc_sp:I

    return p0

    :sswitch_3
    const-string v0, "PIXEL_8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_12

    sget p0, LQh/b;->ic_top_bar_picture_pixel_8_ox:I

    return p0

    :sswitch_4
    const-string v0, "AUTO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_7

    sget p0, LQh/b;->ic_top_bar_picture_pixel_auto:I

    return p0

    :cond_7
    sget p0, LQh/b;->ic_menu_picture_pixel_auto:I

    return p0

    :sswitch_5
    const-string v0, "PIXEL_100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    sget p0, LQh/b;->ic_top_bar_picture_pixel_100_ox:I

    return p0

    :cond_9
    sget p0, LQh/b;->ic_menu_picture_pixel_100_ox:I

    return p0

    :sswitch_6
    const-string v0, "REARx8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    sget p0, LQh/b;->ic_top_bar_picture_pixel_32_ox:I

    return p0

    :cond_b
    sget p0, LQh/b;->ic_menu_picture_pixel_32_ox:I

    return p0

    :sswitch_7
    const-string p2, "REARx7"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    sget p0, LQh/b;->ic_top_config_pixel_200_lc_sp:I

    return p0

    :sswitch_8
    const-string p2, "REARx5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    sget p0, LQh/b;->ic_top_config_pixel_50_lc_sp:I

    return p0

    :sswitch_9
    const-string v0, "REARx3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    if-eqz p2, :cond_f

    sget p0, LQh/b;->ic_top_bar_picture_pixel_108_ox:I

    return p0

    :cond_f
    sget p0, LQh/b;->ic_menu_picture_pixel_108_ox:I

    return p0

    :sswitch_a
    const-string v0, "REARx2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    if-eqz p2, :cond_11

    sget p0, LQh/b;->ic_top_bar_picture_pixel_48_ox:I

    return p0

    :cond_11
    sget p0, LQh/b;->ic_menu_picture_pixel_48_ox:I

    return p0

    :sswitch_b
    const-string v0, "REARx1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    :goto_0
    return p0

    :cond_13
    if-eqz p2, :cond_14

    sget p0, LQh/b;->ic_top_bar_picture_pixel_64_ox:I

    return p0

    :cond_14
    sget p0, LQh/b;->ic_menu_picture_pixel_64_ox:I

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x702778a3 -> :sswitch_b
        -0x702778a2 -> :sswitch_a
        -0x702778a1 -> :sswitch_9
        -0x7027789f -> :sswitch_8
        -0x7027789d -> :sswitch_7
        -0x7027789c -> :sswitch_6
        -0x6229db68 -> :sswitch_5
        0x1ed5af -> :sswitch_4
        0x97ce49f -> :sswitch_3
        0x1cee7bd0 -> :sswitch_2
        0x261fae9a -> :sswitch_1
        0x261fae9e -> :sswitch_0
    .end sparse-switch
.end method

.method public s0()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_cine_popup_monitor_lc_sp:I

    return p0
.end method

.method public t()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_doc_back_lc_sp:I

    return p0
.end method

.method public t0()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_privacy_watermark_lc_sp:I

    return p0
.end method

.method public u(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/b;->ic_new_ai_scene_on_mm:I

    return p0

    :cond_0
    sget p0, LQh/b;->ic_new_ai_scene_off_mm:I

    return p0
.end method

.method public u0(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_lofic_auto:I

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p0, LQh/b;->ic_top_config_lofic_on:I

    :cond_1
    :goto_0
    return p0
.end method

.method public v()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public v0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_bar_dolby_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_bar_dolby_off_lc_sp:I

    return p0
.end method

.method public w(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_flash_off_lc_sp:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_flash_auto_lc_sp:I

    return p0

    :pswitch_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_flash_torch_lc_sp:I

    return p0

    :pswitch_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p0, LQh/b;->ic_top_config_flash_on_lc_sp:I

    return p0

    :pswitch_3
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_config_cinemaster_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_config_cinemaster_off_lc_sp:I

    return p0
.end method

.method public x(Ljava/lang/String;)I
    .locals 1

    sget p0, LQh/b;->ic_top_config_fps_120_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slow_motion_480_direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "slow_motion_960"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string v0, "slow_motion_480"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget p0, LQh/b;->ic_top_config_fps_480_lc_sp:I

    return p0

    :sswitch_3
    const-string v0, "slow_motion_240"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, LQh/b;->ic_top_config_fps_240_lc_sp:I

    return p0

    :sswitch_4
    const-string v0, "slow_motion_120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :sswitch_5
    const-string v0, "slow_motion_3840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget p0, LQh/b;->ic_top_bar_fps_3840_ox:I

    return p0

    :sswitch_6
    const-string v0, "slow_motion_1920"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p0, LQh/b;->ic_top_config_fps_1920_lc_sp:I

    return p0

    :sswitch_7
    const-string v0, "slow_motion_960_direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return p0

    :cond_4
    sget p0, LQh/b;->ic_top_config_fps_960_lc_sp:I

    return p0

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
.end method

.method public x0(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public y(Ljava/lang/String;)I
    .locals 2

    sget p0, LQh/b;->ic_top_config_timer_off_lc_sp:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    const/16 v1, 0x35

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5a4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x61f

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget p0, LQh/b;->ic_top_config_timer_10s_lc_sp:I

    return p0

    :cond_2
    const-string v0, "-1"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return p0

    :cond_3
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget p0, LQh/b;->ic_top_config_timer_5s_lc_sp:I

    return p0

    :cond_5
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return p0

    :cond_6
    sget p0, LQh/b;->ic_top_config_timer_3s_lc_sp:I

    return p0

    :cond_7
    const-string v0, "0"

    goto :goto_0
.end method

.method public y0(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p0, LQh/d;->anim_top_menu_dolby_on_lc_sp:I

    return p0

    :cond_0
    sget p0, LQh/d;->anim_top_menu_dolby_off_lc_sp:I

    return p0
.end method

.method public z()I
    .locals 0

    sget p0, LQh/b;->ic_top_config_pro_video_recording_simple_lc_sp:I

    return p0
.end method

.method public z0(Ljava/lang/String;)I
    .locals 0

    const-string p0, "value"

    invoke-static {p1, p0}, Lfv/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, LQh/d;->anim_top_config_flash_on_lc_sp:I

    return p0

    :cond_0
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, LQh/d;->anim_top_config_flash_on_lc_sp:I

    return p0

    :cond_1
    sget p0, LQh/d;->anim_top_config_flash_off_lc_sp:I

    return p0
.end method
