.class public LeO;
.super Lcom/google/analytics/tracking/android/Tracker;
.source "SourceFile"


# static fields
.field private static a:LeO;

.field private static b:Ljava/lang/String;


# instance fields
.field private final c:Lfn;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private h:Landroid/content/Context;

.field private final i:Ljava/util/Map;
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

.field private j:Lfu;

.field private k:LfA;

.field private l:LeK;

.field private m:Z

.field private n:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 94
    new-instance v2, Lfv;

    invoke-direct {v2, p1}, Lfv;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lfn;->a(Landroid/content/Context;)Lfn;

    move-result-object v3

    invoke-static {}, LeU;->a()LeU;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, LeO;-><init>(Landroid/content/Context;Lfu;Lfn;LfA;LfE;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lfu;Lfn;LfA;LfE;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    const-string v0, "easy_tracker"

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1, p5}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;LfE;)V

    .line 155
    iput-boolean v2, p0, LeO;->e:Z

    .line 160
    iput v2, p0, LeO;->f:I

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LeO;->i:Ljava/util/Map;

    .line 189
    iput-boolean v2, p0, LeO;->m:Z

    .line 192
    iput-boolean v2, p0, LeO;->n:Z

    .line 102
    sget-object v0, LeO;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, LeO;->b:Ljava/lang/String;

    invoke-interface {p2, v0}, Lfu;->d(Ljava/lang/String;)V

    .line 106
    :cond_0
    iput-object p3, p0, LeO;->c:Lfn;

    .line 108
    invoke-direct {p0, p1, p2, p4}, LeO;->a(Landroid/content/Context;Lfu;LfA;)V

    .line 110
    new-instance v0, LeP;

    invoke-direct {v0, p0}, LeP;-><init>(LeO;)V

    iput-object v0, p0, LeO;->l:LeK;

    .line 116
    return-void

    :cond_1
    move-object p5, p3

    .line 100
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)LeO;
    .locals 1

    .prologue
    .line 130
    sget-object v0, LeO;->a:LeO;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, LeO;

    invoke-direct {v0, p0}, LeO;-><init>(Landroid/content/Context;)V

    sput-object v0, LeO;->a:LeO;

    .line 133
    :cond_0
    sget-object v0, LeO;->a:LeO;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lfs;
    .locals 1

    .prologue
    .line 288
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfs;->a(Ljava/lang/String;)Lfs;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 208
    const-string v0, "Starting EasyTracker."

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_trackingId"

    invoke-interface {v0, v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_api_key"

    invoke-interface {v0, v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] trackingId loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_appName"

    invoke-interface {v0, v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] app name loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfq;->c(Ljava/lang/String;)V

    .line 222
    const-string v1, "&an"

    invoke-virtual {p0, v1, v0}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_appVersion"

    invoke-interface {v0, v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] app version loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfq;->c(Ljava/lang/String;)V

    .line 231
    const-string v1, "&av"

    invoke-virtual {p0, v1, v0}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_2
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_logLevel"

    invoke-interface {v0, v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_3

    .line 236
    invoke-direct {p0, v0}, LeO;->a(Ljava/lang/String;)Lfs;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_3

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] log level loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfq;->c(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, LeO;->c:Lfn;

    invoke-virtual {v1}, Lfn;->d()Lfr;

    move-result-object v1

    invoke-interface {v1, v0}, Lfr;->a(Lfs;)V

    .line 243
    :cond_3
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_sampleFrequency"

    invoke-interface {v0, v1}, Lfu;->b(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 245
    if-nez v0, :cond_4

    .line 246
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, LeO;->j:Lfu;

    const-string v2, "ga_sampleRate"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lfu;->a(Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 248
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    .line 249
    const-string v1, "&sf"

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] sample rate loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_dispatchPeriod"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Lfu;->a(Ljava/lang/String;I)I

    move-result v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] dispatch period loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfq;->c(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, LeO;->k:LfA;

    invoke-virtual {v1, v0}, LfA;->a(I)V

    .line 258
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_sessionTimeout"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Lfu;->a(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, LeO;->g:J

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] session timeout loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LeO;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_autoActivityTracking"

    invoke-interface {v0, v1}, Lfu;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_auto_activity_tracking"

    invoke-interface {v0, v1}, Lfu;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LeO;->e:Z

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] auto activity tracking loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LeO;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_anonymizeIp"

    invoke-interface {v0, v1}, Lfu;->c(Ljava/lang/String;)Z

    move-result v0

    .line 267
    if-eqz v0, :cond_7

    .line 268
    const-string v1, "&aip"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, LeO;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EasyTracker] anonymize ip loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 272
    :cond_7
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_reportUncaughtExceptions"

    invoke-interface {v0, v1}, Lfu;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LeO;->d:Z

    .line 274
    iget-boolean v0, p0, LeO;->d:Z

    if-eqz v0, :cond_8

    .line 275
    new-instance v0, LeR;

    iget-object v1, p0, LeO;->k:LfA;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iget-object v3, p0, LeO;->h:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v3}, LeR;-><init>(Lcom/google/analytics/tracking/android/Tracker;LfA;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 277
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EasyTracker] report uncaught exceptions loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LeO;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->c(Ljava/lang/String;)V

    .line 282
    :cond_8
    iget-object v0, p0, LeO;->j:Lfu;

    const-string v1, "ga_dryRun"

    invoke-interface {v0, v1}, Lfu;->c(Ljava/lang/String;)Z

    move-result v0

    .line 283
    iget-object v1, p0, LeO;->c:Lfn;

    invoke-virtual {v1, v0}, Lfn;->a(Z)V

    .line 284
    return-void

    .line 261
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Lfu;LfA;)V
    .locals 1

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lfq;->a(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LeO;->h:Landroid/content/Context;

    .line 312
    iput-object p3, p0, LeO;->k:LfA;

    .line 313
    iput-object p2, p0, LeO;->j:Lfu;

    .line 314
    invoke-direct {p0}, LeO;->a()V

    .line 315
    return-void
.end method


# virtual methods
.method public send(Ljava/util/Map;)V
    .locals 2
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
    .line 427
    iget-boolean v0, p0, LeO;->n:Z

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "&sc"

    const-string v1, "start"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, LeO;->n:Z

    .line 431
    :cond_0
    invoke-super {p0, p1}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 432
    return-void
.end method
