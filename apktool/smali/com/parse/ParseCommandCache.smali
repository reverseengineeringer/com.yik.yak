.class Lcom/parse/ParseCommandCache;
.super Lcom/parse/ParseEventuallyQueue;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">.ad;>;"
        }
    .end annotation
.end field

.field private running:Z

.field private final runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D

.field private unprocessedCommandsExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 63
    const/4 v0, 0x5

    iput v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 64
    const-wide v0, 0x4082c00000000000L    # 600.0

    iput-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 66
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    .line 89
    invoke-virtual {p0, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 90
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 91
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 95
    const-string v0, "com.parse.ParseCommandCache"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 97
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 99
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ConnectivityNotifier;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 105
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;)V

    invoke-virtual {v0, v1, p1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)LR;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Z",
            "Lcom/parse/ParseObject;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x5

    .line 255
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 256
    invoke-static {}, LR;->a()Lad;

    move-result-object v3

    .line 261
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {p3}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 264
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 276
    array-length v1, v4

    iget v2, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v1, v2, :cond_3

    .line 277
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Unable to save command for later because it\'s too big."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 280
    :cond_1
    invoke-virtual {p0, v6}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 281
    invoke-static {v5}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v11, v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_2
    invoke-virtual {p0, v6}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 271
    invoke-static {v5}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_3
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 287
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 288
    if-eqz v6, :cond_8

    .line 289
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 291
    array-length v7, v6

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v7, :cond_4

    aget-object v8, v6, v1

    .line 292
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v2, v8

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_4
    array-length v1, v4

    add-int/2addr v1, v2

    .line 298
    iget v2, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v1, v2, :cond_8

    .line 299
    if-eqz p2, :cond_6

    .line 300
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_5

    .line 301
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Unable to save command for later because storage is full."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 303
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 353
    :try_start_2
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 305
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v11, v2, :cond_7

    .line 306
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v7, "Deleting old commands to make room in command cache."

    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    move v2, v1

    .line 309
    :goto_2
    iget v1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v2, v1, :cond_8

    array-length v1, v6

    if-ge v0, v1, :cond_8

    .line 310
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v0, v8

    sub-int v0, v2, v0

    .line 312
    invoke-direct {p0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v2, v0

    move v0, v1

    .line 313
    goto :goto_2

    .line 319
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x10

    new-array v1, v1, [C

    .line 322
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 328
    :goto_3
    sget v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x8

    if-ge v2, v6, :cond_9

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    new-array v2, v2, [C

    .line 331
    const/16 v6, 0x30

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedCommand_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, ""

    iget-object v2, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Lcom/parse/ParseCommand;->retainLocalIds()V

    .line 343
    invoke-static {v0, v4}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 345
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    :try_start_4
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 355
    :goto_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    invoke-virtual {v3}, Lad;->a()LR;

    move-result-object v0

    goto/16 :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 349
    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v11, v1, :cond_a

    .line 350
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to save command for later."

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 353
    :cond_a
    :try_start_6
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    move-object v1, v0

    goto/16 :goto_3
.end method

.method private static getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/io/File;

    const-string v2, "CommandCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    return-object v1
.end method

.method public static getPendingCount()I
    .locals 2

    .prologue
    .line 56
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 14

    .prologue
    const/4 v11, 0x4

    const/4 v0, 0x0

    const-wide v12, 0x408f400000000000L    # 1000.0

    const/4 v10, 0x6

    .line 433
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 434
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    .line 436
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    monitor-exit v3

    .line 583
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 442
    if-eqz v4, :cond_1

    array-length v1, v4

    if-nez v1, :cond_2

    .line 443
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 445
    :cond_2
    :try_start_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 446
    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_12

    aget-object v0, v4, v2

    .line 447
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :try_start_2
    invoke-static {v1}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 453
    new-instance v6, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    :goto_2
    :try_start_4
    new-instance v7, Lcom/parse/ParseCommand;

    invoke-direct {v7, v6}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    :try_start_5
    invoke-virtual {v7}, Lcom/parse/ParseCommand;->getLocalId()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-virtual {v7}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseCommandCache$4;

    invoke-direct {v8, p0, v0, v6}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lad;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, LR;->b(LQ;)LR;

    move-result-object v6

    .line 526
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(LR;)Ljava/lang/Object;

    .line 527
    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(LR;)Ljava/lang/Object;

    .line 532
    :cond_3
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V
    :try_end_5
    .catch Lcom/parse/ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 446
    :cond_4
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v0

    .line 456
    :try_start_6
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v10, v1, :cond_4

    .line 457
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "File disappeared from cache while being read."

    invoke-virtual {v1, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 460
    :catch_1
    move-exception v0

    .line 461
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v10, v6, :cond_5

    .line 462
    iget-object v6, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Unable to read contents of file in cache."

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    :cond_5
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 466
    :catch_2
    move-exception v0

    .line 467
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v10, v6, :cond_6

    .line 468
    iget-object v6, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Error parsing JSON found in cache."

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    :cond_6
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 476
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 481
    :catch_3
    move-exception v0

    .line 482
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v10, v6, :cond_8

    .line 483
    iget-object v6, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Unable to create ParseCommand from JSON."

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 485
    :cond_8
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 534
    :catch_4
    move-exception v0

    .line 535
    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v6

    const/16 v7, 0x64

    if-ne v6, v7, :cond_10

    .line 536
    if-lez p1, :cond_f

    .line 539
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_9

    .line 540
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network timeout in command cache. Waiting for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " seconds and then retrying "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " times."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 543
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 544
    iget-wide v6, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    mul-double/2addr v6, v12

    double-to-long v6, v6

    add-long/2addr v6, v0

    .line 545
    :cond_a
    :goto_4
    cmp-long v8, v0, v6

    if-gez v8, :cond_e

    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v8, :cond_d

    .line 549
    :cond_b
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_c

    .line 550
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Aborting wait because runEventually thread should stop."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 552
    :cond_c
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 555
    :cond_d
    :try_start_7
    sget-object v8, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v0, v6, v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 559
    :goto_5
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 560
    iget-wide v8, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    mul-double/2addr v8, v12

    double-to-long v8, v8

    sub-long v8, v6, v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    .line 562
    iget-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    mul-double/2addr v0, v12

    double-to-long v0, v0

    sub-long v0, v6, v0

    goto :goto_4

    .line 557
    :catch_5
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_5

    .line 565
    :cond_e
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    goto/16 :goto_3

    .line 567
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 569
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    goto/16 :goto_3

    .line 572
    :cond_10
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v10, v6, :cond_11

    .line 573
    iget-object v6, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Failed to run command."

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 577
    :cond_11
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 578
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    goto/16 :goto_3

    .line 582
    :cond_12
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 192
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :try_start_1
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, v2}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    .line 204
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->releaseLocalIds()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runLoop()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 594
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v7, v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "Parse command cache has started processing queued commands."

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 599
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_2

    .line 601
    monitor-exit v3

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 604
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 606
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 609
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 610
    :try_start_1
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 611
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 612
    :goto_2
    if-eqz v0, :cond_8

    .line 613
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 615
    :try_start_2
    iget v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 616
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_3

    .line 622
    :try_start_3
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    if-nez v0, :cond_3

    .line 623
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 634
    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_6

    move v0, v1

    .line 636
    :goto_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 606
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    move v0, v2

    .line 610
    goto :goto_1

    .line 611
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 626
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 629
    :catch_1
    move-exception v0

    .line 630
    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 631
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "saveEventually thread had an error."

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 634
    :cond_5
    :try_start_9
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 639
    :cond_8
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 641
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 643
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "saveEventually thread has stopped processing commands."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method private waitForTaskWithoutLock(LR;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 402
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    new-instance v2, LP;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v0}, LP;-><init>(Ljava/lang/Object;)V

    .line 404
    new-instance v0, Lcom/parse/ParseCommandCache$3;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;LP;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, v3}, LR;->a(LQ;Ljava/util/concurrent/Executor;)LR;

    .line 414
    :goto_0
    invoke-virtual {v2}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 416
    :try_start_1
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 421
    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 371
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 373
    if-nez v2, :cond_0

    .line 374
    monitor-exit v1

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 377
    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 380
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->enqueueEventuallyAsync(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)LR;

    move-result-object v0

    return-object v0
.end method

.method fakeObjectUpdate()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 232
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 233
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 173
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 178
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 185
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    return-void
.end method

.method public pendingCount()I
    .locals 1

    .prologue
    .line 364
    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/parse/ParseCommandCache$2;

    const-string v2, "ParseCommandCache.runLoop()"

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 164
    return-void

    .line 157
    :catch_0
    move-exception v0

    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 159
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 163
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setConnected(Z)V
    .locals 2

    .prologue
    .line 387
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 389
    if-eqz p1, :cond_0

    .line 390
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 393
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2

    .prologue
    .line 138
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2

    .prologue
    .line 124
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 3

    .prologue
    .line 131
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 219
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
