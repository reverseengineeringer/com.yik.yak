.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentType:Ljava/lang/String;

.field private currentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LR",
            "<*>.ad;>;"
        }
    .end annotation
.end field

.field data:[B

.field private dirty:Z

.field private name:Ljava/lang/String;

.field private request:Lcom/parse/ParseAWSRequest;

.field final taskQueue:Lcom/parse/TaskQueue;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 43
    iput-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 123
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v4, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 43
    iput-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 72
    array-length v0, p2

    sget v1, Lcom/parse/Parse;->maxParseFileSize:I

    if-le v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be less than %d bytes"

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/parse/Parse;->maxParseFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    .line 78
    iput-object p3, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/parse/ParseFile;->dirty:Z

    .line 81
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 2

    .prologue
    .line 648
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, v0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseFile;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/ParseFile;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/parse/ParseFile;->dirty:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parse/ParseFile;Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)LR;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->handleFileUploadResultAsync(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseFile;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->constructFileUploadCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseFile;)[B
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parse/ParseFile;->getCachedData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;LR;)LR;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;LR;)LR;

    move-result-object v0

    return-object v0
.end method

.method static clearCache()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/parse/ParseFile;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 38
    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private constructFileUploadCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "upload_file"

    invoke-direct {v0, v1, p1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 303
    iget-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "name"

    iget-object v2, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-object v0
.end method

.method static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 29
    const-string v0, "files"

    invoke-static {v0}, Lcom/parse/Parse;->getParseCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCachedData()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    .line 206
    :goto_0
    return-object v0

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1

    .line 191
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataAsync(Lcom/parse/ProgressCallback;LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 576
    :goto_0
    return-object v0

    .line 511
    :cond_0
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v1, Lcom/parse/ParseFile$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$6;-><init>(Lcom/parse/ParseFile;)V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v1, v2}, LR;->a(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/parse/ParseFile$5;-><init>(Lcom/parse/ParseFile;Lad;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v1, v2}, LR;->a(LQ;)LR;

    .line 576
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    goto :goto_0
.end method

.method private getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 33
    const-string v0, "files"

    invoke-static {v0}, Lcom/parse/Parse;->getParseFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private handleFileUploadResultAsync(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFile;->prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    invoke-virtual {v0}, Lcom/parse/ParseAWSRequest;->executeAsync()LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    return-object v0
.end method

.method private prepareFileUploadPost(Lorg/json/JSONObject;Lcom/parse/ProgressCallback;)V
    .locals 5

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 315
    :try_start_0
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    .line 316
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    .line 317
    const-string v1, "post_params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 323
    iget-object v0, p0, Lcom/parse/ParseFile;->contentType:Ljava/lang/String;

    .line 329
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 330
    const-string v0, "application/octet-stream"

    .line 334
    :cond_1
    :try_start_1
    const-string v2, "post_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/parse/ParseAWSRequest;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Lcom/parse/ParseAWSRequest;-><init>(ILjava/lang/String;)V

    iput-object v3, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    .line 336
    iget-object v2, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    invoke-virtual {v2, p2}, Lcom/parse/ParseAWSRequest;->setProgressCallback(Lcom/parse/ProgressCallback;)V

    .line 337
    iget-object v2, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    invoke-virtual {v2, v0}, Lcom/parse/ParseAWSRequest;->setMimeType(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    invoke-virtual {v0, v1}, Lcom/parse/ParseAWSRequest;->setPostParams(Lorg/json/JSONObject;)V

    .line 339
    iget-object v0, p0, Lcom/parse/ParseFile;->request:Lcom/parse/ParseAWSRequest;

    invoke-direct {p0}, Lcom/parse/ParseFile;->getCachedData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseAWSRequest;->setData([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 325
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :catch_1
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private save(Lcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method private setPinned(Z)V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private setPinnedInBackground(Z)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFile$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ParseFile;Z)V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->a(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    return-object v0
.end method

.method private setPinnedInBackground(ZLcom/parse/ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)LR;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 244
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 635
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 637
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad;

    .line 638
    invoke-virtual {v0}, Lad;->b()Z

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 641
    return-void
.end method

.method encode()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 652
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 653
    const-string v1, "__type"

    const-string v2, "File"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 657
    if-nez v1, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to encode an unsaved ParseFile."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    return-object v0
.end method

.method getCacheFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/parse/ParseFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseFile;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDataInBackground()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/ProgressCallback;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LR",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$7;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$7;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 628
    return-void
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 618
    return-void
.end method

.method getFilesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/parse/ParseFile;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseFile;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parse/ParseFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parse/ParseFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseFile;->isPinned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/parse/ParseFile;->dirty:Z

    return v0
.end method

.method isPinned()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFilesFile()Ljava/io/File;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pin()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinned(Z)V

    .line 216
    return-void
.end method

.method pinInBackground()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)LR;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Lcom/parse/ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(ZLcom/parse/ParseCallback;)V

    .line 232
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()LR;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LR;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method saveAsync(Lcom/parse/ProgressCallback;LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v1, Lcom/parse/ParseFile$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;Lad;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p2, v1}, LR;->a(LQ;)LR;

    .line 443
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    goto :goto_0
.end method

.method public saveInBackground()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/ProgressCallback;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$4;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseFile$4;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;

    .line 494
    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)LR;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LR;Lcom/parse/ParseCallback;)LR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unpin()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinned(Z)V

    .line 220
    return-void
.end method

.method unpinInBackground()LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;->setPinnedInBackground(Z)LR;

    move-result-object v0

    return-object v0
.end method

.method unpinInBackground(Lcom/parse/ParseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseFile;->setPinnedInBackground(ZLcom/parse/ParseCallback;)V

    .line 236
    return-void
.end method
