.class Lcom/parse/ParseTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseTestUtils"

.field private static final TEST_SERVER_LOCK:Ljava/lang/Object;

.field private static volatile awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

.field private static volatile awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

.field private static globalListener:Lcom/parse/ParseTestUtils$PushRoutedListener;

.field private static listener:Lcom/parse/ParseTestUtils$StateTransitionListener;

.field static final strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static synchronizer:Lcom/parse/Synchronizer;

.field private static testServer:Ljava/lang/String;

.field private static totalBroadcastReceiverInvocations:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    .line 321
    sput v1, Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I

    .line 593
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/parse/ParseTestUtils;->strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I

    return v0
.end method

.method static synthetic access$300()Lcom/parse/ParseTestUtils$PushRoutedListener;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/parse/ParseTestUtils;->globalListener:Lcom/parse/ParseTestUtils$PushRoutedListener;

    return-object v0
.end method

.method public static assertFinishes()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->assertFinishes()V

    .line 257
    return-void
.end method

.method public static awaitConnectionStarted()Z
    .locals 4

    .prologue
    .line 358
    sget-object v0, Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static awaitConnectionStopped()Z
    .locals 4

    .prologue
    .line 362
    sget-object v0, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    .line 366
    :cond_0
    sget-object v0, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public static clearApp()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "clear_app"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static clearCurrentInstallationFromMemory()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 300
    return-void
.end method

.method public static clearFiles()V
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 284
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 288
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->pause()V

    .line 290
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 292
    :cond_0
    return-void
.end method

.method public static commandCacheUnexpectedEvents()I
    .locals 1

    .prologue
    .line 584
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->unexpectedEvents()I

    move-result v0

    return v0
.end method

.method public static deleteCurrentInstallation()V
    .locals 1

    .prologue
    .line 304
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->delete()V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static disconnectCommandCache()V
    .locals 2

    .prologue
    .line 559
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 560
    return-void
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->finish()V

    .line 262
    return-void
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static getParseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 236
    const-string v0, "Parse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPushConnectionRetryDelays()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-static {}, Lcom/parse/ParseTestUtils;->getPushConnectionStateTransitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseTestUtils$StateTransition;

    .line 418
    iget-object v3, v0, Lcom/parse/ParseTestUtils$StateTransition;->fromState:Lcom/parse/PushConnection$State;

    instance-of v3, v3, Lcom/parse/PushConnection$WaitRetryState;

    if-eqz v3, :cond_0

    .line 419
    iget-object v0, v0, Lcom/parse/ParseTestUtils$StateTransition;->fromState:Lcom/parse/PushConnection$State;

    check-cast v0, Lcom/parse/PushConnection$WaitRetryState;

    .line 420
    invoke-virtual {v0}, Lcom/parse/PushConnection$WaitRetryState;->getDelay()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 424
    :cond_1
    return-object v1
.end method

