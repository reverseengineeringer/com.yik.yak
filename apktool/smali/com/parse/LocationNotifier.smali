.class Lcom/parse/LocationNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fakeLocation:Landroid/location/Location; = null

.field public static final testProviderName:Ljava/lang/String; = "Test"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentLocationAsync(JLandroid/location/Criteria;)LR;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/location/Criteria;",
            ")",
            "LR",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 33
    invoke-static {}, LR;->a()Lad;

    move-result-object v6

    .line 34
    new-instance v1, LP;

    invoke-direct {v1}, LP;-><init>()V

    .line 35
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 37
    new-instance v5, Lcom/parse/LocationNotifier$1;

    invoke-direct {v5, v1, v6, v0}, Lcom/parse/LocationNotifier$1;-><init>(LP;Lad;Landroid/location/LocationManager;)V

    .line 63
    invoke-static {}, Lcom/parse/Parse;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/parse/LocationNotifier$2;

    invoke-direct {v3, v6, v0, v5}, Lcom/parse/LocationNotifier$2;-><init>(Lad;Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, p0, p1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, LP;->a(Ljava/lang/Object;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    invoke-interface {v5, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 80
    :cond_1
    invoke-virtual {v6}, Lad;->a()LR;

    move-result-object v0

    return-object v0
.end method

.method static setFakeLocation(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    .line 85
    return-void
.end method
