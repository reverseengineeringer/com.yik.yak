.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final CANNOT_USE_PUSH_V1_ERROR_MESSAGE:Ljava/lang/String; = "PushService.subscribe, PushService.unsubscribe, and PushService.setDefaultPushCallback methods cannot be used in conjunction with ParsePushBroadcastReceiver. See ParsePush.subscribe and ParsePush.unsubscribe."

.field private static final START_IF_REQUIRED_ACTION:Ljava/lang/String; = "com.parse.PushService.startIfRequired"

.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field private static final WAKE_LOCK_TIMEOUT_MS:I = 0x4e20

.field private static host:Ljava/lang/String;

.field private static lifecycleListener:Lcom/parse/PushService$LifecycleListener;

.field private static loggedStartError:Z

.field private static port:I


# instance fields
.field private connection:Lcom/parse/PushConnection;

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "push.parse.com"

    sput-object v0, Lcom/parse/PushService;->host:Ljava/lang/String;

    .line 116
    const/16 v0, 0x203d

    sput v0, Lcom/parse/PushService;->port:I

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/parse/PushService;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/parse/PushService;->onHandleGcmIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static checkManifestAndThrowExceptionIfNeeded()V
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PushService.subscribe, PushService.unsubscribe, and PushService.setDefaultPushCallback methods cannot be used in conjunction with ParsePushBroadcastReceiver. See ParsePush.subscribe and ParsePush.unsubscribe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    return-void
.end method

.method public static getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onGcmStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/PushService$7;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/PushService$7;-><init>(Lcom/parse/PushService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 519
    const/4 v0, 0x2

    return v0
.end method

.method private onHandleGcmIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 524
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->isRegistrationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->handleRegistrationIntent(Landroid/content/Intent;)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-static {p1}, Lcom/parse/PushRouter;->isGcmPushIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-static {p1}, Lcom/parse/PushRouter;->handleGcmPushIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 529
    :cond_2
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushService got unknown intent in GCM mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPpnsStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.parse.PushService.startIfRequired"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    :cond_0
    const-string v1, "com.parse.PushService"

    const-string v2, "Received request to start service if required"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v1, LP;

    invoke-direct {v1}, LP;-><init>()V

    .line 460
    invoke-static {}, Lcom/parse/PushRouter;->getForceEnabledStateAsync()LR;

    move-result-object v2

    new-instance v3, Lcom/parse/PushService$6;

    invoke-direct {v3, p0, v1}, Lcom/parse/PushService$6;-><init>(Lcom/parse/PushService;LP;)V

    invoke-virtual {v2, v3}, LR;->d(LQ;)LR;

    move-result-object v2

    new-instance v3, Lcom/parse/PushService$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/parse/PushService$5;-><init>(Lcom/parse/PushService;LP;Lcom/parse/PushConnection;)V

    invoke-virtual {v2, v3}, LR;->c(LQ;)LR;

    .line 503
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static runGcmIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 138
    const-class v0, Lcom/parse/PushService;

    const-wide/16 v2, 0x4e20

    invoke-static {p0, p1, v0, v2, v3}, Lcom/parse/ServiceUtils;->runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;J)Z

    .line 139
    return-void
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v0}, Lcom/parse/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 313
    return-void
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 337
    if-nez p2, :cond_0

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must subscribe to channel with a valid icon identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    if-nez p1, :cond_1

    .line 342
    invoke-static {v0}, Lcom/parse/PushService;->unsubscribeInternal(Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/parse/PushRouter;->subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$4;

    invoke-direct {v1}, Lcom/parse/PushService$4;-><init>()V

    invoke-virtual {v0, v1}, LR;->c(LQ;)LR;

    goto :goto_0
.end method

.method static setLifecycleListener(Lcom/parse/PushService$LifecycleListener;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    .line 128
    return-void
.end method

.method private static startPpnsServiceIfRequired(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v0, v1, :cond_1

    .line 149
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v1, v2, :cond_0

    .line 154
    const-string v1, "com.parse.PushService"

    const-string v2, "Detected a client that used to use GCM and is now using PPNS."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removePushType()V

    .line 157
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removeDeviceToken()V

    .line 158
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()LR;

    .line 161
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.parse.PushService.startIfRequired"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/parse/PushService;

    invoke-static {p0, v0, v1}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    .line 163
    :cond_1
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 168
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    sget-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    if-nez v0, :cond_0

    .line 177
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to use push, but this app is not configured for push due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getNonePushTypeLogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-static {p0}, Lcom/parse/PushService;->startPpnsServiceIfRequired(Landroid/content/Context;)V

    goto :goto_0

    .line 173
    :pswitch_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar;->register()V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static stopPpnsService(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 145
    :cond_0
    return-void
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, p2, v0}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 208
    return-void
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/PushService;->checkManifestAndThrowExceptionIfNeeded()V

    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t subscribe to null channel."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 246
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/parse/PushRouter;->subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/PushService$1;

    invoke-direct {v2}, Lcom/parse/PushService$1;-><init>()V

    invoke-virtual {v0, v2}, LR;->c(LQ;)LR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 270
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t unsubscribe from null channel."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 273
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/parse/PushService;->unsubscribeInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    monitor-exit v1

    return-void
.end method

.method private static unsubscribeInternal(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/parse/PushService;->checkManifestAndThrowExceptionIfNeeded()V

    .line 278
    invoke-static {p0}, Lcom/parse/PushRouter;->unsubscribeAsync(Ljava/lang/String;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$3;

    invoke-direct {v1}, Lcom/parse/PushService$3;-><init>()V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$2;

    invoke-direct {v1}, Lcom/parse/PushService$2;-><init>()V

    invoke-virtual {v0, v1}, LR;->c(LQ;)LR;

    .line 292
    return-void
.end method

.method static useServer(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 387
    sput-object p0, Lcom/parse/PushService;->host:Ljava/lang/String;

    .line 388
    sput p1, Lcom/parse/PushService;->port:I

    .line 389
    return-void
.end method

.method private wipeRoutingAndUpgradePushStateIfNeeded()V
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-static {}, Lcom/parse/PushRouter;->wipeRoutingAndUpgradePushStateAsync()LR;

    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 400
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 401
    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 419
    const-string v0, "com.parse.PushService"

    const-string v1, "PushService somehow started even though this device doesn\'t support push."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_1
    sget-object v0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    invoke-interface {v0, p0}, Lcom/parse/PushService$LifecycleListener;->onServiceCreated(Landroid/app/Service;)V

    goto :goto_0

    .line 413
    :pswitch_0
    new-instance v0, Lcom/parse/PushConnection;

    sget-object v1, Lcom/parse/PushService;->host:Ljava/lang/String;

    sget v2, Lcom/parse/PushService;->port:I

    invoke-direct {v0, p0, v1, v2}, Lcom/parse/PushConnection;-><init>(Landroid/app/Service;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    goto :goto_1

    .line 416
    :pswitch_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->stop()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 556
    :cond_1
    sget-object v0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    if-eqz v0, :cond_2

    .line 557
    sget-object v0, Lcom/parse/PushService;->lifecycleListener:Lcom/parse/PushService$LifecycleListener;

    invoke-interface {v0, p0}, Lcom/parse/PushService$LifecycleListener;->onServiceDestroyed(Landroid/app/Service;)V

    .line 560
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 561
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/parse/PushService;->wipeRoutingAndUpgradePushStateIfNeeded()V

    .line 431
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started push service even though no push service is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 439
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 433
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/PushService;->onPpnsStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/PushService;->onGcmStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
