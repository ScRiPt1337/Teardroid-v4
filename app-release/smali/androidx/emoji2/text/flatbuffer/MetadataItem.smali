.class public final Landroidx/emoji2/text/flatbuffer/MetadataItem;
.super Landroidx/emoji2/text/flatbuffer/Table;
.source "MetadataItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    .line 29
    invoke-static {}, Landroidx/emoji2/text/flatbuffer/Constants;->FLATBUFFERS_1_12_0()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 28
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addShort(ISI)V

    return-void
.end method

.method public static createCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;[I)I
    .locals 2

    const/4 v0, 0x4

    .line 75
    array-length v1, p1

    invoke-virtual {p0, v0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;IZSSSSI)I
    .locals 1

    const/4 v0, 0x7

    .line 56
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    .line 57
    invoke-static {p0, p7}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCodepoints(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 58
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addId(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 59
    invoke-static {p0, p6}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addHeight(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 60
    invoke-static {p0, p5}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addWidth(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 61
    invoke-static {p0, p4}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addCompatAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 62
    invoke-static {p0, p3}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addSdkAdded(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;S)V

    .line 63
    invoke-static {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->addEmojiStyle(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;Z)V

    .line 64
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 1

    .line 30
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    invoke-static {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsMetadataItem(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataItem;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 2

    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    return-object p0
.end method

.method public static startCodepointsVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 76
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMetadataItem(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x7

    .line 67
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public codepoints(I)I
    .locals 2

    const/16 v0, 0x10

    .line 41
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public codepointsAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x4

    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public codepointsInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x4

    .line 46
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public codepointsLength()I
    .locals 1

    const/16 v0, 0x10

    .line 42
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public codepointsVector()Landroidx/emoji2/text/flatbuffer/IntVector;
    .locals 1

    .line 43
    new-instance v0, Landroidx/emoji2/text/flatbuffer/IntVector;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/IntVector;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;

    move-result-object v0

    return-object v0
.end method

.method public codepointsVector(Landroidx/emoji2/text/flatbuffer/IntVector;)Landroidx/emoji2/text/flatbuffer/IntVector;
    .locals 2

    const/16 v0, 0x10

    .line 44
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__vector(I)I

    move-result v0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/IntVector;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/IntVector;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public compatAdded()S
    .locals 3

    const/16 v0, 0xa

    .line 38
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public emojiStyle()Z
    .locals 4

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public height()S
    .locals 3

    const/16 v0, 0xe

    .line 40
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public id()I
    .locals 3

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sdkAdded()S
    .locals 3

    const/16 v0, 0x8

    .line 37
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public width()S
    .locals 3

    const/16 v0, 0xc

    .line 39
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataItem;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
