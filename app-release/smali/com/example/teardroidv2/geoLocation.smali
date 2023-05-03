.class public Lcom/example/teardroidv2/geoLocation;
.super Ljava/lang/Object;
.source "geoLocation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016j\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017`\u0018H\u0017R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\t\"\u0004\u0008\u0013\u0010\u000bR\u000e\u0010\u0014\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/example/teardroidv2/geoLocation;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "context",
        "currentLocation",
        "Landroid/location/Location;",
        "getCurrentLocation",
        "()Landroid/location/Location;",
        "setCurrentLocation",
        "(Landroid/location/Location;)V",
        "gpsLocationListener",
        "Landroid/location/LocationListener;",
        "locationByGps",
        "getLocationByGps",
        "setLocationByGps",
        "locationByNetwork",
        "getLocationByNetwork",
        "setLocationByNetwork",
        "networkLocationListener",
        "getLocation",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field private final context:Landroid/content/Context;

.field private currentLocation:Landroid/location/Location;

.field private final gpsLocationListener:Landroid/location/LocationListener;

.field private locationByGps:Landroid/location/Location;

.field private locationByNetwork:Landroid/location/Location;

.field private final networkLocationListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->context:Landroid/content/Context;

    .line 17
    new-instance p1, Lcom/example/teardroidv2/geoLocation$gpsLocationListener$1;

    invoke-direct {p1, p0}, Lcom/example/teardroidv2/geoLocation$gpsLocationListener$1;-><init>(Lcom/example/teardroidv2/geoLocation;)V

    check-cast p1, Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->gpsLocationListener:Landroid/location/LocationListener;

    .line 26
    new-instance p1, Lcom/example/teardroidv2/geoLocation$networkLocationListener$1;

    invoke-direct {p1, p0}, Lcom/example/teardroidv2/geoLocation$networkLocationListener$1;-><init>(Lcom/example/teardroidv2/geoLocation;)V

    check-cast p1, Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->networkLocationListener:Landroid/location/LocationListener;

    return-void
.end method


# virtual methods
.method public final getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocation()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/example/teardroidv2/geoLocation;->context:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    check-cast v1, Landroid/location/LocationManager;

    const-string v8, "gps"

    .line 39
    invoke-virtual {v1, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const-string v9, "network"

    .line 40
    invoke-virtual {v1, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v2, :cond_0

    const-string v3, "gps"

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    .line 46
    iget-object v7, p0, Lcom/example/teardroidv2/geoLocation;->gpsLocationListener:Landroid/location/LocationListener;

    move-object v2, v1

    .line 42
    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    if-eqz v10, :cond_1

    const-string v3, "network"

    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    .line 54
    iget-object v7, p0, Lcom/example/teardroidv2/geoLocation;->networkLocationListener:Landroid/location/LocationListener;

    move-object v2, v1

    .line 50
    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 59
    :cond_1
    invoke-virtual {v1, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 61
    iput-object v2, p0, Lcom/example/teardroidv2/geoLocation;->locationByGps:Landroid/location/Location;

    .line 64
    :cond_2
    invoke-virtual {v1, v9}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 66
    iput-object v1, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/example/teardroidv2/geoLocation;->locationByGps:Landroid/location/Location;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    if-eqz v2, :cond_9

    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const-string v3, "longitude"

    const-string v4, "latitude"

    const/4 v5, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 70
    iget-object v1, p0, Lcom/example/teardroidv2/geoLocation;->locationByGps:Landroid/location/Location;

    iput-object v1, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    if-eqz v1, :cond_4

    .line 71
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v5

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 73
    :cond_5
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 76
    :cond_6
    iget-object v1, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    iput-object v1, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    if-eqz v1, :cond_7

    .line 77
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v1, v5

    .line 78
    :goto_1
    iget-object v2, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 79
    :cond_8
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_2
    return-object v0

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLocationByGps()Landroid/location/Location;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/example/teardroidv2/geoLocation;->locationByGps:Landroid/location/Location;

    return-object v0
.end method

.method public final getLocationByNetwork()Landroid/location/Location;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    return-object v0
.end method

.method public final setCurrentLocation(Landroid/location/Location;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->currentLocation:Landroid/location/Location;

    return-void
.end method

.method public final setLocationByGps(Landroid/location/Location;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->locationByGps:Landroid/location/Location;

    return-void
.end method

.method public final setLocationByNetwork(Landroid/location/Location;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/example/teardroidv2/geoLocation;->locationByNetwork:Landroid/location/Location;

    return-void
.end method
