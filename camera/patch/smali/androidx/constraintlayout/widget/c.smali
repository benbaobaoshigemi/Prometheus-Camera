.class public final Landroidx/constraintlayout/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$c;,
        Landroidx/constraintlayout/widget/c$a;,
        Landroidx/constraintlayout/widget/c$b;,
        Landroidx/constraintlayout/widget/c$d;,
        Landroidx/constraintlayout/widget/c$e;
    }
.end annotation


# static fields
.field public static final h:[I

.field public static final i:Landroid/util/SparseIntArray;

.field public static final j:Landroid/util/SparseIntArray;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:I

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/c;->h:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/c;->i:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroidx/constraintlayout/widget/c;->j:Landroid/util/SparseIntArray;

    sget v4, LS/d;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v5, 0x19

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v5, 0x1d

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v5, 0x24

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v5, 0x23

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, LS/d;->Constraint_layout_constraintBottom_toTopOf:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBottom_toBottomOf:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBaseline_toTopOf:I

    const/16 v4, 0x5b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBaseline_toBottomOf:I

    const/16 v4, 0x5c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_editor_absoluteX:I

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_editor_absoluteY:I

    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintGuide_begin:I

    const/16 v6, 0x11

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintGuide_end:I

    const/16 v6, 0x12

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintGuide_percent:I

    const/16 v6, 0x13

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_guidelineUseRtl:I

    const/16 v6, 0x63

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_orientation:I

    const/16 v6, 0x1b

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v7, 0x20

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v7, 0x21

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v7, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v7, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginLeft:I

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginTop:I

    const/16 v8, 0x10

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginRight:I

    const/16 v9, 0xe

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginBottom:I

    const/16 v10, 0xb

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginStart:I

    const/16 v11, 0xf

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_goneMarginEnd:I

    const/16 v12, 0xc

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintVertical_weight:I

    const/16 v13, 0x28

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v14, 0x27

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v15, 0x29

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v15, 0x2a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintVertical_bias:I

    const/16 v15, 0x25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintDimensionRatio:I

    const/4 v15, 0x5

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintLeft_creator:I

    const/16 v15, 0x57

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginLeft:I

    const/16 v15, 0x18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginRight:I

    const/16 v15, 0x1c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginStart:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintWidth:I

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHeight:I

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_animateRelativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_polarRelativeTo:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_transformPivotTarget:I

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_quantizeMotionSteps:I

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_quantizeMotionPhase:I

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, LS/d;->Constraint_quantizeMotionInterpolator:I

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_orientation:I

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginLeft:I

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginTop:I

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginRight:I

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginBottom:I

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginStart:I

    invoke-virtual {v3, v0, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_goneMarginEnd:I

    invoke-virtual {v3, v0, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintVertical_weight:I

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHorizontal_weight:I

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    const/16 v1, 0x29

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    const/16 v1, 0x2a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHorizontal_bias:I

    const/16 v1, 0x14

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintVertical_bias:I

    const/16 v1, 0x25

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintDimensionRatio:I

    const/4 v1, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintLeft_creator:I

    const/16 v1, 0x57

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintTop_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintRight_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintBottom_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintBaseline_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginLeft:I

    const/16 v1, 0x18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginRight:I

    const/16 v1, 0x1c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginStart:I

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginEnd:I

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginTop:I

    const/16 v1, 0x22

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_marginBottom:I

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_width:I

    const/16 v1, 0x17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_layout_height:I

    const/16 v1, 0x15

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintWidth:I

    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHeight:I

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_visibility:I

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_alpha:I

    const/16 v1, 0x2b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_elevation:I

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_rotationX:I

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_rotationY:I

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_rotation:I

    const/16 v1, 0x3c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_scaleX:I

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_scaleY:I

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_transformPivotX:I

    const/16 v1, 0x31

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_transformPivotY:I

    const/16 v1, 0x32

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_translationX:I

    const/16 v1, 0x33

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_translationY:I

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_translationZ:I

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintWidth_default:I

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHeight_default:I

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintWidth_max:I

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHeight_max:I

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintWidth_min:I

    const/16 v1, 0x3a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHeight_min:I

    const/16 v1, 0x3b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintCircleRadius:I

    const/16 v1, 0x3e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintCircleAngle:I

    const/16 v1, 0x3f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_animateRelativeTo:I

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_transitionEasing:I

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_drawPath:I

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_transitionPathRotate:I

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_motionStagger:I

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_android_id:I

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_motionTarget:I

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_motionProgress:I

    const/16 v1, 0x44

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintWidth_percent:I

    const/16 v1, 0x45

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintHeight_percent:I

    const/16 v1, 0x46

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_chainUseRtl:I

    const/16 v1, 0x47

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_barrierDirection:I

    const/16 v1, 0x48

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_barrierMargin:I

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_constraint_referenced_ids:I

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_barrierAllowsGoneWidgets:I

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_pathMotionArc:I

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constraintTag:I

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_visibilityMode:I

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constrainedWidth:I

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_constrainedHeight:I

    const/16 v1, 0x51

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_polarRelativeTo:I

    const/16 v1, 0x52

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_transformPivotTarget:I

    const/16 v1, 0x53

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_quantizeMotionSteps:I

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_quantizeMotionPhase:I

    const/16 v1, 0x55

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_quantizeMotionInterpolator:I

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, LS/d;->ConstraintOverride_layout_wrapBehaviorInParent:I

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/constraintlayout/widget/c;->c:[Ljava/lang/String;

    iput v0, p0, Landroidx/constraintlayout/widget/c;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroidx/constraintlayout/widget/c$a;
    .locals 2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    sget-object v1, LS/d;->ConstraintOverride:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/constraintlayout/widget/c;->u(Landroidx/constraintlayout/widget/c$a;Landroid/content/res/TypedArray;)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static k(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, LS/c;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    array-length p0, p1

    if-eq v4, p0, :cond_5

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;
    .locals 16

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, LS/d;->ConstraintOverride:[I

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_1

    :cond_0
    sget-object v1, LS/d;->Constraint:[I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-static {v0, v1}, Landroidx/constraintlayout/widget/c;->u(Landroidx/constraintlayout/widget/c$a;Landroid/content/res/TypedArray;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    iget-object v5, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    if-ge v4, v2, :cond_8

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    sget v7, LS/d;->Constraint_android_id:I

    iget-object v8, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    const/4 v9, 0x1

    iget-object v10, v0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget-object v11, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    if-eq v6, v7, :cond_2

    sget v7, LS/d;->Constraint_android_layout_marginStart:I

    if-eq v7, v6, :cond_2

    sget v7, LS/d;->Constraint_android_layout_marginEnd:I

    if-eq v7, v6, :cond_2

    iput-boolean v9, v11, Landroidx/constraintlayout/widget/c$c;->a:Z

    iput-boolean v9, v5, Landroidx/constraintlayout/widget/c$b;->b:Z

    iput-boolean v9, v8, Landroidx/constraintlayout/widget/c$d;->a:Z

    iput-boolean v9, v10, Landroidx/constraintlayout/widget/c$e;->a:Z

    :cond_2
    sget-object v7, Landroidx/constraintlayout/widget/c;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    const/4 v14, 0x3

    const-string v15, "   "

    const-string v13, "ConstraintSet"

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unknown attribute 0x"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_1
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->p0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->p0:I

    goto/16 :goto_3

    :pswitch_2
    invoke-static {v5, v1, v6, v9}, Landroidx/constraintlayout/widget/c;->s(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-static {v5, v1, v6, v3}, Landroidx/constraintlayout/widget/c;->s(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_3

    :pswitch_4
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->T:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->T:I

    goto/16 :goto_3

    :pswitch_5
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->M:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->M:I

    goto/16 :goto_3

    :pswitch_6
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->s:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->s:I

    goto/16 :goto_3

    :pswitch_7
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->r:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->r:I

    goto/16 :goto_3

    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unused attribute 0x"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-ne v5, v9, :cond_3

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->m:I

    if-eq v5, v8, :cond_7

    iput v7, v11, Landroidx/constraintlayout/widget/c$c;->l:I

    goto/16 :goto_3

    :cond_3
    if-ne v5, v14, :cond_5

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Landroidx/constraintlayout/widget/c$c;->k:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->m:I

    iput v7, v11, Landroidx/constraintlayout/widget/c$c;->l:I

    goto/16 :goto_3

    :cond_4
    iput v8, v11, Landroidx/constraintlayout/widget/c$c;->l:I

    goto/16 :goto_3

    :cond_5
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->m:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->l:I

    goto/16 :goto_3

    :pswitch_a
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->i:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->i:F

    goto/16 :goto_3

    :pswitch_b
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->j:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->j:I

    goto/16 :goto_3

    :pswitch_c
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->i:I

    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->i:I

    goto/16 :goto_3

    :pswitch_d
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->c:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->c:I

    goto/16 :goto_3

    :pswitch_e
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/c$b;->n0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/c$b;->n0:Z

    goto/16 :goto_3

    :pswitch_f
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/c$b;->m0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/c$b;->m0:Z

    goto/16 :goto_3

    :pswitch_10
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->g:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->g:F

    goto/16 :goto_3

    :pswitch_11
    iget v5, v8, Landroidx/constraintlayout/widget/c$d;->c:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v8, Landroidx/constraintlayout/widget/c$d;->c:I

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/c$b;->l0:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_13
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->e:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->e:I

    goto/16 :goto_3

    :pswitch_14
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/c$b;->o0:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/c$b;->o0:Z

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_16
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->h0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->h0:I

    goto/16 :goto_3

    :pswitch_17
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->g0:I

    goto/16 :goto_3

    :pswitch_18
    const-string v5, "CURRENTLY UNSUPPORTED"

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_19
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->f0:F

    goto/16 :goto_3

    :pswitch_1a
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->e0:F

    goto/16 :goto_3

    :pswitch_1b
    iget v5, v8, Landroidx/constraintlayout/widget/c$d;->e:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v8, Landroidx/constraintlayout/widget/c$d;->e:F

    goto/16 :goto_3

    :pswitch_1c
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->h:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->h:F

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->f:I

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v14, :cond_6

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Landroidx/constraintlayout/widget/c$c;->d:Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    sget-object v5, LN/c;->c:[Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, v11, Landroidx/constraintlayout/widget/c$c;->d:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_1f
    iget v5, v11, Landroidx/constraintlayout/widget/c$c;->b:I

    invoke-static {v1, v6, v5}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v5

    iput v5, v11, Landroidx/constraintlayout/widget/c$c;->b:I

    goto/16 :goto_3

    :pswitch_20
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->C:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->C:F

    goto/16 :goto_3

    :pswitch_21
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->B:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->B:I

    goto/16 :goto_3

    :pswitch_22
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->A:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->A:I

    goto/16 :goto_3

    :pswitch_23
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->b:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->b:F

    goto/16 :goto_3

    :pswitch_24
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->d0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->d0:I

    goto/16 :goto_3

    :pswitch_25
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->c0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->c0:I

    goto/16 :goto_3

    :pswitch_26
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->b0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->b0:I

    goto/16 :goto_3

    :pswitch_27
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->a0:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->a0:I

    goto/16 :goto_3

    :pswitch_28
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->Z:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->Z:I

    goto/16 :goto_3

    :pswitch_29
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->Y:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->Y:I

    goto/16 :goto_3

    :pswitch_2a
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->l:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->l:F

    goto/16 :goto_3

    :pswitch_2b
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->k:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->k:F

    goto/16 :goto_3

    :pswitch_2c
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->j:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->j:F

    goto/16 :goto_3

    :pswitch_2d
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->h:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->h:F

    goto/16 :goto_3

    :pswitch_2e
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->g:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->g:F

    goto/16 :goto_3

    :pswitch_2f
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->f:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->f:F

    goto/16 :goto_3

    :pswitch_30
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->e:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->e:F

    goto/16 :goto_3

    :pswitch_31
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->d:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->d:F

    goto/16 :goto_3

    :pswitch_32
    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->c:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->c:F

    goto/16 :goto_3

    :pswitch_33
    iput-boolean v9, v10, Landroidx/constraintlayout/widget/c$e;->m:Z

    iget v5, v10, Landroidx/constraintlayout/widget/c$e;->n:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, v10, Landroidx/constraintlayout/widget/c$e;->n:F

    goto/16 :goto_3

    :pswitch_34
    iget v5, v8, Landroidx/constraintlayout/widget/c$d;->d:F

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v8, Landroidx/constraintlayout/widget/c$d;->d:F

    goto/16 :goto_3

    :pswitch_35
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->X:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->X:I

    goto/16 :goto_3

    :pswitch_36
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->W:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->W:I

    goto/16 :goto_3

    :pswitch_37
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->U:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->U:F

    goto/16 :goto_3

    :pswitch_38
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->V:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->V:F

    goto/16 :goto_3

    :pswitch_39
    iget v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    goto/16 :goto_3

    :pswitch_3a
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->y:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->y:F

    goto/16 :goto_3

    :pswitch_3b
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->m:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->m:I

    goto/16 :goto_3

    :pswitch_3c
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->n:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->n:I

    goto/16 :goto_3

    :pswitch_3d
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->I:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->I:I

    goto/16 :goto_3

    :pswitch_3e
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->u:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->u:I

    goto/16 :goto_3

    :pswitch_3f
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->t:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->t:I

    goto/16 :goto_3

    :pswitch_40
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->L:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->L:I

    goto/16 :goto_3

    :pswitch_41
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->l:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->l:I

    goto/16 :goto_3

    :pswitch_42
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->k:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->k:I

    goto/16 :goto_3

    :pswitch_43
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->H:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->H:I

    goto/16 :goto_3

    :pswitch_44
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->F:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->F:I

    goto/16 :goto_3

    :pswitch_45
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->j:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->j:I

    goto/16 :goto_3

    :pswitch_46
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->i:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->i:I

    goto/16 :goto_3

    :pswitch_47
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->G:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->G:I

    goto/16 :goto_3

    :pswitch_48
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->c:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->c:I

    goto/16 :goto_3

    :pswitch_49
    iget v5, v8, Landroidx/constraintlayout/widget/c$d;->b:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v8, Landroidx/constraintlayout/widget/c$d;->b:I

    sget-object v6, Landroidx/constraintlayout/widget/c;->h:[I

    aget v5, v6, v5

    iput v5, v8, Landroidx/constraintlayout/widget/c$d;->b:I

    goto/16 :goto_3

    :pswitch_4a
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->d:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->d:I

    goto/16 :goto_3

    :pswitch_4b
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->x:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->x:F

    goto/16 :goto_3

    :pswitch_4c
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->g:F

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->g:F

    goto/16 :goto_3

    :pswitch_4d
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->f:I

    goto/16 :goto_3

    :pswitch_4e
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->e:I

    goto/16 :goto_3

    :pswitch_4f
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->O:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->O:I

    goto/16 :goto_3

    :pswitch_50
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->S:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->S:I

    goto/16 :goto_3

    :pswitch_51
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->P:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->P:I

    goto/16 :goto_3

    :pswitch_52
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->N:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->N:I

    goto/16 :goto_3

    :pswitch_53
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->R:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->R:I

    goto :goto_3

    :pswitch_54
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->Q:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->Q:I

    goto :goto_3

    :pswitch_55
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->v:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->v:I

    goto :goto_3

    :pswitch_56
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->w:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->w:I

    goto :goto_3

    :pswitch_57
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->K:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->K:I

    goto :goto_3

    :pswitch_58
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->E:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->E:I

    goto :goto_3

    :pswitch_59
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->D:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->D:I

    goto :goto_3

    :pswitch_5a
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    goto :goto_3

    :pswitch_5b
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->o:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->o:I

    goto :goto_3

    :pswitch_5c
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->p:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->p:I

    goto :goto_3

    :pswitch_5d
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->J:I

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->J:I

    goto :goto_3

    :pswitch_5e
    iget v7, v5, Landroidx/constraintlayout/widget/c$b;->q:I

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v5, Landroidx/constraintlayout/widget/c$b;->q:I

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v2, v5, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    iput-object v2, v5, Landroidx/constraintlayout/widget/c$b;->j0:[I

    :cond_9
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static r(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static s(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    if-nez p0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v0, v1, :cond_a

    if-eq v0, v5, :cond_4

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    const/4 v0, -0x2

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_0

    :goto_1
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz p1, :cond_6

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p3, :cond_5

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    return-void

    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    return-void

    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/c$b;

    if-eqz p1, :cond_8

    check-cast p0, Landroidx/constraintlayout/widget/c$b;

    if-nez p3, :cond_7

    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->m0:Z

    return-void

    :cond_7
    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/c$b;->n0:Z

    return-void

    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/c$a$a;

    if-eqz p1, :cond_1b

    check-cast p0, Landroidx/constraintlayout/widget/c$a$a;

    if-nez p3, :cond_9

    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p1, 0x50

    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    return-void

    :cond_9
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p1, 0x51

    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    return-void

    :cond_a
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1b

    sub-int/2addr v0, v4

    if-ge p2, v0, :cond_1b

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz p2, :cond_d

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p3, :cond_c

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_c
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_2
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/c;->t(Landroidx/constraintlayout/widget/ConstraintLayout$a;Ljava/lang/String;)V

    return-void

    :cond_d
    instance-of p2, p0, Landroidx/constraintlayout/widget/c$b;

    if-eqz p2, :cond_e

    check-cast p0, Landroidx/constraintlayout/widget/c$b;

    iput-object p1, p0, Landroidx/constraintlayout/widget/c$b;->z:Ljava/lang/String;

    return-void

    :cond_e
    instance-of p2, p0, Landroidx/constraintlayout/widget/c$a$a;

    if-eqz p2, :cond_1b

    check-cast p0, Landroidx/constraintlayout/widget/c$a$a;

    invoke-virtual {p0, v5, p1}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    return-void

    :cond_f
    const-string/jumbo v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz p2, :cond_11

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p3, :cond_10

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:F

    return-void

    :cond_10
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:F

    return-void

    :cond_11
    instance-of p2, p0, Landroidx/constraintlayout/widget/c$b;

    if-eqz p2, :cond_13

    check-cast p0, Landroidx/constraintlayout/widget/c$b;

    if-nez p3, :cond_12

    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->V:F

    return-void

    :cond_12
    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->U:F

    return-void

    :cond_13
    instance-of p2, p0, Landroidx/constraintlayout/widget/c$a$a;

    if-eqz p2, :cond_1b

    check-cast p0, Landroidx/constraintlayout/widget/c$a$a;

    if-nez p3, :cond_14

    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p2, 0x27

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    return-void

    :cond_14
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p2, 0x28

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_15
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1b

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v0, 0x2

    if-eqz p2, :cond_17

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p3, :cond_16

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    return-void

    :cond_16
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    return-void

    :cond_17
    instance-of p2, p0, Landroidx/constraintlayout/widget/c$b;

    if-eqz p2, :cond_19

    check-cast p0, Landroidx/constraintlayout/widget/c$b;

    if-nez p3, :cond_18

    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->e0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Y:I

    return-void

    :cond_18
    iput v6, p0, Landroidx/constraintlayout/widget/c$b;->d:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->f0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Z:I

    return-void

    :cond_19
    instance-of p1, p0, Landroidx/constraintlayout/widget/c$a$a;

    if-eqz p1, :cond_1b

    check-cast p0, Landroidx/constraintlayout/widget/c$a$a;

    if-nez p3, :cond_1a

    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p1, 0x36

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    return-void

    :cond_1a
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    const/16 p1, 0x37

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1b
    :goto_3
    return-void
.end method

.method public static t(Landroidx/constraintlayout/widget/ConstraintLayout$a;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const-string v4, "H"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    :goto_0
    add-int/lit8 v4, v1, 0x1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_5

    if-ne v3, v2, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:Ljava/lang/String;

    return-void
.end method

.method public static u(Landroidx/constraintlayout/widget/c$a;Landroid/content/res/TypedArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    new-instance v3, Landroidx/constraintlayout/widget/c$a$a;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/c$a$a;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/widget/c$a;->h:Landroidx/constraintlayout/widget/c$a$a;

    iget-object v4, v0, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroidx/constraintlayout/widget/c$c;->a:Z

    iget-object v6, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput-boolean v5, v6, Landroidx/constraintlayout/widget/c$b;->b:Z

    iget-object v7, v0, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iput-boolean v5, v7, Landroidx/constraintlayout/widget/c$d;->a:Z

    iget-object v8, v0, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iput-boolean v5, v8, Landroidx/constraintlayout/widget/c$e;->a:Z

    move v9, v5

    :goto_0
    if-ge v9, v2, :cond_7

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    sget-object v11, Landroidx/constraintlayout/widget/c;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    sget-object v12, Landroidx/constraintlayout/widget/c;->i:Landroid/util/SparseIntArray;

    const-string v15, "   "

    const/4 v14, 0x3

    const-string v5, "ConstraintSet"

    const/4 v13, -0x1

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Unknown attribute 0x"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/c$b;->h:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x63

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    goto :goto_1

    :pswitch_2
    sget-boolean v5, LR/q;->S0:Z

    if-eqz v5, :cond_1

    iget v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    if-ne v5, v13, :cond_0

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    if-ne v5, v14, :cond_2

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroidx/constraintlayout/widget/c$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    goto :goto_1

    :pswitch_3
    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->p0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x61

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_1

    :pswitch_4
    const/4 v5, 0x1

    invoke-static {v3, v1, v10, v5}, Landroidx/constraintlayout/widget/c;->s(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :pswitch_5
    const/4 v5, 0x0

    invoke-static {v3, v1, v10, v5}, Landroidx/constraintlayout/widget/c;->s(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    move v11, v5

    goto/16 :goto_2

    :pswitch_6
    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->T:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x5e

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_1

    :pswitch_7
    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->M:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x5d

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_1

    :pswitch_8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "unused attribute 0x"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/4 v11, -0x2

    const/16 v12, 0x59

    const/16 v15, 0x58

    const/4 v14, 0x1

    if-ne v5, v14, :cond_3

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/c$c;->m:I

    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->m:I

    if-eq v5, v13, :cond_0

    iput v11, v4, Landroidx/constraintlayout/widget/c$c;->l:I

    invoke-virtual {v3, v15, v11}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x3

    if-ne v5, v14, :cond_5

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/constraintlayout/widget/c$c;->k:Ljava/lang/String;

    const/16 v14, 0x5a

    invoke-virtual {v3, v14, v5}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    iget-object v5, v4, Landroidx/constraintlayout/widget/c$c;->k:Ljava/lang/String;

    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/c$c;->m:I

    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    iput v11, v4, Landroidx/constraintlayout/widget/c$c;->l:I

    invoke-virtual {v3, v15, v11}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :cond_4
    iput v13, v4, Landroidx/constraintlayout/widget/c$c;->l:I

    invoke-virtual {v3, v15, v13}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :cond_5
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->m:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/c$c;->l:I

    invoke-virtual {v3, v15, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_a
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->i:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x55

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_b
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->j:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/16 v10, 0x54

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_c
    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->i:I

    invoke-static {v1, v10, v5}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v5

    const/16 v10, 0x53

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_d
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    const/16 v10, 0x52

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_e
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/c$b;->n0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x51

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    goto/16 :goto_1

    :pswitch_f
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/c$b;->m0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x50

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    goto/16 :goto_1

    :pswitch_10
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x4f

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_11
    iget v5, v7, Landroidx/constraintlayout/widget/c$d;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x4e

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v5, 0x4d

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->e:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x4c

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_14
    iget-boolean v5, v6, Landroidx/constraintlayout/widget/c$b;->o0:Z

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x4b

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    goto/16 :goto_1

    :pswitch_15
    const/16 v5, 0x4a

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->h0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x49

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_17
    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x48

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_1

    :pswitch_18
    const-string v10, "CURRENTLY UNSUPPORTED"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_19
    const/16 v5, 0x46

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_1a
    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v5, 0x45

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_1b
    iget v5, v7, Landroidx/constraintlayout/widget/c$d;->e:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x44

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_1c
    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->h:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x43

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_1

    :pswitch_1d
    const/16 v5, 0x42

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_1e
    const/4 v11, 0x0

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    iget v5, v5, Landroid/util/TypedValue;->type:I

    const/16 v12, 0x41

    const/4 v14, 0x3

    if-ne v5, v14, :cond_6

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    sget-object v5, LN/c;->c:[Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    aget-object v5, v5, v10

    invoke-virtual {v3, v12, v5}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1f
    const/4 v11, 0x0

    iget v5, v4, Landroidx/constraintlayout/widget/c$c;->b:I

    invoke-static {v1, v10, v5}, Landroidx/constraintlayout/widget/c;->r(Landroid/content/res/TypedArray;II)I

    move-result v5

    const/16 v10, 0x40

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_20
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->C:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x3f

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_21
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->B:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3e

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_22
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->b:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x3c

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_23
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->d0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3b

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_24
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->c0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x3a

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_25
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->b0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x39

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_26
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->a0:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x38

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_27
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->Z:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x37

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_28
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->Y:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x36

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_29
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->l:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x35

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2a
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->k:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x34

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2b
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->j:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x33

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2c
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->h:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x32

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2d
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    const/16 v10, 0x31

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2e
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->f:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x30

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_2f
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->e:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2f

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_30
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->d:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2e

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_31
    const/4 v11, 0x0

    iget v5, v8, Landroidx/constraintlayout/widget/c$e;->c:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2d

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_32
    const/4 v11, 0x0

    const/16 v5, 0x2c

    const/4 v14, 0x1

    invoke-virtual {v3, v5, v14}, Landroidx/constraintlayout/widget/c$a$a;->d(IZ)V

    iget v12, v8, Landroidx/constraintlayout/widget/c$e;->n:F

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_33
    const/4 v11, 0x0

    iget v5, v7, Landroidx/constraintlayout/widget/c$d;->d:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x2b

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_34
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->X:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x2a

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_35
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->W:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x29

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_36
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->U:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x28

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_37
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->V:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x27

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_38
    const/4 v11, 0x0

    iget v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/widget/c$a;->a:I

    const/16 v10, 0x26

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_39
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->y:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x25

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_3a
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->I:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x22

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_3b
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->L:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x1f

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_3c
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->H:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x1c

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_3d
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->F:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v10, 0x1b

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_3e
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->G:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x18

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_3f
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->c:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    const/16 v10, 0x17

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_40
    const/4 v11, 0x0

    sget-object v5, Landroidx/constraintlayout/widget/c;->h:[I

    iget v12, v7, Landroidx/constraintlayout/widget/c$d;->b:I

    invoke-virtual {v1, v10, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aget v5, v5, v10

    const/16 v10, 0x16

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_41
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->d:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    const/16 v10, 0x15

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_42
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->x:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x14

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_43
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->g:F

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/16 v10, 0x13

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->a(FI)V

    goto/16 :goto_2

    :pswitch_44
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/16 v10, 0x12

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_45
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/16 v10, 0x11

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_46
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->O:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x10

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_47
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->S:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xf

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto/16 :goto_2

    :pswitch_48
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->P:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xe

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_49
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->N:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xd

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4a
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->R:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xc

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4b
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->Q:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0xb

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4c
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->K:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v10, 0x8

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4d
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->E:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v10, 0x7

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4e
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->D:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    const/4 v10, 0x6

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    goto :goto_2

    :pswitch_4f
    const/4 v11, 0x0

    const/4 v5, 0x5

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroidx/constraintlayout/widget/c$a$a;->c(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_50
    const/4 v11, 0x0

    iget v5, v6, Landroidx/constraintlayout/widget/c$b;->J:I

    invoke-virtual {v1, v10, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v10, 0x2

    invoke-virtual {v3, v10, v5}, Landroidx/constraintlayout/widget/c$a$a;->b(II)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto/16 :goto_0

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static y(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "end"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "start"

    return-object p0

    :pswitch_2
    const-string p0, "baseline"

    return-object p0

    :pswitch_3
    const-string p0, "bottom"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "top"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "right"

    return-object p0

    :pswitch_6
    const-string p0, "left"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public final a(LR/q;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id unknown "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, LR/a;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintSet"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/c;->f:Z

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/c$a;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Landroidx/constraintlayout/widget/a;->e(Landroid/view/View;Ljava/util/HashMap;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/c;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 12

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_d

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "ConstraintSet"

    if-nez v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "id unknown "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, LR/a;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/c;->f:Z

    const/4 v10, -0x1

    if-eqz v8, :cond_2

    if-eq v7, v10, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-ne v7, v10, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/c$a;

    if-nez v8, :cond_4

    goto/16 :goto_4

    :cond_4
    instance-of v9, v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v9, :cond_6

    iget-object v9, v8, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput v0, v9, Landroidx/constraintlayout/widget/c$b;->i0:I

    move-object v11, v6

    check-cast v11, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v11, v7}, Landroid/view/View;->setId(I)V

    iget v7, v9, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v7, v9, Landroidx/constraintlayout/widget/c$b;->h0:I

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    iget-boolean v7, v9, Landroidx/constraintlayout/widget/c$b;->o0:Z

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v7, v9, Landroidx/constraintlayout/widget/c$b;->j0:[I

    if-eqz v7, :cond_5

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_2

    :cond_5
    iget-object v7, v9, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-static {v11, v7}, Landroidx/constraintlayout/widget/c;->k(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v9, Landroidx/constraintlayout/widget/c$b;->j0:[I

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    iget-object v9, v8, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-static {v6, v9}, Landroidx/constraintlayout/widget/a;->e(Landroid/view/View;Ljava/util/HashMap;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v8, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iget v9, v7, Landroidx/constraintlayout/widget/c$d;->c:I

    if-nez v9, :cond_7

    iget v9, v7, Landroidx/constraintlayout/widget/c$d;->b:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget v7, v7, Landroidx/constraintlayout/widget/c$d;->d:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, v8, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->b:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->c:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotationX(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->d:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotationY(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->e:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleX(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->f:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->i:I

    if-eq v8, v10, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v9, v7, Landroidx/constraintlayout/widget/c$e;->i:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    :cond_8
    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->g:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_9

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->g:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotX(F)V

    :cond_9
    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->h:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_a

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->h:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setPivotY(F)V

    :cond_a
    :goto_3
    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->j:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->k:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    iget v8, v7, Landroidx/constraintlayout/widget/c$e;->l:F

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v8, v7, Landroidx/constraintlayout/widget/c$e;->m:Z

    if-eqz v8, :cond_c

    iget v7, v7, Landroidx/constraintlayout/widget/c$e;->n:F

    invoke-virtual {v6, v7}, Landroid/view/View;->setElevation(F)V

    goto :goto_4

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    add-int/2addr v5, v0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/c$a;

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iget v7, v6, Landroidx/constraintlayout/widget/c$b;->i0:I

    const/4 v8, -0x2

    if-ne v7, v0, :cond_12

    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setId(I)V

    iget-object v9, v6, Landroidx/constraintlayout/widget/c$b;->j0:[I

    if-eqz v9, :cond_10

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_6

    :cond_10
    iget-object v9, v6, Landroidx/constraintlayout/widget/c$b;->k0:Ljava/lang/String;

    if-eqz v9, :cond_11

    invoke-static {v7, v9}, Landroidx/constraintlayout/widget/c;->k(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v6, Landroidx/constraintlayout/widget/c$b;->j0:[I

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    :cond_11
    :goto_6
    iget v9, v6, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v9, v6, Landroidx/constraintlayout/widget/c$b;->h0:I

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    sget-object v9, Landroidx/constraintlayout/widget/ConstraintLayout;->p:LS/e;

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v9, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/b;->m()V

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/c$b;->a:Z

    if-eqz v6, :cond_e

    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/view/View;->setId(I)V

    sget-object v2, Landroidx/constraintlayout/widget/ConstraintLayout;->p:LS/e;

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v2, v8, v8}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/c$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {p1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_13
    :goto_7
    if-ge v4, v1, :cond_15

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v2, p0, Landroidx/constraintlayout/widget/b;

    if-eqz v2, :cond_14

    check-cast p0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/b;->f(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_14
    add-int/2addr v4, v0

    goto :goto_7

    :cond_15
    return-void
.end method

.method public final e(II)V
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->C:F

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->B:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->A:I

    return-void

    :pswitch_1
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->R:I

    return-void

    :pswitch_2
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->S:I

    return-void

    :pswitch_3
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->M:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->T:I

    return-void

    :pswitch_4
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->Q:I

    return-void

    :pswitch_5
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->O:I

    return-void

    :pswitch_6
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->P:I

    return-void

    :pswitch_7
    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v1, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->N:I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final f(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    iget-boolean v0, v1, Landroidx/constraintlayout/widget/c;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v10}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/c$a;

    if-nez v10, :cond_3

    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v16, v5

    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_3
    iget-object v11, v1, Landroidx/constraintlayout/widget/c;->e:Ljava/util/HashMap;

    const-string v12, "\" not found on "

    const-string v13, " Custom Attribute \""

    const-string v14, "TransitionLayout"

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/a;

    move/from16 v18, v2

    :try_start_0
    const-string v2, "BackgroundColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v3

    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/a;

    invoke-direct {v3, v0, v2}, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V

    invoke-virtual {v15, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v5

    const/4 v3, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_3
    move/from16 v16, v5

    const/4 v3, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_4
    move/from16 v16, v5

    const/4 v3, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_5
    move/from16 v16, v5

    const/4 v3, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_5

    :cond_4
    move-object/from16 v19, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v16, v5

    const/4 v3, 0x0

    :try_start_2
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-direct {v5, v0, v2}, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V

    invoke-virtual {v15, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_8

    :goto_6
    invoke-static {v13, v1, v12}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_7
    invoke-static {v13, v1, v12}, LP/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must have a method "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    move-object/from16 v1, p0

    move/from16 v5, v16

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_5
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v16, v5

    const/4 v3, 0x0

    iput-object v15, v10, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v8}, Landroidx/constraintlayout/widget/c$a;->c(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, v10, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    iput v0, v1, Landroidx/constraintlayout/widget/c$d;->b:I

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$d;->d:F

    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v1, v10, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->b:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->c:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->d:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->e:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->f:F

    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    move-result v2

    float-to-double v4, v0

    const-wide/16 v8, 0x0

    cmpl-double v4, v4, v8

    if-nez v4, :cond_6

    float-to-double v4, v2

    cmpl-double v4, v4, v8

    if-eqz v4, :cond_7

    :cond_6
    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->g:F

    iput v2, v1, Landroidx/constraintlayout/widget/c$e;->h:F

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->j:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->k:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->l:F

    iget-boolean v0, v1, Landroidx/constraintlayout/widget/c$e;->m:Z

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$e;->n:F

    :cond_8
    instance-of v0, v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_9

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v0

    iget-object v1, v10, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/c$b;->o0:Z

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, v1, Landroidx/constraintlayout/widget/c$b;->j0:[I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$b;->g0:I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/c$b;->h0:I

    :cond_9
    :goto_a
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final g(Landroidx/constraintlayout/widget/c;)V
    .locals 3

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p1, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p1, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/c$a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/c$a;->b()Landroidx/constraintlayout/widget/c$a;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final h(IIII)V
    .locals 8

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string/jumbo v5, "right to "

    const-string v6, " undefined"

    const/4 v7, -0x1

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p4, v2, :cond_2

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    return-void

    :cond_2
    if-ne p4, v1, :cond_3

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-ne p4, v1, :cond_4

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    return-void

    :cond_4
    if-ne p4, v2, :cond_5

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/4 p1, 0x5

    if-ne p4, p1, :cond_6

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_6
    if-ne p4, v4, :cond_7

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_7
    if-ne p4, v3, :cond_8

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-ne p4, v3, :cond_9

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    return-void

    :cond_9
    if-ne p4, v4, :cond_a

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-ne p4, v4, :cond_b

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    return-void

    :cond_b
    if-ne p4, v3, :cond_c

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-ne p4, v0, :cond_d

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    return-void

    :cond_d
    if-ne p4, p1, :cond_e

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-ne p4, v0, :cond_f

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    return-void

    :cond_f
    if-ne p4, p1, :cond_10

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "left to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(IIIII)V
    .locals 8

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string/jumbo v5, "right to "

    const-string v6, " undefined"

    const/4 v7, -0x1

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p4, v2, :cond_2

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    goto :goto_0

    :cond_2
    if-ne p4, v1, :cond_3

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->v:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->w:I

    :goto_0
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->K:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-ne p4, v1, :cond_4

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    goto :goto_1

    :cond_4
    if-ne p4, v2, :cond_5

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->t:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->u:I

    :goto_1
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->L:I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/4 p1, 0x5

    if-ne p4, p1, :cond_6

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_6
    if-ne p4, v4, :cond_7

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_7
    if-ne p4, v3, :cond_8

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-ne p4, v3, :cond_9

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    goto :goto_2

    :cond_9
    if-ne p4, v4, :cond_a

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->o:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->p:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    :goto_2
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->J:I

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-ne p4, v4, :cond_b

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    goto :goto_3

    :cond_b
    if-ne p4, v3, :cond_c

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->n:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->m:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->q:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->r:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->s:I

    :goto_3
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->I:I

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-ne p4, v0, :cond_d

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    goto :goto_4

    :cond_d
    if-ne p4, p1, :cond_e

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->l:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->k:I

    :goto_4
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->H:I

    return-void

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-ne p4, v0, :cond_f

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    goto :goto_5

    :cond_f
    if-ne p4, p1, :cond_10

    iput p3, p0, Landroidx/constraintlayout/widget/c$b;->j:I

    iput v7, p0, Landroidx/constraintlayout/widget/c$b;->i:I

    :goto_5
    iput p5, p0, Landroidx/constraintlayout/widget/c$b;->G:I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Left to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/c;->y(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput p2, p0, Landroidx/constraintlayout/widget/c$b;->c:I

    return-void
.end method

.method public final l(III[I)V
    .locals 10

    array-length v1, p4

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput p3, v2, Landroidx/constraintlayout/widget/c$b;->W:I

    aget v4, p4, v1

    const/4 v5, 0x6

    const/4 v7, 0x7

    const/4 v8, -0x1

    move-object v3, p0

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/c;->i(IIIII)V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    array-length v3, p4

    const/4 v7, 0x7

    if-ge v2, v3, :cond_0

    aget v4, p4, v2

    add-int/lit8 v9, v2, -0x1

    aget v6, p4, v9

    const/4 v8, -0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/c;->i(IIIII)V

    aget v4, p4, v9

    aget v6, p4, v2

    move v3, v7

    move v7, v5

    move v5, v3

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/c;->i(IIIII)V

    move v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p4

    sub-int/2addr v2, v1

    aget v4, p4, v2

    const/4 v8, -0x1

    move v5, v7

    const/4 v7, 0x6

    move-object v3, p0

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/c;->i(IIIII)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(I)Landroidx/constraintlayout/widget/c$a;
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/c$a;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/c$a;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    return-object p0
.end method

.method public final o(I)Landroidx/constraintlayout/widget/c$a;
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/c$a;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final p(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "Error parsing resource: "

    const-string v1, "ConstraintSet"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;

    move-result-object v5

    const-string v6, "Guideline"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v5, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/c$b;->a:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    iget v4, v5, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_5
    return-void
.end method

.method public final q(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11

    const-string v0, "Error parsing XML resource"

    const-string v1, "ConstraintSet"

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    if-eqz v2, :cond_a

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "constraintset"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v9

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :sswitch_1
    const-string v9, "constraintoverride"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v9, "constraint"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v5

    goto :goto_1

    :sswitch_3
    const-string v9, "guideline"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v7

    :cond_1
    :goto_1
    if-eqz v6, :cond_b

    if-eq v6, v5, :cond_2

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/widget/c;->g:Ljava/util/HashMap;

    iget v5, v4, Landroidx/constraintlayout/widget/c$a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    goto/16 :goto_3

    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v7, "Constraint"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v9

    goto :goto_2

    :sswitch_5
    const-string v7, "CustomAttribute"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v6, 0x8

    goto :goto_2

    :sswitch_6
    const-string v8, "Barrier"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v7

    goto :goto_2

    :sswitch_7
    const-string v7, "CustomMethod"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v6, 0x9

    goto :goto_2

    :sswitch_8
    const-string v7, "Guideline"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v8

    goto :goto_2

    :sswitch_9
    const-string v7, "Transform"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_a
    const-string v7, "PropertySet"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v6, 0x4

    goto :goto_2

    :sswitch_b
    const-string v7, "ConstraintOverride"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v5

    goto :goto_2

    :sswitch_c
    const-string v7, "Motion"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v6, 0x7

    goto :goto_2

    :sswitch_d
    const-string v7, "Layout"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    const/4 v6, 0x6

    :cond_4
    :goto_2
    const-string v2, "XML parser error must be within a Constraint "

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v4, :cond_5

    :try_start_1
    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/a;->d(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/util/HashMap;)V

    goto/16 :goto_3

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-eqz v4, :cond_6

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->d:Landroidx/constraintlayout/widget/c$c;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/c$c;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-eqz v4, :cond_7

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/c$b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_3

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-eqz v4, :cond_8

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->f:Landroidx/constraintlayout/widget/c$e;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/c$e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-eqz v4, :cond_9

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$d;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Landroidx/constraintlayout/widget/c$d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;

    move-result-object v4

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput v5, v2, Landroidx/constraintlayout/widget/c$b;->i0:I

    goto :goto_3

    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;

    move-result-object v4

    iget-object v2, v4, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput-boolean v5, v2, Landroidx/constraintlayout/widget/c$b;->a:Z

    iput-boolean v5, v2, Landroidx/constraintlayout/widget/c$b;->b:Z

    goto :goto_3

    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p1, v2, v5}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;

    move-result-object v4

    goto :goto_3

    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p1, v2, v9}, Landroidx/constraintlayout/widget/c;->m(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/c$a;

    move-result-object v4

    goto :goto_3

    :cond_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :goto_4
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput p2, v0, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p2

    iget-object p2, p2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/4 v0, -0x1

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    return-void
.end method

.method public final w(II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput p2, v0, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p2

    iget-object p2, p2, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/4 v0, -0x1

    iput v0, p2, Landroidx/constraintlayout/widget/c$b;->e:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/constraintlayout/widget/c$b;->g:F

    return-void
.end method

.method public final x(FI)V
    .locals 1

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput p1, v0, Landroidx/constraintlayout/widget/c$b;->g:F

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    const/4 v0, -0x1

    iput v0, p1, Landroidx/constraintlayout/widget/c$b;->f:I

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/c;->n(I)Landroidx/constraintlayout/widget/c$a;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/c$a;->e:Landroidx/constraintlayout/widget/c$b;

    iput v0, p0, Landroidx/constraintlayout/widget/c$b;->e:I

    return-void
.end method
