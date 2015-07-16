.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseQuery"


# instance fields
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private currentCommand:Lcom/parse/ParseCommand;

.field private extraOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreACLs:Z

.field private include:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private final isRunningLock:Ljava/lang/Object;

.field private limit:I

.field private maxCacheAge:J

.field private objectsParsed:J

.field private order:Ljava/lang/String;

.field private pinName:Ljava/lang/String;

.field private queryReceived:J

.field private querySent:J

.field private queryStart:J

.field private selectedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field private where:Lcom/parse/ParseQuery$QueryConstraints;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    .line 161
    iput-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 162
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 163
    iput-object v1, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 222
    iput-object p1, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 223
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 224
    iput v2, p0, Lcom/parse/ParseQuery;->skip:I

    .line 225
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    .line 227
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 228
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 230
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseQuery;)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/parse/ParseQuery;->countFromNetworkAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseQuery;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/parse/ParseQuery;)J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseQuery;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParseQuery;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parse/ParseQuery;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->isRunning:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;ZZ)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->countFromCacheAsync(Lcom/parse/ParseUser;ZZ)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseQuery;Z)LN;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromNetworkAsync(Z)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method static synthetic access$602(Lcom/parse/ParseQuery;J)J
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/parse/ParseQuery;->querySent:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/parse/ParseQuery;J)J
    .locals 1

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/parse/ParseQuery;->queryReceived:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseQuery;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method private addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1167
    const/4 v1, 0x0

    .line 1170
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$QueryConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1172
    instance-of v2, v0, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v2, :cond_1

    .line 1173
    check-cast v0, Lcom/parse/ParseQuery$KeyConstraints;

    .line 1176
    :goto_0
    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Lcom/parse/ParseQuery$KeyConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$KeyConstraints;-><init>()V

    .line 1180
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/parse/ParseQuery$KeyConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v1, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v1, p1, v0}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 270
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_0
    if-eqz p1, :cond_1

    .line 278
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 280
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    return-void
.end method

.method private static checkPinningEnabled(Z)V
    .locals 2

    .prologue
    .line 584
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 585
    if-eqz p0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Pinning to be enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method not allowed when Pinning is enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 1

    .prologue
    .line 1099
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 1101
    invoke-static {}, Lcom/parse/Parse;->clearCacheDir()V

    .line 1102
    return-void
.end method

.method private convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v12, 0x49742400    # 1000000.0f

    const/4 v3, 0x0

    .line 361
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 363
    if-nez v6, :cond_2

    .line 364
    const-string v0, "com.parse.ParseQuery"

    const-string v1, "null results in find response"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    .line 387
    const-string v0, "trace"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const-string v0, "trace"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    const-string v1, "ParseQuery"

    const-string v2, "Query pre-processing took %f seconds\n%s\nClient side parsing took %f seconds\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/parse/ParseQuery;->querySent:J

    iget-wide v10, p0, Lcom/parse/ParseQuery;->queryStart:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float/2addr v7, v12

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    const/4 v0, 0x2

    iget-wide v8, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    iget-wide v10, p0, Lcom/parse/ParseQuery;->queryReceived:J

    sub-long/2addr v8, v10

    long-to-float v3, v8

    div-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v0

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_1
    return-object v5

    .line 366
    :cond_2
    const-string v0, "className"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 368
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    move v2, v3

    .line 370
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 371
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 372
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v0, v4

    :goto_2
    invoke-static {v7, v1, v0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v7

    .line 373
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v8, "$relatedTo"

    invoke-virtual {v0, v8}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$RelationConstraint;

    .line 380
    if-eqz v0, :cond_3

    .line 381
    invoke-virtual {v0}, Lcom/parse/ParseQuery$RelationConstraint;->getRelation()Lcom/parse/ParseRelation;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/parse/ParseRelation;->addKnownObject(Lcom/parse/ParseObject;)V

    .line 370
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v3

    .line 372
    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method private countFromCacheAsync(Lcom/parse/ParseUser;ZZ)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "ZZ)",
            "LN",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 806
    if-eqz v2, :cond_1

    .line 808
    iget-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)LN;

    move-result-object v0

    move-object v6, v0

    .line 813
    :goto_0
    new-instance v0, Lcom/parse/ParseQuery$10;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseQuery$10;-><init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;ZZ)V

    invoke-virtual {v6, v0}, LN;->d(LM;)LN;

    move-result-object v0

    .line 822
    :goto_1
    return-object v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 822
    :cond_1
    new-instance v0, Lcom/parse/ParseQuery$11;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$11;-><init>(Lcom/parse/ParseQuery;)V

    sget-object v1, LN;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, LN;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    goto :goto_1
