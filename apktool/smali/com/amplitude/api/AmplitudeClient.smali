.class public Lcom/amplitude/api/AmplitudeClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final END_SESSION_EVENT:Ljava/lang/String; = "session_end"

.field public static final REVENUE_EVENT:Ljava/lang/String; = "revenue_amount"

.field public static final START_SESSION_EVENT:Ljava/lang/String; = "session_start"

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.AmplitudeClient"

.field protected static instance:Lcom/amplitude/api/AmplitudeClient;


# instance fields
.field private advertisingId:Ljava/lang/String;

.field protected apiKey:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private country:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field private deviceInfo:Lcom/amplitude/api/DeviceInfo;

.field private endSessionRunnable:Ljava/lang/Runnable;

.field private eventMaxCount:I

.field private eventUploadMaxBatchSize:I

.field private eventUploadPeriodMillis:J

.field private eventUploadThreshold:I

.field httpThread:Lcom/amplitude/api/WorkerThread;

.field private initialized:Z

.field private language:Ljava/lang/String;

.field lastError:Ljava/lang/Throwable;

.field logThread:Lcom/amplitude/api/WorkerThread;

.field private manufacturer:Ljava/lang/String;

.field private minTimeBetweenSessionsMillis:J

.field private model:Ljava/lang/String;

.field private newDeviceIdPerInstall:Z

.field private offline:Z

.field private optOut:Z

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private sessionId:J

.field private sessionOpen:Z

.field private sessionTimeoutMillis:J

.field private updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

.field url:Ljava/lang/String;

.field private useAdvertisingIdForDeviceId:Z

.field protected userId:Ljava/lang/String;

