.class public Lcom/adjust/sdk/ActivityHandler;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static final ADJUST_PREFIX:Ljava/lang/String; = "adjust_"

.field private static SESSION_INTERVAL:J = 0x0L

.field private static SUBSESSION_INTERVAL:J = 0x0L

.field private static TIMER_INTERVAL:J = 0x0L

.field private static final TIME_TRAVEL:Ljava/lang/String; = "Time travel!"

.field private static timer:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private activityState:Lcom/adjust/sdk/ActivityState;

.field private androidId:Ljava/lang/String;

.field private appToken:Ljava/lang/String;

.field private clientSdk:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private defaultTracker:Ljava/lang/String;

.field private dropOfflineActivities:Z

.field private enabled:Z

.field private environment:Ljava/lang/String;

.field private eventBuffering:Z

.field private fbAttributionId:Ljava/lang/String;

.field private logger:Lcom/adjust/sdk/Logger;

.field private macSha1:Ljava/lang/String;

.field private macShortMd5:Ljava/lang/String;

.field private onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private pluginKeys:Ljava/util/Map;
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

.field private sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 79
    const-string v0, "Adjust"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->initActivityHandler(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 84
    const v1, 0x11bb6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 85
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Adjust"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 92
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->initActivityHandler(Landroid/content/Context;)V

    .line 94
    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 95
    iput-boolean p5, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    .line 96
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    invoke-interface {v0, p4}, Lcom/adjust/sdk/Logger;->setLogLevelString(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 99
    const v1, 0x11bb9

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 100
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->runDelegateMain(Lcom/adjust/sdk/ResponseData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->launchDeepLinkMain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adjust/sdk/ActivityHandler;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler;->initInternal(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->endInternal()V

    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PackageBuilder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEventInternal(Lcom/adjust/sdk/PackageBuilder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/PackageBuilder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackRevenueInternal(Lcom/adjust/sdk/PackageBuilder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adjust/sdk/ActivityHandler;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrlInternal(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->timerFired()V

    return-void
.end method

.method private canInit(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTrackEvent(Lcom/adjust/sdk/PackageBuilder;)Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->isValidForEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTrackRevenue(Lcom/adjust/sdk/PackageBuilder;)Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->isValidForRevenue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkActivityState(Lcom/adjust/sdk/ActivityState;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 749
    if-nez p1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Missing activity state."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkAppTokenLength(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 765
    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 766
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private checkAppTokenNotNull(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 757
    if-nez p1, :cond_0

    .line 758
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Missing App Token."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 736
    if-nez p1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Missing context"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 745
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissions(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 665
    const/4 v0, 0x1

    .line 667
    const-string v2, "android.permission.INTERNET"

    invoke-static {p1, v2}, Lcom/adjust/sdk/ActivityHandler;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Missing permission: INTERNET"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 671
    :cond_0
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v2}, Lcom/adjust/sdk/ActivityHandler;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "Missing permission: ACCESS_WIFI_STATE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/adjust/sdk/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 675
    :cond_1
    return v0
.end method

.method public static deleteActivityState(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 595
    const-string v0, "AdjustIoActivityState"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private endInternal()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->pauseSending()V

    .line 373
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 375
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private initActivityHandler(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-virtual {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setDaemon(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->start()V

    .line 108
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getTimerInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    .line 109
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    .line 110
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getSubsessionInterval()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    .line 111
    new-instance v0, Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/ActivityHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    .line 113
    const-string v0, "android3.6.1"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPluginKeys(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->pluginKeys:Ljava/util/Map;

    .line 115
    iput-boolean v2, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 117
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    .line 118
    return-void
.end method

.method private initInternal(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->processApplicationBundle()Ljava/lang/String;

    move-result-object p2

    .line 272
    :goto_0
    invoke-direct {p0, p2}, Lcom/adjust/sdk/ActivityHandler;->canInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :goto_1
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setEnvironment(Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->setEventBuffering(Z)V

    goto :goto_0

    .line 276
    :cond_1
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->androidId:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->fbAttributionId:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->userAgent:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getPlayAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 282
    if-nez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Unable to get Google Play Services Advertising ID at start time"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMacSha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->macSha1:Ljava/lang/String;

    .line 289
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMacShortMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macShortMd5:Ljava/lang/String;

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/AdjustFactory;->getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 294
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->readActivityState()V

    goto :goto_1
.end method

.method private injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setAppToken(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macShortMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setMacShortMd5(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->macSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setMacSha1(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setAndroidId(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->fbAttributionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setFbAttributionId(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setUserAgent(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setClientSdk(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setEnvironment(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setDefaultTracker(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->pluginKeys:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setPluginKeys(Ljava/util/Map;)V

    .line 619
    return-void
.end method

.method private injectReferrer(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 5

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 624
    const-string v1, "AdjustInstallReferrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/PackageBuilder;->setReferrer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Failed to inject referrer (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private launchDeepLinkMain(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    if-nez p1, :cond_0

    .line 506
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 490
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 491
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 499
    :goto_1
    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "Unable to open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v1}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 496
    goto :goto_1

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v4, "Open deep link (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-interface {v0, v4, v1}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private processApplicationBundle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    invoke-static {v0, v1}, Lcom/adjust/sdk/Util;->getApplicationBundle(Landroid/content/Context;Lcom/adjust/sdk/Logger;)Landroid/os/Bundle;

    move-result-object v1

    .line 680
    if-nez v1, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 691
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string v0, "AdjustAppToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    const-string v2, "AdjustEnvironment"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setEnvironment(Ljava/lang/String;)V

    .line 686
    const-string v2, "AdjustDefaultTracker"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setDefaultTracker(Ljava/lang/String;)V

    .line 687
    const-string v2, "AdjustEventBuffering"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/adjust/sdk/ActivityHandler;->setEventBuffering(Z)V

    .line 688
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "AdjustLogLevel"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/adjust/sdk/Logger;->setLogLevelString(Ljava/lang/String;)V

    .line 689
    const-string v2, "AdjustDropOfflineActivities"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/ActivityHandler;->setDropOfflineActivities(Z)V

    goto :goto_0
.end method

.method private readActivityState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    const-string v1, "AdjustIoActivityState"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 545
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 549
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityState;

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 550
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Read activity state: %s uuid:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v5, v5, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 572
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Failed to find activity state class"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 571
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    goto :goto_0

    .line 561
    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 565
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Activity state file not found"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 557
    :catch_3
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Failed to read activity states object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 566
    :catch_4
    move-exception v0

    .line 567
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Failed to open activity state file for reading (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 559
    :catch_5
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Failed to cast activity state object"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 561
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
.end method

.method private readOpenUrlInternal(Landroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 438
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 447
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 449
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 450
    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 451
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 452
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 450
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_3
    aget-object v6, v5, v1

    .line 455
    const-string v7, "adjust_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 457
    aget-object v5, v5, v8

    .line 458
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 460
    const-string v7, "adjust_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 461
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 463
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 466
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v0, v2}, Lcom/adjust/sdk/PackageBuilder;->setDeepLinkParameters(Ljava/util/Map;)V

    .line 472
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 473
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildReattributionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 474
    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v3, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 475
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 477
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "Reattribution %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private runDelegateMain(Lcom/adjust/sdk/ResponseData;)V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/OnFinishedListener;->onFinishedTracking(Lcom/adjust/sdk/ResponseData;)V

    goto :goto_0
.end method

.method private setDefaultTracker(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 722
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->defaultTracker:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    :cond_0
    return-void
.end method

.method private setDropOfflineActivities(Z)V
    .locals 3

    .prologue
    .line 729
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    .line 730
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->dropOfflineActivities:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Offline activities will get dropped"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    :cond_0
    return-void
.end method

.method private setEnvironment(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 695
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Missing environment"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 699
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    .line 712
    :goto_0
    return-void

    .line 700
    :cond_0
    const-string v0, "sandbox"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 703
    :cond_1
    const-string v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Malformed environment \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->Assert(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->setLogLevel(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 710
    const-string v0, "malformed"

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->environment:Ljava/lang/String;

    goto :goto_0
.end method

.method private setEventBuffering(Z)V
    .locals 3

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    .line 716
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Event buffering is enabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    :cond_0
    return-void
.end method

.method private startInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->appToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkAppTokenNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->resumeSending()V

    .line 315
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->startTimer()V

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-nez v2, :cond_3

    .line 321
    new-instance v2, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v2}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    .line 322
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput v9, v2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 323
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 325
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage()V

    .line 326
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 327
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 328
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 329
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "First session"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, v0, v2

    .line 335
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 336
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v3, "Time travel!"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 338
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0

    .line 343
    :cond_4
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 344
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 345
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v4, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 346
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 348
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->transferSessionPackage()V

    .line 349
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 350
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 351
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Session %d"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 356
    :cond_5
    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->SUBSESSION_INTERVAL:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 357
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 358
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v5, "Started subsession %d of session %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v7, v7, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_6
    iget-object v4, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v2, v6

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 363
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 364
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 7

    .prologue
    .line 632
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->stopTimer()V

    .line 635
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 636
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/ActivityHandler$2;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/ActivityHandler$2;-><init>(Lcom/adjust/sdk/ActivityHandler;)V

    const-wide/16 v2, 0x3e8

    sget-wide v4, Lcom/adjust/sdk/ActivityHandler;->TIMER_INTERVAL:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 642
    return-void
.end method

.method private stopTimer()V
    .locals 3

    .prologue
    .line 646
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/ActivityHandler;->timer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "No timer found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private timerFired()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 661
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    goto :goto_0
.end method

.method private trackEventInternal(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->canTrackEvent(Lcom/adjust/sdk/PackageBuilder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 389
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 392
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 393
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 394
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->buildEventPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 397
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Buffered event %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 404
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Event %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private trackRevenueInternal(Lcom/adjust/sdk/PackageBuilder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 408
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->canTrackRevenue(Lcom/adjust/sdk/PackageBuilder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 418
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 419
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 420
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->updateActivityState(J)V

    .line 422
    invoke-direct {p0, p1}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 423
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 424
    invoke-virtual {p1}, Lcom/adjust/sdk/PackageBuilder;->buildRevenuePackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 427
    iget-boolean v1, p0, Lcom/adjust/sdk/ActivityHandler;->eventBuffering:Z

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Buffered revenue %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/ActivityHandler;->writeActivityState()V

    .line 434
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Event %d (revenue)"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget v3, v3, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    goto :goto_1
.end method

.method private transferSessionPackage()V
    .locals 2

    .prologue
    .line 599
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 600
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectGeneralAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 601
    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->injectReferrer(Lcom/adjust/sdk/PackageBuilder;)V

    .line 602
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityState;->injectSessionAttributes(Lcom/adjust/sdk/PackageBuilder;)V

    .line 603
    invoke-virtual {v0}, Lcom/adjust/sdk/PackageBuilder;->buildSessionPackage()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/IPackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V

    .line 605
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendFirstPackage()V

    .line 606
    return-void
.end method

.method private updateActivityState(J)V
    .locals 7

    .prologue
    .line 521
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v0, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, p1, v0

    .line 526
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 527
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Time travel!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0

    .line 533
    :cond_2
    sget-wide v2, Lcom/adjust/sdk/ActivityHandler;->SESSION_INTERVAL:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 538
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 539
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0
.end method

.method private writeActivityState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    const-string v1, "AdjustIoActivityState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 577
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 578
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Wrote activity state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 592
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v1, "Failed to serialize activity state"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 586
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    .line 590
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->logger:Lcom/adjust/sdk/Logger;

    const-string v2, "Failed to open activity state for writing (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    new-instance v1, Lcom/adjust/sdk/ActivityHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adjust/sdk/ActivityHandler$1;-><init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ResponseData;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public readOpenUrl(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 203
    const v1, 0x11be8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 204
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adjust/sdk/ActivityHandler;->enabled:Z

    .line 184
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/ActivityHandler;->checkActivityState(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->activityState:Lcom/adjust/sdk/ActivityState;

    iput-object p1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionStart()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/adjust/sdk/ActivityHandler;->trackSubsessionEnd()V

    goto :goto_0
.end method

.method public setOnFinishedListener(Lcom/adjust/sdk/OnFinishedListener;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler;->onFinishedListener:Lcom/adjust/sdk/OnFinishedListener;

    .line 126
    return-void
.end method

.method public setSdkPrefix(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 121
    const-string v0, "%s@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->clientSdk:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/PackageBuilder;->setEventToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/PackageBuilder;->setCallbackParameters(Ljava/util/Map;)V

    .line 145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 146
    const v2, 0x11bd4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 147
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public trackRevenue(DLjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/adjust/sdk/PackageBuilder;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/PackageBuilder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/PackageBuilder;->setAmountInCents(D)V

    .line 154
    invoke-virtual {v0, p3}, Lcom/adjust/sdk/PackageBuilder;->setEventToken(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p4}, Lcom/adjust/sdk/PackageBuilder;->setCallbackParameters(Ljava/util/Map;)V

    .line 157
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 158
    const v2, 0x11bde

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 159
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public trackSubsessionEnd()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 136
    const v1, 0x11bca

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 137
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public trackSubsessionStart()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 130
    const v1, 0x11bc0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 131
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler;->sessionHandler:Lcom/adjust/sdk/ActivityHandler$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler$SessionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
