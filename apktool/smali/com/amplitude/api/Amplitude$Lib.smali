.class public Lcom/amplitude/api/Amplitude$Lib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private country:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceInfo:Lcom/amplitude/api/DeviceInfo;

.field private endSessionRunnable:Ljava/lang/Runnable;

.field httpThread:Lcom/amplitude/api/WorkerThread;

.field private initialized:Z

.field private language:Ljava/lang/String;

.field logThread:Lcom/amplitude/api/WorkerThread;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private newDeviceIdPerInstall:Z

.field private optOut:Z

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private sessionId:J

.field private sessionOpen:Z

.field private sessionTimeoutMillis:J

.field private updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private useAdvertisingIdForDeviceId:Z

.field private userId:Ljava/lang/String;

.field userProperties:Lorg/json/JSONObject;

.field private versionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/amplitude/api/Amplitude$Lib;->newDeviceIdPerInstall:Z

    .line 55
    iput-boolean v2, p0, Lcom/amplitude/api/Amplitude$Lib;->useAdvertisingIdForDeviceId:Z

    .line 56
    iput-boolean v2, p0, Lcom/amplitude/api/Amplitude$Lib;->initialized:Z

    .line 57
    iput-boolean v2, p0, Lcom/amplitude/api/Amplitude$Lib;->optOut:Z

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    .line 75
    iput-boolean v2, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z

    .line 76
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionTimeoutMillis:J

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    .line 83
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->httpThread:Lcom/amplitude/api/WorkerThread;

    .line 86
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 87
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->httpThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->initializeDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->carrier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 2

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->updateServer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amplitude/api/Amplitude$Lib;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->endSessionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/amplitude/api/Amplitude$Lib;)J
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getEndSessionId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/amplitude/api/Amplitude$Lib;)J
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getEndSessionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/amplitude/api/Amplitude$Lib;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/amplitude/api/Amplitude$Lib;J)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->startNewSessionIfNeeded(J)V

    return-void
.end method

