.class Lcom/android/volley/AsyncRequestQueue$CacheTask$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnGetCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$CacheTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$CacheTask;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$CacheTask;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetComplete(Lcom/android/volley/Cache$Entry;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheTask;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$CacheTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$CacheTask$1;->this$1:Lcom/android/volley/AsyncRequestQueue$CacheTask;

    iget-object v1, v1, Lcom/android/volley/AsyncRequestQueue$CacheTask;->mRequest:Lcom/android/volley/Request;

    invoke-static {v0, p1, v1}, Lcom/android/volley/AsyncRequestQueue;->access$300(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Cache$Entry;Lcom/android/volley/Request;)V

    return-void
.end method
