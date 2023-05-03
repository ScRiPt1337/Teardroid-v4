.class Lcom/android/volley/toolbox/Volley$1;
.super Ljava/lang/Object;
.source "Volley.java"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/Network;)Lcom/android/volley/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cacheDir:Ljava/io/File;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/volley/toolbox/Volley$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/Volley$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->cacheDir:Ljava/io/File;

    return-object v0
.end method
