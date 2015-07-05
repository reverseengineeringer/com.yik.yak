.class public Lcom/adjust/sdk/PackageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private amountInCents:D

.field private androidId:Ljava/lang/String;

.field private appToken:Ljava/lang/String;

.field private callbackParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private clientSdk:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private createdAt:J

.field private deepLinkParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTracker:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private eventCount:I

.field private eventToken:Ljava/lang/String;

.field private fbAttributionId:Ljava/lang/String;

.field private lastInterval:J

.field private macSha1:Ljava/lang/String;

.field private macShortMd5:Ljava/lang/String;

.field private pluginsKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private referrer:Ljava/lang/String;

.field private sessionCount:I

.field private sessionLength:J

.field private subsessionCount:I

.field private timeSpent:J

.field private userAgent:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 386
    if-nez p3, :cond_0

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 392
    :goto_1
    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private addDate(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 345
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-static {p3, p4}, Lcom/adjust/sdk/Util;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addDuration(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 354
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 359
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private addInt(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 336
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addMapBase64(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    if-nez p3, :cond_0

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 368
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 369
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    if-nez p3, :cond_0

    .line 383
    :goto_0
    return-void

    .line 379
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 380
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0, p1, p2, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkDeviceIds(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    const-string v0, "mac_sha1"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mac_md5"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps_adid"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    .line 289
    const-string v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    return-void
.end method

.method private fillPluginKeys(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->pluginsKeys:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->pluginsKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAmountString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 310
    iget-wide v0, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 311
    long-to-double v2, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultActivityPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {v0}, Lcom/adjust/sdk/ActivityPackage;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setUserAgent(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->clientSdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setClientSdk(Ljava/lang/String;)V

    .line 251
    return-object v0
.end method

.method private getDefaultParameters()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string v1, "created_at"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDate(Ljava/util/Map;Ljava/lang/String;J)V

    .line 259
    const-string v1, "app_token"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "mac_sha1"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->macSha1:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "mac_md5"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->macShortMd5:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "android_id"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->androidId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "android_uuid"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "fb_id"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->fbAttributionId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "environment"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->environment:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v2, "gps_adid"

    invoke-direct {p0, v0, v2, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/adjust/sdk/Util;->isPlayTrackingEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    .line 269
    const-string v2, "tracking_enabled"

    invoke-direct {p0, v0, v2, v1}, Lcom/adjust/sdk/PackageBuilder;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->fillPluginKeys(Ljava/util/Map;)V

    .line 271
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->checkDeviceIds(Ljava/util/Map;)V

    .line 274
    const-string v1, "session_count"

    iget v2, p0, Lcom/adjust/sdk/PackageBuilder;->sessionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 275
    const-string v1, "subsession_count"

    iget v2, p0, Lcom/adjust/sdk/PackageBuilder;->subsessionCount:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 276
    const-string v1, "session_length"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->sessionLength:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 277
    const-string v1, "time_spent"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->timeSpent:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 279
    return-object v0
.end method

.method private getEventSuffix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    const-string v0, " \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRevenueSuffix()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 320
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " (%.1f cent, \'%s\')"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " (%.1f cent)"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private injectEventParameters(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    const-string v0, "event_count"

    iget v1, p0, Lcom/adjust/sdk/PackageBuilder;->eventCount:I

    int-to-long v2, v1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addInt(Ljava/util/Map;Ljava/lang/String;J)V

    .line 305
    const-string v0, "event_token"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "params"

    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->callbackParameters:Ljava/util/Map;

    invoke-direct {p0, p1, v0, v1}, Lcom/adjust/sdk/PackageBuilder;->addMapBase64(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method private isEventTokenValid()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 239
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 240
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v2

    .line 241
    const-string v3, "Malformed Event Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public buildEventPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectEventParameters(Ljava/util/Map;)V

    .line 202
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 203
    const-string v2, "/event"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 204
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setActivityKind(Lcom/adjust/sdk/ActivityKind;)V

    .line 205
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getEventSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 208
    return-object v1
.end method

.method public buildReattributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    .line 227
    const-string v1, "deeplink_parameters"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->deepLinkParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 230
    const-string v2, "/reattribute"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 231
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->REATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setActivityKind(Lcom/adjust/sdk/ActivityKind;)V

    .line 232
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 235
    return-object v1
.end method

.method public buildRevenuePackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PackageBuilder;->injectEventParameters(Ljava/util/Map;)V

    .line 214
    const-string v1, "amount"

    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getAmountString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 217
    const-string v2, "/revenue"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->REVENUE:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setActivityKind(Lcom/adjust/sdk/ActivityKind;)V

    .line 219
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getRevenueSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 222
    return-object v1
.end method

.method public buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultParameters()Ljava/util/Map;

    move-result-object v0

    .line 185
    const-string v1, "last_interval"

    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->lastInterval:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/adjust/sdk/PackageBuilder;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 186
    const-string v1, "default_tracker"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->defaultTracker:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "referrer"

    iget-object v2, p0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/adjust/sdk/PackageBuilder;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->getDefaultActivityPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    .line 190
    const-string v2, "/startup"

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 191
    sget-object v2, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setActivityKind(Lcom/adjust/sdk/ActivityKind;)V

    .line 192
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    .line 195
    return-object v1
.end method

.method public getAmountInCents()D
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    return-wide v0
.end method

.method public getEventToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    return-object v0
.end method

.method public isValidForEvent()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 164
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v1

    .line 165
    const-string v2, "Missing Event Token"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->isEventTokenValid()Z

    move-result v0

    goto :goto_0
.end method

.method public isValidForRevenue()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    iget-wide v2, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 173
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v2

    .line 174
    const-string v3, "Invalid amount %f"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/adjust/sdk/PackageBuilder;->isEventTokenValid()Z

    move-result v0

    goto :goto_0
.end method

.method public setAmountInCents(D)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/adjust/sdk/PackageBuilder;->amountInCents:D

    .line 148
    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->androidId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->appToken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCallbackParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->callbackParameters:Ljava/util/Map;

    .line 152
    return-void
.end method

.method public setClientSdk(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->clientSdk:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/adjust/sdk/PackageBuilder;->createdAt:J

    .line 108
    return-void
.end method

.method public setDeepLinkParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->deepLinkParameters:Ljava/util/Map;

    .line 156
    return-void
.end method

.method public setDefaultTracker(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->defaultTracker:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->environment:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setEventCount(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder;->eventCount:I

    .line 132
    return-void
.end method

.method public setEventToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->eventToken:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setFbAttributionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->fbAttributionId:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLastInterval(J)V
    .locals 1

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/adjust/sdk/PackageBuilder;->lastInterval:J

    .line 120
    return-void
.end method

.method public setMacSha1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->macSha1:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setMacShortMd5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->macShortMd5:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPluginKeys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->pluginsKeys:Ljava/util/Map;

    .line 160
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->referrer:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSessionCount(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder;->sessionCount:I

    .line 100
    return-void
.end method

.method public setSessionLength(J)V
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/adjust/sdk/PackageBuilder;->sessionLength:J

    .line 112
    return-void
.end method

.method public setSubsessionCount(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, Lcom/adjust/sdk/PackageBuilder;->subsessionCount:I

    .line 104
    return-void
.end method

.method public setTimeSpent(J)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/adjust/sdk/PackageBuilder;->timeSpent:J

    .line 116
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->userAgent:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder;->uuid:Ljava/lang/String;

    .line 80
    return-void
.end method
