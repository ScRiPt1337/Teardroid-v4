.class public final Landroidx/emoji2/text/flatbuffer/MetadataList;
.super Landroidx/emoji2/text/flatbuffer/Table;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
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
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSourceSha(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addVersion(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createListVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;[I)I
    .locals 2

    const/4 v0, 0x4

    .line 59
    array-length v1, p1

    invoke-virtual {p0, v0, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;III)I
    .locals 1

    const/4 v0, 0x3

    .line 49
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    .line 50
    invoke-static {p0, p3}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addSourceSha(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 51
    invoke-static {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 52
    invoke-static {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->addVersion(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->endMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)I
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static finishMetadataListBuffer(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static finishSizePrefixedMetadataListBuffer(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->finishSizePrefixed(I)V

    return-void
.end method

.method public static getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 1

    .line 30
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    invoke-static {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataList;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsMetadataList(Ljava/nio/ByteBuffer;Landroidx/emoji2/text/flatbuffer/MetadataList;)Landroidx/emoji2/text/flatbuffer/MetadataList;
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

    invoke-virtual {p1, v0, p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p0

    return-object p0
.end method

.method public static startListVector(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p0, v0, p1, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startMetadataList(Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x3

    .line 56
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public list(I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 1

    .line 36
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p1

    return-object p1
.end method

.method public list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 1

    const/4 v0, 0x6

    .line 37
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector(I)I

    move-result v0

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__indirect(I)I

    move-result p2

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public listLength()I
    .locals 1

    const/4 v0, 0x6

    .line 38
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_len(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listVector()Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .locals 1

    .line 39
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->listVector(Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

    move-result-object v0

    return-object v0
.end method

.method public listVector(Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;
    .locals 3

    const/4 v0, 0x6

    .line 40
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;->__assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataItem$Vector;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public sourceSha()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public sourceShaAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sourceShaInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public version()I
    .locals 3

    const/4 v0, 0x4

    .line 35
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Landroidx/emoji2/text/flatbuffer/MetadataList;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
