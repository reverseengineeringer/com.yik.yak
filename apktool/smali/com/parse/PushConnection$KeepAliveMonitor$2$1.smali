.class Lcom/parse/PushConnection$KeepAliveMonitor$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

.field final synthetic val$wl:Lcom/parse/ParseWakeLock;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$KeepAliveMonitor$2;Lcom/parse/ParseWakeLock;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iput-object p2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->val$wl:Lcom/parse/ParseWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v1, v1, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;
    invoke-static {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1400(Lcom/parse/PushConnection$KeepAliveMonitor;)Ljava/net/Socket;

    move-result-object v1

    const-string v2, "{}"

    # invokes: Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/parse/PushConnection;->access$700(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v1, v1, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # invokes: Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V
    invoke-static {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    .line 599
    :cond_0
    sget-boolean v1, Lcom/parse/PushConnection;->ENABLE_QUICK_ACK_CHECK:Z

    if-eqz v1, :cond_1

    .line 600
    const-wide/16 v2, 0x9c4

    .line 603
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v1, v1, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v1, v1, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v1}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 608
    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 613
    :cond_1
    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v0, v0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$appContext:Landroid/content/Context;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v2, v2, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$readIntent:Landroid/content/Intent;

    const/high16 v3, 0x50000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->this$2:Lcom/parse/PushConnection$KeepAliveMonitor$2;

    iget-object v1, v1, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;
    invoke-static {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1500(Lcom/parse/PushConnection$KeepAliveMonitor;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;->val$wl:Lcom/parse/ParseWakeLock;

    invoke-virtual {v0}, Lcom/parse/ParseWakeLock;->release()V

    .line 628
    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_2
    const-string v0, "com.parse.PushConnection"

    const-string v1, "Keep alive ack was received quickly."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
