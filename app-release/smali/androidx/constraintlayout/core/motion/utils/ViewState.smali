.class public Landroidx/constraintlayout/core/motion/utils/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public rotation:F

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    .line 26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    .line 28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    .line 29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    return-void
.end method

.method public height()I
    .locals 2

    .line 37
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public width()I
    .locals 2

    .line 33
    iget v0, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    iget v1, p0, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
