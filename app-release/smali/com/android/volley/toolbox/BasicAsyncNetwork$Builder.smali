.class public Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;
.super Ljava/lang/Object;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1000


# instance fields
.field private mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

.field private mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/AsyncHttpStack;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/volley/toolbox/BasicAsyncNetwork;
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 317
    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/BasicAsyncNetwork;-><init>(Lcom/android/volley/toolbox/AsyncHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;Lcom/android/volley/toolbox/BasicAsyncNetwork$1;)V

    return-object v0
.end method

.method public setPool(Lcom/android/volley/toolbox/ByteArrayPool;)Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-object p0
.end method
