.class public final synthetic LRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:LRequest;


# direct methods
.method public synthetic constructor <init>(LRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRequest$$ExternalSyntheticLambda0;->f$0:LRequest;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LRequest$$ExternalSyntheticLambda0;->f$0:LRequest;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, LRequest;->$r8$lambda$o99s84Uzdg8JmXXb0kpub44FqY0(LRequest;Lorg/json/JSONObject;)V

    return-void
.end method
