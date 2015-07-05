.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field static applicationContext:Landroid/content/Context;

.field static applicationId:Ljava/lang/String;

.field static clientKey:Ljava/lang/String;

.field private static final dateFormat:Ljava/text/DateFormat;

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field static final lock:Ljava/lang/Object;

.field private static logLevel:I

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I

.field static maxParseFileSize:I

.field private static scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x6

    sput v0, Lcom/parse/Parse;->logLevel:I

    .line 59
    const/high16 v0, 0xa00000

    sput v0, Lcom/parse/Parse;->maxParseFileSize:I

    .line 63
    const/high16 v0, 0x200000

    sput v0, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 67
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    sput-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    .line 892
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 800
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    .line 802
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 803
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 805
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 806
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 807
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 809
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 811
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.parse.push.intent.RECEIVE"

    aput-object v3, v0, v1

    const-string v3, "com.parse.push.intent.DELETE"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "com.parse.push.intent.OPEN"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR",
            "<TT;>;",
            "Lcom/parse/ParseCallback",
            "<TT;>;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 911
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;Z)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR",
            "<TT;>;",
            "Lcom/parse/ParseCallback",
            "<TT;>;Z)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 955
    :goto_0
    return-object p0

    .line 924
    :cond_0
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 925
    new-instance v1, Lcom/parse/Parse$6;

    invoke-direct {v1, p2, v0, p1}, Lcom/parse/Parse$6;-><init>(ZLad;Lcom/parse/ParseCallback;)V

    invoke-virtual {p0, v1}, LR;->a(LQ;)LR;

    .line 955
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object p0

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 6

    .prologue
    .line 357
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 360
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "applicationId"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    .line 367
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 368
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 369
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 370
    sget-object v2, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 377
    :goto_0
    if-nez v0, :cond_0

    .line 379
    :try_start_2
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 384
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "applicationId"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 388
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 396
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0

    .line 376
    :catch_4
    move-exception v2

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 605
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 592
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 598
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_1
    return-void
.end method

.method static clearCacheDir()V
    .locals 3

    .prologue
    .line 445
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 447
    if-nez v1, :cond_1

    .line 453
    :cond_0
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 451
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 510
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 514
    :cond_0
    return-void
.end method

