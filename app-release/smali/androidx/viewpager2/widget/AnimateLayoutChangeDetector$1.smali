.class Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;
.super Ljava/lang/Object;
.source "AnimateLayoutChangeDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->arePagesLaidOutContiguously()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;)V
    .locals 0

    .line 94
    iput-object p1, p0, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;->this$0:Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector$1;->compare([I[I)I

    move-result p1

    return p1
.end method

.method public compare([I[I)I
    .locals 1

    const/4 v0, 0x0

    .line 97
    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
