.class public final Lcom/example/teardroidv2/FileAction$uploadFile$request$1;
.super Lcom/example/teardroidv2/VolleyFileUploadRequest;
.source "FileAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/teardroidv2/FileAction;->uploadFile(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/teardroidv2/FileAction$uploadFile$request$1",
        "Lcom/example/teardroidv2/VolleyFileUploadRequest;",
        "getByteData",
        "",
        "",
        "Lcom/example/teardroidv2/FileDataPart;",
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
.field final synthetic $Filename:Ljava/lang/String;

.field final synthetic $extension:Ljava/lang/String;

.field final synthetic this$0:Lcom/example/teardroidv2/FileAction;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/example/teardroidv2/FileAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/example/teardroidv2/FileAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/android/volley/NetworkResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->$Filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->this$0:Lcom/example/teardroidv2/FileAction;

    iput-object p3, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->$extension:Ljava/lang/String;

    const/4 p1, 0x1

    .line 27
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/example/teardroidv2/VolleyFileUploadRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public getByteData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/example/teardroidv2/FileDataPart;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    check-cast v0, Ljava/util/Map;

    new-instance v1, Lcom/example/teardroidv2/FileDataPart;

    iget-object v2, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->$Filename:Ljava/lang/String;

    iget-object v3, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->this$0:Lcom/example/teardroidv2/FileAction;

    invoke-static {v3}, Lcom/example/teardroidv2/FileAction;->access$getImageData$p(Lcom/example/teardroidv2/FileAction;)[B

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/example/teardroidv2/FileAction$uploadFile$request$1;->$extension:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/example/teardroidv2/FileDataPart;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    const-string v2, "file"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
