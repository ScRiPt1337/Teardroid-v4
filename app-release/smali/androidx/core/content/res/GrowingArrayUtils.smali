.class final Landroidx/core/content/res/GrowingArrayUtils;
.super Ljava/lang/Object;
.source "GrowingArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append([III)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 56
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 57
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 61
    :cond_0
    aput p2, p0, p1

    return-object p0
.end method

.method public static append([JIJ)[J
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 69
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 74
    :cond_0
    aput-wide p2, p0, p1

    return-object p0
.end method

.method public static append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 42
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 44
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 45
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 48
    :cond_0
    aput-object p2, p0, p1

    return-object p0
.end method

.method public static append([ZIZ)[Z
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 82
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 83
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 87
    :cond_0
    aput-boolean p2, p0, p1

    return-object p0
.end method

.method public static growSize(I)I
    .locals 1

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    mul-int/lit8 p0, p0, 0x2

    :goto_0
    return p0
.end method

.method public static insert([IIII)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 122
    array-length v1, p0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    .line 123
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    aput p3, p0, p2

    return-object p0

    .line 128
    :cond_0
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    aput p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    .line 131
    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([JIIJ)[J
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 139
    array-length v1, p0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    .line 140
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    aput-wide p3, p0, p2

    return-object p0

    .line 145
    :cond_0
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 146
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    aput-wide p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    .line 148
    array-length p4, p0

    sub-int/2addr p4, p2

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;)[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 104
    array-length v1, p0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    .line 105
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    aput-object p3, p0, p2

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    .line 110
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    aput-object p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    .line 114
    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static insert([ZIIZ)[Z
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 156
    array-length v1, p0

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr p1, p2

    .line 157
    invoke-static {p0, p2, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    aput-boolean p3, p0, p2

    return-object p0

    .line 162
    :cond_0
    invoke-static {p1}, Landroidx/core/content/res/GrowingArrayUtils;->growSize(I)I

    move-result p1

    new-array p1, p1, [Z

    const/4 v0, 0x0

    .line 163
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    aput-boolean p3, p1, p2

    add-int/lit8 p3, p2, 0x1

    .line 165
    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-static {p0, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
