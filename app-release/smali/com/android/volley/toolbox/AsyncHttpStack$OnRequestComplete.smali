.class public interface abstract Lcom/android/volley/toolbox/AsyncHttpStack$OnRequestComplete;
.super Ljava/lang/Object;
.source "AsyncHttpStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/AsyncHttpStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRequestComplete"
.end annotation


# virtual methods
.method public abstract onAuthError(Lcom/android/volley/AuthFailureError;)V
.end method

.method public abstract onError(Ljava/io/IOException;)V
.end method

.method public abstract onSuccess(Lcom/android/volley/toolbox/HttpResponse;)V
.end method