.end method

.method private countFromNetworkAsync()LN;
    .locals 3
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
    .line 999
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1001
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 1002
    iget-object v1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseQuery$19;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseQuery$19;-><init>(Lcom/parse/ParseQuery;Z)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$18;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$18;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;

    move-result-object v0

    return-object v0

    .line 999
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private countWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lcom/parse/ParseQuery$3;

    invoke-direct {v0, p0, p2}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    .line 464
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)LN;

    move-result-object v0

    return-object v0
.end method

.method private doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CallableWithCachePolicy",
            "<",
            "LN",
            "<TTResult;>;>;",
            "Lcom/parse/ParseCallback",
            "<TTResult;>;)V"
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lcom/parse/ParseQuery$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseQuery$13;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    .line 901
    return-void
.end method

.method private doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "LN",
            "<TTResult;>;>;)",
            "LN",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 855
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 858
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    new-instance v1, Lcom/parse/ParseQuery$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$12;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method private findFromNetworkAsync(Z)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 548
    new-instance v0, Lcom/parse/ParseQuery$7;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$7;-><init>(Lcom/parse/ParseQuery;Z)V

    invoke-static {v0}, LN;->b(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 712
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 713
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 715
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 716
    iput-object p1, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    .line 717
    iput-boolean p2, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    .line 718
    return-object p0
.end method

.method private getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    const/4 v0, 0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseQuery;->findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 265
    invoke-static {}, Lcom/parse/ParseUser;->getQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->skip:I

    .line 500
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 501
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-direct {p0, p2, p3}, Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method private makeCountCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 982
    const-string v1, "limit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 983
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 984
    return-object v0
.end method

.method private makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 5

    .prologue
    .line 343
    new-instance v1, Lcom/parse/ParseCommand;

    const-string v0, "find"

    invoke-direct {v1, v0, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/parse/ParseQuery;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 347
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 355
    :cond_0
    return-object v1
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 189
    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery;

    iget-object v0, v0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All of the queries in an or query must be on the same class "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery;

    iget-object v2, v0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 194
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t take an or of an empty list of queries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-direct {v0, v3}, Lcom/parse/ParseQuery;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method private runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CommandDelegate",
            "<TTResult;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "LN",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/parse/ParseQuery$24;->$SwitchMap$com$parse$ParseQuery$CachePolicy:[I

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cache policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :pswitch_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)LN;

    move-result-object v0

    .line 431
    :goto_0
    return-object v0

    .line 419
    :pswitch_1
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()LN;

    move-result-object v0

    goto :goto_0

    .line 421
    :pswitch_2
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 431
    :pswitch_3
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 446
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->toREST()Lorg/json/JSONObject;

    move-result-object v0

    .line 330
    :try_start_0
    const-string v1, "where"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    const-string v1, "data"

    const-string v2, "where"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    :cond_0
    const-string v1, "classname"

    const-string v2, "className"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<+TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1379
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery;

    .line 1381
    iget v3, v0, Lcom/parse/ParseQuery;->limit:I

    if-ltz v3, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have limits in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1384
    :cond_0
    iget v3, v0, Lcom/parse/ParseQuery;->skip:I

    if-lez v3, :cond_1

    .line 1385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have skips in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_1
    iget-object v3, v0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an order in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :cond_2
    iget-object v3, v0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an include in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1393
    :cond_3
    iget-object v3, v0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an selectKeys in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_4
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1400
    :cond_5
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v2, "$or"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1690
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1691
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1695
    :goto_0
    return-object p0

    .line 1693
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1723
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1728
    :goto_0
    return-object p0

    .line 1726
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 509
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 514
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCachedResult()V
    .locals 1

    .prologue
    .line 1089
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 1092
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->countInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public countInBackground()LN;
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
    .line 1026
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1027
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 1028
    new-instance v1, Lcom/parse/ParseQuery$20;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseQuery$20;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    return-object v0
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 4

    .prologue
    .line 1044
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1045
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 1046
    new-instance v1, Lcom/parse/ParseQuery$21;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseQuery$21;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1, p1}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V

    .line 1052
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method findFromCacheAsync(Lcom/parse/ParseUser;ZZ)LN;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "ZZ)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 754
    if-eqz v2, :cond_1

    .line 756
    iget-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)LN;

    move-result-object v0

    move-object v6, v0

    .line 761
    :goto_0
    new-instance v0, Lcom/parse/ParseQuery$8;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseQuery$8;-><init>(Lcom/parse/ParseQuery;Lcom/parse/OfflineStore;Lcom/parse/ParseUser;ZZ)V

    invoke-virtual {v6, v0}, LN;->d(LM;)LN;

    move-result-object v0

    .line 770
    :goto_1
    return-object v0

    .line 759
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 770
    :cond_1
    new-instance v0, Lcom/parse/ParseQuery$9;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$9;-><init>(Lcom/parse/ParseQuery;)V

    sget-object v1, LN;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, LN;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    goto :goto_1
