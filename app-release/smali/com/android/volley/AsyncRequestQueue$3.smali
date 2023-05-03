.class Lcom/android/volley/AsyncRequestQueue$3;
.super Ljava/lang/Object;
.source "AsyncRequestQueue.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/AsyncRequestQueue;->getBlockingQueue()Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 514
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/android/volley/AsyncRequestQueue$3;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 1

    .line 519
    instance-of v0, p1, Lcom/android/volley/RequestTask;

    if-eqz v0, :cond_1

    .line 520
    instance-of v0, p2, Lcom/android/volley/RequestTask;

    if-eqz v0, :cond_0

    .line 521
    check-cast p1, Lcom/android/volley/RequestTask;

    check-cast p2, Lcom/android/volley/RequestTask;

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestTask;->compareTo(Lcom/android/volley/RequestTask;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 525
    :cond_1
    instance-of p1, p2, Lcom/android/volley/RequestTask;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
