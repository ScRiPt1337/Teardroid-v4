.class public final Landroidx/emoji2/text/flatbuffer/IntVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "IntVector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/IntVector;
    .locals 1

    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/IntVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)I
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/IntVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/IntVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getAsUnsigned(I)J
    .locals 4

    .line 58
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/IntVector;->get(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
