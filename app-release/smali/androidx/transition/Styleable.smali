.class Landroidx/transition/Styleable;
.super Ljava/lang/Object;
.source "Styleable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Styleable$PatternPathMotion;,
        Landroidx/transition/Styleable$ArcMotion;,
        Landroidx/transition/Styleable$TransitionSet;,
        Landroidx/transition/Styleable$Slide;,
        Landroidx/transition/Styleable$ChangeTransform;,
        Landroidx/transition/Styleable$Fade;,
        Landroidx/transition/Styleable$VisibilityTransition;,
        Landroidx/transition/Styleable$ChangeBounds;,
        Landroidx/transition/Styleable$Transition;,
        Landroidx/transition/Styleable$TransitionManager;,
        Landroidx/transition/Styleable$TransitionTarget;
    }
.end annotation


# static fields
.field static final ARC_MOTION:[I

.field static final CHANGE_BOUNDS:[I

.field static final CHANGE_TRANSFORM:[I

.field static final FADE:[I

.field static final PATTERN_PATH_MOTION:[I

.field static final SLIDE:[I

.field static final TRANSITION:[I

.field static final TRANSITION_MANAGER:[I

.field static final TRANSITION_SET:[I

.field static final TRANSITION_TARGET:[I

.field static final VISIBILITY_TRANSITION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/transition/Styleable;->TRANSITION_TARGET:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_1

    sput-object v1, Landroidx/transition/Styleable;->TRANSITION_MANAGER:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 71
    fill-array-data v1, :array_2

    sput-object v1, Landroidx/transition/Styleable;->TRANSITION:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10104cf

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 90
    sput-object v2, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    new-array v2, v1, [I

    const v3, 0x101047c

    aput v3, v2, v4

    .line 100
    sput-object v2, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    new-array v2, v1, [I

    const v3, 0x10103e1

    aput v3, v2, v4

    .line 110
    sput-object v2, Landroidx/transition/Styleable;->FADE:[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 120
    fill-array-data v2, :array_3

    sput-object v2, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    new-array v2, v1, [I

    const v3, 0x1010430

    aput v3, v2, v4

    .line 133
    sput-object v2, Landroidx/transition/Styleable;->SLIDE:[I

    new-array v2, v1, [I

    const v3, 0x10103e0

    aput v3, v2, v4

    .line 143
    sput-object v2, Landroidx/transition/Styleable;->TRANSITION_SET:[I

    new-array v0, v0, [I

    .line 153
    fill-array-data v0, :array_4

    sput-object v0, Landroidx/transition/Styleable;->ARC_MOTION:[I

    new-array v0, v1, [I

    const v1, 0x10104ca

    aput v1, v0, v4

    .line 169
    sput-object v0, Landroidx/transition/Styleable;->PATTERN_PATH_MOTION:[I

    return-void

    :array_0
    .array-data 4
        0x101002f
        0x10103dc
        0x1010441
        0x1010442
        0x101044d
        0x101044e
    .end array-data

    :array_1
    .array-data 4
        0x10103dd
        0x10103de
        0x10103df
    .end array-data

    :array_2
    .array-data 4
        0x1010141
        0x1010198
        0x10103e2
        0x101044f
    .end array-data

    :array_3
    .array-data 4
        0x10104bc
        0x10104bd
    .end array-data

    :array_4
    .array-data 4
        0x101047d
        0x101047e
        0x101047f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
