.class Lcom/parse/PushRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field public static final GCM_RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final LEGACY_ROUTE_LOCATION:Ljava/lang/String; = "persistentCallbacks"

.field static MAX_HISTORY_LENGTH:I = 0x0

.field private static final STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field private static final V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

.field public static final V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

.field private static instance:Lcom/parse/PushRouter;

.field private static lastTask:LN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static pushListener:Lcom/parse/PushRouter$PushListener;


# instance fields
.field private forceEnabled:Ljava/lang/Boolean;

.field private final history:Lcom/parse/PushHistory;

.field private final isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pushStateVersion:I

.field private final routes:Lcom/parse/PushRoutes;

.field private final stateLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

    .line 38
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 43
    const/16 v0, 0xa

    sput v0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/PushRoutes;Lcom/parse/PushHistory;)V
    .locals 2

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 621
    iput-object p1, p0, Lcom/parse/PushRouter;->stateLocation:Ljava/lang/String;

    .line 622
    iput-object p2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    .line 623
    iput-object p3, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 625
    sget-object v0, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 626
    return-void
.end method

.method static synthetic access$000()Lcom/parse/PushRouter;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/PushRouter;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/PushRouter;)Lcom/parse/PushRoutes;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    return-object v0
.end method

.method static synthetic access$300(Z)Lcom/parse/PushRouter;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/parse/PushRouter;->reloadInstance(Z)Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/PushRouter;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    return v0
.end method

