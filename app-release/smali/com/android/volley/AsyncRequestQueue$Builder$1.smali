.class Lcom/android/volley/AsyncRequestQueue$Builder$1;
.super Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue$Builder;->getDefaultExecutorFactory()Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/AsyncRequestQueue$Builder;


# direct methods
.method constructor <init>(Lcom/android/volley/AsyncRequestQueue$Builder;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$Builder$1;->this$0:Lcom/android/volley/AsyncRequestQueue$Builder;

    invoke-direct {p0}, Lcom/android/volley/AsyncRequestQueue$ExecutorFactory;-><init>()V

    return-void
.end method

.method private getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .line 609
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 615
    invoke-direct {p0, p2}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    move v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method private getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 619
    new-instance v0, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1$1;-><init>(Lcom/android/volley/AsyncRequestQueue$Builder$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    const/4 v0, 0x4

    const-string v1, "BlockingExecutor"

    .line 593
    invoke-direct {p0, v0, v1, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    return-object p1
.end method

.method public createNonBlockingExecutor(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Non-BlockingExecutor"

    .line 585
    invoke-direct {p0, v0, v1, p1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getNewThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    return-object p1
.end method

.method public createNonBlockingScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 601
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "ScheduledExecutor"

    .line 602
    invoke-direct {p0, v1}, Lcom/android/volley/AsyncRequestQueue$Builder$1;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
