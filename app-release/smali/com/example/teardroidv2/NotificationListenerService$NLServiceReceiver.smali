.class public final Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationListenerService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/teardroidv2/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NLServiceReceiver"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationListenerService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationListenerService.kt\ncom/example/teardroidv2/NotificationListenerService$NLServiceReceiver\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,79:1\n13536#2,2:80\n*S KotlinDebug\n*F\n+ 1 NotificationListenerService.kt\ncom/example/teardroidv2/NotificationListenerService$NLServiceReceiver\n*L\n65#1:80,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "(Lcom/example/teardroidv2/NotificationListenerService;)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/teardroidv2/NotificationListenerService;


# direct methods
.method public constructor <init>(Lcom/example/teardroidv2/NotificationListenerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "command"

    .line 58
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearall"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    invoke-virtual {p1}, Lcom/example/teardroidv2/NotificationListenerService;->cancelAllNotifications()V

    goto/16 :goto_1

    .line 60
    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {p2}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "====================="

    const-string v0, "notification_event"

    .line 62
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object p2, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    invoke-virtual {p2, p1}, Lcom/example/teardroidv2/NotificationListenerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    iget-object p1, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    invoke-virtual {p1}, Lcom/example/teardroidv2/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const-string p2, "this@NotificationListene\u2026rvice.activeNotifications"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    .line 80
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 66
    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v7}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p2, v6}, Lcom/example/teardroidv2/NotificationListenerService;->sendBroadcast(Landroid/content/Intent;)V

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_1
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {p2}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "===== Notification List ===="

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object p2, p0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;->this$0:Lcom/example/teardroidv2/NotificationListenerService;

    invoke-virtual {p2, p1}, Lcom/example/teardroidv2/NotificationListenerService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method
