.class Lcom/android/volley/AsyncRequestQueue$CacheParseTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/android/volley/Cache$Entry;

.field startTimeMillis:J

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Cache$Entry;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Cache$Entry;",
            "J)V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 301
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 302
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    .line 303
    iput-wide p4, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 308
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    const-string v1, "cache-hit"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    new-instance v8, Lcom/android/volley/NetworkResponse;

    const/16 v2, 0xc8

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    iget-object v3, v1, Lcom/android/volley/Cache$Entry;->data:[B

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    iget-object v7, v1, Lcom/android/volley/Cache$Entry;->allResponseHeaders:Ljava/util/List;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 310
    invoke-virtual {v0, v8}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    const-string v2, "cache-hit-parsed"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->startTimeMillis:J

    invoke-virtual {v1, v2, v3}, Lcom/android/volley/Cache$Entry;->refreshNeeded(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/AsyncRequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    const-string v2, "cache-hit-refresh-needed"

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->entry:Lcom/android/volley/Cache$Entry;

    invoke-virtual {v1, v2}, Lcom/android/volley/Request;->setCacheEntry(Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Request;

    const/4 v1, 0x1

    .line 329
    iput-boolean v1, v0, Lcom/android/volley/Response;->intermediate:Z

    .line 331
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v1}, Lcom/android/volley/AsyncRequestQueue;->access$400(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/WaitingRequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1, v2}, Lcom/android/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/android/volley/Request;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/AsyncRequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;

    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CacheParseTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CacheParseTask;)V

    .line 335
    invoke-interface {v1, v2, v0, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/AsyncRequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CacheParseTask;->mRequest:Lcom/android/volley/Request;

    invoke-interface {v1, v2, v0}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V

    :goto_0
    return-void
.end method