.end method

.method public findInBackground()LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 912
    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method findInBackground(Lcom/parse/ParseUser;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 916
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 917
    new-instance v0, Lcom/parse/ParseQuery$14;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$14;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 934
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 935
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 936
    new-instance v1, Lcom/parse/ParseQuery$15;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseQuery$15;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1, p1}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V

    .line 942
    return-void
.end method

.method findWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            "Lcom/parse/ParseUser;",
            ")",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Lcom/parse/ParseQuery$4;

    invoke-direct {v0, p0, p2}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    .line 479
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicyAsync(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)LN;

    move-result-object v0

    return-object v0
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method fromLocalDatastore(Z)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method fromNetwork()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 629
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 631
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->pinName:Ljava/lang/String;

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->ignoreACLs:Z

    .line 634
    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 675
    const-string v0, "_default"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method fromPin(Ljava/lang/String;Z)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method fromPin(Z)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 679
    const-string v0, "_default"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->fromLocalDatastore(Ljava/lang/String;Z)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 615
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method getConstraints()Lcom/parse/ParseQuery$QueryConstraints;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    return-object v0
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getFirstInBackground()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getFirstInBackground()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 952
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 953
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 954
    new-instance v1, Lcom/parse/ParseQuery$16;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseQuery$16;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 971
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 972
    new-instance v1, Lcom/parse/ParseQuery$17;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseQuery$17;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1, p1}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V

    .line 978
    return-void
.end method

