.class Lcom/android/volley/AsyncRequestQueue$1$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$1;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$1;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$1$1;->this$1:Lcom/android/volley/AsyncRequestQueue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteComplete()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$1$1;->this$1:Lcom/android/volley/AsyncRequestQueue$1;

    iget-object v0, v0, Lcom/android/volley/AsyncRequestQueue$1;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-static {v0}, Lcom/android/volley/AsyncRequestQueue;->access$000(Lcom/android/volley/AsyncRequestQueue;)V

    return-void
.end method
