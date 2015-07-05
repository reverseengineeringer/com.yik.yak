.class public Lcom/parse/PushConnection$ConnectedState;
.super Lcom/parse/PushConnection$State;
.source "SourceFile"


# instance fields
.field private socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 333
    iput-object p2, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    .line 334
    return-void
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    .line 339
    new-instance v1, Lcom/parse/PushConnection$ReachabilityMonitor;

    iget-object v2, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v1, v2, v0}, Lcom/parse/PushConnection$ReachabilityMonitor;-><init>(Lcom/parse/PushConnection;Lcom/parse/PushConnection$1;)V

    .line 340
    new-instance v2, Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v3, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    iget-object v4, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    sget-wide v6, Lcom/parse/PushConnection;->KEEP_ALIVE_INTERVAL:J

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/parse/PushConnection$KeepAliveMonitor;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;J)V

    .line 341
    new-instance v3, Lcom/parse/PushConnection$ReaderThread;

    iget-object v4, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    iget-object v5, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    invoke-direct {v3, v4, v5}, Lcom/parse/PushConnection$ReaderThread;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V

    .line 343
    invoke-virtual {v1}, Lcom/parse/PushConnection$ReachabilityMonitor;->register()V

    .line 344
    invoke-virtual {v2}, Lcom/parse/PushConnection$KeepAliveMonitor;->register()V

    .line 345
    invoke-virtual {v3}, Lcom/parse/PushConnection$ReaderThread;->start()V

    .line 347
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 348
    iget-object v4, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/parse/PushConnection$Event;

    sget-object v6, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v8

    sget-object v6, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v9

    sget-object v6, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v10

    sget-object v6, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v6, v5, v11

    invoke-virtual {v4, v5}, Lcom/parse/PushConnection$EventSet;->await([Lcom/parse/PushConnection$Event;)Ljava/util/Set;

    move-result-object v4

    .line 355
    sget-object v5, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    new-instance v0, Lcom/parse/PushConnection$StoppedState;

    iget-object v4, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v0, v4}, Lcom/parse/PushConnection$StoppedState;-><init>(Lcom/parse/PushConnection;)V

    goto :goto_0

    .line 357
    :cond_1
    sget-object v5, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    :cond_2
    new-instance v0, Lcom/parse/PushConnection$WaitRetryState;

    iget-object v4, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v4, v6, v7}, Lcom/parse/PushConnection$WaitRetryState;-><init>(Lcom/parse/PushConnection;J)V

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v1}, Lcom/parse/PushConnection$ReachabilityMonitor;->unregister()V

    .line 365
    invoke-virtual {v2}, Lcom/parse/PushConnection$KeepAliveMonitor;->unregister()V

    .line 366
    invoke-virtual {v3}, Lcom/parse/PushConnection$ReaderThread;->stopReading()V

    .line 367
    iget-object v1, p0, Lcom/parse/PushConnection$ConnectedState;->socket:Ljava/net/Socket;

    # invokes: Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V
    invoke-static {v1}, Lcom/parse/PushConnection;->access$600(Ljava/net/Socket;)V

    .line 371
    iget-object v1, p0, Lcom/parse/PushConnection$ConnectedState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v1

    new-array v2, v11, [Lcom/parse/PushConnection$Event;

    sget-object v3, Lcom/parse/PushConnection$Event;->CONNECTIVITY_CHANGED:Lcom/parse/PushConnection$Event;

    aput-object v3, v2, v8

    sget-object v3, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v3, v2, v9

    sget-object v3, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Lcom/parse/PushConnection$EventSet;->removeEvents([Lcom/parse/PushConnection$Event;)V

    .line 377
    return-object v0
.end method
