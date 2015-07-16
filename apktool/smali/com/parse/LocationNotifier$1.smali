.class final Lcom/parse/LocationNotifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic val$manager:Landroid/location/LocationManager;

.field final synthetic val$tcs:LZ;

.field final synthetic val$timeoutFuture:LL;


# direct methods
.method constructor <init>(LL;LZ;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:LL;

    iput-object p2, p0, Lcom/parse/LocationNotifier$1;->val$tcs:LZ;

    iput-object p3, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 42
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Lcom/parse/ParseGeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/parse/LocationNotifier$1;->val$tcs:LZ;

    invoke-virtual {v1, v0}, LZ;->a(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 48
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
