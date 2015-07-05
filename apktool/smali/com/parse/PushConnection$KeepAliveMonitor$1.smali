.class Lcom/parse/PushConnection$KeepAliveMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/parse/PushConnection$KeepAliveMonitor;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$KeepAliveMonitor;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v2, v2, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 563
    sget-wide v2, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 564
    const-string v2, "com.parse.PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keep alive failure: last read was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms ago."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor$1;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # invokes: Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V
    invoke-static {v0}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    .line 567
    :cond_0
    return-void
.end method
