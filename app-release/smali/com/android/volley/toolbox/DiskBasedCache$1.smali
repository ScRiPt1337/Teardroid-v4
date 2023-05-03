.class Lcom/android/volley/toolbox/DiskBasedCache$1;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/DiskBasedCache;

.field final synthetic val$rootDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/DiskBasedCache;Ljava/io/File;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->this$0:Lcom/android/volley/toolbox/DiskBasedCache;

    iput-object p2, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->val$rootDirectory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/volley/toolbox/DiskBasedCache$1;->val$rootDirectory:Ljava/io/File;

    return-object v0
.end method
