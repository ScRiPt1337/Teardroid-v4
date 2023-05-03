.class Lcom/google/android/material/timepicker/MaxInputValidator;
.super Ljava/lang/Object;
.source "MaxInputValidator.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private max:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p6, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 46
    iget p2, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getMax()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    return v0
.end method

.method public setMax(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    return-void
.end method
