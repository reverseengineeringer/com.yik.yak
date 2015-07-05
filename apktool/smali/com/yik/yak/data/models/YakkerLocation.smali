.class public Lcom/yik/yak/data/models/YakkerLocation;
.super Landroid/location/Location;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, LGB;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, LGB;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 29
    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 33
    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "lastLatitude"

    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, LzQ;->b(Ljava/lang/String;D)V

    .line 38
    const-string v0, "lastLongitude"

    invoke-virtual {p0}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, LzQ;->b(Ljava/lang/String;D)V

    .line 39
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    const-string v0, "lastKnown"

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/models/YakkerLocation;->setProvider(Ljava/lang/String;)V

    .line 43
    const-string v0, "lastLatitude"

    invoke-static {v0, v2, v3}, LzQ;->a(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/data/models/YakkerLocation;->setLatitude(D)V

    .line 44
    const-string v0, "lastLongitude"

    invoke-static {v0, v2, v3}, LzQ;->a(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/data/models/YakkerLocation;->setLongitude(D)V

    .line 45
    return-void
.end method
