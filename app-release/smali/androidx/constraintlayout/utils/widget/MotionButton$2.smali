.class Landroidx/constraintlayout/utils/widget/MotionButton$2;
.super Landroid/view/ViewOutlineProvider;
.source "MotionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/MotionButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/MotionButton;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/MotionButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    .line 182
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    invoke-virtual {p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->getWidth()I

    move-result v3

    .line 183
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    invoke-virtual {p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/MotionButton$2;->this$0:Landroidx/constraintlayout/utils/widget/MotionButton;

    invoke-static {p1}, Landroidx/constraintlayout/utils/widget/MotionButton;->access$100(Landroidx/constraintlayout/utils/widget/MotionButton;)F

    move-result v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
