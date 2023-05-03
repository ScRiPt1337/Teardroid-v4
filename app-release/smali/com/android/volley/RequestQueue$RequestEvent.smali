.class public interface abstract annotation Lcom/android/volley/RequestQueue$RequestEvent;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RequestEvent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final REQUEST_CACHE_LOOKUP_FINISHED:I = 0x2

.field public static final REQUEST_CACHE_LOOKUP_STARTED:I = 0x1

.field public static final REQUEST_FINISHED:I = 0x5

.field public static final REQUEST_NETWORK_DISPATCH_FINISHED:I = 0x4

.field public static final REQUEST_NETWORK_DISPATCH_STARTED:I = 0x3

.field public static final REQUEST_QUEUED:I