.method static synthetic access$500(Lcom/parse/PushRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    const-string v1, "channels"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 369
    if-eqz v1, :cond_0

    .line 370
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 373
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method public static getForceEnabledStateAsync()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$4;

    invoke-direct {v2}, Lcom/parse/PushRouter$4;-><init>()V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 141
    monitor-exit v1

    .line 142
    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getInstance()Lcom/parse/PushRouter;
    .locals 5

    .prologue
    .line 429
    sget-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    if-nez v0, :cond_1

    .line 430
    const-string v0, "persistentCallbacks"

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/PushRouter;->migrateV1toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    if-nez v0, :cond_0

    .line 433
    const-string v0, "pushState"

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/PushRouter;->migrateV2toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 436
    :cond_0
    if-nez v0, :cond_2

    .line 437
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    .line 440
    :goto_0
    new-instance v0, Lcom/parse/PushRoutes;

    invoke-direct {v0, v1}, Lcom/parse/PushRoutes;-><init>(Lorg/json/JSONObject;)V

    .line 441
    new-instance v2, Lcom/parse/PushHistory;

    sget v3, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    invoke-direct {v2, v3, v1}, Lcom/parse/PushHistory;-><init>(ILorg/json/JSONObject;)V

    .line 443
    new-instance v3, Lcom/parse/PushRouter;

    const-string v4, "pushState"

    invoke-direct {v3, v4, v0, v2}, Lcom/parse/PushRouter;-><init>(Ljava/lang/String;Lcom/parse/PushRoutes;Lcom/parse/PushHistory;)V

    sput-object v3, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    .line 446
    if-eqz v1, :cond_1

    .line 447
    sget-object v2, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    const-string v0, "forceEnabled"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 448
    sget-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    const-string v2, "version"

    sget-object v3, Lcom/parse/PushRouter;->V1_LATEST_PUSH_STATE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 452
    :cond_1
    sget-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static declared-synchronized getLastTask()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushRouter;->lastTask:LN;

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->lastTask:LN;

    .line 340
    :cond_0
    sget-object v0, Lcom/parse/PushRouter;->lastTask:LN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPushRequestJSONAsync()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$7;

    invoke-direct {v2}, Lcom/parse/PushRouter$7;-><init>()V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 221
    monitor-exit v1

    .line 223
    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPushStateVersionAsync()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 321
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$12;

    invoke-direct {v2}, Lcom/parse/PushRouter$12;-><init>()V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 328
    monitor-exit v1

    .line 329
    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getRoute(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;
    .locals 1

    .prologue
    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/parse/PushRouter;->getRouteAsync(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushRoutes$Route;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRouteAsync(Ljava/lang/String;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Lcom/parse/PushRoutes$Route;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$5;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$5;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 164
    monitor-exit v1

    .line 165
    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSubscriptionsAsync(Z)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 190
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$6;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$6;-><init>(Z)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, LN;->j()LN;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 201
    monitor-exit v1

    .line 203
    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static handleGcmPushIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 238
    sget-object v1, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/parse/PushRouter$8;

    invoke-direct {v2, p0, v0}, Lcom/parse/PushRouter$8;-><init>(Landroid/content/Intent;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 246
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 247
    return-void
.end method

.method public static handlePpnsPushAsync(Lorg/json/JSONObject;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 257
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$9;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$9;-><init>(Lorg/json/JSONObject;)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 268
    monitor-exit v1

    .line 270
    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePushInternal(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 953
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 954
    if-nez v0, :cond_0

    .line 955
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 963
    :cond_0
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    .line 965
    const-string v1, "channel"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 967
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 968
    const-string v3, "com.parse.Data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v0, "com.parse.Channel"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 973
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.parse.push.intent.RECEIVE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 977
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    return-void
.end method

.method private handlePushLegacy(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 987
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 988
    if-nez v0, :cond_0

    .line 989
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 992
    :cond_0
    const-string v1, "channel"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 993
    const-string v1, "action"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 995
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 996
    const-string v1, "com.parse.Data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v1, "com.parse.Channel"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    if-eqz v8, :cond_1

    .line 1000
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1001
    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1002
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1007
    const-string v1, "alert"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    .line 1035
    :goto_0
    return-object v0

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v1, v7}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v1

    .line 1013
    if-nez v1, :cond_2

    if-eqz v7, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v1, v3}, Lcom/parse/PushRoutes;->get(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v1

    .line 1017
    :cond_2
    if-nez v1, :cond_4

    .line 1018
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received push that has no handler. Did you call PushService.setDefaultPushCallback or PushService.subscribe? Push payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    if-eqz v8, :cond_3

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->NO_ROUTE_FOUND:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    .line 1023
    :cond_4
    invoke-virtual {v1}, Lcom/parse/PushRoutes$Route;->getActivityClass()Ljava/lang/Class;

    move-result-object v4

    .line 1024
    invoke-virtual {v1}, Lcom/parse/PushRoutes$Route;->getIconId()I

    move-result v5

    .line 1025
    const-string v1, "title"

    invoke-static {}, Lcom/parse/ManifestInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1026
    const-string v1, "alert"

    const-string v3, "Notification received."

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    if-nez v5, :cond_5

    .line 1029
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result v5

    .line 1030
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Icon ID associated with channel "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "is invalid; defaulting to package icon"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_5
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 1034
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 1035
    if-eqz v8, :cond_6

    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION_AND_BROADCAST_INTENT:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->SHOW_NOTIFICATION:Lcom/parse/PushRouter$HandlePushResult;

    goto/16 :goto_0
.end method

.method public static isGcmPushIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 230
    if-eqz p0, :cond_0

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeUnhandledExceptionsFatal(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lcom/parse/PushRouter$13;

    invoke-direct {v0}, Lcom/parse/PushRouter$13;-><init>()V

    sget-object v1, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, LN;->a(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    return-object v0
.end method

.method private maybeRefreshInstallation(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 844
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/parse/PushRouter;->isRefreshingInstallation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->fetchInBackground()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/PushRouter$15;

    invoke-direct {v1, p0}, Lcom/parse/PushRouter$15;-><init>(Lcom/parse/PushRouter;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;

    .line 858
    :cond_0
    return-void
.end method

.method private static varargs merge([Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 673
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 675
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p0, v1

    .line 676
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 678
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 680
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 682
    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 675
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 686
    :cond_1
    return-object v2
.end method

.method static migrateV1toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 481
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    .line 482
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 483
    const/4 v1, 0x0

    .line 485
    if-eqz v3, :cond_2

    .line 486
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Migrating push state from V1 to V3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 489
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 490
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_0
    const-string v4, "channels"

    invoke-virtual {v2, v4, v0}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 496
    invoke-virtual {v2}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 499
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 500
    const-string v4, "version"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v4, "routes"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v3, "channels"

    invoke-static {v2}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 504
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    :cond_1
    :goto_2
    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const-string v2, "com.parse.ParsePushRouter"

    const-string v3, "Unexpected JSONException when serializing upgraded v1 push state: "

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method static migrateV2toV3(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 548
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v4

    .line 549
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 550
    const/4 v3, 0x0

    .line 552
    if-eqz v2, :cond_6

    .line 553
    const-string v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_7

    .line 554
    const-string v0, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Migrating push state from V2 to V3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "addChannels"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 560
    if-eqz v5, :cond_1

    .line 561
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 562
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 563
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const-string v0, "channels"

    invoke-virtual {v4, v0, v6}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 567
    invoke-virtual {v4}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 570
    :cond_1
    const-string v0, "removeChannels"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_3

    .line 572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 573
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 574
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 577
    :cond_2
    const-string v0, "channels"

    invoke-virtual {v4, v0, v5}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 578
    invoke-virtual {v4}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 581
    :cond_3
    const-string v0, "installation"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 582
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 583
    const-string v1, "installation"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v0, v5}, Lcom/parse/ParseInstallation;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 584
    invoke-virtual {v4}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 588
    :cond_4
    :try_start_0
    const-string v0, "version"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 589
    const-string v0, "addChannels"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 590
    const-string v0, "removeChannels"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 591
    const-string v0, "installation"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    const-string v0, "channels"

    invoke-static {v4}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 601
    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 602
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    move-object v3, v0

    .line 609
    :cond_6
    :goto_3
    return-object v3

    .line 597
    :catch_0
    move-exception v0

    .line 598
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Unexpected JSONException when serializing upgraded v2 push state: "

    invoke-static {v1, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_2

    .line 604
    :cond_7
    const-string v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_6

    move-object v3, v2

    .line 605
    goto :goto_3
.end method

.method static noteHandlePushResult(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V
    .locals 3

    .prologue
    .line 399
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-object v0, Lcom/parse/PushRouter;->pushListener:Lcom/parse/PushRouter$PushListener;

    .line 402
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v1

    new-instance v2, Lcom/parse/PushRouter$14;

    invoke-direct {v2, v0, p0, p1}, Lcom/parse/PushRouter$14;-><init>(Lcom/parse/PushRouter$PushListener;Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    sget-object v0, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v0}, LN;->a(LM;Ljava/util/concurrent/Executor;)LN;

    .line 417
    :cond_0
    return-void

    .line 402
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static reloadFromDiskAsync(Z)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 281
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$10;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$10;-><init>(Z)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 290
    monitor-exit v1

    .line 292
    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static reloadInstance(Z)Lcom/parse/PushRouter;
    .locals 2

    .prologue
    .line 456
    if-eqz p0, :cond_0

    .line 457
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "persistentCallbacks"

    invoke-static {v0, v1}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/Parse;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 461
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    .line 462
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v0

    return-object v0
.end method

.method private serverInstallationUpdatedAt(Lorg/json/JSONObject;)Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 829
    .line 830
    const-string v1, "installation_updated_at"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 832
    if-eqz v1, :cond_0

    .line 833
    invoke-static {v1}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 836
    :cond_0
    return-object v0
.end method

.method public static setForceEnabledAsync(Ljava/lang/Boolean;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$3;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$3;-><init>(Ljava/lang/Boolean;)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 124
    monitor-exit v1

    .line 125
    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static declared-synchronized setGlobalPushListener(Lcom/parse/PushRouter$PushListener;)V
    .locals 2

    .prologue
    .line 395
    const-class v0, Lcom/parse/PushRouter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/parse/PushRouter;->pushListener:Lcom/parse/PushRouter$PushListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit v0

    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/parse/PushRoutes;->isValidChannelName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel name: + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (must be empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "string or a letter followed by alphanumerics or hyphen)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t subscribe to channel with null activity class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    if-nez p2, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must subscribe to channel with a valid icon identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 74
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/PushRouter$1;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 83
    monitor-exit v1

    .line 85
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unsubscribeAsync(Ljava/lang/String;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$2;

    invoke-direct {v2, p0}, Lcom/parse/PushRouter$2;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 105
    monitor-exit v1

    .line 107
    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static wipeRoutingAndUpgradePushStateAsync()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-static {}, Lcom/parse/PushRouter;->getLastTask()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/PushRouter$11;

    invoke-direct {v2}, Lcom/parse/PushRouter$11;-><init>()V

    sget-object v3, Lcom/parse/PushRouter;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LN;->c(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lcom/parse/PushRouter;->makeUnhandledExceptionsFatal(LN;)LN;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->lastTask:LN;

    .line 311
    monitor-exit v1

    .line 312
    return-object v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method convertGcmIntentToJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 861
    .line 863
    if-eqz p1, :cond_0

    .line 864
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    if-eqz v1, :cond_1

    .line 871
    const-string v2, "com.parse.ParsePushRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignored special message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from GCM via intent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :cond_0
    :goto_0
    return-object v0

    .line 873
    :cond_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 874
    const-string v1, "channel"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 875
    const-string v1, "installation_updated_at"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 877
    const/4 v1, 0x0

    .line 880
    if-eqz v3, :cond_2

    .line 882
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_1
    if-nez v1, :cond_0

    .line 891
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 892
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 893
    const-string v2, "channel"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 894
    const-string v2, "installation_updated_at"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 898
    goto :goto_0

    .line 883
    :catch_0
    move-exception v1

    .line 884
    const-string v2, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring push because of JSON exception while processing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    const/4 v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 895
    :catch_1
    move-exception v1

    .line 896
    const-string v2, "com.parse.ParsePushRouter"

    const-string v3, "Ignoring push because of JSON exception while building payload"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1
.end method

.method public getPushRequestJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 710
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 711
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 714
    :try_start_0
    const-string v2, "installation_id"

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 715
    const-string v1, "oauth_key"

    invoke-static {}, Lcom/parse/ParseObject;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v1, "v"

    const-string v2, "a1.7.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    iget-object v1, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v1}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 719
    const-string v2, "last"

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    iget-object v1, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v1}, Lcom/parse/PushHistory;->getPushIds()Ljava/util/Set;

    move-result-object v1

    .line 722
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 723
    const-string v2, "last_seen"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    :cond_0
    const-string v1, "ack_keep_alive"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 728
    const-string v1, "ignore_after"

    iget-object v2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v2}, Lcom/parse/PushHistory;->getCutoffTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    :goto_1
    return-object v0

    .line 719
    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Unexpected JSONException serializing push handshake"

    invoke-static {v1, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSubscriptions(Z)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 812
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 813
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_0

    .line 816
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v1}, Lcom/parse/PushRoutes;->getChannels()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 821
    if-nez p1, :cond_1

    .line 822
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 825
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public handleGcmPush(Landroid/content/Intent;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter;->convertGcmIntentToJSONObject(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/parse/PushRouter;->handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVALID_DATA:Lcom/parse/PushRouter$HandlePushResult;

    goto :goto_0
.end method

.method public handlePpnsPush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 915
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->FAILED_HISTORY_TEST:Lcom/parse/PushRouter$HandlePushResult;

    .line 916
    const-string v1, "push_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    const-string v2, "time"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 919
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v3, v1, v2}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    invoke-virtual {p0, p1}, Lcom/parse/PushRouter;->handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 924
    :cond_0
    return-object v0
.end method

.method public handlePush(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;
    .locals 2

    .prologue
    .line 934
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->handlePushInternal(Lorg/json/JSONObject;)V

    .line 936
    sget-object v0, Lcom/parse/PushRouter$HandlePushResult;->INVOKED_PARSE_PUSH_BROADCAST_RECEIVER:Lcom/parse/PushRouter$HandlePushResult;

    .line 941
    :goto_0
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->serverInstallationUpdatedAt(Lorg/json/JSONObject;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/PushRouter;->maybeRefreshInstallation(Ljava/util/Date;)V

    .line 942
    invoke-static {p1, v0}, Lcom/parse/PushRouter;->noteHandlePushResult(Lorg/json/JSONObject;Lcom/parse/PushRouter$HandlePushResult;)V

    .line 944
    return-object v0

    .line 938
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/PushRouter;->handlePushLegacy(Lorg/json/JSONObject;)Lcom/parse/PushRouter$HandlePushResult;

    move-result-object v0

    goto :goto_0
.end method

.method public saveStateToDisk()Z
    .locals 4

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/PushRouter;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 694
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/parse/PushRouter;->stateLocation:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    const/4 v0, 0x1

    .line 700
    :goto_0
    return v0

    .line 696
    :catch_0
    move-exception v1

    .line 697
    const-string v2, "com.parse.ParsePushRouter"

    const-string v3, "Error serializing push state to json"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setForceEnabledState(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 769
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iput-object p1, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    .line 773
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    goto :goto_0
.end method

.method public setPushStateVersion(I)V
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    if-eq p1, v0, :cond_0

    .line 799
    iput p1, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    .line 800
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 802
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 743
    new-instance v1, Lcom/parse/PushRoutes$Route;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/parse/PushRoutes$Route;-><init>(Ljava/lang/String;I)V

    .line 744
    iget-object v2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v2, p1, v1}, Lcom/parse/PushRoutes;->put(Ljava/lang/String;Lcom/parse/PushRoutes$Route;)Lcom/parse/PushRoutes$Route;

    move-result-object v2

    .line 746
    invoke-virtual {v1, v2}, Lcom/parse/PushRoutes$Route;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 750
    :cond_0
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 751
    const-string v1, "channels"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 760
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 660
    sget-object v0, Lcom/parse/PushRouter;->V2_PUSH_STATE_VERSION:Ljava/lang/Integer;

    iget v1, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v0}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 667
    :goto_0
    const-string v1, "version"

    iget v2, p0, Lcom/parse/PushRouter;->pushStateVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 668
    const-string v1, "forceEnabled"

    iget-object v2, p0, Lcom/parse/PushRouter;->forceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    return-object v0

    .line 663
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v2}, Lcom/parse/PushRoutes;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v2}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/parse/PushRouter;->merge([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 665
    const-string v1, "channels"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/PushRouter;->getChannelsArrayFromInstallation(Lcom/parse/ParseInstallation;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 781
    iget-object v0, p0, Lcom/parse/PushRouter;->routes:Lcom/parse/PushRoutes;

    invoke-virtual {v0, p1}, Lcom/parse/PushRoutes;->remove(Ljava/lang/String;)Lcom/parse/PushRoutes$Route;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/parse/PushRouter;->saveStateToDisk()Z

    .line 786
    if-eqz p1, :cond_0

    .line 787
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 788
    const-string v1, "channels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 789
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()LN;

    .line 792
    :cond_0
    return-void
.end method
