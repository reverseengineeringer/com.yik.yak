.class Lcom/parse/PushConnection$KeepAliveMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$readIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/parse/PushConnection$KeepAliveMonitor;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iput-object p2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->val$readIntent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 573
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v0, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->service:Landroid/app/Service;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$1000(Lcom/parse/PushConnection;)Landroid/app/Service;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "push-keep-alive"

    const-wide/16 v4, 0x4e20

    invoke-static {v0, v1, v2, v4, v5}, Lcom/parse/ParseWakeLock;->acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;
    invoke-static {v1}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1300(Lcom/parse/PushConnection$KeepAliveMonitor;)LN;

    move-result-object v1

    if-nez v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    const/4 v2, 0x0

    invoke-static {v2}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v2

    invoke-virtual {v2}, LN;->j()LN;

    move-result-object v2

    # setter for: Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;
    invoke-static {v1, v2}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1302(Lcom/parse/PushConnection$KeepAliveMonitor;LN;)LN;

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    iget-object v2, p0, Lcom/parse/PushConnection$KeepAliveMonitor$2;->this$1:Lcom/parse/PushConnection$KeepAliveMonitor;

    # getter for: Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;
    invoke-static {v2}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1300(Lcom/parse/PushConnection$KeepAliveMonitor;)LN;

    move-result-object v2

    new-instance v3, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/PushConnection$KeepAliveMonitor$2$1;-><init>(Lcom/parse/PushConnection$KeepAliveMonitor$2;Lcom/parse/ParseWakeLock;)V

    sget-object v0, Lcom/parse/ParseCommand;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v0}, LN;->a(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    # setter for: Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;
    invoke-static {v1, v0}, Lcom/parse/PushConnection$KeepAliveMonitor;->access$1302(Lcom/parse/PushConnection$KeepAliveMonitor;LN;)LN;

    .line 631
    return-void
.end method
