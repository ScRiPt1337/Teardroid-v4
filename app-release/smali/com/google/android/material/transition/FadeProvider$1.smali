.class final Lcom/google/android/material/transition/FadeProvider$1;
.super Ljava/lang/Object;
.source "FadeProvider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/FadeProvider;->createFadeAnimator(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endFraction:F

.field final synthetic val$endValue:F

.field final synthetic val$startFraction:F

.field final synthetic val$startValue:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;FFFF)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startValue:F

    iput p3, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endValue:F

    iput p4, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startFraction:F

    iput p5, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endFraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startValue:F

    iget v2, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endValue:F

    iget v3, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$startFraction:F

    iget v4, p0, Lcom/google/android/material/transition/FadeProvider$1;->val$endFraction:F

    invoke-static {v1, v2, v3, v4, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
