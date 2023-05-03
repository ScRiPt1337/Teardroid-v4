.class public Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "BarrierReference.java"


# instance fields
.field private mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mDirection:Landroidx/constraintlayout/core/state/State$Direction;

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    .line 32
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 61
    sget-object v0, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 78
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    .line 55
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    return-object v0
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 0

    .line 46
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    return-object p0
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 1

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    return-object p0
.end method

.method public setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V
    .locals 0

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    return-void
.end method
