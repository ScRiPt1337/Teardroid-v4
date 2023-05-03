.class Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CachePutTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$CachePutTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CachePutTask;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteComplete()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v1, v1, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->mRequest:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/AsyncRequestQueue$CachePutTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CachePutTask;

    iget-object v2, v2, Lcom/android/volley/AsyncRequestQueue$CachePutTask;->response:Lcom/android/volley/Response;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/volley/AsyncRequestQueue;->access$700(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/Response;Z)V

    return-void
.end method
