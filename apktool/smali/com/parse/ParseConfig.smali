.class public Lcom/parse/ParseConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CURRENT_CONFIG_FILENAME:Ljava/lang/String; = "currentConfig"

.field private static currentConfig:Lcom/parse/ParseConfig;

.field private static final currentConfigMutex:Ljava/lang/Object;

.field private static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 151
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p2, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 142
    const-string v1, "params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 143
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Object did not contain the \'params\' key."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 147
    return-void
.end method

.method static synthetic access$000(LR;)LR;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/parse/ParseConfig;->getAsync(LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseConfig;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Lcom/parse/ParseConfig;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseConfig;)Lcom/parse/ParseConfig;
    .locals 0

    .prologue
    .line 22
    sput-object p0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object p0
.end method

.method static clearCurrentConfigForTesting()V
    .locals 2

    .prologue
    .line 113
    sget-object v1, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get()Lcom/parse/ParseConfig;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseConfig;

    return-object v0
.end method

.method private static getAsync(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "client_config"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 90
    new-instance v1, Lcom/parse/ParseConfig$3;

    invoke-direct {v1, v0}, Lcom/parse/ParseConfig$3;-><init>(Lcom/parse/ParseCommand;)V

    invoke-virtual {p0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfig$2;

    invoke-direct {v1}, Lcom/parse/ParseConfig$2;-><init>()V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->c(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentConfig()Lcom/parse/ParseConfig;
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    if-nez v0, :cond_0

    .line 40
    sget-object v1, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentConfig"

    invoke-static {v0, v2}, Lcom/parse/ParseConfig;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseConfig;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    :goto_0
    sput-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    sget-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object v0

    .line 42
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseConfig;

    invoke-direct {v0}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseConfig;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    if-nez v2, :cond_0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :cond_0
    :try_start_0
    new-instance v1, Lcom/parse/ParseConfig;

    new-instance v3, Lcom/parse/ParseDecoder;

    invoke-direct {v3}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseConfig;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInBackground()LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseConfig$1;

    invoke-direct {v1}, Lcom/parse/ParseConfig$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public static getInBackground(Lcom/parse/ConfigCallback;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()LR;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 68
    return-void
.end method

.method private saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 582
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 585
    const-string v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    invoke-static {p1, p2, v1}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 590
    return-void

    .line 587
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize config to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-object p2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 181
    const/4 p2, 0x0

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return p2

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-object p2

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 240
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 242
    :cond_2
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Date;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONArray;

    move-object p2, v0

    :cond_1
    return-object p2

    .line 317
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    move-object p2, v0

    :cond_1
    return-object p2

    .line 344
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-object p2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 376
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 379
    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    :goto_1
    move-object p2, v0

    .line 380
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 379
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 391
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-object p2

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 436
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 439
    :cond_2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Map;

    :goto_1
    move-object p2, v0

    .line 440
    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 439
    goto :goto_1
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-object p2

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 469
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 471
    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-object p2

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 504
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 506
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseFile;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-object p2

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 537
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 539
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseGeoPoint;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-object p2

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 568
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 570
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseConfig["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
