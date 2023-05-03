.class public Landroidx/emoji2/text/flatbuffer/BaseVector;
.super Ljava/lang/Object;
.source "BaseVector.java"


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field private element_size:I

.field private length:I

.field private vector:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected __element(I)I
    .locals 2

    .line 52
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    return v0
.end method

.method protected __reset(IILjava/nio/ByteBuffer;)V
    .locals 0

    .line 63
    iput-object p3, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->bb:Ljava/nio/ByteBuffer;

    if-eqz p3, :cond_0

    .line 65
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    add-int/lit8 p1, p1, -0x4

    .line 66
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    .line 67
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    .line 70
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    .line 71
    iput p1, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->element_size:I

    :goto_0
    return-void
.end method

.method protected __vector()I
    .locals 1

    .line 42
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->vector:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 92
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/BaseVector;->length:I

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v0, v1}, Landroidx/emoji2/text/flatbuffer/BaseVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-void
.end method
