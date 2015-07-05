.class Lcom/parse/ParseTestUtils$StateTransitionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/PushConnection$StateTransitionListener;


# instance fields
.field private transitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ParseTestUtils$StateTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseTestUtils$StateTransitionListener;->transitions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized getTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseTestUtils$StateTransition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseTestUtils$StateTransitionListener;->transitions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    .locals 7

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseTestUtils$StateTransitionListener;->transitions:Ljava/util/ArrayList;

    new-instance v1, Lcom/parse/ParseTestUtils$StateTransition;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/parse/ParseTestUtils$StateTransition;-><init>(JLcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    if-eqz p3, :cond_1

    # getter for: Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/parse/PushConnection$ConnectState;

    if-eqz v0, :cond_1

    .line 399
    # getter for: Lcom/parse/ParseTestUtils;->awaitStartSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$000()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 400
    :cond_1
    if-eqz p3, :cond_0

    :try_start_1
    # getter for: Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/parse/PushConnection$StoppedState;

    if-eqz v0, :cond_0

    .line 401
    # getter for: Lcom/parse/ParseTestUtils;->awaitStopSemaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/parse/ParseTestUtils;->access$100()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
