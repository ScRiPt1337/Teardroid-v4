.class public final Lcom/example/teardroidv2/FileDataPart;
.super Ljava/lang/Object;
.source "FileAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/teardroidv2/FileDataPart;",
        "",
        "fileName",
        "",
        "data",
        "",
        "type",
        "(Ljava/lang/String;[BLjava/lang/String;)V",
        "getData",
        "()[B",
        "setData",
        "([B)V",
        "getFileName",
        "()Ljava/lang/String;",
        "setFileName",
        "(Ljava/lang/String;)V",
        "getType",
        "setType",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private data:[B

.field private fileName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/teardroidv2/FileDataPart;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/teardroidv2/FileDataPart;->data:[B

    iput-object p3, p0, Lcom/example/teardroidv2/FileDataPart;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/example/teardroidv2/FileDataPart;->data:[B

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/example/teardroidv2/FileDataPart;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/example/teardroidv2/FileDataPart;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setData([B)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/example/teardroidv2/FileDataPart;->data:[B

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/example/teardroidv2/FileDataPart;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/example/teardroidv2/FileDataPart;->type:Ljava/lang/String;

    return-void
.end method
