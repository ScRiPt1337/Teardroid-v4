.class Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncNetwork$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$NetworkTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

.field final synthetic val$startTimeMs:J


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$NetworkTask;J)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iput-wide p2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->val$startTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 4

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->val$startTimeMs:J

    sub-long/2addr v0, v2

    .line 414
    invoke-virtual {p1, v0, v1}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 416
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v2, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v3, v3, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/android/volley/NetworkResponse;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    const-string v1, "network-http-complete"

    invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object p1, p1, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    const-string v0, "not-modified"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object p1, p1, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {p1}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$500(Lcom/android/volley/AsyncRequestQueue;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v2, v2, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v3, p0, Lcom/android/volley/AsyncRequestQueue$NetworkTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$NetworkTask;

    iget-object v3, v3, Lcom/android/volley/AsyncRequestQueue$NetworkTask;->mRequest:Lcom/android/volley/Request;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/volley/AsyncRequestQueue$NetworkParseTask;-><init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/NetworkResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
