.class public final Lcom/prometheus/camera/filters/FilterContentContract;
.super Ljava/lang/Object;
.source "FilterContentContract.java"


# static fields
.field public static final DEFAULT_DIFFUSION:[I

.field public static final DEFAULT_GRAIN:[I

.field public static final DEFAULT_VISIBLE:[Z

.field public static final DELETABLE:[Z

.field public static final EFFECT_CONFIGURABLE:[Z

.field public static final ENTITY_GROUPS:[Ljava/lang/String;

.field public static final ENTITY_IDS:[Ljava/lang/String;

.field public static final ENTITY_LABELS:[Ljava/lang/String;

.field public static final ENTITY_ORIGINS:[Ljava/lang/String;

.field public static final ENTITY_PROJECTIONS:[Ljava/lang/String;

.field public static final MANAGEABLE:[Z

.field public static final PRESET_GROUPS:[Ljava/lang/String;

.field public static final PRESET_IDS:[Ljava/lang/String;

.field public static final SCHEMA_VERSION:I = 0x4

.field public static final SINGLE_LUT:[Z

.field public static final USER_SLOT_COUNT:I = 0x42


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "L_BRIGHT"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "L_NATURAL"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "LC_CHR"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "LC_CLS"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "LC_CNT"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "LC_ETN"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "LC_BRS"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "LC_TEL"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "L_DARK"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "L_DARK_HIGH"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "LC_IA"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "L_BLUE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "LUT_CC"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "LUT_NC"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9001"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9002"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9003"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9004"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9005"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9006"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9007"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9008"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9009"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9010"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9011"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-012"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9012"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-013"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9013"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-035"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-036"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-037"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-004"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-005"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-006"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-007"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-008"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-010"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-011"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-001"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-002"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-003"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-015"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-016"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "preset:071-01"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "preset:071-02"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "preset:071-03"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "preset:071-04"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "preset:071-05"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "preset:071-06"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "preset:071-07"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "preset:071-08"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "preset:071-09"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "preset:071-10"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "preset:071-11"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "preset:071-12"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "N_H_400"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "N_KG_200"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "N_NATURE"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "N_KC_64"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "N_BLACKGOLD"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "N_KP_160"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "N_LIVELY"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "N_C_50D"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "N_F_50"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "N_FLOWER_DREAM"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "N_FC_400"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "N_V_250"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "GALLERY_102"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "GALLERY_25"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "GALLERY_103"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "GALLERY_104"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "GALLERY_105"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "GALLERY_5"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "GALLERY_6"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_13"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_14"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "GALLERY_101"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "GALLERY_100"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "GALLERY_99"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "GALLERY_97"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "GALLERY_98"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "GALLERY_18"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "GALLERY_19"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "GALLERY_20"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "GALLERY_21"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "GALLERY_22"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "GALLERY_23"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "GALLERY_24"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "GALLERY_29"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_96"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_26"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "GALLERY_27"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "GALLERY_28"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "GALLERY_32"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "GALLERY_33"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "GALLERY_34"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "GALLERY_35"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "GALLERY_36"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "GALLERY_11"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "GALLERY_12"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "GALLERY_90"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "GALLERY_91"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "GALLERY_86"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "GALLERY_38"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "GALLERY_39"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_40"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_41"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "GALLERY_87"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "GALLERY_88"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "GALLERY_62"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "GALLERY_63"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "GALLERY_64"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "GALLERY_65"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "GALLERY_106"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "GALLERY_107"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "GALLERY_108"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "GALLERY_109"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "GALLERY_122"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "GALLERY_110"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "GALLERY_111"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "GALLERY_112"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_113"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_115"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "GALLERY_42"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "GALLERY_43"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "GALLERY_44"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "GALLERY_45"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "GALLERY_46"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "GALLERY_48"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "GALLERY_50"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "GALLERY_51"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "GALLERY_55"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "GALLERY_56"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "GALLERY_7"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "GALLERY_16"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "GALLERY_66"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "GALLERY_17"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_68"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "GALLERY_69"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "GALLERY_71"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "GALLERY_72"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "GALLERY_73"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "GALLERY_74"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "GALLERY_75"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "GALLERY_76"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "GALLERY_83"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "GALLERY_80"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "GALLERY_82"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "GALLERY_78"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "GALLERY_85"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "GALLERY_84"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "GALLERY_79"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "GALLERY_8"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "GALLERY_81"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_IDS:[Ljava/lang/String;

    const/16 v0, 0x9c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Vivid"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Natural"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Chrome"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Classic"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Contemporary"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Eternal"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Brass"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Teal"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Monochrome Natural"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Monochrome High Contrast"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "I Model A"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Blue"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "\u6b63\u7247"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "\u8d1f\u7247"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "\u5f95\u5361 M9"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb ACROS"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb ASTIA"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb CC"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb NC"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb ETERNA-BB"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb ETERNA"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb PRO-Neg-Std"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb PROVIA"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb REALA-ACE"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb Velvia"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "\u5bcc\u58eb NN"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 Positive"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 Negative"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 Vivid"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 High Contrast B&W"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 Cinema Green"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "\u7406\u5149 Cinema Yellow"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe 5203"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe 5207"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe 5219"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe E200"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Gold 200"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Portra 400"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Ultramax 400"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "CineStill 50D"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "CineStill 800T"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "Hasselblad Blue"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "Hasselblad Classic"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "Leica Classic"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Standard"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Vivid"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "\u67ef\u8fbe Film"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Calm"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Classic Yellow"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Cine2"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Forest Green"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Sunset Red"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Rich"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Powder Blue"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Teal and Orange"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "\u9002\u9a6c Warm Gold"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, ""

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "\u9c9c\u660e"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "\u751f\u52a8"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "\u6696\u9752"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "\u68ee\u7eff"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "\u539f\u91ce"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "\u6e05\u65b0\u84dd"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "\u514b\u83b1\u56e0\u84dd"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "\u6e05\u590f"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "\u6674\u91ce"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "\u6d77\u6ee8"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "\u52d2\u8292"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "\u65e7\u98ce"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "\u77e5\u95f2"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "\u53cd\u8f6c"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "\u97e9\u80f6"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "\u8d1d\u677e"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "\u5199\u610f"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "\u5b63\u98ce"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "\u4eac\u90fd"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "\u65e7\u5df7"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "\u677e\u5f1b"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "\u80f6\u7247"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "\u6697\u96c5"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "\u9752\u9ec4"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "\u9ed1\u7ea2"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "\u9ed1\u91d1"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "\u9752\u6a59"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "\u51b7\u767d"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "\u9752\u8471"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "\u660e\u9752"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "\u6625\u91ce"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "\u539f\u751f"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "\u5fae\u84dd"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "\u5976\u7eff"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "\u9752\u6625"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "\u62cd\u7acb\u5f97"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "\u521d\u89c1"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "\u8f7b\u6c27"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "\u8584\u8377"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "\u5929\u7136"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "\u7c89\u5ae9"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "\u534a\u590f"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "\u9752\u7070"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "\u98df\u65b0"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "\u7f8e\u5473"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "\u6c7d\u6c34"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "\u8292\u679c"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "\u8d64\u971e\u7ea2"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "\u4e2d\u56fd\u7ea2"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "\u8fdc\u5c71\u9752"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "\u592a\u6781\u58a8"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "\u7e41\u82b1\u5982\u68a6"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "\u6d45\u8336\u7eff"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "\u5927\u6f20\u68d5"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "\u6587\u827a"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "\u9752\u591c"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "\u6d6a\u6f2b"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "\u82b1\u7530"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "\u6d77\u8857"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "\u5357\u6cd5"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "\u897f\u90e8"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "\u68ee\u5c71"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "BBP"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "T&O"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "\u62c9\u4e01"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "\u590f\u65e5"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "\u9082\u9005"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "\u79cb\u7530"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "\u83ab\u5170\u8fea"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "\u843d\u65e5"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "\u9f99\u820c\u5170"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "\u590d\u53e4\u7c89"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "\u5c71\u4e18"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "\u59dc\u8336"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "\u84dd\u68a6"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "\u7070\u91d1"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "\u8d5b\u535a\u670b\u514b"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "\u65e5\u843d\u91d1"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "\u84dd\u8c03"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "\u9ed1\u767d"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "\u8d28\u611f"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "\u53bb\u96fe"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "\u6697\u8c03"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "\u4eba\u6587"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "\u7ecf\u5178"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "\u73e0\u5149"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "\u6696\u6a59"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "\u85cf\u9752"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_LABELS:[Ljava/lang/String;

    const/16 v0, 0x9c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "leica"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "leica"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "film"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "film"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "m9"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_GROUPS:[Ljava/lang/String;

    const/16 v0, 0x9c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "xiaomi-leica"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "rev-preloaded"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "xiaomi-official"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_ORIGINS:[Ljava/lang/String;

    const/16 v0, 0x9c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "camera-builtin"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "module-runtime"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "camera-builtin"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "native-gallery"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->ENTITY_PROJECTIONS:[Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GALLERY_9001"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9002"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9003"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9004"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9005"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9006"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9007"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9008"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9009"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9010"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9011"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-012"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9012"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-013"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "GALLERY_9013"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-035"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-036"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-037"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-005"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-006"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-007"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-008"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-010"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-011"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-001"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-002"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-003"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-015"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "preset:rev11-016"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "preset:071-01"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "preset:071-02"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "preset:071-03"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "preset:071-04"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "preset:071-05"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "preset:071-06"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "preset:071-07"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "preset:071-08"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "preset:071-09"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "preset:071-10"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "preset:071-11"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "preset:071-12"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->PRESET_IDS:[Ljava/lang/String;

    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "m9"

    const/16 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "fuji"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "ricoh"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "other"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "kodak"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "sigma"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->PRESET_GROUPS:[Ljava/lang/String;

    const/16 v0, 0x9c

    new-array v0, v0, [Z

    const/4 v1, 0x1

    const/16 v2, 0x0

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x13

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x15

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x16

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x17

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x19

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x21

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x22

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x23

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x24

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x25

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x27

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x28

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x29

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x30

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x33

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x34

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x35

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x36

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x37

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x39

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x40

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x42

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x43

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x45

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x53

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x55

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x59

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x66

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x67

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x69

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x70

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x71

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x72

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x76

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x77

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x80

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x81

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x82

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x83

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x86

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x87

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x88

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x89

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x90

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x91

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x92

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x93

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x94

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x95

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x96

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x97

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x98

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x99

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9b

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_VISIBLE:[Z

    const/16 v0, 0x9c

    new-array v0, v0, [Z

    const/4 v1, 0x1

    const/16 v2, 0x0

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x13

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x15

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x16

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x17

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x19

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x21

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x22

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x23

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x24

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x25

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x27

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x28

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x29

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x30

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x33

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x34

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x35

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x36

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x37

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x38

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x39

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x41

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x43

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x44

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x45

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x50

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x51

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x53

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x55

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x56

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x57

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x58

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x59

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x66

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x67

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x69

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x70

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x71

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x72

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x76

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x77

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x80

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x81

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x82

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x83

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x84

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x85

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x86

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x87

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x88

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x89

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x90

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x91

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x92

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x93

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x94

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x95

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x96

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x97

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x98

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x99

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9b

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->MANAGEABLE:[Z

    const/16 v0, 0x9c

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/16 v2, 0x0

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x12

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x13

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x24

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x32

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x35

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x36

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x37

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x39

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x40

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x42

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x43

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x45

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x53

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x55

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x59

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x66

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x67

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x69

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x70

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x71

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x72

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x76

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x77

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x80

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x81

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x82

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x83

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x86

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x87

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x88

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x89

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x90

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x91

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x92

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x93

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x94

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x95

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x96

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x97

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x98

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x99

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9b

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DELETABLE:[Z

    const/16 v0, 0x9c

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/16 v2, 0x0

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x12

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x13

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x14

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x23

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x24

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x29

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x32

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x33

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x34

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x35

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x36

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x37

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x38

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x39

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x40

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x42

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x43

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x44

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x45

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x53

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x55

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x57

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x59

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x66

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x67

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x68

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x69

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x70

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x71

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x72

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x76

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x77

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x80

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x81

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x82

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x83

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x84

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x86

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x87

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x88

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x89

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8d

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8e

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8f

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x90

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x91

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x92

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x93

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x94

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x95

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x96

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x97

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x98

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x99

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9a

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9b

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->SINGLE_LUT:[Z

    const/16 v0, 0x9c

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/16 v2, 0x0

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x1

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x2

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x3

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x4

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x5

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x6

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x7

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xd

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xe

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x10

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x11

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x12

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x13

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x14

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x15

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x16

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x17

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x18

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x19

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x20

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x21

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x22

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x23

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x24

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x25

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x26

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x27

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x28

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x29

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x2f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x30

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x31

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x33

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x34

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x35

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x36

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x37

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x38

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x39

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x3f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x41

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x43

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x44

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x45

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x46

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x47

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x48

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x49

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x4f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x50

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x51

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x52

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x53

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x54

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x55

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x56

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x57

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x58

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x59

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x5f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x60

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x61

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x62

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x63

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x64

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x65

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x66

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x67

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x69

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x6f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x70

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x71

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x72

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x73

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x74

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x75

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x76

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x77

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x78

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x79

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x7f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x80

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x81

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x82

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x83

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x84

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x85

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x86

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x87

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x88

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x89

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8b

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8c

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8d

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8e

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x8f

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x90

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x91

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x92

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x93

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x94

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x95

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x96

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x97

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x98

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x99

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9a

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x9b

    aput-boolean v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->EFFECT_CONFIGURABLE:[Z

    const/16 v0, 0x9c

    new-array v0, v0, [I

    const/16 v1, 0x0

    const/16 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x30

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x31

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x32

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x33

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x34

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x35

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x36

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x37

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x38

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x39

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x40

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x41

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x42

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x43

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x44

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x45

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x46

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x47

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x48

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x49

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4c

    aput v1, v0, v2

    const/16 v1, 0x1

    const/16 v2, 0x4d

    aput v1, v0, v2

    const/16 v1, 0x3

    const/16 v2, 0x4e

    aput v1, v0, v2

    const/16 v1, 0x1

    const/16 v2, 0x4f

    aput v1, v0, v2

    const/16 v1, 0x1

    const/16 v2, 0x50

    aput v1, v0, v2

    const/16 v1, 0x1

    const/16 v2, 0x51

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x52

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x53

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x54

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x55

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x56

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x57

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x58

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x59

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x60

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x61

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x62

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x63

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x64

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x65

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x66

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x67

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x68

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x69

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x70

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x71

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x72

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x73

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x74

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x75

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x76

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x77

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x78

    aput v1, v0, v2

    const/16 v1, 0x2

    const/16 v2, 0x79

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x80

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x81

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x82

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x83

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x84

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x85

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x86

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x87

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x88

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x89

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x90

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x91

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x92

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x93

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x94

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x95

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x96

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x97

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x98

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x99

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9b

    aput v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_GRAIN:[I

    const/16 v0, 0x9c

    new-array v0, v0, [I

    const/16 v1, 0x0

    const/16 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x1f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x20

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x21

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x22

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x23

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x24

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x25

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x26

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x27

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x28

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x29

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x2f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x30

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x31

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x32

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x33

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x34

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x35

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x36

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x37

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x38

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x39

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x3f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x40

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x41

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x42

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x43

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x44

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x45

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x46

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x47

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x48

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x49

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x4f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x50

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x51

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x52

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x53

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x54

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x55

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x56

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x57

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x58

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x59

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x5f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x60

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x61

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x62

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x63

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x64

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x65

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x66

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x67

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x68

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x69

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x6f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x70

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x71

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x72

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x73

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x74

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x75

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x76

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x77

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x78

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x79

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x7f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x80

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x81

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x82

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x83

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x84

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x85

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x86

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x87

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x88

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x89

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8b

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8c

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8d

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8e

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x8f

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x90

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x91

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x92

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x93

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x94

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x95

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x96

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x97

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x98

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x99

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9a

    aput v1, v0, v2

    const/16 v1, 0x0

    const/16 v2, 0x9b

    aput v1, v0, v2

    sput-object v0, Lcom/prometheus/camera/filters/FilterContentContract;->DEFAULT_DIFFUSION:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
