.class Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
.super Ljava/lang/Object;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageMatrix"
.end annotation


# instance fields
.field m:[F

.field mBrightness:F

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field mContrast:F

.field mSaturation:F

.field mTmpColorMatrix:Landroid/graphics/ColorMatrix;

.field mWarmth:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    .line 90
    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    .line 91
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 92
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 93
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 94
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 95
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    .line 96
    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return-void
.end method

.method private brightness(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    aput v2, v0, v1

    const/4 v1, 0x2

    .line 230
    aput v2, v0, v1

    const/4 v1, 0x3

    .line 231
    aput v2, v0, v1

    const/4 v1, 0x4

    .line 232
    aput v2, v0, v1

    const/4 v1, 0x5

    .line 234
    aput v2, v0, v1

    const/4 v1, 0x6

    .line 235
    aput p1, v0, v1

    const/4 v1, 0x7

    .line 236
    aput v2, v0, v1

    const/16 v1, 0x8

    .line 237
    aput v2, v0, v1

    const/16 v1, 0x9

    .line 238
    aput v2, v0, v1

    const/16 v1, 0xa

    .line 240
    aput v2, v0, v1

    const/16 v1, 0xb

    .line 241
    aput v2, v0, v1

    const/16 v1, 0xc

    .line 242
    aput p1, v0, v1

    const/16 p1, 0xd

    .line 243
    aput v2, v0, p1

    const/16 p1, 0xe

    .line 244
    aput v2, v0, p1

    const/16 p1, 0xf

    .line 246
    aput v2, v0, p1

    const/16 p1, 0x10

    .line 247
    aput v2, v0, p1

    const/16 p1, 0x11

    .line 248
    aput v2, v0, p1

    const/16 p1, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 249
    aput v1, v0, p1

    const/16 p1, 0x13

    .line 250
    aput v2, v0, p1

    return-void
.end method

.method private saturation(F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saturationStrength"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const v2, 0x3e998c7e    # 0.2999f

    mul-float v2, v2, v1

    const v3, 0x3f1645a2    # 0.587f

    mul-float v3, v3, v1

    const v4, 0x3de978d5    # 0.114f

    mul-float v1, v1, v4

    .line 109
    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v5, 0x0

    add-float v6, v2, p1

    aput v6, v4, v5

    const/4 v5, 0x1

    .line 110
    aput v3, v4, v5

    const/4 v5, 0x2

    .line 111
    aput v1, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 112
    aput v6, v4, v5

    const/4 v5, 0x4

    .line 113
    aput v6, v4, v5

    const/4 v5, 0x5

    .line 115
    aput v2, v4, v5

    const/4 v5, 0x6

    add-float v7, v3, p1

    .line 116
    aput v7, v4, v5

    const/4 v5, 0x7

    .line 117
    aput v1, v4, v5

    const/16 v5, 0x8

    .line 118
    aput v6, v4, v5

    const/16 v5, 0x9

    .line 119
    aput v6, v4, v5

    const/16 v5, 0xa

    .line 121
    aput v2, v4, v5

    const/16 v2, 0xb

    .line 122
    aput v3, v4, v2

    const/16 v2, 0xc

    add-float/2addr v1, p1

    .line 123
    aput v1, v4, v2

    const/16 p1, 0xd

    .line 124
    aput v6, v4, p1

    const/16 p1, 0xe

    .line 125
    aput v6, v4, p1

    const/16 p1, 0xf

    .line 127
    aput v6, v4, p1

    const/16 p1, 0x10

    .line 128
    aput v6, v4, p1

    const/16 p1, 0x11

    .line 129
    aput v6, v4, p1

    const/16 p1, 0x12

    .line 130
    aput v0, v4, p1

    const/16 p1, 0x13

    .line 131
    aput v6, v4, p1

    return-void
.end method

.method private warmth(F)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmth"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const p1, 0x3c23d70a    # 0.01f

    :cond_0
    const v1, 0x459c4000    # 5000.0f

    div-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v1, p1

    const p1, 0x43211e9c

    const v2, 0x42c6f10d

    const/high16 v3, 0x42840000    # 66.0f

    const/high16 v4, 0x437f0000    # 255.0f

    cmpl-float v5, v1, v3

    if-lez v5, :cond_1

    const/high16 v5, 0x42700000    # 60.0f

    sub-float v5, v1, v5

    float-to-double v5, v5

    const-wide v7, -0x403ef32580000000L    # -0.13320475816726685

    .line 147
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const v8, 0x43a4d970

    mul-float v7, v7, v8

    const-wide v8, 0x3fb354f0e0000000L

    .line 148
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x43900fa3

    mul-float v5, v5, v6

    goto :goto_0

    :cond_1
    float-to-double v5, v1

    .line 151
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v2

    sub-float/2addr v5, p1

    const/high16 v7, 0x437f0000    # 255.0f

    :goto_0
    const v6, 0x439885bc

    const v8, 0x430a848a

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    const/high16 v3, 0x41980000    # 19.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float/2addr v1, v3

    float-to-double v9, v1

    .line 156
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float v1, v1, v8

    sub-float/2addr v1, v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/high16 v1, 0x437f0000    # 255.0f

    .line 163
    :goto_1
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 164
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 165
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v7, 0x42480000    # 50.0f

    float-to-double v9, v7

    .line 181
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float v7, v9

    mul-float v7, v7, v2

    sub-float/2addr v7, p1

    const/high16 p1, 0x42200000    # 40.0f

    float-to-double v9, p1

    .line 186
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    double-to-float p1, v9

    mul-float p1, p1, v8

    sub-float/2addr p1, v6

    .line 193
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 194
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 195
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v3, v2

    div-float/2addr v5, v6

    div-float/2addr v1, p1

    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    const/4 v2, 0x0

    aput v3, p1, v2

    const/4 v2, 0x1

    .line 202
    aput v0, p1, v2

    const/4 v2, 0x2

    .line 203
    aput v0, p1, v2

    const/4 v2, 0x3

    .line 204
    aput v0, p1, v2

    const/4 v2, 0x4

    .line 205
    aput v0, p1, v2

    const/4 v2, 0x5

    .line 207
    aput v0, p1, v2

    const/4 v2, 0x6

    .line 208
    aput v5, p1, v2

    const/4 v2, 0x7

    .line 209
    aput v0, p1, v2

    const/16 v2, 0x8

    .line 210
    aput v0, p1, v2

    const/16 v2, 0x9

    .line 211
    aput v0, p1, v2

    const/16 v2, 0xa

    .line 213
    aput v0, p1, v2

    const/16 v2, 0xb

    .line 214
    aput v0, p1, v2

    const/16 v2, 0xc

    .line 215
    aput v1, p1, v2

    const/16 v1, 0xd

    .line 216
    aput v0, p1, v1

    const/16 v1, 0xe

    .line 217
    aput v0, p1, v1

    const/16 v1, 0xf

    .line 219
    aput v0, p1, v1

    const/16 v1, 0x10

    .line 220
    aput v0, p1, v1

    const/16 v1, 0x11

    .line 221
    aput v0, p1, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    .line 222
    aput v2, p1, v1

    const/16 v1, 0x13

    .line 223
    aput v0, p1, v1

    return-void
.end method


# virtual methods
.method updateMatrix(Landroid/widget/ImageView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 256
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_0

    .line 257
    invoke-direct {p0, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->saturation(F)V

    .line 258
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 263
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    .line 266
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    .line 267
    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->warmth(F)V

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 269
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    const/4 v0, 0x1

    .line 272
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 273
    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->brightness(F)V

    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mTmpColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 280
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_2
    return-void
.end method
