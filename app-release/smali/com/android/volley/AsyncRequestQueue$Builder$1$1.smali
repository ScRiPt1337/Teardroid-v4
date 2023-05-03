.class Lcom/android/volley/AsyncRequestQueue$Builder$1$1;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$Builder$1;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/volley/AsyncRequestQueue$Builder$1;

.field final synthetic val$threadNameSuffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$Builder$1;Ljava/lang/String;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;->this$1:Lcom/android/volley/AsyncRequestQueue$Builder$1;

    iput-object p2, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;->val$threadNameSuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 622
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Volley-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;->val$threadNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
