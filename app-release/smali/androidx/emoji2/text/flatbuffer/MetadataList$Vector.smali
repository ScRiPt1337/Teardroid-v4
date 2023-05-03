.class public final Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "MetadataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/MetadataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(IILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 1

    .line 72
    new-instance v0, Landroidx/emoji2/text/flatbuffer/MetadataList;

    invoke-direct {v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/emoji2/text/flatbuffer/MetadataList;I)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 1

    .line 73
    invoke-virtual {p0, p2}, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->__element(I)I

    move-result p2

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->access$000(ILjava/nio/ByteBuffer;)I

    move-result p2

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/MetadataList$Vector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, v0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->__assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p1

    return-object p1
.end method
