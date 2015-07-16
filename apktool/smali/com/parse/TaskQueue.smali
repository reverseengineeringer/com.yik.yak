.class Lcom/parse/TaskQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private tail:LN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private getTaskToAwait()LN;
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
    .line 28
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;

    .line 31
    :goto_0
    new-instance v1, Lcom/parse/TaskQueue$1;

    invoke-direct {v1, p0}, Lcom/parse/TaskQueue$1;-><init>(Lcom/parse/TaskQueue;)V

    invoke-virtual {v0, v1}, LN;->a(LM;)LN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static waitFor(LN;)LM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LM",
            "<TT;",
            "LN",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/parse/TaskQueue$2;

    invoke-direct {v0, p0}, Lcom/parse/TaskQueue$2;-><init>(LN;)V

    return-object v0
.end method


# virtual methods
.method enqueue(LM;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LM",
            "<",
            "Ljava/lang/Void;",
            "LN",
            "<TT;>;>;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 60
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/parse/TaskQueue;->getTaskToAwait()LN;

    move-result-object v0

    .line 61
    invoke-interface {p1, v0}, LM;->then(LN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [LN;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/TaskQueue;->tail:LN;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method waitUntilFinished()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/parse/TaskQueue;->tail:LN;

    invoke-virtual {v0}, LN;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TaskQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
