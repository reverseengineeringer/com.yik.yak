.class abstract Lcom/parse/ParseRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field protected static final DEFAULT_MAX_RETRIES:I = 0x4

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x2710

.field private static volatile UserAgent:Ljava/lang/String;

.field private static defaultClient:Lorg/apache/http/client/HttpClient;

.field private static defaultInitialRetryDelay:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;

.field private currentTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LN",
            "<TResult;>.Z;>;"
        }
    .end annotation
.end field

.field protected maxRetries:I

.field protected method:I

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 55
    new-instance v0, Lcom/parse/ParseRequest$1;

    invoke-direct {v0}, Lcom/parse/ParseRequest$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    .line 68
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    .line 69
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    .line 84
    sget v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v1, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v6, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRequest;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 98
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 211
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/parse/ParseRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 212
    iput p1, p0, Lcom/parse/ParseRequest;->method:I

    .line 213
    iput-object p2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseRequest;-><init>(ILjava/lang/String;)V

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parse/ParseRequest;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parse/ParseRequest;)Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parse/ParseRequest;->client:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)LN;
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(IJLcom/parse/ProgressCallback;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseRequest;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private executeAsync(IJLcom/parse/ProgressCallback;)LN;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LN",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p4}, Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ProgressCallback;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$8;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/parse/ParseRequest$8;-><init>(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultClient()Lorg/apache/http/client/HttpClient;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t send Parse HTTPS request before Parse.initialize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public static getDefaultInitialRetryDelay()J
    .locals 2

    .prologue
    .line 114
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    sget-object v0, Lcom/parse/ParseRequest;->UserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "unknown"

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Android SDK 1.7.1 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") API Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->UserAgent:Ljava/lang/String;

    .line 138
    :cond_0
    sget-object v0, Lcom/parse/ParseRequest;->UserAgent:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 120
    invoke-static {p0}, Lcom/parse/ParseRequest;->newHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 122
    :cond_0
    return-void
.end method

.method private static newHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v3, 0x0

    const/16 v7, 0x2710

    .line 145
    if-nez p0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context passed to newHttpClient should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 155
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 157
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 158
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 159
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    invoke-static {v1, v3}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 166
    new-instance v2, Landroid/net/SSLSessionCache;

    invoke-direct {v2, v0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-static {v0}, Lcom/parse/ParseRequest;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 171
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 172
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {v7, v2}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 177
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v2, v8}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 178
    invoke-static {v1, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 181
    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "http.proxyPort"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 185
    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "http"

    invoke-direct {v4, v2, v3, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 189
    :cond_1
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 193
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 81
    :cond_0
    return-object v1
.end method

.method private sendOneRequestAsync(Lcom/parse/ProgressCallback;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LN",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ;

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, LN;->h()LN;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseRequest$3;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V

    sget-object v1, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, LN;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$2;-><init>(Lcom/parse/ParseRequest;)V

    sget-object v2, LN;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LN;->b(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public static setDefaultClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 101
    sput-object p0, Lcom/parse/ParseRequest;->defaultClient:Lorg/apache/http/client/HttpClient;

    .line 102
    return-void
.end method

.method public static setDefaultInitialRetryDelay(J)V
    .locals 0

    .prologue
    .line 111
    sput-wide p0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    .line 112
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ;

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, LZ;->b()Z

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 412
    :cond_1
    return-void
.end method

.method protected connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4

    .prologue
    .line 415
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public executeAsync()LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ProgressCallback;)LN;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ProgressCallback;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "LN",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 324
    const/4 v1, 0x0

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$7;

    invoke-direct {v2, p0}, Lcom/parse/ParseRequest$7;-><init>(Lcom/parse/ParseRequest;)V

    invoke-virtual {v1, v2}, LN;->b(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$6;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseRequest$6;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseRequest$5;-><init>(Lcom/parse/ParseRequest;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$4;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseRequest$4;-><init>(Lcom/parse/ParseRequest;LZ;)V

    invoke-virtual {v1, v2}, LN;->b(LM;)LN;

    .line 357
    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0
.end method

.method protected newEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    iget v0, p0, Lcom/parse/ParseRequest;->method:I

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 274
    :goto_0
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 275
    return-object v0

    .line 246
    :cond_0
    iget v0, p0, Lcom/parse/ParseRequest;->method:I

    if-ne v0, v3, :cond_3

    .line 253
    const/4 v0, 0x0

    .line 254
    iget-object v1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    const-string v2, ".s3.amazonaws.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const-string v1, "^https://([a-zA-Z0-9.]*\\.s3\\.amazonaws\\.com)/?.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    const-string v2, "s3.amazonaws.com"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 264
    :cond_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/parse/ParseRequest;->newEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 267
    if-eqz v0, :cond_2

    .line 268
    const-string v2, "Host"

    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 271
    goto :goto_0

    .line 272
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseRequest;->method:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPostExecute(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TResponse;>;)",
            "LN",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, LN;->i()LN;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute(LN;)LN;
    .locals 1
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
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onResponse(Lorg/apache/http/HttpResponse;Lcom/parse/ProgressCallback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")TResponse;"
        }
    .end annotation
.end method

.method public setClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/parse/ParseRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 218
    return-void
.end method

.method public setMaxRetries(I)V
    .locals 0

    .prologue
    .line 229
    iput p1, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 230
    return-void
.end method

.method public setMethod(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/parse/ParseRequest;->method:I

    .line 222
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 226
    return-void
.end method
