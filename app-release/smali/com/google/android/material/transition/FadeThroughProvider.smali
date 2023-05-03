.class public final Lcom/google/android/material/transition/FadeThroughProvider;
.super Ljava/lang/Object;
.source "FadeThroughProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# static fields
.field static final FADE_THROUGH_THRESHOLD:F = 0.35f


# instance fields
.field private progressThreshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3eb33333    # 0.35f

    .line 40
    iput v0, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    return-void
.end method

.method private static createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 95
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 96
    new-instance v7, Lcom/google/android/material/transition/FadeThroughProvider$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/FadeThroughProvider$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    new-instance p1, Lcom/google/android/material/transition/FadeThroughProvider$2;

    invoke-direct {p1, p0, p5}, Lcom/google/android/material/transition/FadeThroughProvider$2;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    move v5, p1

    :goto_0
    const/4 v1, 0x0

    .line 66
    iget v3, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p2

    move v2, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 6

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p1

    move v5, p1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 79
    iget v4, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    move-object v0, p2

    move v1, v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/FadeThroughProvider;->createFadeThroughAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public getProgressThreshold()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    return v0
.end method

.method public setProgressThreshold(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/google/android/material/transition/FadeThroughProvider;->progressThreshold:F

    return-void
.end method