.method static compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 836
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 837
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 848
    :goto_0
    return v0

    .line 838
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 839
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 840
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 841
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 842
    cmp-long v2, v0, v4

    if-gez v2, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :cond_7
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 844
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 845
    :cond_9
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 846
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 847
    :cond_b
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_d

    .line 848
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 850
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static dateToString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static declared-synchronized deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1014
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 1015
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    monitor-exit v1

    return-void

    .line 1014
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 186
    invoke-static {p0}, Lcom/parse/OfflineStore;->enableOfflineStore(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method static encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 640
    :try_start_0
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_1

    .line 641
    check-cast p0, Lcom/parse/ParseObject;

    invoke-interface {p1, p0}, Lcom/parse/ParseObjectEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 740
    :cond_0
    :goto_0
    return-object p0

    .line 646
    :cond_1
    instance-of v0, p0, Lcom/parse/ParseQuery;

    if-eqz v0, :cond_2

    .line 647
    check-cast p0, Lcom/parse/ParseQuery;

    .line 648
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->toREST()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 651
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 652
    check-cast p0, Ljava/util/Date;

    invoke-static {p0}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 655
    :cond_3
    instance-of v0, p0, [B

    if-eqz v0, :cond_4

    .line 656
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 657
    const-string v1, "__type"

    const-string v2, "Bytes"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v1, "base64"

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object p0, v0

    .line 659
    goto :goto_0

    .line 662
    :cond_4
    instance-of v0, p0, Lcom/parse/ParseFile;

    if-eqz v0, :cond_5

    .line 663
    check-cast p0, Lcom/parse/ParseFile;

    invoke-virtual {p0}, Lcom/parse/ParseFile;->encode()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 666
    :cond_5
    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v0, :cond_6

    .line 667
    check-cast p0, Lcom/parse/ParseGeoPoint;

    .line 668
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 669
    const-string v1, "__type"

    const-string v2, "GeoPoint"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 671
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-object p0, v0

    .line 672
    goto :goto_0

    .line 675
    :cond_6
    instance-of v0, p0, Lcom/parse/ParseACL;

    if-eqz v0, :cond_7

    .line 676
    check-cast p0, Lcom/parse/ParseACL;

    .line 677
    invoke-virtual {p0, p1}, Lcom/parse/ParseACL;->toJSONObject(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 680
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 682
    check-cast p0, Ljava/util/Map;

    .line 683
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 684
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 685
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object p0, v2

    .line 687
    goto/16 :goto_0

    .line 690
    :cond_9
    :try_start_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    .line 691
    check-cast p0, Lorg/json/JSONObject;

    .line 692
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 693
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 694
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 695
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_a
    move-object p0, v1

    .line 698
    goto/16 :goto_0

    .line 701
    :cond_b
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 702
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 703
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 704
    invoke-static {v2, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_c
    move-object p0, v0

    .line 706
    goto/16 :goto_0

    .line 709
    :cond_d
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_f

    .line 710
    check-cast p0, Lorg/json/JSONArray;

    .line 711
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 712
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 713
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 712
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    move-object p0, v0

    .line 715
    goto/16 :goto_0

    .line 718
    :cond_f
    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-eqz v0, :cond_10

    .line 719
    check-cast p0, Lcom/parse/ParseRelation;

    .line 720
    invoke-virtual {p0, p1}, Lcom/parse/ParseRelation;->encodeToJSON(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    .line 723
    :cond_10
    instance-of v0, p0, Lcom/parse/ParseFieldOperation;

    if-eqz v0, :cond_11

    .line 724
    check-cast p0, Lcom/parse/ParseFieldOperation;

    invoke-interface {p0, p1}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 727
    :cond_11
    instance-of v0, p0, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v0, :cond_12

    .line 728
    check-cast p0, Lcom/parse/ParseQuery$RelationConstraint;

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$RelationConstraint;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object p0

    goto/16 :goto_0

    .line 731
    :cond_12
    if-nez p0, :cond_13

    .line 732
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 739
    :cond_13
    invoke-static {p0}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for ParseObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 770
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 771
    invoke-static {p0}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 773
    :try_start_0
    const-string v2, "__type"

    const-string v3, "Date"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v2, "iso"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    return-object v0

    .line 775
    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 215
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static declared-synchronized getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 963
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 964
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 965
    invoke-static {v0}, Lcom/parse/Parse;->getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 973
    const-class v2, Lcom/parse/Parse;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 986
    :goto_0
    monitor-exit v2

    return-object v0

    .line 979
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 981
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 982
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 986
    :catch_0
    move-exception v1

    goto :goto_0

    .line 984
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 4

    .prologue
    .line 570
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v2

    .line 572
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v0, v0, Lcom/parse/ParseCommandCache;

    if-nez v0, :cond_1

    :cond_0
    if-nez v2, :cond_2

    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v0, v0, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v0, :cond_2

    .line 575
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 576
    if-eqz v2, :cond_3

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue;

    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 583
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 584
    new-instance v0, Lcom/parse/ParseCommandCache;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    .line 587
    :cond_2
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v1

    return-object v0

    .line 576
    :cond_3
    new-instance v0, Lcom/parse/ParseCommandCache;

    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 3

    .prologue
    .line 430
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 432
    const/4 v1, 0x0

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 434
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static getKeyValueCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 405
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 407
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 408
    new-instance v2, Ljava/io/File;

    const-string v3, "ParseKeyValueCache"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    monitor-exit v1

    return-object v2

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not create Parse cache directory"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/parse/Parse$3;

    invoke-direct {v2, v0}, Lcom/parse/Parse$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 245
    sget v0, Lcom/parse/Parse;->logLevel:I

    return v0
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 317
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 319
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_0
    monitor-exit v1

    return-object v2

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getParseDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 310
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 312
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 329
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 331
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 336
    :cond_0
    monitor-exit v1

    return-object v2

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 897
    sget-object v1, Lcom/parse/Parse;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 901
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    sget-object v0, Lcom/parse/Parse;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 901
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 614
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {p0}, Lcom/parse/ParseRequest;->initialize(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    .line 119
    sput-object p1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 120
    sput-object p2, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 121
    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 125
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 126
    new-instance v0, Lcom/parse/Parse$1;

    const-string v1, "Parse.initialize Disk Check & Starting Command Cache"

    invoke-direct {v0, v1}, Lcom/parse/Parse$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/Parse$1;->start()V

    .line 135
    :cond_0
    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    .line 137
    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->updateAsync()V

    .line 149
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    .line 152
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->initialize()V

    .line 155
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/Parse$2;

    invoke-direct {v1}, Lcom/parse/Parse$2;-><init>()V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->a(LQ;Ljava/util/concurrent/Executor;)LR;

    .line 165
    return-void
.end method

.method static isContainerObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 795
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 631
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseRelation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 855
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 856
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 857
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 547
    invoke-static {p0, p1, p2}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 548
    if-nez v1, :cond_0

    .line 559
    :goto_0
    return-object v0

    .line 551
    :cond_0
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 554
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    const-string v2, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corrupted cache for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 558
    invoke-static {p0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    .line 785
    new-instance v0, Lcom/parse/Parse$5;

    invoke-direct {v0, p0}, Lcom/parse/Parse$5;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 520
    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-object v0

    .line 524
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 525
    const-wide/16 v4, 0x0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 526
    invoke-static {v1}, Lcom/parse/Parse;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_0

    .line 531
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 534
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v3, v1, [B

    .line 536
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 537
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 538
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    const-string v2, "com.parse.Parse"

    const-string v3, "error reading from cache"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 249
    sget v0, Lcom/parse/Parse;->logLevel:I

    if-lt p0, v0, :cond_0

    .line 250
    if-nez p3, :cond_1

    .line 251
    sget v0, Lcom/parse/Parse;->logLevel:I

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    sget v0, Lcom/parse/Parse;->logLevel:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method static recursiveDelete(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 342
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 345
    invoke-static {v4}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 349
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 618
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    return-void
.end method

.method static declared-synchronized saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 995
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 996
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 997
    invoke-static {v0, p2}, Lcom/parse/Parse;->saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    monitor-exit v1

    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 1005
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    :goto_0
    monitor-exit v1

    return-void

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1010
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 461
    :cond_0
    invoke-static {p0}, Lcom/parse/Parse;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 463
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 464
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 465
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 472
    array-length v2, v5

    .line 474
    array-length v6, v5

    move v3, v0

    move v1, v0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v4, v5, v3

    .line 475
    int-to-long v8, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v4, v8

    .line 474
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v4

    goto :goto_1

    .line 477
    :cond_1
    sget v3, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v2, v3, :cond_2

    sget v3, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-le v1, v3, :cond_3

    .line 483
    :cond_2
    new-instance v3, Lcom/parse/Parse$4;

    invoke-direct {v3}, Lcom/parse/Parse$4;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 495
    array-length v3, v5

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v5, v0

    .line 496
    add-int/lit8 v2, v2, -0x1

    .line 497
    int-to-long v6, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v1, v6

    .line 498
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 500
    sget v4, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v2, v4, :cond_4

    sget v4, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-gt v1, v4, :cond_4

    .line 505
    :cond_3
    return-void

    .line 495
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    .line 468
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static setContextIfNeeded(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 304
    sput-object p0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 306
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .prologue
    .line 236
    sput p0, Lcom/parse/Parse;->logLevel:I

    .line 237
    return-void
.end method

.method static stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .prologue
    .line 752
    sget-object v1, Lcom/parse/Parse;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 758
    :goto_0
    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 757
    const-string v2, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static subtractNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 818
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    .line 820
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 821
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 822
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 823
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 824
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 825
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 826
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 827
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 829
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static waitForTask(LR;)Ljava/lang/Object;
    .locals 2
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
    .line 872
    :try_start_0
    invoke-virtual {p0}, LR;->g()V

    .line 873
    invoke-virtual {p0}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    invoke-virtual {p0}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    .line 875
    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    .line 876
    check-cast v0, Lcom/parse/ParseException;

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 878
    :cond_0
    :try_start_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 879
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 881
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 882
    :cond_2
    invoke-virtual {p0}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 883
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 885
    :cond_3
    invoke-virtual {p0}, LR;->e()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
