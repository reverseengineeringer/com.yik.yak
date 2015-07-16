.class Lcom/parse/ParsePinningEventuallyQueue;
.super Lcom/parse/ParseEventuallyQueue;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParsePinningEventuallyQueue"


# instance fields
.field private final connectionLock:Ljava/lang/Object;

.field private connectionTaskCompletionSource:LZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">.Z;"
        }
    .end annotation
.end field

.field private eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private operationSetTaskQueue:Lcom/parse/TaskQueue;

.field private pendingEventuallyTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">.Z;>;"
        }
    .end annotation
.end field

.field private pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">.Z;>;"
        }
    .end annotation
.end field

.field private taskQueue:Lcom/parse/TaskQueue;

.field private final taskQueueSyncLock:Ljava/lang/Object;

.field private uuidToEventuallyPin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation
.end field

.field private uuidToOperationSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    .line 41
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    .line 48
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    .line 62
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ConnectivityNotifier;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 67
    invoke-static {}, Lcom/parse/ConnectivityNotifier;->getNotifier()Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1, p1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LN;LZ;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LN;LZ;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParsePinningEventuallyQueue;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePinningEventuallyQueue;LN;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;LN;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePinningEventuallyQueue;)LN;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LN;LZ;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseObject;",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">.Z;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/parse/ParsePinningEventuallyQueue$5;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseObject;Lcom/parse/ParseCommand;LZ;)V

    invoke-virtual {p3, v0}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$6;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$6;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync(LN;)LN;
    .locals 2
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
    .line 260
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$8;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$8;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$7;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$7;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue$13;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-virtual {p1}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {v3}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParsePinningEventuallyQueue$9;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    .line 308
    invoke-static {v3}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
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
    .line 318
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$11;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$11;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p2, v0}, LN;->b(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method private waitForConnectionAsync()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whenAll(Ljava/util/Collection;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/TaskQueue;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/TaskQueue;

    .line 586
    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$15;

    invoke-direct {v3, p0}, Lcom/parse/ParsePinningEventuallyQueue$15;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v3}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    .line 593
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {v1}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 541
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$14;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$14;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    move-result-object v0

    .line 565
    :try_start_0
    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->simulateReboot()V

    .line 572
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 573
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 190
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue$4;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseCommand;Lcom/parse/ParseObject;LZ;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    .line 199
    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 143
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v2}, LZ;->a(Ljava/lang/Exception;)Z

    .line 146
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    .line 147
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v2}, LZ;->a(Ljava/lang/Exception;)Z

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ;

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v0, v3}, LZ;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 148
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 155
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 158
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Lcom/parse/TaskQueue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->whenAll(Ljava/util/Collection;)LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/parse/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCount()I
    .locals 2

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync()LN;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCountAsync()LN;
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
    .line 107
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue;LZ;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(LM;)LN;

    .line 123
    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0
.end method

.method public pendingCountAsync(LN;)LN;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$3;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$3;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 172
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()LN;

    .line 173
    return-void
.end method

.method public setConnected(Z)V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LZ;->a(Ljava/lang/Object;)Z

    .line 89
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    .line 90
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LZ;->a(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    monitor-exit v1

    .line 95
    return-void

    .line 92
    :cond_0
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:LZ;

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 529
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 530
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 531
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 534
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 535
    return-void
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 407
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 408
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/EventuallyPin;

    .line 418
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 420
    if-eqz v0, :cond_1

    if-nez v1, :cond_5

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ;

    .line 427
    :goto_2
    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    monitor-exit v4

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 410
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 411
    :try_start_1
    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    goto :goto_1

    .line 414
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Either operationSet or eventuallyPin must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_4
    invoke-static {}, LN;->a()LZ;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 429
    :cond_5
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ;

    .line 431
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    invoke-direct {p0, v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$12;

    invoke-direct {v1, p0, v3, v2}, Lcom/parse/ParsePinningEventuallyQueue$12;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;LZ;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method
