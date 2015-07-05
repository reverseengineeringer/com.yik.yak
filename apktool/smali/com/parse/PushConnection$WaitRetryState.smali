.class public Lcom/parse/PushConnection$WaitRetryState;
.super Lcom/parse/PushConnection$State;
.source "SourceFile"


# instance fields
.field private delay:J

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;J)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 394
    iput-wide p2, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    .line 395
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    .prologue
    .line 398
    iget-wide v0, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    return-wide v0
.end method

.method public runState()Lcom/parse/PushConnection$State;
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    iget-object v0, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v0

    new-array v1, v8, [Lcom/parse/PushConnection$Event;

    sget-object v4, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->removeEvents([Lcom/parse/PushConnection$Event;)V

    .line 409
    iget-wide v0, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    .line 410
    sget-boolean v4, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 418
    :cond_0
    iget-object v4, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/parse/PushConnection$Event;

    sget-object v6, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v7

    sget-object v6, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v8

    invoke-virtual {v4, v0, v1, v5}, Lcom/parse/PushConnection$EventSet;->timedAwait(J[Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    new-instance v0, Lcom/parse/PushConnection$StoppedState;

    iget-object v1, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v0, v1}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    .line 430
    :goto_0
    return-object v0

    .line 422
    :cond_1
    sget-object v1, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    new-instance v0, Lcom/parse/PushConnection$ConnectState;

    iget-object v1, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    goto :goto_0

    .line 427
    :cond_2
    new-instance v0, Lcom/parse/PushConnection$ConnectState;

    iget-object v1, p0, Lcom/parse/PushConnection$WaitRetryState;->this$0:Lcom/parse/PushConnection;

    iget-wide v2, p0, Lcom/parse/PushConnection$WaitRetryState;->delay:J

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/PushConnection$ConnectState;-><init>(Lcom/parse/PushConnection;J)V

    goto :goto_0
.end method
