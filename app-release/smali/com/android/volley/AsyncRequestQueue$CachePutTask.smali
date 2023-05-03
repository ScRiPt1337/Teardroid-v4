.class Lcom/android/volley/AsyncRequestQueue$CachePutTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePutTask"
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
.field response:Lcom/android/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 455
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 456
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/Response;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 461
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$100(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$100(Lcom/android/volley/AsyncRequestQueue;)Lcom/android/volley/AsyncCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->mRequest:Lcom/android/volley/Request;

    .line 463
    invoke-virtual {v1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    new-instance v3, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;

    invoke-direct {v3, p0}, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;-><init>(Lcom/android/volley/AsyncRequestQueue$CachePutTask;)V

    .line 462
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/AsyncCache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/AsyncRequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v1}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/Response;

    iget-object v2, v2, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v0, v1, v2}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 473
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/Response;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/volley/AsyncRequestQueue;->access$700(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    :goto_0
    return-void
.end method
