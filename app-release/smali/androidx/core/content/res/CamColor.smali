.class Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 130
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 131
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 132
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 133
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 134
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 135
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 136
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 137
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .locals 12

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    move-object v4, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    :goto_0
    sub-float v6, v5, v1

    .line 490
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    sub-float v6, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 493
    invoke-static {v6, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v7

    .line 497
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    move-result v7

    .line 498
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    move-result v8

    sub-float v9, p2, v8

    .line 499
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    .line 507
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v7

    .line 509
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v10

    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v11

    invoke-static {v10, v11, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v10

    .line 508
    invoke-virtual {v7, v10}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_0

    move-object v4, v7

    move v2, v9

    move v3, v10

    :cond_0
    cmpl-float v7, v2, v0

    if-nez v7, :cond_1

    cmpl-float v7, v3, v0

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v7, v8, p2

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4
.end method

.method static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 1

    .line 160
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, v0}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object p0

    return-object p0
.end method

.method static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 23

    .line 171
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I)[F

    move-result-object v0

    .line 174
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    const/4 v2, 0x0

    .line 175
    aget v3, v0, v2

    aget-object v4, v1, v2

    aget v5, v4, v2

    mul-float v5, v5, v3

    const/4 v6, 0x1

    aget v7, v0, v6

    aget v8, v4, v6

    mul-float v8, v8, v7

    add-float/2addr v5, v8

    const/4 v8, 0x2

    aget v0, v0, v8

    aget v4, v4, v8

    mul-float v4, v4, v0

    add-float/2addr v5, v4

    .line 176
    aget-object v4, v1, v6

    aget v9, v4, v2

    mul-float v9, v9, v3

    aget v10, v4, v6

    mul-float v10, v10, v7

    add-float/2addr v9, v10

    aget v4, v4, v8

    mul-float v4, v4, v0

    add-float/2addr v9, v4

    .line 177
    aget-object v1, v1, v8

    aget v4, v1, v2

    mul-float v3, v3, v4

    aget v4, v1, v6

    mul-float v7, v7, v4

    add-float/2addr v3, v7

    aget v1, v1, v8

    mul-float v0, v0, v1

    add-float/2addr v3, v0

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float v0, v0, v5

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    aget v1, v1, v6

    mul-float v1, v1, v9

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v2

    aget v2, v2, v8

    mul-float v2, v2, v3

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide v7, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float v4, v4, v9

    float-to-double v9, v4

    div-double/2addr v9, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float v9, v9, v10

    float-to-double v9, v9

    div-double/2addr v9, v5

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 188
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v8, 0x43c80000    # 400.0f

    mul-float v0, v0, v8

    mul-float v0, v0, v3

    const v9, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v9

    div-float/2addr v0, v3

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v1, v1, v8

    mul-float v1, v1, v4

    add-float/2addr v4, v9

    div-float/2addr v1, v4

    .line 190
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v2, v2, v8

    mul-float v2, v2, v7

    add-float/2addr v7, v9

    div-float/2addr v2, v7

    const-wide/high16 v3, 0x4026000000000000L    # 11.0

    float-to-double v7, v0

    mul-double v7, v7, v3

    const-wide/high16 v3, -0x3fd8000000000000L    # -12.0

    float-to-double v9, v1

    mul-double v9, v9, v3

    add-double/2addr v7, v9

    float-to-double v3, v2

    add-double/2addr v7, v3

    double-to-float v7, v7

    const/high16 v8, 0x41300000    # 11.0f

    div-float/2addr v7, v8

    add-float v8, v0, v1

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v3, v3, v10

    sub-double/2addr v8, v3

    double-to-float v3, v8

    const/high16 v4, 0x41100000    # 9.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v8, v0, v4

    mul-float v1, v1, v4

    add-float/2addr v8, v1

    const/high16 v9, 0x41a80000    # 21.0f

    mul-float v9, v9, v2

    add-float/2addr v8, v9

    div-float/2addr v8, v4

    const/high16 v9, 0x42200000    # 40.0f

    mul-float v0, v0, v9

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v4

    float-to-double v1, v3

    float-to-double v12, v7

    .line 202
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v1, v1, v2

    const v4, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v4

    const/4 v9, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    cmpg-float v9, v1, v9

    if-gez v9, :cond_1

    add-float/2addr v1, v12

    :cond_0
    :goto_0
    move v14, v1

    goto :goto_1

    :cond_1
    cmpl-float v9, v1, v12

    if-ltz v9, :cond_0

    sub-float/2addr v1, v12

    goto :goto_0

    :goto_1
    mul-float v4, v4, v14

    div-float/2addr v4, v2

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v1

    mul-float v0, v0, v1

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v9

    mul-float v2, v2, v9

    float-to-double v5, v2

    .line 214
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    const/high16 v5, 0x40800000    # 4.0f

    div-float v2, v5, v2

    div-float v1, v0, v1

    float-to-double v10, v1

    .line 219
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float v2, v2, v1

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v1

    add-float/2addr v1, v5

    mul-float v2, v2, v1

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v1

    mul-float v1, v1, v2

    float-to-double v9, v14

    const-wide v19, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v2, v9, v19

    if-gez v2, :cond_2

    add-float/2addr v12, v14

    goto :goto_2

    :cond_2
    move v12, v14

    :goto_2
    float-to-double v9, v12

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v9, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    add-double/2addr v9, v11

    .line 225
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x400e666666666666L    # 3.8

    add-double/2addr v9, v11

    double-to-float v2, v9

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v2, v2, v6

    const v6, 0x45706276

    mul-float v2, v2, v6

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v6

    mul-float v2, v2, v6

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v6

    mul-float v2, v2, v6

    mul-float v7, v7, v7

    mul-float v3, v3, v3

    add-float/2addr v7, v3

    float-to-double v6, v7

    .line 227
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float v2, v2, v3

    const v3, 0x3e9c28f6    # 0.305f

    add-float/2addr v8, v3

    div-float/2addr v2, v8

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v3

    float-to-double v6, v3

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v6

    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-double v6, v2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    .line 229
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v3, v3, v2

    float-to-double v6, v0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v15, v3, v2

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v2

    mul-float v18, v15, v2

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    mul-float v3, v3, v2

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    float-to-double v2, v3

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v19, v2, v3

    const v2, 0x3fd9999a    # 1.7f

    mul-float v2, v2, v0

    const v3, 0x3be56042    # 0.007f

    mul-float v3, v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v3, v5

    div-float v20, v2, v3

    const v2, 0x3cbac711    # 0.0228f

    mul-float v2, v2, v18

    add-float/2addr v2, v5

    float-to-double v2, v2

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x422f7048

    mul-float v2, v2, v3

    float-to-double v3, v4

    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v21, v2, v5

    .line 240
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v22, v2, v3

    .line 242
    new-instance v2, Landroidx/core/content/res/CamColor;

    move-object v13, v2

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-direct/range {v13 .. v22}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v2
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 1

    .line 253
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object p0

    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 13

    move v3, p0

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v0, v0, v2

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v2

    mul-float v6, v0, v2

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v7, p1, v0

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, p1, v0

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    mul-float v0, v0, v2

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v8, v0, v1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x3fd9999a    # 1.7f

    mul-float v1, v1, v3

    const v2, 0x3be56042    # 0.007f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    div-float v9, v1, v2

    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v4, v7

    mul-double v4, v4, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float v1, v1, v2

    float-to-double v4, v0

    .line 278
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    mul-float v10, v1, v0

    .line 279
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v11, v1, v0

    .line 280
    new-instance v12, Landroidx/core/content/res/CamColor;

    move-object v0, v12

    move v1, p2

    move v2, p1

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v12
.end method

.method static toColor(FFF)I
    .locals 1

    .line 149
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0
.end method

.method static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_7

    .line 414
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43b40000    # 360.0f

    .line 418
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    move v0, p1

    move-object v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1
    sub-float v4, v1, p1

    .line 431
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 434
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    :cond_2
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move v1, v0

    move-object v3, v4

    :goto_2
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 468
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0

    .line 471
    :cond_6
    invoke-virtual {v3, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    .line 415
    :cond_7
    :goto_3
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method distance(Landroidx/core/content/res/CamColor;)F
    .locals 4

    .line 290
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v0

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 291
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 292
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result v2

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result p1

    sub-float/2addr v2, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    float-to-double v0, v0

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe428f5c28f5c29L    # 0.63

    .line 294
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1
.end method

.method getAStar()F
    .locals 1

    .line 116
    iget v0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    return v0
.end method

.method getBStar()F
    .locals 1

    .line 123
    iget v0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return v0
.end method

.method getChroma()F
    .locals 1

    .line 63
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    return v0
.end method

.method getHue()F
    .locals 1

    .line 57
    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    return v0
.end method

.method getJ()F
    .locals 1

    .line 69
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    return v0
.end method

.method getJStar()F
    .locals 1

    .line 109
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    return v0
.end method

.method getM()F
    .locals 1

    .line 92
    iget v0, p0, Landroidx/core/content/res/CamColor;->mM:F

    return v0
.end method

.method getQ()F
    .locals 1

    .line 81
    iget v0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    return v0
.end method

.method getS()F
    .locals 1

    .line 103
    iget v0, p0, Landroidx/core/content/res/CamColor;->mS:F

    return v0
.end method

.method viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 15

    .line 308
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    float-to-double v0, v0

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v6

    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    .line 312
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v0, v6

    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 314
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getHue()F

    move-result v1

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float v1, v1, v6

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v6

    .line 316
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x400e666666666666L    # 3.8

    add-double/2addr v8, v10

    double-to-float v1, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v1, v1, v8

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v8

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v2

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v11, v2

    .line 317
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v8, v8, v2

    const v2, 0x45706276

    mul-float v1, v1, v2

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v2

    mul-float v1, v1, v2

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v2

    div-float/2addr v8, v2

    .line 323
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 324
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v3, v6

    const v6, 0x3e9c28f6    # 0.305f

    add-float/2addr v6, v8

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float v6, v6, v7

    mul-float v6, v6, v0

    mul-float v1, v1, v7

    const/high16 v7, 0x41300000    # 11.0f

    mul-float v7, v7, v0

    mul-float v7, v7, v3

    add-float/2addr v1, v7

    const/high16 v7, 0x42d80000    # 108.0f

    mul-float v0, v0, v7

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    div-float/2addr v6, v1

    mul-float v3, v3, v6

    mul-float v6, v6, v2

    const/high16 v0, 0x43e60000    # 460.0f

    mul-float v8, v8, v0

    const v0, 0x43e18000    # 451.0f

    mul-float v0, v0, v3

    add-float/2addr v0, v8

    const/high16 v1, 0x43900000    # 288.0f

    mul-float v1, v1, v6

    add-float/2addr v0, v1

    const v1, 0x44af6000    # 1403.0f

    div-float/2addr v0, v1

    const v2, 0x445ec000    # 891.0f

    mul-float v2, v2, v3

    sub-float v2, v8, v2

    const v7, 0x43828000    # 261.0f

    mul-float v7, v7, v6

    sub-float/2addr v2, v7

    div-float/2addr v2, v1

    const/high16 v7, 0x435c0000    # 220.0f

    mul-float v3, v3, v7

    sub-float/2addr v8, v3

    const v3, 0x45c4e000    # 6300.0f

    mul-float v6, v6, v3

    sub-float/2addr v8, v6

    div-float/2addr v8, v1

    .line 334
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v6, v1

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double v6, v6, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    sub-double v11, v13, v11

    div-double/2addr v6, v11

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 335
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v3, v6, v3

    mul-float v0, v0, v3

    float-to-double v11, v1

    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v3, v11

    mul-float v0, v0, v3

    .line 337
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v11, v3

    mul-double v11, v11, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v9, v3

    sub-double v9, v13, v9

    div-double/2addr v11, v9

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 338
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v9

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v9, v1, v9

    mul-float v2, v2, v9

    float-to-double v9, v3

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v3, v9

    mul-float v2, v2, v3

    .line 340
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v9, v3

    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    mul-double v9, v9, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v11, v3

    sub-double/2addr v13, v11

    div-double/2addr v9, v13

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 341
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v5

    mul-float v4, v4, v1

    float-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v4, v4, v1

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    div-float/2addr v0, v1

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v5, 0x1

    aget v1, v1, v5

    div-float/2addr v2, v1

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v6, 0x2

    aget v1, v1, v6

    div-float/2addr v4, v1

    .line 348
    sget-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 349
    aget-object v7, v1, v3

    aget v8, v7, v3

    mul-float v8, v8, v0

    aget v9, v7, v5

    mul-float v9, v9, v2

    add-float/2addr v8, v9

    aget v7, v7, v6

    mul-float v7, v7, v4

    add-float/2addr v8, v7

    .line 350
    aget-object v7, v1, v5

    aget v9, v7, v3

    mul-float v9, v9, v0

    aget v10, v7, v5

    mul-float v10, v10, v2

    add-float/2addr v9, v10

    aget v7, v7, v6

    mul-float v7, v7, v4

    add-float/2addr v9, v7

    .line 351
    aget-object v1, v1, v6

    aget v3, v1, v3

    mul-float v0, v0, v3

    aget v3, v1, v5

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    aget v1, v1, v6

    mul-float v4, v4, v1

    add-float/2addr v0, v4

    float-to-double v1, v8

    float-to-double v3, v9

    float-to-double v5, v0

    .line 353
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method viewedInSrgb()I
    .locals 1

    .line 301
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v0

    return v0
.end method