.method public static getPushConnectionStateTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseTestUtils$StateTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    sget-object v0, Lcom/parse/ParseTestUtils;->listener:Lcom/parse/ParseTestUtils$StateTransitionListener;

    invoke-virtual {v0}, Lcom/parse/ParseTestUtils$StateTransitionListener;->getTransitions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPushRequestJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lcom/parse/PushRouter;->getPushRequestJSONAsync()LN;

    move-result-object v0

    .line 334
    :try_start_0
    invoke-virtual {v0}, LN;->g()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    invoke-virtual {v0}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSerializedPushStateJSON()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 343
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "pushState"

    invoke-static {v0, v1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getTestServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    sget-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 112
    sget-object v1, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "server.config"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_1
    sget-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "vbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "http://192.168.56.1:3000"

    sput-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 122
    :cond_2
    :try_start_4
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "full_x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    const-string v0, "http://10.0.2.2:3000"

    sput-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_4
    const-string v0, "http://localhost:3000"

    sput-object v0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getUserObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 219
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static initSynchronizer()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/parse/Synchronizer;

    invoke-direct {v0}, Lcom/parse/Synchronizer;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    .line 243
    return-void
.end method

.method public static keySet(Lcom/parse/ParseObject;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mockPushServer()Ljava/net/ServerSocket;
    .locals 5

    .prologue
    .line 515
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 524
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/parse/PushService;->useServer(Ljava/lang/String;I)V

    .line 525
    const-string v2, "com.parse.ParseTestUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running mockPushServer on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-object v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mockV8Client()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "mock_v8_client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static numKeyValueCacheFiles()I
    .locals 1

    .prologue
    .line 534
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static pushRoutes(Landroid/content/Context;)Ljava/util/Set;
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

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)LN;

    move-result-object v0

    .line 314
    :try_start_0
    invoke-virtual {v0}, LN;->g()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    invoke-virtual {v0}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reconnectCommandCache()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 564
    return-void
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 275
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 276
    invoke-static {v3}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static reloadPushRouter()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/PushRouter;->reloadFromDiskAsync(Z)LN;

    .line 296
    return-void
.end method

.method public static resetAwaitConnectionStarted()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

    .line 351
    return-void
.end method

.method public static resetAwaitConnectionStopped()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    .line 355
    return-void
.end method

.method public static resetCommandCache()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    .line 554
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->clear()V

    .line 555
    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->clear()V

    .line 556
    return-void
.end method

.method public static saveObjectToDisk(Lcom/parse/ParseObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public static saveStringToDisk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/parse/ParseTestUtils;->getParseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 226
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 227
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static setCommandInitialDelay(J)V
    .locals 0

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/parse/ParseCommand;->setDefaultInitialRetryDelay(J)V

    .line 266
    return-void
.end method

.method public static setMaxKeyValueCacheBytes(I)V
    .locals 0

    .prologue
    .line 548
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 549
    return-void
.end method

.method public static setMaxKeyValueCacheFiles(I)V
    .locals 0

    .prologue
    .line 541
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 542
    return-void
.end method

.method public static setPushHistoryLength(I)I
    .locals 1

    .prologue
    .line 588
    sget v0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    .line 589
    sput p0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    .line 590
    return v0
.end method

.method public static declared-synchronized setPushRoutedListener(Lcom/parse/ParseTestUtils$PushRoutedListener;)V
    .locals 2

    .prologue
    .line 454
    const-class v0, Lcom/parse/ParseTestUtils;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/parse/ParseTestUtils;->globalListener:Lcom/parse/ParseTestUtils$PushRoutedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit v0

    return-void

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setRetryDelayEnabled(Z)V
    .locals 0

    .prologue
    .line 507
    sput-boolean p0, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    .line 508
    return-void
.end method

.method public static setStrictModeEnabledForMainThread(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 595
    sget-object v2, Lcom/parse/ParseTestUtils;->strictModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 598
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    new-instance v2, Lcom/parse/ParseTestUtils$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseTestUtils$2;-><init>(ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 609
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 595
    goto :goto_0
.end method

.method public static setStrictModeEnabledForThisThread(Z)V
    .locals 6

    .prologue
    .line 618
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 619
    const-string v1, "android.os.StrictMode"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 621
    if-eqz p0, :cond_0

    .line 622
    const-string v2, "android.os.StrictMode$ThreadPolicy"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 623
    const-string v3, "android.os.StrictMode$ThreadPolicy$Builder"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 626
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 627
    const-string v4, "detectNetwork"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 628
    const-string v4, "penaltyDeath"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 630
    const-string v4, "build"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    const-string v3, "setThreadPolicy"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :goto_0
    return-void

    .line 633
    :cond_0
    const-string v0, "enableDefaults"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setTestServer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    sget-object v1, Lcom/parse/ParseTestUtils;->TEST_SERVER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    sput-object p0, Lcom/parse/ParseTestUtils;->testServer:Ljava/lang/String;

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setUpPushTest(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 461
    sget-object v0, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    invoke-static {v0}, Lcom/parse/ManifestInfo;->setPushType(Lcom/parse/PushType;)V

    .line 463
    sput-object v2, Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

    .line 464
    sput-object v2, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    .line 466
    new-instance v0, Lcom/parse/ParseTestUtils$StateTransitionListener;

    invoke-direct {v0}, Lcom/parse/ParseTestUtils$StateTransitionListener;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->listener:Lcom/parse/ParseTestUtils$StateTransitionListener;

    .line 467
    sget-object v0, Lcom/parse/ParseTestUtils;->listener:Lcom/parse/ParseTestUtils$StateTransitionListener;

    invoke-static {v0}, Lcom/parse/PushConnection;->setStateTransitionListener(Lcom/parse/PushConnection$StateTransitionListener;)V

    .line 472
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/parse/ParseNotificationManager;->setShouldShowNotifications(Z)V

    .line 475
    invoke-static {p0}, Lcom/parse/ParseTestUtils;->useTestServer(Landroid/content/Context;)Ljava/lang/String;

    .line 476
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 477
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/PushRouter;->reloadFromDiskAsync(Z)LN;

    .line 478
    invoke-static {}, Lcom/parse/ParseTestUtils;->initSynchronizer()V

    .line 480
    sput v1, Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I

    .line 481
    new-instance v0, Lcom/parse/ParseTestUtils$1;

    invoke-direct {v0}, Lcom/parse/ParseTestUtils$1;-><init>()V

    invoke-static {v0}, Lcom/parse/PushRouter;->setGlobalPushListener(Lcom/parse/PushRouter$PushListener;)V

    .line 500
    return-void
.end method

.method public static start(I)V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0, p0}, Lcom/parse/Synchronizer;->start(I)V

    .line 252
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 503
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method public static tearDownPushTest(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-static {v2}, Lcom/parse/PushConnection;->setStateTransitionListener(Lcom/parse/PushConnection$StateTransitionListener;)V

    .line 431
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/parse/PushConnection;->KEEP_ALIVE_INTERVAL:J

    .line 432
    sput-boolean v3, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    .line 434
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parse/ParseNotificationManager;->setShouldShowNotifications(Z)V

    .line 436
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearFiles()V

    .line 437
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 439
    invoke-static {v3}, Lcom/parse/PushRouter;->reloadFromDiskAsync(Z)LN;

    .line 440
    invoke-static {v2}, Lcom/parse/ParseTestUtils;->setPushRoutedListener(Lcom/parse/ParseTestUtils$PushRoutedListener;)V

    .line 442
    sput-object v2, Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;

    .line 443
    sput-object v2, Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;

    .line 444
    return-void
.end method

.method public static totalBroadcastReceiverInvocations()I
    .locals 1

    .prologue
    .line 323
    sget v0, Lcom/parse/ParseTestUtils;->totalBroadcastReceiverInvocations:I

    return v0
.end method

.method public static unmockV8Client()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "unmock_v8_client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static useBadServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useBadServerPort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useBadServerPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    const-string v0, "http://10.0.2.2:6000"

    .line 160
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static useDevPushServer()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "10.0.2.2"

    const/16 v1, 0x203d

    invoke-static {v0, v1}, Lcom/parse/PushService;->useServer(Ljava/lang/String;I)V

    .line 208
    return-void
.end method

.method public static useInvalidServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "http://invalid.server:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 100
    sput-object p0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 101
    return-object v0
.end method

.method public static useTestServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/parse/ParseTestUtils;->getTestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static waitForCommandCacheEnqueue()Z
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheFailure()Z
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheSuccess()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 572
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseEventuallyQueue;->getTestHelper()Lcom/parse/ParseEventuallyQueue$TestHelper;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/parse/ParseEventuallyQueue$TestHelper;->waitFor(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