.field userProperties:Lorg/json/JSONObject;

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/amplitude/api/AmplitudeClient;

    invoke-direct {v0}, Lcom/amplitude/api/AmplitudeClient;-><init>()V

    sput-object v0, Lcom/amplitude/api/AmplitudeClient;->instance:Lcom/amplitude/api/AmplitudeClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    .line 50
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    .line 51
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    .line 52
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    .line 53
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 71
    iput-boolean v2, p0, Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z

    .line 72
    const/16 v0, 0x1e

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    .line 74
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    .line 75
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    .line 76
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    .line 77
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    const-string v0, "https://api.amplitude.com/"

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "logThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    .line 88
    new-instance v0, Lcom/amplitude/api/WorkerThread;

    const-string v1, "httpThread"

    invoke-direct {v0, v1}, Lcom/amplitude/api/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    .line 91
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 92
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0}, Lcom/amplitude/api/WorkerThread;->start()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/amplitude/api/AmplitudeClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->advertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/amplitude/api/AmplitudeClient;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->endSessionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amplitude/api/AmplitudeClient;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/amplitude/api/AmplitudeClient;J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSessionIfNeeded(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->openSession()V

    return-void
.end method

.method static synthetic access$1600(Lcom/amplitude/api/AmplitudeClient;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->closeSession()V

    return-void
.end method

.method static synthetic access$1800(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/amplitude/api/AmplitudeClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amplitude/api/AmplitudeClient;)Lcom/amplitude/api/DeviceInfo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/amplitude/api/AmplitudeClient;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    return v0
.end method

.method static synthetic access$302(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->versionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->osName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->osVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->brand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->manufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->model:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->carrier:Ljava/lang/String;

    return-object p1
.end method

.method private cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 821
    if-nez p1, :cond_0

    move-object v0, v2

    .line 838
    :goto_0
    return-object v0

    .line 826
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 827
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 829
    :goto_1
    new-array v4, v0, [Ljava/lang/String;

    .line 830
    :goto_2
    if-ge v1, v0, :cond_2

    .line 831
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 827
    goto :goto_1

    .line 835
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-object v0, v2

    .line 838
    goto :goto_0
.end method

.method private closeSession()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z

    .line 383
    return-void
.end method

.method public static getInstance()Lcom/amplitude/api/AmplitudeClient;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/amplitude/api/AmplitudeClient;->instance:Lcom/amplitude/api/AmplitudeClient;

    return-object v0
.end method

.method private getLastEventTime()J
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    const-string v1, "com.amplitude.api.previousSessionTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private initializeDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 737
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 738
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 739
    const-string v0, "9774d56d682e549c"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    const-string v0, "unknown"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    const-string v0, "000000000000000"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v0, "Android"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    const-string v0, "DEFACE"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 747
    const-string v0, "com.amplitude.api.deviceId"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 768
    :goto_0
    return-object v0

    .line 752
    :cond_0
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 758
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.amplitude.api.deviceId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v1}, Lcom/amplitude/api/DeviceInfo;->generateUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.amplitude.api.deviceId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private initializeDeviceInfo()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/amplitude/api/DeviceInfo;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amplitude/api/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    .line 130
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$1;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$1;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-direct {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method private openSession()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->clearEndSession()V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z

    .line 375
    return-void
.end method

.method private runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 773
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    if-eq v0, v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    invoke-virtual {v0, p1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    .line 778
    :goto_0
    return-void

    .line 776
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private startNewSession(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 387
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->openSession()V

    .line 388
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    .line 389
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.previousSessionId"

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 394
    :try_start_0
    const-string v0, "special"

    const-string v1, "session_start"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    const-string v1, "session_start"

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 398
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startNewSessionIfNeeded(J)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x1

    .line 401
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionOpen:Z

    if-nez v0, :cond_3

    .line 402
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getEndSessionTime()J

    move-result-wide v0

    .line 403
    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    const-string v1, "com.amplitude.api.previousSessionId"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 411
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    goto :goto_0

    .line 419
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    goto :goto_0

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->getLastEventTime()J

    move-result-wide v0

    .line 423
    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 424
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->startNewSession(J)V

    goto :goto_0
.end method

.method private updateServerLater(J)V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->updateScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$8;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$8;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static upgradePrefs(Landroid/content/Context;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 857
    invoke-static {p0, v0, v0}, Lcom/amplitude/api/AmplitudeClient;->upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 862
    if-nez p1, :cond_0

    .line 864
    :try_start_0
    const-string p1, "com.amplitude.api"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :try_start_1
    const-class v1, Lcom/amplitude/api/Constants;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 870
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 871
    :try_start_2
    const-string p2, "com.amplitude.api"

    .line 875
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 932
    :cond_2
    :goto_1
    return v0

    .line 880
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 885
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 892
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 895
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".previousSessionTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 896
    const-string v5, "com.amplitude.api.previousSessionTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".previousSessionTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 899
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".previousEndSessionTime"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 900
    const-string v5, "com.amplitude.api.previousEndSessionTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".previousEndSessionTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 903
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".previousEndSessionId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 904
    const-string v5, "com.amplitude.api.previousEndSessionId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".previousEndSessionId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 907
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".previousSessionId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 908
    const-string v5, "com.amplitude.api.previousSessionId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".previousSessionId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 911
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".deviceId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 912
    const-string v5, "com.amplitude.api.deviceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".deviceId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 915
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".userId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 916
    const-string v5, "com.amplitude.api.userId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".userId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 919
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".optOut"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 920
    const-string v5, "com.amplitude.api.optOut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".optOut"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 925
    :cond_a
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 926
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgraded shared preferences from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 929
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 932
    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 804
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 806
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [C

    .line 808
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 809
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 810
    mul-int/lit8 v4, v0, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v1, v5

    aput-char v5, v2, v4

    .line 811
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v2, v4

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 804
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

.method clearEndSession()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.previousEndSessionTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.previousEndSessionId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method protected declared-synchronized contextAndApiKeySet(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 785
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 786
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

    .line 796
    :goto_0
    monitor-exit p0

    return v0

    .line 790
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
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

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 796
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableLocationListening()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DeviceInfo;->setLocationListening(Z)V

    .line 171
    return-void
.end method

.method public enableLocationListening()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize before acting on location listening."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DeviceInfo;->setLocationListening(Z)V

    .line 163
    return-void
.end method

.method public enableNewDeviceIdPerInstall(Z)V
    .locals 0

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->newDeviceIdPerInstall:Z

    .line 151
    return-void
.end method

.method public endSession()V
    .locals 6

    .prologue
    .line 458
    const-string v0, "endSession()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 462
    new-instance v2, Lcom/amplitude/api/AmplitudeClient$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/amplitude/api/AmplitudeClient$4;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-direct {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 486
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->endSessionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    new-instance v0, Lcom/amplitude/api/AmplitudeClient$5;

    invoke-direct {v0, p0}, Lcom/amplitude/api/AmplitudeClient$5;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->endSessionRunnable:Ljava/lang/Runnable;

    .line 494
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->endSessionRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/amplitude/api/WorkerThread;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method getEndSessionId()J
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 369
    const-string v1, "com.amplitude.api.previousEndSessionId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getEndSessionTime()J
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    const-string v1, "com.amplitude.api.previousEndSessionTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSharedPreferencesName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.amplitude.api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/amplitude/api/AmplitudeClient;->upgradePrefs(Landroid/content/Context;)Z

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->initialized:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;->initializeDeviceInfo()V

    .line 115
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    if-eqz p3, :cond_2

    .line 118
    iput-object p3, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.amplitude.api.userId"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    :goto_1
    const-string v1, "com.amplitude.api.optOut"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_2
    :try_start_1
    const-string v1, "com.amplitude.api.userId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J
    .locals 6

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logged event to Amplitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    if-eqz v0, :cond_0

    .line 268
    const-wide/16 v0, -0x1

    .line 321
    :goto_0
    return-wide v0

    .line 270
    :cond_0
    if-eqz p6, :cond_1

    .line 271
    invoke-direct {p0, p4, p5}, Lcom/amplitude/api/AmplitudeClient;->startNewSessionIfNeeded(J)V

    .line 273
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/amplitude/api/AmplitudeClient;->setLastEventTime(J)V

    .line 275
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 277
    :try_start_0
    const-string v0, "event_type"

    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v0, "timestamp"

    invoke-virtual {v1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 280
    const-string v2, "user_id"

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v0, "device_id"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v0, "session_id"

    iget-wide v2, p0, Lcom/amplitude/api/AmplitudeClient;->sessionId:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    const-string v0, "version_name"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v0, "os_name"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->osName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v0, "os_version"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v0, "device_brand"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->brand:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v0, "device_manufacturer"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v0, "device_model"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->model:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v0, "carrier"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->carrier:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v0, "country"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->country:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v0, "language"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->language:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v0, "platform"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 296
    const-string v2, "name"

    const-string v3, "amplitude-android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v2, "version"

    const-string v3, "1.7.0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v2, "library"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    if-nez p3, :cond_2

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->deviceInfo:Lcom/amplitude/api/DeviceInfo;

    invoke-virtual {v0}, Lcom/amplitude/api/DeviceInfo;->getMostRecentLocation()Landroid/location/Location;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_3

    .line 303
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 304
    const-string v3, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 305
    const-string v3, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 306
    const-string v0, "location"

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->advertisingId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 309
    const-string v0, "androidADID"

    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->advertisingId:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    :cond_4
    const-string v0, "api_properties"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v0, "event_properties"

    if-nez p2, :cond_5

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string v2, "user_properties"

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_3
    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->saveEvent(Lorg/json/JSONObject;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 280
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userProperties:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_3
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 216
    return-void
.end method

.method public logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    .line 222
    :cond_0
    return-void
.end method

.method protected logEventAsync(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V
    .locals 10

    .prologue
    .line 250
    if-eqz p2, :cond_0

    .line 251
    invoke-direct {p0, p2}, Lcom/amplitude/api/AmplitudeClient;->cloneJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 255
    :goto_0
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$2;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/amplitude/api/AmplitudeClient$2;-><init>(Lcom/amplitude/api/AmplitudeClient;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)V

    invoke-direct {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    .line 261
    return-void

    :cond_0
    move-object v4, p2

    goto :goto_0
.end method

.method public logEventSync(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/amplitude/api/AmplitudeClient;->validateLogEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    .line 228
    :cond_0
    return-void
.end method

.method public logRevenue(D)V
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;ID)V

    .line 502
    return-void
.end method

.method public logRevenue(Ljava/lang/String;ID)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 505
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/amplitude/api/AmplitudeClient;->logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public logRevenue(Ljava/lang/String;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 510
    const-string v0, "logRevenue()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 515
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 517
    :try_start_0
    const-string v0, "special"

    const-string v1, "revenue_amount"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v0, "productId"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v0, "quantity"

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string v0, "price"

    invoke-virtual {v3, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 521
    const-string v0, "receipt"

    invoke-virtual {v3, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v0, "receiptSig"

    invoke-virtual {v3, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_1
    const-string v1, "revenue_amount"

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/amplitude/api/AmplitudeClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;JZ)J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected makeEventUploadPostRequest(Lxy;Ljava/lang/String;J)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 633
    const-string v3, "2"

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 636
    const-string v0, ""

    .line 638
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 653
    :goto_0
    new-instance v2, Lxq;

    invoke-direct {v2}, Lxq;-><init>()V

    const-string v5, "v"

    invoke-virtual {v2, v5, v3}, Lxq;->a(Ljava/lang/String;Ljava/lang/String;)Lxq;

    move-result-object v2

    const-string v3, "client"

    iget-object v5, p0, Lcom/amplitude/api/AmplitudeClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lxq;->a(Ljava/lang/String;Ljava/lang/String;)Lxq;

    move-result-object v2

    const-string v3, "e"

    invoke-virtual {v2, v3, p2}, Lxq;->a(Ljava/lang/String;Ljava/lang/String;)Lxq;

    move-result-object v2

    const-string v3, "upload_time"

    invoke-virtual {v2, v3, v4}, Lxq;->a(Ljava/lang/String;Ljava/lang/String;)Lxq;

    move-result-object v2

    const-string v3, "checksum"

    invoke-virtual {v2, v3, v0}, Lxq;->a(Ljava/lang/String;Ljava/lang/String;)Lxq;

    move-result-object v0

    invoke-virtual {v0}, Lxq;->a()LxG;

    move-result-object v0

    .line 661
    new-instance v2, LxF;

    invoke-direct {v2}, LxF;-><init>()V

    iget-object v3, p0, Lcom/amplitude/api/AmplitudeClient;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v2

    invoke-virtual {v2, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 669
    :try_start_1
    invoke-virtual {p1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    invoke-virtual {v0}, LwY;->a()LxJ;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, LxJ;->h()LxM;

    move-result-object v0

    invoke-virtual {v0}, LxM;->f()Ljava/lang/String;

    move-result-object v0

    .line 671
    const-string v2, "success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    const/4 v0, 0x1

    .line 673
    :try_start_2
    iget-object v2, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v3, Lcom/amplitude/api/AmplitudeClient$10;

    invoke-direct {v3, p0, p3, p4}, Lcom/amplitude/api/AmplitudeClient$10;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-virtual {v2, v3}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :goto_1
    move v2, v0

    .line 722
    :goto_2
    if-nez v2, :cond_0

    .line 723
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 726
    :cond_0
    return-void

    .line 641
    :catch_0
    move-exception v2

    .line 645
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 646
    :catch_1
    move-exception v2

    .line 650
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 689
    :cond_1
    :try_start_3
    const-string v2, "invalid_api_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 690
    goto :goto_1

    .line 691
    :cond_2
    const-string v2, "bad_checksum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 692
    goto :goto_1

    .line 694
    :cond_3
    const-string v2, "request_db_write_failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 695
    goto :goto_1

    .line 698
    :cond_4
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
    :try_end_3
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move v0, v1

    goto :goto_1

    .line 701
    :catch_2
    move-exception v0

    move v2, v1

    .line 704
    :goto_3
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_2

    .line 705
    :catch_3
    move-exception v0

    move v2, v1

    .line 708
    :goto_4
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_2

    .line 709
    :catch_4
    move-exception v0

    move v2, v1

    .line 710
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 711
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_2

    .line 712
    :catch_5
    move-exception v0

    move v2, v1

    .line 714
    :goto_6
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_2

    .line 716
    :catch_6
    move-exception v0

    move v2, v1

    .line 718
    :goto_7
    iput-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->lastError:Ljava/lang/Throwable;

    goto :goto_2

    .line 716
    :catch_7
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_7

    .line 712
    :catch_8
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_6

    .line 709
    :catch_9
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_5

    .line 705
    :catch_a
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_4

    .line 701
    :catch_b
    move-exception v2

    move-object v7, v2

    move v2, v0

    move-object v0, v7

    goto :goto_3
.end method

.method protected replaceWithJSONNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 781
    if-nez p1, :cond_0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected saveEvent(Lorg/json/JSONObject;)J
    .locals 8

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amplitude/api/DatabaseHelper;->addEvent(Ljava/lang/String;)J

    move-result-wide v2

    .line 328
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v4

    iget v1, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 329
    const-wide/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Lcom/amplitude/api/DatabaseHelper;->getNthEventId(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amplitude/api/DatabaseHelper;->removeEvents(J)V

    .line 332
    :cond_0
    invoke-virtual {v0}, Lcom/amplitude/api/DatabaseHelper;->getEventCount()J

    move-result-wide v0

    iget v4, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->updateServer()V

    .line 338
    :goto_0
    return-wide v2

    .line 335
    :cond_1
    iget-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    invoke-direct {p0, v0, v1}, Lcom/amplitude/api/AmplitudeClient;->updateServerLater(J)V

    goto :goto_0
.end method

.method public setEventMaxCount(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventMaxCount:I

    .line 183
    return-void
.end method

.method public setEventUploadMaxBatchSize(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    .line 179
    return-void
.end method

.method public setEventUploadPeriodMillis(I)V
    .locals 2

    .prologue
    .line 186
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadPeriodMillis:J

    .line 187
    return-void
.end method

.method public setEventUploadThreshold(I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadThreshold:I

    .line 175
    return-void
.end method

.method setLastEventTime(J)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.previousSessionTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    return-void
.end method

.method public setMinTimeBetweenSessionsMillis(I)V
    .locals 2

    .prologue
    .line 190
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/amplitude/api/AmplitudeClient;->minTimeBetweenSessionsMillis:J

    .line 191
    return-void
.end method

.method public setOffline(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    .line 209
    if-nez p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->uploadEvents()V

    .line 212
    :cond_0
    return-void
.end method

.method public setOptOut(Z)V
    .locals 3

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    .line 200
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.optOut"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method public setSessionTimeoutMillis(J)V
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/amplitude/api/AmplitudeClient;->sessionTimeoutMillis:J

    .line 195
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 564
    const-string v0, "setUserId()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->userId:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getSharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.amplitude.api.userId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setUserProperties(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient;->setUserProperties(Lorg/json/JSONObject;Z)V

    .line 531
    return-void
.end method

.method public setUserProperties(Lorg/json/JSONObject;Z)V
    .locals 2

    .prologue
    .line 534
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 535
    :cond_0
    iput-object p1, p0, Lcom/amplitude/api/AmplitudeClient;->userProperties:Lorg/json/JSONObject;

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->userProperties:Lorg/json/JSONObject;

    .line 547
    new-instance v1, Lcom/amplitude/api/AmplitudeClient$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/amplitude/api/AmplitudeClient$6;-><init>(Lcom/amplitude/api/AmplitudeClient;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startSession()V
    .locals 3

    .prologue
    .line 430
    const-string v0, "startSession()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 435
    new-instance v2, Lcom/amplitude/api/AmplitudeClient$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/amplitude/api/AmplitudeClient$3;-><init>(Lcom/amplitude/api/AmplitudeClient;J)V

    invoke-direct {p0, v2}, Lcom/amplitude/api/AmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected updateServer()V
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->updateServer(Z)V

    .line 603
    return-void
.end method

.method protected updateServer(Z)V
    .locals 5

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->optOut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->offline:Z

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amplitude/api/DatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/amplitude/api/DatabaseHelper;

    move-result-object v1

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/api/AmplitudeClient;->getEndSessionId()J

    move-result-wide v2

    .line 615
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/amplitude/api/AmplitudeClient;->eventUploadMaxBatchSize:I

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/amplitude/api/DatabaseHelper;->getEvents(JI)Landroid/util/Pair;

    move-result-object v1

    .line 617
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 618
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 619
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->httpThread:Lcom/amplitude/api/WorkerThread;

    new-instance v4, Lcom/amplitude/api/AmplitudeClient$9;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/amplitude/api/AmplitudeClient$9;-><init>(Lcom/amplitude/api/AmplitudeClient;Lorg/json/JSONArray;J)V

    invoke-virtual {v1, v4}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    iget-object v1, p0, Lcom/amplitude/api/AmplitudeClient;->uploadingCurrently:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_0

    .line 615
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public uploadEvents()V
    .locals 2

    .prologue
    .line 575
    const-string v0, "uploadEvents()"

    invoke-virtual {p0, v0}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/AmplitudeClient;->logThread:Lcom/amplitude/api/WorkerThread;

    new-instance v1, Lcom/amplitude/api/AmplitudeClient$7;

    invoke-direct {v1, p0}, Lcom/amplitude/api/AmplitudeClient$7;-><init>(Lcom/amplitude/api/AmplitudeClient;)V

    invoke-virtual {v0, v1}, Lcom/amplitude/api/WorkerThread;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public useAdvertisingIdForDeviceId()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amplitude/api/AmplitudeClient;->useAdvertisingIdForDeviceId:Z

    .line 155
    return-void
.end method

.method protected validateLogEvent(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    const-string v1, "logEvent()"

    invoke-virtual {p0, v1}, Lcom/amplitude/api/AmplitudeClient;->contextAndApiKeySet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const/4 v0, 0x1

    goto :goto_0
.end method
