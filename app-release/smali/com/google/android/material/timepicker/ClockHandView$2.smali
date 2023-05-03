.class Lcom/google/android/material/timepicker/ClockHandView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ClockHandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockHandView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockHandView;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView$2;->this$0:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void
.end method
