.class public interface abstract Lcom/squareup/picasso/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# virtual methods
.method public abstract load(Lokhttp3/Request;)Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
