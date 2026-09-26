.class public final Lcom/prometheus/camera/backup/BackupScope;
.super Ljava/lang/Object;
.source "BackupScope.java"


# static fields
.field public static final CAMERA_PREFS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENY_PREFS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KNOWN_MODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LENS_TAIL:Ljava/util/regex/Pattern;

.field public static final MODE_IDS:[I

.field public static final MODE_LABELS:[Ljava/lang/String;

.field public static final MODE_NAMES:[Ljava/lang/String;

.field public static final MODE_PHOTO:I = 0xa3

.field public static final PHOENIX_DIRS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHOENIX_PREFS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX_MODE:Ljava/util/regex/Pattern;

.field private static final SUFFIX_MODE:Ljava/util/regex/Pattern;

.field private static final TOP_EDITOR:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    .line 49
    const/16 v0, 0x15

    new-array v1, v0, [I

    fill-array-data v1, :array_27e

    sput-object v1, Lcom/prometheus/camera/backup/BackupScope;->MODE_IDS:[I

    .line 54
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "163\u62cd\u7167"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "162\u5f55\u50cf"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "167\u4e13\u4e1a\u62cd\u7167"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "180\u4e13\u4e1a\u5f55\u50cf"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "173\u591c\u666f"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "171\u4eba\u50cf"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "186\u6587\u6863"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "225\u8857\u62cd"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "175\u8d85\u6e05"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "172\u6162\u52a8\u4f5c"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "169\u5ef6\u65f6\u6444\u5f71"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "204\u524d\u540e\u53cc\u666f"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "227\u7535\u5f71"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "187\u957f\u66dd\u5149"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "166\u5168\u666f"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "184\u840c\u62cd"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "188\u8d85\u7ea7\u6708\u4eae"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "183\u77ed\u89c6\u9891"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "205AI\u6c34\u5370"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "220\u5fae\u7535\u5f71"

    const/16 v22, 0x13

    aput-object v2, v1, v22

    const-string v2, "256\u5f95\u5361\u4e00\u77ac"

    const/16 v23, 0x14

    aput-object v2, v1, v23

    sput-object v1, Lcom/prometheus/camera/backup/BackupScope;->MODE_LABELS:[Ljava/lang/String;

    .line 63
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "\u62cd\u7167"

    aput-object v2, v1, v3

    const-string v2, "\u5f55\u50cf"

    aput-object v2, v1, v4

    const-string v2, "\u4e13\u4e1a\u62cd\u7167"

    aput-object v2, v1, v5

    const-string v2, "\u4e13\u4e1a\u5f55\u50cf"

    aput-object v2, v1, v6

    const-string v2, "\u591c\u666f"

    aput-object v2, v1, v7

    const-string v2, "\u4eba\u50cf"

    aput-object v2, v1, v8

    const-string v2, "\u6587\u6863"

    aput-object v2, v1, v9

    const-string v2, "\u8857\u62cd"

    aput-object v2, v1, v10

    const-string v2, "\u8d85\u6e05"

    aput-object v2, v1, v11

    const-string v2, "\u6162\u52a8\u4f5c"

    aput-object v2, v1, v12

    const-string v2, "\u5ef6\u65f6\u6444\u5f71"

    aput-object v2, v1, v13

    const-string v2, "\u524d\u540e\u53cc\u666f"

    aput-object v2, v1, v14

    const-string v2, "\u7535\u5f71"

    aput-object v2, v1, v15

    const-string v2, "\u957f\u66dd\u5149"

    aput-object v2, v1, v16

    const-string v2, "\u5168\u666f"

    aput-object v2, v1, v17

    const-string v2, "\u840c\u62cd"

    aput-object v2, v1, v18

    const-string v2, "\u8d85\u7ea7\u6708\u4eae"

    aput-object v2, v1, v19

    const-string v2, "\u77ed\u89c6\u9891"

    aput-object v2, v1, v20

    const-string v2, "AI\u6c34\u5370"

    aput-object v2, v1, v21

    const-string v2, "\u5fae\u7535\u5f71"

    aput-object v2, v1, v22

    const-string v2, "\u5f95\u5361\u4e00\u77ac"

    aput-object v2, v1, v23

    sput-object v1, Lcom/prometheus/camera/backup/BackupScope;->MODE_NAMES:[Ljava/lang/String;

    .line 76
    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/Integer;

    .line 77
    const/16 v24, 0xa7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v3

    const/16 v24, 0xe1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v4

    const/16 v24, 0xa2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v5

    const/16 v24, 0x100

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v6

    const/16 v24, 0xa3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v7

    const/16 v24, 0xad

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v8

    const/16 v24, 0xab

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v9

    const/16 v24, 0xba

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v10

    const/16 v24, 0xaf

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v11

    const/16 v24, 0xfe

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v12

    const/16 v24, 0xac

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v13

    const/16 v24, 0xa9

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v2, v14

    const/16 v14, 0xe3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v15

    const/16 v14, 0xbb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v16

    const/16 v14, 0xa6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v17

    const/16 v14, 0xb8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v18

    const/16 v14, 0xbc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v19

    const/16 v14, 0xdc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v20

    const/16 v14, 0xcd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v21

    .line 78
    const/16 v14, 0xb4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v22

    const/16 v14, 0xe5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v23

    const/16 v14, 0xb7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v0

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v14, 0x16

    aput-object v0, v2, v14

    .line 76
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->KNOWN_MODES:Ljava/util/Set;

    .line 83
    const-string v0, "_(\\d+)(?:_[A-Za-z]+)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->SUFFIX_MODE:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "^(\\d+)pref_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->PREFIX_MODE:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^pref_top_editor_key_(\\d+)_\\d+(?:_source)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->TOP_EDITOR:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "_(tele|wide|ultra|Standalone)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->LENS_TAIL:Ljava/util/regex/Pattern;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "prometheus_camera_settings"

    aput-object v2, v1, v3

    const-string v2, "phoenix_vignette"

    aput-object v2, v1, v4

    const-string v2, "prometheus_classic_style"

    aput-object v2, v1, v5

    const-string v2, "phoenix_render_engine"

    aput-object v2, v1, v6

    const-string v2, "prometheus_feature_config"

    aput-object v2, v1, v7

    const-string v2, "prometheus_color_development"

    aput-object v2, v1, v8

    const-string v2, "prometheus_custom_luts"

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_PREFS:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "camera_settings_global"

    aput-object v2, v1, v3

    const-string v2, "camera_settings_workspace"

    aput-object v2, v1, v4

    const-string v2, "camera_settings_simple_mode_local_0"

    aput-object v2, v1, v5

    const-string v2, "camera_settings_simple_mode_local_1"

    aput-object v2, v1, v6

    const-string v2, "camera_settings_live"

    aput-object v2, v1, v7

    const-string v2, "com.android.camera_preferences"

    aput-object v2, v1, v8

    const-string v2, "com.android.camera.upgrade_preferences"

    aput-object v2, v1, v9

    const-string v2, "watermark_setting"

    aput-object v2, v1, v10

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->CAMERA_PREFS:Ljava/util/Set;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "mipush"

    aput-object v2, v1, v3

    const-string v2, "mipush_extra"

    aput-object v2, v1, v4

    const-string v2, "mipush_oc_normal"

    aput-object v2, v1, v5

    const-string v2, "mipush_oc_update_cache"

    aput-object v2, v1, v6

    const-string v2, "one_track_pref"

    aput-object v2, v1, v7

    const-string v2, "sp_client_report_status"

    aput-object v2, v1, v8

    const-string v2, "com.miui.camerainfra.cloudconfig"

    aput-object v2, v1, v9

    const-string v2, "cloudconfig_device_id"

    aput-object v2, v1, v10

    const-string v2, "com.google.mlkit.internal"

    aput-object v2, v1, v11

    const-string v2, "handlefix_env"

    aput-object v2, v1, v12

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->DENY_PREFS:Ljava/util/Set;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "prometheus"

    aput-object v2, v1, v3

    const-string v2, "phoenix-vignette"

    aput-object v2, v1, v4

    const-string v2, "watermarks"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/prometheus/camera/backup/BackupScope;->PHOENIX_DIRS:Ljava/util/Set;

    return-void

    nop

    :array_27e
    .array-data 4
        0xa3
        0xa2
        0xa7
        0xb4
        0xad
        0xab
        0xba
        0xe1
        0xaf
        0xac
        0xa9
        0xcc
        0xe3
        0xbb
        0xa6
        0xb8
        0xbc
        0xb7
        0xcd
        0xdc
        0x100
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static belongsToMode(Ljava/lang/String;I)Z
    .registers 2

    .line 129
    invoke-static {p0}, Lcom/prometheus/camera/backup/BackupScope;->modeOf(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static knownOrNegative(Ljava/lang/String;)I
    .registers 4

    .line 120
    const/4 v0, -0x1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 121
    sget-object v1, Lcom/prometheus/camera/backup/BackupScope;->KNOWN_MODES:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v1, :cond_12

    move v0, p0

    :cond_12
    return v0

    .line 122
    :catch_13
    move-exception p0

    .line 123
    return v0
.end method

.method public static modeOf(Ljava/lang/String;)I
    .registers 5

    .line 95
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->TOP_EDITOR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/backup/BackupScope;->knownOrNegative(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 97
    :cond_16
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->PREFIX_MODE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/backup/BackupScope;->knownOrNegative(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 99
    :cond_2b
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->SUFFIX_MODE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_6e

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/prometheus/camera/backup/BackupScope;->knownOrNegative(Ljava/lang/String;)I

    move-result v0

    .line 105
    if-ltz v0, :cond_43

    return v0

    .line 107
    :cond_43
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->LENS_TAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 110
    sget-object v0, Lcom/prometheus/camera/backup/BackupScope;->SUFFIX_MODE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prometheus/camera/backup/BackupScope;->knownOrNegative(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 113
    :cond_6d
    return v3

    .line 115
    :cond_6e
    return v3
.end method
