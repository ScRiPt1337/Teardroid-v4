.class public abstract Lcom/android/volley/AsyncCache;
.super Ljava/lang/Object;
.source "AsyncCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;,
        Lcom/android/volley/AsyncCache$OnGetCompleteCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract get(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnGetCompleteCallback;)V
.end method

.method public abstract initialize(Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract invalidate(Ljava/lang/String;ZLcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method

.method public abstract remove(Ljava/lang/String;Lcom/android/volley/AsyncCache$OnWriteCompleteCallback;)V
.end method
