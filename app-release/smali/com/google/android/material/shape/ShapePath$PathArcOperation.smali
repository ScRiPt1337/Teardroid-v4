.class public Lcom/google/android/material/shape/ShapePath$PathArcOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathArcOperation"
.end annotation


# static fields
.field private static final rectF:Landroid/graphics/RectF;


# instance fields
.field public bottom:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public left:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public right:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public startAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sweepAngle:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public top:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 527
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setLeft(F)V

    .line 562
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setTop(F)V

    .line 563
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setRight(F)V

    .line 564
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setBottom(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setStartAngle(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/shape/ShapePath$PathArcOperation;F)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->setSweepAngle(F)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/shape/ShapePath$PathArcOperation;)F
    .locals 0

    .line 526
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result p0

    return p0
.end method

.method private getBottom()F
    .locals 1

    .line 590
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return v0
.end method

.method private getLeft()F
    .locals 1

    .line 578
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return v0
.end method

.method private getRight()F
    .locals 1

    .line 586
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return v0
.end method

.method private getStartAngle()F
    .locals 1

    .line 610
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return v0
.end method

.method private getSweepAngle()F
    .locals 1

    .line 614
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return v0
.end method

.method private getTop()F
    .locals 1

    .line 582
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return v0
.end method

.method private setBottom(F)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->bottom:F

    return-void
.end method

.method private setLeft(F)V
    .locals 0

    .line 594
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->left:F

    return-void
.end method

.method private setRight(F)V
    .locals 0

    .line 602
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->right:F

    return-void
.end method

.method private setStartAngle(F)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->startAngle:F

    return-void
.end method

.method private setSweepAngle(F)V
    .locals 0

    .line 622
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->sweepAngle:F

    return-void
.end method

.method private setTop(F)V
    .locals 0

    .line 598
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->top:F

    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->matrix:Landroid/graphics/Matrix;

    .line 570
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 571
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 572
    sget-object v0, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getLeft()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getTop()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getRight()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getBottom()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 573
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getStartAngle()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathArcOperation;->getSweepAngle()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 574
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
