.class Lcom/android/volley/toolbox/BasicAsyncNetwork$1;
.super Ljava/lang/Object;
.source "BasicAsyncNetwork.java"

# interfaces
.implements Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;->performRequest(Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

.field final synthetic val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

.field final synthetic val$request:Lcom/android/volley/Request;

.field final synthetic val$requestStartMs:J


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    iput-wide p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/android/volley/AuthFailureError;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    invoke-interface {v0, p1}, Lcom/android/volley/AsyncNetwork$OnRequestComplete;->onError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onError(Ljava/io/IOException;)V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$100(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/android/volley/toolbox/HttpResponse;[B)V

    return-void
.end method

.method public onSuccess(Lcom/android/volley/toolbox/HttpResponse;)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;

    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$request:Lcom/android/volley/Request;

    iget-wide v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$requestStartMs:J

    iget-object v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$1;->val$callback:Lcom/android/volley/AsyncNetwork$OnRequestComplete;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->access$000(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;JLcom/android/volley/toolbox/HttpResponse;Lcom/android/volley/AsyncNetwork$OnRequestComplete;)V

    return-void
.end method
