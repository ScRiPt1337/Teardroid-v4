.class public Lcom/android/volley/toolbox/BasicAsyncNetwork;
.super Lcom/android/volley/AsyncNetwork;
.source "BasicAsyncNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/BasicAsyncNetwork$Builder;,
        Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;,
        Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
    }
.end annotation


# instance fields
.field private final mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

.field private final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/android/volley/toolbox/AsyncHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/volley/AsyncNetwork;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    .line 57
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/volley/toolbox/AsyncHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;Lcom/android/volley/toolbox/BasicAsyncNetwork$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;-><init>(Lcom/android/volley/toolbox/AsyncHttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->onRequestSucceeded(Lcom/android/volley/Request;JLcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->onRequestFailed(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->onResponseRead(JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    return-void
.end method

.method private onRequestFailed(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "[B)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p7

    .line 136
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/volley/toolbox/NetworkUtility;->shouldRetryException(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;

    move-result-object p3

    .line 139
    invoke-virtual {p0}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    new-instance p5, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;

    invoke-direct {p5, p0, p1, p3, p2}, Lcom/android/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;-><init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    .line 140
    invoke-interface {p4, p5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-interface {p2, p1}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onError(Lcom/android/volley/VolleyError;)V

    :goto_0
    return-void
.end method

.method private onRequestSucceeded(Lcom/android/volley/Request;JLcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;J",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-virtual/range {p4 .. p4}, Lcom/android/volley/toolbox/HttpResponse;->getStatusCode()I

    move-result v9

    .line 81
    invoke-virtual/range {p4 .. p4}, Lcom/android/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object v8

    const/16 v0, 0x130

    if-ne v9, v0, :cond_0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    move-object v5, p1

    .line 86
    invoke-static {p1, v0, v1, v8}, Lcom/android/volley/toolbox/NetworkUtility;->getNotModifiedNetworkResponse(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/NetworkResponse;

    move-result-object v0

    move-object/from16 v6, p5

    .line 85
    invoke-interface {v6, v0}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onSuccess(Lcom/android/volley/NetworkResponse;)V

    return-void

    :cond_0
    move-object v5, p1

    move-object/from16 v6, p5

    .line 91
    invoke-virtual/range {p4 .. p4}, Lcom/android/volley/toolbox/HttpResponse;->getContentBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual/range {p4 .. p4}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [B

    :cond_1
    move-object v10, v0

    if-eqz v10, :cond_2

    move-object v0, p0

    move-wide v1, p2

    move v3, v9

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p5

    move-object v7, v8

    move-object v8, v10

    .line 99
    invoke-direct/range {v0 .. v8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->onResponseRead(JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    return-void

    .line 113
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v11, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object/from16 v5, p5

    move-wide v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;-><init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Ljava/io/InputStream;Lcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;JLjava/util/List;I)V

    .line 115
    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onResponseRead(JILcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/android/volley/toolbox/HttpResponse;",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;[B)V"
        }
    .end annotation

    move v1, p3

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    move-object v4, p5

    move-object/from16 v7, p8

    .line 218
    invoke-static {v2, v3, p5, v7, p3}, Lcom/android/volley/toolbox/NetworkUtility;->logSlowRequests(JLcom/android/volley/Request;[BI)V

    const/16 v0, 0xc8

    if-lt v1, v0, :cond_1

    const/16 v0, 0x12b

    if-le v1, v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v8, Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    move-object v0, v8

    move v1, p3

    move-object/from16 v2, p8

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    move-object v2, p6

    .line 231
    invoke-interface {p6, v8}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onSuccess(Lcom/android/volley/NetworkResponse;)V

    return-void

    :cond_1
    :goto_0
    move-object v2, p6

    .line 221
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-wide v4, p1

    move-object v6, p4

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->onRequestFailed(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Lcom/android/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 179
    invoke-virtual {p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->getCacheHeaders(Lcom/android/volley/Cache$Entry;)Ljava/util/Map;

    move-result-object v0

    .line 180
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    new-instance v8, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;-><init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    invoke-virtual {v7, p1, v0, v8}, Lcom/android/volley/toolbox/AsyncHttpStack;->executeRequest(Lcom/android/volley/Request;Ljava/util/Map;Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "mBlockingExecuter must be set before making a request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/volley/AsyncNetwork;->setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 64
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/AsyncHttpStack;->setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/volley/AsyncNetwork;->setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 71
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/android/volley/toolbox/AsyncHttpStack;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/AsyncHttpStack;->setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
