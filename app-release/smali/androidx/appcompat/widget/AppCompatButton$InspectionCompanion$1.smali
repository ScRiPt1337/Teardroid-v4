.class Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;
.super Ljava/lang/Object;
.source "AppCompatButton$InspectionCompanion.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;->this$0:Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatButton$InspectionCompanion$1;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "uniform"

    return-object p1

    :cond_1
    const-string p1, "none"

    return-object p1
.end method
