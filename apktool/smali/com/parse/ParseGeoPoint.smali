.class public Lcom/parse/ParseGeoPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static EARTH_MEAN_RADIUS_KM:D

.field static EARTH_MEAN_RADIUS_MILE:D


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide v0, 0x40b8e30000000000L    # 6371.0

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    .line 24
    const-wide v0, 0x40aeed999999999aL    # 3958.8

    sput-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 27
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 33
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 27
    iput-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseGeoPoint;->setLatitude(D)V

    .line 45
    invoke-virtual {p0, p3, p4}, Lcom/parse/ParseGeoPoint;->setLongitude(D)V

    .line 46
    return-void
.end method

.method public static getCurrentLocationInBackground(J)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LN",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 143
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 144
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 145
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 146
    invoke-static {p0, p1, v0}, Lcom/parse/LocationNotifier;->getCurrentLocationAsync(JLandroid/location/Criteria;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLocationInBackground(JLandroid/location/Criteria;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/location/Criteria;",
            ")",
            "LN",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p0, p1, p2}, Lcom/parse/LocationNotifier;->getCurrentLocationAsync(JLandroid/location/Criteria;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLocationInBackground(JLandroid/location/Criteria;Lcom/parse/LocationCallback;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p0, p1, p2}, Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(JLandroid/location/Criteria;)LN;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 190
    return-void
.end method

.method public static getCurrentLocationInBackground(JLcom/parse/LocationCallback;)V
    .locals 2

    .prologue
    .line 159
    invoke-static {p0, p1}, Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(J)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 160
    return-void
.end method


# virtual methods
.method public distanceInKilometersTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInMilesTo(Lcom/parse/ParseGeoPoint;)D
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v0

    sget-wide v2, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 96
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 97
    iget-wide v2, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    mul-double/2addr v2, v0

    .line 98
    iget-wide v4, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    mul-double/2addr v4, v0

    .line 99
    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    mul-double/2addr v6, v0

    .line 100
    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    mul-double/2addr v0, v8

    .line 101
    sub-double v8, v2, v6

    .line 102
    sub-double v0, v4, v0

    .line 103
    div-double v4, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 104
    div-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 107
    mul-double/2addr v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 110
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 3

    .prologue
    .line 55
    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Latitude must be within the range (-90.0, 90.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->latitude:D

    .line 59
    return-void
.end method

.method public setLongitude(D)V
    .locals 3

    .prologue
    .line 75
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Longitude must be within the range (-180.0, 180.0)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    iput-wide p1, p0, Lcom/parse/ParseGeoPoint;->longitude:D

    .line 79
    return-void
.end method
