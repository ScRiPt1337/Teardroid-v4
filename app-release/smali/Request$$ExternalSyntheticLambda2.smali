.class public final synthetic LRequest$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, LRequest$$ExternalSyntheticLambda2;->f$0:LRequest;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LRequest$$ExternalSyntheticLambda2;->f$0:LRequest;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, LRequest;->$r8$lambda$fGXbNbnm-MweBe7UHrr4UVrcwcg(LRequest;Ljava/lang/String;)V

    return-void
.end method