.method static synthetic access$202(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->advertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->openSession()V

    return-void
.end method

.method static synthetic access$2200(Lcom/amplitude/api/Amplitude$Lib;J)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->setLastEventTime(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amplitude/api/Amplitude$Lib;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/amplitude/api/Amplitude$Lib;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->closeSession()V

    return-void
.end method

.method static synthetic access$2600(Lcom/amplitude/api/Amplitude$Lib;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->clearEndSession()V

    return-void
.end method

.method static synthetic access$2700(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amplitude/api/Amplitude$Lib;->makeEventUploadPostRequest(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/amplitude/api/Amplitude$Lib;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/amplitude/api/Amplitude$Lib;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->updateServer(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amplitude/api/Amplitude$Lib;)Lcom/amplitude/api/DeviceInfo;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->versionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->osName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->osVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->brand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->manufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->model:Ljava/lang/String;

    return-object p1
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 772
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 774
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 776
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 777
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 778
    mul-int/lit8 v4, v0, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 779
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 772
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private checkedLogEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v0, "logEvent()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v1, Lcom/amplitude/api/Amplitude$Lib$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/amplitude/api/Amplitude$Lib$2;-><init>(Lcom/amplitude/api/Amplitude$Lib;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    invoke-direct {p0, v1}, Lcom/amplitude/api/Amplitude$Lib;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private clearEndSession()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_TIME:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    return-void
.end method

.method private cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 291
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 293
    new-array v3, v2, [Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 295
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_1
    return-object v0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private closeSession()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z

    .line 382
    return-void
.end method

.method private declared-synchronized contextAndApiKeySet(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 753
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context cannot be null, set context with initialize() before calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :goto_0
    monitor-exit p0

    return v0

    .line 758
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->apiKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apiKey cannot be null or empty, set apiKey with initialize() before calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 764
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEndSessionId()J
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_ID:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getEndSessionTime()J
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_END_SESSION_TIME:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastEventTime()J
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_TIME:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSharedPreferencesName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amplitude/api/Constants;->SHARED_PREFERENCES_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 713
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 714
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v0, "9774d56d682e549c"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 716
    const-string v0, "unknown"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v0, "000000000000000"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    const-string v0, "Android"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    const-string v0, "DEFACE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 721
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 723
    sget-object v0, Lcom/amplitude/api/Constants;->PREFKEY_DEVICE_ID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 744
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->newDeviceIdPerInstall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->useAdvertisingIdForDeviceId:Z

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/amplitude/api/Constants;->PREFKEY_DEVICE_ID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 742
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->generateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/amplitude/api/Constants;->PREFKEY_DEVICE_ID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private initializeDeviceInfo()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/amplitude/api/DeviceInfo;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amplitude/api/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    .line 122
    new-instance v0, Lcom/amplitude/api/Amplitude$Lib$1;

    invoke-direct {v0, p0}, Lcom/amplitude/api/Amplitude$Lib$1;-><init>(Lcom/amplitude/api/Amplitude$Lib;)V

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method private logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 6

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->optOut:Z

    if-eqz v0, :cond_0

    .line 214
    const-wide/16 v0, -0x1

    .line 267
    :goto_0
    return-wide v0

    .line 216
    :cond_0
    if-eqz p6, :cond_1

    .line 217
    invoke-direct {p0, p4, p5}, Lcom/amplitude/api/Amplitude$Lib;->startNewSessionIfNeeded(J)V

    .line 219
    :cond_1
    invoke-direct {p0, p4, p5}, Lcom/amplitude/api/Amplitude$Lib;->setLastEventTime(J)V

    .line 221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 223
    :try_start_0
    const-string v0, "event_type"

    invoke-direct {p0, p1}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v0, "timestamp"

    invoke-virtual {v1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 226
    const-string v2, "user_id"

    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userId:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v0, "session_id"

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 230
    const-string v0, "version_name"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->versionName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v0, "os_name"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->osName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "os_version"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->osVersion:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "device_brand"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->brand:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v0, "device_manufacturer"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->manufacturer:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v0, "device_model"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->model:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v0, "carrier"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->carrier:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v0, "country"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->country:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v0, "language"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->language:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v0, "platform"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v2, "name"

    const-string v3, "amplitude-android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "version"

    const-string v3, "1.4.6"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "library"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    if-nez p3, :cond_2

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_3

    .line 249
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const-string v3, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 251
    const-string v3, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 252
    const-string v0, "location"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->advertisingId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 255
    const-string v0, "androidADID"

    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->advertisingId:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    :cond_4
    const-string v0, "api_properties"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v0, "event_properties"

    if-nez p2, :cond_5

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v2, "user_properties"

    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_3
    invoke-direct {p0, v1}, Lcom/amplitude/api/Amplitude$Lib;->saveEvent(Lorg/json/JSONObject;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 226
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userProperties:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_3
.end method

.method private makeEventUploadPostRequest(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 603
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 604
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    const-string v5, "2"

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    const-string v0, ""

    .line 611
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/amplitude/api/Amplitude$Lib;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 626
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "v"

    invoke-direct {v2, v7, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "client"

    iget-object v7, p0, Lcom/amplitude/api/Amplitude$Lib;->apiKey:Ljava/lang/String;

    invoke-direct {v2, v5, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "e"

    invoke-direct {v2, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "upload_time"

    invoke-direct {v2, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "checksum"

    invoke-direct {v2, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :try_start_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v4, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 642
    :goto_1
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 644
    :try_start_2
    invoke-interface {v4, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 645
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    const/4 v0, 0x1

    .line 648
    :try_start_3
    iget-object v2, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v3, Lcom/amplitude/api/Amplitude$Lib$10;

    invoke-direct {v3, p0, p3, p4}, Lcom/amplitude/api/Amplitude$Lib$10;-><init>(Lcom/amplitude/api/Amplitude$Lib;J)V

    invoke-virtual {v2, v3}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    :goto_2
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 698
    :cond_0
    :goto_3
    if-nez v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 702
    :cond_1
    return-void

    .line 614
    :catch_0
    move-exception v2

    .line 618
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 619
    :catch_1
    move-exception v2

    .line 623
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 634
    :catch_2
    move-exception v0

    .line 638
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    goto :goto_1

    .line 664
    :cond_2
    :try_start_4
    const-string v2, "invalid_api_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 665
    goto :goto_2

    .line 666
    :cond_3
    const-string v2, "bad_checksum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 667
    goto :goto_2

    .line 669
    :cond_4
    const-string v2, "request_db_write_failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 670
    goto :goto_2

    .line 673
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", will attempt to reupload later"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_2

    .line 693
    :catch_3
    move-exception v0

    move v0, v1

    :goto_4
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .line 693
    :catch_4
    move-exception v0

    move v0, v1

    :goto_5
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_3

    .line 682
    :catch_5
    move-exception v0

    move v2, v1

    .line 683
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 693
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v0, v2

    goto/16 :goto_3

    .line 684
    :catch_6
    move-exception v0

    move v2, v1

    .line 685
    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 693
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move v0, v2

    goto/16 :goto_3

    .line 688
    :catch_7
    move-exception v0

    move v0, v1

    :goto_8
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    .line 691
    :catch_8
    move-exception v0

    move v0, v1

    :goto_9
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_3

    .line 693
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 694
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_6
    throw v0

    .line 691
    :catch_9
    move-exception v2

    goto :goto_9

    .line 688
    :catch_a
    move-exception v2

    goto :goto_8

    .line 684
    :catch_b
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_7

    .line 682
    :catch_c
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_6

    .line 693
    :catch_d
    move-exception v2

    goto :goto_5

    :catch_e
    move-exception v2

    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_3
.end method

.method private openSession()V
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->clearEndSession()V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z

    .line 374
    return-void
.end method

.method private replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 749
    if-nez p1, :cond_0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private saveEvent(Lorg/json/JSONObject;)J
    .locals 8

    .prologue
    .line 271
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DatabaseHelper;->addEvent(Ljava/lang/String;)J

    move-result-wide v2

    .line 274
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 275
    const-wide/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Lcom/amplitude/api/DatabaseHelper;->getNthEventId(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    const-wide/16 v4, 0x1e

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->updateServer()V

    .line 283
    :goto_0
    return-wide v2

    .line 281
    :cond_1
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/amplitude/api/Amplitude$Lib;->updateServerLater(J)V

    goto :goto_0
.end method

.method private setLastEventTime(J)V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method private startNewSession(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 386
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->openSession()V

    .line 387
    iput-wide p1, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    .line 388
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_ID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 393
    :try_start_0
    const-string v0, "special"

    const-string v1, "session_start"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    const-string v1, "session_start"

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 397
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startNewSessionIfNeeded(J)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 400
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionOpen:Z

    if-nez v0, :cond_3

    .line 401
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getEndSessionTime()J

    move-result-wide v0

    .line 402
    sub-long v0, p1, v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_PREVIOUS_SESSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 410
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->startNewSession(J)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iput-wide v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->startNewSession(J)V

    goto :goto_0

    .line 421
    :cond_3
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getLastEventTime()J

    move-result-wide v0

    .line 422
    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionTimeoutMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 423
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->startNewSession(J)V

    goto :goto_0
.end method

.method private updateServer()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->updateServer(Z)V

    .line 573
    return-void
.end method

.method private updateServer(Z)V
    .locals 5

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->optOut:Z

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v1

    .line 583
    :try_start_0
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getEndSessionId()J

    move-result-wide v2

    .line 584
    if-eqz p1, :cond_2

    const/16 v0, 0x64

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/amplitude/api/DatabaseHelper;->getEvents(JI)Landroid/util/Pair;

    move-result-object v1

    .line 586
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 587
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 588
    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->httpThread:Lcom/amplitude/api/WorkerThread;

    new-instance v4, Lcom/amplitude/api/Amplitude$Lib$9;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/amplitude/api/Amplitude$Lib$9;-><init>(Lcom/amplitude/api/Amplitude$Lib;Lorg/json/JSONArray;J)V

    invoke-virtual {v1, v4}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 597
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 584
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private updateServerLater(J)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/Amplitude$Lib$4;

    invoke-direct {v1, p0}, Lcom/amplitude/api/Amplitude$Lib$4;-><init>(Lcom/amplitude/api/Amplitude$Lib;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public disableLocationListening()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DeviceInfo;->setLocationListening(Z)V

    .line 163
    return-void
.end method

.method public enableLocationListening()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DeviceInfo;->setLocationListening(Z)V

    .line 155
    return-void
.end method

.method public enableNewDeviceIdPerInstall(Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/amplitude/api/Amplitude$Lib;->newDeviceIdPerInstall:Z

    .line 143
    return-void
.end method

.method public endSession()V
    .locals 4

    .prologue
    .line 457
    const-string v0, "endSession()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 461
    new-instance v2, Lcom/amplitude/api/Amplitude$Lib$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/amplitude/api/Amplitude$Lib$6;-><init>(Lcom/amplitude/api/Amplitude$Lib;J)V

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 484
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->endSessionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    new-instance v0, Lcom/amplitude/api/Amplitude$Lib$7;

    invoke-direct {v0, p0}, Lcom/amplitude/api/Amplitude$Lib$7;-><init>(Lcom/amplitude/api/Amplitude$Lib;)V

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->endSessionRunnable:Ljava/lang/Runnable;

    .line 492
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->endSessionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/Amplitude$Lib;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->initialized:Z

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/amplitude/api/Amplitude$Lib;->apiKey:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->initializeDeviceInfo()V

    .line 107
    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    if-eqz p3, :cond_2

    .line 110
    iput-object p3, p0, Lcom/amplitude/api/Amplitude$Lib;->userId:Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/amplitude/api/Constants;->PREFKEY_USER_ID:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    :goto_1
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_OPT_OUT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->optOut:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_2
    :try_start_1
    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_USER_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amplitude/api/Amplitude$Lib;->userId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/Amplitude$Lib;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 179
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 187
    if-eqz p2, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lcom/amplitude/api/Amplitude$Lib;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 191
    :goto_0
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/api/Amplitude$Lib;->checkedLogEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 192
    return-void

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.method public logRevenue(D)V
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amplitude/api/Amplitude$Lib;->logRevenue(Ljava/lang/String;ID)V

    .line 500
    return-void
.end method

.method public logRevenue(Ljava/lang/String;ID)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 503
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/Amplitude$Lib;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 508
    const-string v0, "logRevenue()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 515
    :try_start_0
    const-string v0, "special"

    const-string v1, "revenue_amount"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v0, "productId"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v0, "quantity"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 518
    const-string v0, "price"

    invoke-virtual {v3, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 519
    const-string v0, "receipt"

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v0, "receiptSig"

    invoke-virtual {v3, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_1
    const-string v1, "revenue_amount"

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/api/Amplitude$Lib;->checkedLogEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setOptOut(Z)V
    .locals 3

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/amplitude/api/Amplitude$Lib;->optOut:Z

    .line 172
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_OPT_OUT:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public setSessionTimeoutMillis(J)V
    .locals 1

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/amplitude/api/Amplitude$Lib;->sessionTimeoutMillis:J

    .line 167
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 561
    const-string v0, "setUserId()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 565
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->userId:Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/amplitude/api/Amplitude$Lib;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/amplitude/api/Constants;->PREFKEY_USER_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setUserProperties(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/Amplitude$Lib;->setUserProperties(Lorg/json/JSONObject;Z)V

    .line 528
    return-void
.end method

.method public setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 531
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 532
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/Amplitude$Lib;->userProperties:Lorg/json/JSONObject;

    .line 558
    :cond_1
    :goto_0
    return-void

    .line 536
    :cond_2
    if-eqz p1, :cond_1

    .line 543
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->userProperties:Lorg/json/JSONObject;

    .line 544
    new-instance v1, Lcom/amplitude/api/Amplitude$Lib$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/amplitude/api/Amplitude$Lib$8;-><init>(Lcom/amplitude/api/Amplitude$Lib;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/amplitude/api/Amplitude$Lib;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startSession()V
    .locals 3

    .prologue
    .line 429
    const-string v0, "startSession()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 434
    new-instance v2, Lcom/amplitude/api/Amplitude$Lib$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/amplitude/api/Amplitude$Lib$5;-><init>(Lcom/amplitude/api/Amplitude$Lib;J)V

    invoke-direct {p0, v2}, Lcom/amplitude/api/Amplitude$Lib;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public uploadEvents()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "uploadEvents()"

    invoke-direct {p0, v0}, Lcom/amplitude/api/Amplitude$Lib;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/Amplitude$Lib;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/Amplitude$Lib$3;

    invoke-direct {v1, p0}, Lcom/amplitude/api/Amplitude$Lib$3;-><init>(Lcom/amplitude/api/Amplitude$Lib;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public useAdvertisingIdForDeviceId()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/Amplitude$Lib;->useAdvertisingIdForDeviceId:Z

    .line 147
    return-void
.end method
