.class Lkotlin/NumbersKt__NumbersJVMKt;
.super Lkotlin/NumbersKt__FloorDivModKt;
.source "NumbersJVM.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0087\u0008\u001a\u0015\u0010\u0005\u001a\u00020\t*\u00020\n2\u0006\u0010\u0008\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000b\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\r\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u000e\u001a\u00020\u000c*\u00020\tH\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\u0015\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0001*\u00020\u0001H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0002*\u00020\u0006H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\tH\u0087\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "countLeadingZeroBits",
        "",
        "",
        "countOneBits",
        "countTrailingZeroBits",
        "fromBits",
        "",
        "Lkotlin/Double$Companion;",
        "bits",
        "",
        "Lkotlin/Float$Companion;",
        "isFinite",
        "",
        "isInfinite",
        "isNaN",
        "rotateLeft",
        "bitCount",
        "rotateRight",
        "takeHighestOneBit",
        "takeLowestOneBit",
        "toBits",
        "toRawBits",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x31
    xs = "kotlin/NumbersKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/NumbersKt__FloorDivModKt;-><init>()V

    return-void
.end method

.method private static final countLeadingZeroBits(I)I
    .locals 0

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method private static final countLeadingZeroBits(J)I
    .locals 0

    .line 185
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    return p0
.end method

.method private static final countOneBits(I)I
    .locals 0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method private static final countOneBits(J)I
    .locals 0

    .line 177
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0
.end method

.method private static final countTrailingZeroBits(I)I
    .locals 0

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method private static final countTrailingZeroBits(J)I
    .locals 0

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    return p0
.end method

.method private static final fromBits(Lkotlin/jvm/internal/DoubleCompanionObject;J)D
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final fromBits(Lkotlin/jvm/internal/FloatCompanionObject;I)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method private static final isFinite(D)Z
    .locals 1

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isFinite(F)Z
    .locals 1

    .line 46
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isInfinite(D)Z
    .locals 0

    .line 28
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    return p0
.end method

.method private static final isInfinite(F)Z
    .locals 0

    .line 34
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    return p0
.end method

.method private static final isNaN(D)Z
    .locals 0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method private static final isNaN(F)Z
    .locals 0

    .line 22
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method private static final rotateLeft(II)I
    .locals 0

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    return p0
.end method

.method private static final rotateLeft(JI)J
    .locals 0

    .line 226
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final rotateRight(II)I
    .locals 0

    .line 168
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method

.method private static final rotateRight(JI)J
    .locals 0

    .line 241
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final takeHighestOneBit(I)I
    .locals 0

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method private static final takeHighestOneBit(J)J
    .locals 0

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final takeLowestOneBit(I)I
    .locals 0

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    return p0
.end method

.method private static final takeLowestOneBit(J)J
    .locals 0

    .line 211
    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final toBits(F)I
    .locals 0

    .line 78
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    return p0
.end method

.method private static final toBits(D)J
    .locals 0

    .line 54
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final toRawBits(F)I
    .locals 0

    .line 87
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    return p0
.end method

.method private static final toRawBits(D)J
    .locals 0

    .line 63
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    return-wide p0
.end method
