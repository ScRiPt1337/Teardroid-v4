.class Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;
.super Ljava/lang/Object;
.source "NetworkUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/NetworkUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryInfo"
.end annotation


# instance fields
.field private final errorToRetry:Lcom/android/volley/VolleyError;

.field private final logPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->logPrefix:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->errorToRetry:Lcom/android/volley/VolleyError;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lcom/android/volley/toolbox/NetworkUtility$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/android/volley/VolleyError;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->errorToRetry:Lcom/android/volley/VolleyError;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/volley/toolbox/NetworkUtility$RetryInfo;->logPrefix:Ljava/lang/String;

    return-object p0
.end method
