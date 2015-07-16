.class Lcom/parse/ParsePinningEventuallyQueue$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Object;",
        "LN",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$tcs:LZ;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;LZ;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:LZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:LZ;

    invoke-virtual {v1, v0}, LZ;->a(Ljava/lang/Exception;)Z

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 446
    :cond_0
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->b()Z

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:LZ;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$12;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
