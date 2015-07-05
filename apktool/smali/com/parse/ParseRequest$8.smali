.class Lcom/parse/ParseRequest$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TResponse;",
        "LR",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$attemptsMade:I

.field final synthetic val$delay:J

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;IJLcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iput p2, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    iput-wide p3, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    iput-object p5, p0, Lcom/parse/ParseRequest$8;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TResponse;>;)",
            "LR",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->currentTask:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/parse/ParseRequest;->access$400(Lcom/parse/ParseRequest;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad;

    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, LR;->h()LR;

    move-result-object p1

    .line 399
    :cond_0
    :goto_0
    return-object p1

    .line 370
    :cond_1
    iget v0, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    iget-object v1, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    iget v1, v1, Lcom/parse/ParseRequest;->maxRetries:I

    if-ge v0, v1, :cond_2

    .line 371
    const-string v0, "com.parse.ParseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed. Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " milliseconds before attempt #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parse/ParseRequest$8;->val$attemptsMade:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    .line 375
    invoke-static {}, Lcom/parse/Parse;->getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRequest$8$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseRequest$8$1;-><init>(Lcom/parse/ParseRequest$8;Lad;)V

    iget-wide v4, p0, Lcom/parse/ParseRequest$8;->val$delay:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 394
    invoke-virtual {v0}, Lad;->a()LR;

    move-result-object p1

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseRequest$8;->this$0:Lcom/parse/ParseRequest;

    # getter for: Lcom/parse/ParseRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v0}, Lcom/parse/ParseRequest;->access$000(Lcom/parse/ParseRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const-string v0, "com.parse.ParseRequest"

    const-string v1, "Request failed. Giving up."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$8;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
