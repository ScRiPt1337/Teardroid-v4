.class public Landroidx/transition/SidePropagation;
.super Landroidx/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 36
    iput v0, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    .line 37
    iput v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6

    .line 125
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const v1, 0x800003

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_3

    .line 126
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x5

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    const v1, 0x800005

    if-ne v0, v1, :cond_5

    .line 130
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_5
    :goto_3
    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    const/16 p1, 0x30

    if-eq v0, p1, :cond_7

    const/16 p1, 0x50

    if-eq v0, p1, :cond_6

    goto :goto_4

    :cond_6
    sub-int/2addr p3, p7

    sub-int/2addr p4, p2

    .line 148
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p3, p1

    goto :goto_4

    :cond_7
    sub-int/2addr p9, p3

    sub-int/2addr p4, p2

    .line 142
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p9, p1

    goto :goto_4

    :cond_8
    sub-int/2addr p2, p6

    sub-int/2addr p5, p3

    .line 145
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p2, p1

    goto :goto_4

    :cond_9
    sub-int/2addr p8, p2

    sub-int/2addr p5, p3

    .line 139
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int v4, p8, p1

    :goto_4
    return v4
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2

    .line 155
    iget v0, p0, Landroidx/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    return p1

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    const-wide/16 v11, 0x0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    return-wide v11

    .line 80
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    .line 82
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewVisibility(Landroidx/transition/TransitionValues;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, -0x1

    const/4 v13, -0x1

    .line 89
    :goto_1
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewX(Landroidx/transition/TransitionValues;)I

    move-result v3

    .line 90
    invoke-virtual {v10, v0}, Landroidx/transition/SidePropagation;->getViewY(Landroidx/transition/TransitionValues;)I

    move-result v4

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v14, p1

    .line 93
    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v5, v6

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    aget v2, v5, v2

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int v7, v2, v5

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    add-int v8, v6, v2

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int v9, v7, v2

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move v5, v0

    move v15, v1

    goto :goto_2

    :cond_3
    add-int v1, v6, v8

    .line 105
    div-int/2addr v1, v0

    add-int v2, v7, v9

    .line 106
    div-int/2addr v2, v0

    move v5, v1

    move v15, v2

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v15

    .line 109
    invoke-direct/range {v0 .. v9}, Landroidx/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 111
    invoke-direct/range {p0 .. p1}, Landroidx/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-gez v3, :cond_4

    const-wide/16 v1, 0x12c

    :cond_4
    int-to-long v3, v13

    mul-long v1, v1, v3

    long-to-float v1, v1

    .line 119
    iget v2, v10, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPropagationSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 70
    iput p1, p0, Landroidx/transition/SidePropagation;->mPropagationSpeed:F

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "propagationSpeed may not be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSide(I)V
    .locals 0

    .line 51
    iput p1, p0, Landroidx/transition/SidePropagation;->mSide:I

    return-void
.end method