.method public getInBackground(Ljava/lang/String;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 1118
    new-instance v1, Lcom/parse/ParseQuery$22;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/ParseQuery$22;-><init>(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)LN;

    move-result-object v0

    return-object v0
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1138
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1139
    new-instance v1, Lcom/parse/ParseQuery$23;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/ParseQuery$23;-><init>(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v1, p2}, Lcom/parse/ParseQuery;->doInBackground(Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V

    .line 1145
    return-void
.end method

.method getIncludes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 1767
    iget v0, p0, Lcom/parse/ParseQuery;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 737
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 1787
    iget v0, p0, Lcom/parse/ParseQuery;->skip:I

    return v0
.end method

.method public hasCachedResult()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1072
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 1078
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->makeFindCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v1, v2, v3}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1081
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1604
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    return-void
.end method

.method isFromLocalDatastore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 659
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 661
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFromNetwork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 638
    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 640
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1675
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1676
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1709
    return-object p0
.end method

.method redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    const-string v1, "redirectClassNameForKey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1625
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1627
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1631
    return-void
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 604
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 606
    iput-object p1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 607
    return-void
.end method

.method public setLimit(I)Lcom/parse/ParseQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1749
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1751
    iput p1, p0, Lcom/parse/ParseQuery;->limit:I

    .line 1752
    return-object p0
.end method

.method public setMaxCacheAge(J)V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->checkPinningEnabled(Z)V

    .line 727
    iput-wide p1, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 728
    return-void
.end method

.method public setSkip(I)Lcom/parse/ParseQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1779
    iput p1, p0, Lcom/parse/ParseQuery;->skip:I

    .line 1780
    return-object p0
.end method

.method public setTrace(Z)V
    .locals 0

    .prologue
    .line 1760
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 1761
    return-void
.end method

.method sortKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1736
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1738
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method toREST()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 290
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 293
    :try_start_0
    const-string v0, "className"

    iget-object v2, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v0, "where"

    iget-object v2, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    iget v0, p0, Lcom/parse/ParseQuery;->limit:I

    if-ltz v0, :cond_0

    .line 297
    const-string v0, "limit"

    iget v2, p0, Lcom/parse/ParseQuery;->limit:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    :cond_0
    iget v0, p0, Lcom/parse/ParseQuery;->skip:I

    if-lez v0, :cond_1

    .line 300
    const-string v0, "skip"

    iget v2, p0, Lcom/parse/ParseQuery;->skip:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "order"

    iget-object v2, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    const-string v0, "include"

    iget-object v2, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/parse/Parse;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 309
    const-string v0, "fields"

    iget-object v2, p0, Lcom/parse/ParseQuery;->selectedKeys:Ljava/util/ArrayList;

    const-string v3, ","

    invoke-static {v2, v3}, Lcom/parse/Parse;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    :cond_4
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->trace:Z

    if-eqz v0, :cond_5

    .line 312
    const-string v0, "trace"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/parse/ParseQuery;->extraOptions:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :cond_6
    return-object v1
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1271
    const-string v0, "$in"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1272
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1557
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1559
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1288
    const-string v0, "$all"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1651
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1652
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1360
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1362
    :try_start_0
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    const-string v1, "query"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    const-string v1, "$dontSelect"

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1368
    return-object p0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1318
    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1319
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1590
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1591
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1159
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1640
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1641
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1226
    const-string v0, "$gt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1227
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1256
    const-string v0, "$gte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1257
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1196
    const-string v0, "$lt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1241
    const-string v0, "$lte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1242
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1520
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1521
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1539
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1540
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    const-string v0, "$options"

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1543
    :cond_0
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1337
    :try_start_0
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1338
    const-string v1, "query"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    const-string v1, "$select"

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1343
    return-object p0

    .line 1339
    :catch_0
    move-exception v0

    .line 1340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1303
    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1304
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1430
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1431
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1415
    const-string v0, "$nin"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1416
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1211
    const-string v0, "$ne"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1212
    return-object p0
.end method

.method whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$relatedTo"

    new-instance v2, Lcom/parse/ParseQuery$RelationConstraint;

    invoke-direct {v2, p2, p1}, Lcom/parse/ParseQuery$RelationConstraint;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1574
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1575
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1504
    const-string v2, "$box"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string v0, "$within"

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1506
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1464
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1465
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1447
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1448
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1481
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1482
    const-string v0, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1483
    return-object p0
.end method
