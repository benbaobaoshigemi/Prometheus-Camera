.class public final Ln8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    const-string/jumbo v2, "shutter_button"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v3, 0x14

    const-string/jumbo v4, "volume"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x28

    const-string v5, "keycode_camera"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x32

    const-string v5, "keycode_dpad"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x3c

    const-string v5, "object_track"

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x46

    const-string v6, "audio_capture"

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, 0x50

    const-string v7, "attr_tap_shoot"

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v7, 0x5a

    const-string v8, "exposure_view"

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x64

    const-string v9, "attr_palm_shutter"

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x6e

    const-string v9, "attr_speech_shutter"

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v9, 0x8c

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x78

    const-string v10, "attr_timer_burst"

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x96

    const-string/jumbo v11, "suspend_shutter"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xaa

    const-string v11, "grip"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0xb4

    const-string v11, "remote_control"

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sput-object v0, Ln8/a;->b:Landroid/util/SparseArray;

    new-instance v0, LPu/j;

    const-string v10, "0"

    const-string/jumbo v11, "torch_warm"

    invoke-direct {v0, v10, v11}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, LPu/j;

    const-string v12, "1"

    const-string/jumbo v13, "torch_natural"

    invoke-direct {v10, v12, v13}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, LPu/j;

    const-string v14, "2"

    const-string/jumbo v15, "torch_cold"

    invoke-direct {v12, v14, v15}, LPu/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v10, v12}, [LPu/j;

    move-result-object v0

    invoke-static {v0}, LQu/F;->q([LPu/j;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Ln8/a;->c:Ljava/util/HashMap;

    const-string/jumbo v0, "torch_cool"

    const-string/jumbo v10, "torch_candle"

    const-string/jumbo v12, "torch_warm_natural"

    filled-new-array {v10, v11, v12, v13, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln8/a;->d:[Ljava/lang/String;

    const-string v0, "candle"

    const-string/jumbo v10, "temp"

    const-string v11, "bright"

    filled-new-array {v0, v10, v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln8/a;->e:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget-object v10, Lo3/d;->d:Lo3/d;

    const/16 v10, 0x4c

    const-string v12, "n_blackgold"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v10, "n_delicacy"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x47

    const-string v10, "n_film"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x3e

    const-string v10, "n_original"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x3f

    const-string v10, "n_holiday"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x40

    const-string v10, "n_oxygen"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x41

    const-string v10, "n_mint"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x44

    const-string v10, "n_pink_orange"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x68

    const-string v10, "m_nude_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x69

    const-string v10, "m_sweet_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x6a

    const-string v10, "m_cool_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x6b

    const-string v10, "m_neutral_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x6c

    const-string v10, "m_hardline_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x6d

    const-string v10, "m_soft_makeup"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x49

    const-string v10, "n_nature"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x48

    const-string v10, "n_japanese"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x4a

    const-string v10, "n_pink"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x45

    const-string v10, "n_lively"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x4e

    const-string v10, "n_classic"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x4d

    const-string v10, "n_whiteAndBlack"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v5, 0x0

    const-string v10, "A1_DOC"

    invoke-virtual {v0, v5, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x1

    const-string v12, "A2_FLOWER"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x2

    const-string v12, "A3_FOOD"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x3

    const-string v12, "A4_PPT"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x4

    const-string v12, "A5_SKY"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x5

    const-string v12, "A6_SUNRISE_SUNSET"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x6

    const-string v12, "A7_CAT"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x7

    const-string v12, "A8_DOG"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x8

    const-string v12, "A9_GREEN_PLANTS"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v10, 0x9

    const-string v12, "A10_NIGHT"

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v10, "A11_SNOW"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v10, "A12_SEA"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v10, "A13_AUTUMN"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v10, "A14_CANDLELIGHT"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v10, "A15_CAR"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v10, "A16_GRASS"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v10, "A17_MAPLE_LEAVES"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v10, "A18_SUCCULENT"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v10, "A19_BUILDING"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v10, "A20_CITY"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "A21_CLOUD"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v3, "A22_OVERCAST"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v3, "A23_BACKLIGHT"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v3, "A24_SILHOUETTE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v3, "A25_HUMAN"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v3, "A26_JEWELRY"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v3, "A27_BUDDHA"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v3, "A28_COW"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v3, "A29_CURRY"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1d

    const-string v3, "A30_MOTORBIKE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1e

    const-string v3, "A31_TEMPLE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1f

    const-string v3, "A32_BEACH"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v3, "A33_DRIVING"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "bi_sunny"

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8d

    const-string v3, "bi_pink"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8e

    const-string v3, "bi_strong"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x85

    const-string v3, "n_kc64"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x86

    const-string v9, "n_v_250"

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x87

    const-string v10, "n_h_400"

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x88

    const-string v12, "n_kp_160"

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x89

    const-string v13, "n_fc_400"

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8a

    const-string v14, "n_c_50d"

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8b

    const-string v15, "n_kg_200"

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8f

    const-string v5, "bi_m_dusk"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x90

    const-string v5, "bi_m_tea"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7c

    const-string v5, "r600"

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d

    const-string v6, "p100f"

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7e

    const-string v4, "f50"

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "v_summer_day"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x6f

    const-string/jumbo v8, "v_fantasy"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x70

    const-string/jumbo v8, "v_meet"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x71

    const-string/jumbo v8, "v_wind_sing"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x72

    const-string/jumbo v8, "v_lost"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x73

    const-string/jumbo v8, "v_central"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x74

    const-string/jumbo v8, "v_northern_europe"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x75

    const-string/jumbo v8, "v_rome"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x76

    const-string/jumbo v8, "v_blackgold"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x77

    const-string/jumbo v8, "v_orange"

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "v_cyberpink"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x79

    const-string/jumbo v2, "v_blackice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x42

    const-string v2, "male_cold"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x43

    const-string v2, "male_young"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v2, "cv_nat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v2, "cv_viv"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v2, "cv_bwnat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x36

    const-string v2, "cv_bwHC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v2, "cv_sepia"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x38

    const-string v2, "cv_blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x55

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x56

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v7, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x39

    const-string v2, "n_flowers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5b

    const-string v2, "neuter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5c

    const-string v2, "cream"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5d

    const-string v2, "pure_white"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5e

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x5f

    const-string v2, "fresh"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x60

    const-string v2, "clearness"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3d

    const-string v2, "clear_cut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "negative_film"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4f

    const-string v2, "600f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "bf70"

    const/16 v2, 0x50

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe6

    const-string v2, "n_cc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe7

    const-string v2, "n_nc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3a

    const-string/jumbo v2, "warm_blue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3b

    const-string v2, "forest_green"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xdf

    const-string v2, "effect_rh"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xe1

    const-string v2, "effect_tc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf8

    const-string v2, "cv_chrome"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xf9

    const-string v2, "cv_classic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "cv_contemp"

    const/16 v2, 0xfa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfb

    const-string v3, "cv_eternal"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfc

    const-string v3, "cv_brass"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfd

    const-string v3, "cv_teal"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfe

    const-string v3, "cv_i_model_a"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sput-object v0, Ln8/a;->f:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string v1, "auto"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "1/8000s"

    const/16 v3, 0x7d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9c

    const-string v3, "1/6400s"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc8

    const-string v3, "1/5000s"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v1, "1/4000s"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x138

    const-string v2, "1/3200s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x190

    const-string v2, "1/2500s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1f4

    const-string v2, "1/2000s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x271

    const-string v2, "1/1600s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x320

    const-string v2, "1/1250s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x3e8

    const-string v2, "1/1000s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4e2

    const-string v2, "1/800s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x61a

    const-string v2, "1/640s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x7d0

    const-string v2, "1/500s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x9c4

    const-string v2, "1/400s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xc35

    const-string v2, "1/320s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xfa0

    const-string v2, "1/250s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1388

    const-string v2, "1/200s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x186a

    const-string v2, "1/160s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x1f40

    const-string v2, "1/125s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x2710

    const-string v2, "1/100s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x30d4

    const-string v2, "1/80s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x411e

    const-string v2, "1/60s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x4e20

    const-string v2, "1/50s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x61a8

    const-string v2, "1/40s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x8214

    const-string v2, "1/30s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x9c40

    const-string v2, "1/25s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xc350

    const-string v2, "1/20s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x1048c

    const-string v2, "1/15s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x12c64

    const-string v2, "1/13s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x186a0

    const-string v2, "1/10s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x1e848

    const-string v2, "1/8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x28b2c

    const-string v2, "1/6s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x30d40

    const-string v2, "1/5s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3d090

    const-string v2, "1/4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x514c8

    const-string v2, "0.3s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x61a80

    const-string v2, "0.4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7a120

    const-string v2, "0.5s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xa2d78

    const-string v2, "0.6s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xbbbe8

    const-string v2, "0.8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xf4240

    const-string v2, "1s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x1e8480

    const-string v2, "2s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x3d0900

    const-string v2, "4s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x7a1200

    const-string v2, "8s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xf42400

    const-string v2, "16s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0x1e84800

    const-string v2, "32s"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sput-object v0, Ln8/a;->g:Landroid/util/SparseArray;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "others"

    if-eqz p0, :cond_6

    invoke-static {p0}, Lr2/c1;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    invoke-static {v1, p0}, LEw/k;->j(ILjava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    const-string p0, "cloudy-daylight"

    return-object p0

    :cond_2
    const-string p0, "daylight"

    return-object p0

    :cond_3
    const-string p0, "fluorescent"

    return-object p0

    :cond_4
    const-string p0, "incandescent"

    return-object p0

    :cond_5
    const-string p0, "auto"

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "BizTrackUtil"

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    sget-object v3, Ln8/a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v2

    :cond_0
    div-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v2, "invalid exposure time "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v2, "unexpected exposure time "

    invoke-static {v2, p0}, LB3/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "auto"

    return-object p0
.end method

.method public static final c(I)Ljava/lang/String;
    .locals 4

    and-int/lit16 v0, p0, 0xff

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget v3, Li3/b;->N:I

    if-eq v3, p0, :cond_5

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    shr-int/lit8 v2, p0, 0x10

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3

    const/16 v1, 0xa

    if-eq v2, v1, :cond_3

    const/16 v1, 0xf

    if-eq v2, v1, :cond_3

    const/16 v1, 0x13

    if-eq v2, v1, :cond_3

    const/16 v1, 0x14

    if-eq v2, v1, :cond_3

    shr-int/lit8 v1, p0, 0x8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const v0, 0xffff

    and-int/2addr p0, v0

    sget-object v0, Ln8/a;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_2
    if-nez p0, :cond_4

    const-string p0, "none"

    :cond_4
    return-object p0

    :cond_5
    :goto_3
    const-string p0, "reset"

    return-object p0
.end method

.method public static final d(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-static {p0}, Ldq/e;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "others"

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "halo_flash"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v1, "107"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lj9/f;->M2()Z

    move-result p0

    const/16 v1, 0xfd

    if-eqz p0, :cond_7

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/o0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/o0;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "torch_bright_manual"

    const-string/jumbo v2, "torch_bright_auto"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_2

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "torch_loop"

    return-object p0

    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "torch_temp"

    return-object p0

    :pswitch_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lv2/o0;->o()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v2

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lv2/o0;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    return-object v1

    :cond_7
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object p0

    const-class v2, Lr2/Y;

    invoke-virtual {p0, v2}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/c;

    invoke-static {p0}, Lfv/l;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/android/camera/data/data/c;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v0, Ln8/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const-string v1, "106"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    return-object v2

    :pswitch_5
    const-string v1, "105"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :pswitch_6
    const-string v1, "104"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const-string p0, "halo"

    return-object p0

    :pswitch_7
    const-string v1, "103"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    const-string p0, "auto"

    return-object p0

    :pswitch_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {}, Lg2/a;->g()Lu2/Q;

    move-result-object p0

    invoke-virtual {p0}, Lu2/Q;->M()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string/jumbo p0, "torch"

    return-object p0

    :cond_c
    return-object v2

    :pswitch_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    const-string p0, "on"

    return-object p0

    :pswitch_b
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_1
    const-string/jumbo v1, "unexpected flash mode "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "BizTrackUtil"

    invoke-static {v2, p0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_e
    const-string p0, "off"

    return-object p0

    :cond_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbdf4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final f(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object v0

    const-class v1, Lv2/h;

    invoke-virtual {v0, v1}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/h;

    invoke-static {v0}, Lfv/l;->e(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lv2/h;->W:Z

    const-string v2, "getApertureTipName(...)"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lg2/a;->a()Lr2/f1;

    move-result-object v1

    const-class v3, Lr2/m0;

    invoke-virtual {v1, v3}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lfv/l;->e(Ljava/lang/Object;)V

    check-cast v1, Lr2/m0;

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getComponentValue(...)"

    invoke-static {p0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lv2/h;->B()F

    move-result p0

    :goto_0
    invoke-static {p0}, Lv2/h;->x(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lv2/h;->X:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lv2/h;->x(F)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "107"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lj9/f;->M2()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lg2/a;->j()Lv2/D0;

    move-result-object p0

    const-class v0, Lv2/o0;

    invoke-virtual {p0, v0}, LWh/b;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/o0;

    if-eqz p0, :cond_4

    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/c;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-wide/16 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lv2/o0;->f:I

    int-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-double v0, p0

    sget-object p0, Ln8/a;->e:[Ljava/lang/String;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    aget-object p0, p0, v0

    return-object p0

    :pswitch_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lv2/o0;->h:I

    int-to-double v0, p0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-int p0, v0

    int-to-double v0, p0

    sget-object p0, Ln8/a;->d:[Ljava/lang/String;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    aget-object p0, p0, v0

    return-object p0

    :pswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lv2/o0;->o()Z

    move-result v0

    if-nez v0, :cond_4

    iget p0, p0, Lv2/o0;->g:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lv2/o0;->o()Z

    move-result v0

    if-nez v0, :cond_4

    iget p0, p0, Lv2/o0;->g:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final h()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object v0

    invoke-virtual {v0}, Lu6/f;->P()Lj9/e;

    move-result-object v0

    invoke-static {v0}, Lj9/f;->h0(Lj9/e;)I

    move-result v0

    const-class v1, Lr2/c0;

    invoke-static {v1}, LJe/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/c0;

    invoke-virtual {v1}, Lr2/c0;->K()Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "200MP"

    goto :goto_0

    :cond_2
    const-string v0, "50MP"

    goto :goto_0

    :cond_3
    const-string v0, "108MP"

    goto :goto_0

    :cond_4
    const-string v0, "64MP"

    goto :goto_0

    :cond_5
    const-string v0, "48MP"

    :goto_0
    if-nez v0, :cond_6

    return-object v3

    :cond_6
    invoke-static {}, Lcom/android/camera/data/data/m;->l0()Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "off"

    return-object v0
.end method

.method public static final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "ISO"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3, v1}, Lww/p;->D(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "substring(...)"

    invoke-static {p0, v0}, Lfv/l;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static final j(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "T2B"

    return-object p0

    :cond_1
    const-string p0, "B2T"

    return-object p0

    :cond_2
    const-string p0, "R2L"

    return-object p0

    :cond_3
    const-string p0, "L2R"

    return-object p0
.end method

.method public static final k(I)Ljava/lang/String;
    .locals 4

    sget v0, Li3/b;->S:I

    const-string v1, "none"

    if-ne v0, p0, :cond_0

    return-object v1

    :cond_0
    shr-int/lit8 v0, p0, 0x10

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    const v0, 0xffff

    and-int/2addr p0, v0

    sget-object v0, Lo3/d;->d:Lo3/d;

    const/16 v0, 0xa3

    if-ne p0, v0, :cond_1

    const-string v3, "high_contrast"

    goto :goto_0

    :cond_1
    sget-object v0, Lo3/d;->d:Lo3/d;

    const/16 v0, 0xa4

    if-ne p0, v0, :cond_2

    const-string v3, "high_texture"

    goto :goto_0

    :cond_2
    sget-object v0, Lo3/d;->d:Lo3/d;

    const/16 v0, 0xa5

    if-ne p0, v0, :cond_3

    const-string v3, "black_white"

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    return-object v3
.end method

.method public static final l(II)Ljava/lang/String;
    .locals 2

    sget-boolean v0, LJe/c;->k:Z

    sget-object v0, LJe/c$b;->a:LJe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LJe/c;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0xa6

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa7

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/data/data/m;->h(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ultra"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lur/i;->a:F

    invoke-static {p0}, Lur/i;->t(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v0, "tele"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lur/i;->h()F

    move-result p0

    invoke-static {p0}, Lur/i;->t(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "Standalone"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lur/i;->i()F

    move-result p0

    invoke-static {p0}, Lur/i;->t(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo v0, "wide"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lur/i;->t(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/android/camera/data/data/j;->N(I)F

    move-result p0

    invoke-static {p0}, Lur/i;->t(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->k()I

    move-result p1

    if-ne p0, p1, :cond_6

    const-string p1, "_RearUltra"

    invoke-static {p0, p1}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->o()I

    move-result p1

    if-ne p0, p1, :cond_7

    iget-object p1, v0, LJe/c;->e:L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;

    invoke-virtual {p1}, L藹藵藷薴藷藳薴藾藿藬藳藹藿薴藹藵藷藷藵藴薴藙藵藷藷藵藴;->K7()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "_RearMacro"

    invoke-static {p0, p1}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->r()I

    move-result p1

    if-ne p0, p1, :cond_8

    const-string p1, "_RearTele2x"

    invoke-static {p0, p1}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->M()I

    move-result p1

    if-ne p0, p1, :cond_9

    const-string p1, "_RearTele4x"

    invoke-static {p0, p1}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lu6/f;->T()Lu6/f;

    move-result-object p1

    invoke-virtual {p1}, Lu6/f;->f()I

    move-result p1

    if-ne p0, p1, :cond_a

    const-string p1, "_RearWide"

    invoke-static {p0, p1}, LDn/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "REARx7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "200MP"

    return-object p0

    :pswitch_2
    const-string v0, "REARx5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "50MP"

    return-object p0

    :pswitch_3
    const-string v0, "REARx3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "108MP"

    return-object p0

    :pswitch_4
    const-string v0, "REARx2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "48MP"

    return-object p0

    :pswitch_5
    const-string v0, "REARx1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "64MP"

    return-object p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x702778a3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
