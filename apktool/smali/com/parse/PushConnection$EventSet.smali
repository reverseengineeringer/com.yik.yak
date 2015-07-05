.class Lcom/parse/PushConnection$EventSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final signaledEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    .line 766
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    .line 767
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/PushConnection$1;)V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/parse/PushConnection$EventSet;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/parse/PushConnection$Event;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 805
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, Lcom/parse/PushConnection$EventSet;->timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeEvents([Lcom/parse/PushConnection$Event;)V
    .locals 4

    .prologue
    .line 789
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 792
    :try_start_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 793
    iget-object v3, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 798
    return-void

    .line 796
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public signalEvent(Lcom/parse/PushConnection$Event;)V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 778
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 782
    return-void

    .line 780
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public varargs timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Lcom/parse/PushConnection$Event;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/PushConnection$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 815
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 816
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 817
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 819
    :goto_0
    iget-object v4, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 822
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 823
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 824
    iget-object v7, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 825
    iget-object v7, p0, Lcom/parse/PushConnection$EventSet;->signaledEvents:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 827
    invoke-interface {v6}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_2

    cmp-long v7, v4, p1

    if-ltz v7, :cond_2

    .line 844
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 847
    return-object v6

    .line 817
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 831
    :cond_2
    if-eqz v0, :cond_3

    .line 832
    :try_start_1
    iget-object v4, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 844
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushConnection$EventSet;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 835
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/parse/PushConnection$EventSet;->condition:Ljava/util/concurrent/locks/Condition;

    sub-long v4, p1, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v4, v5, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 839
    :catch_0
    move-exception v0

    goto :goto_2
.end method
