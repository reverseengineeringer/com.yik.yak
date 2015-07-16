.class Lcom/parse/PushConnection$KeepAliveMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private broadcast:Landroid/app/PendingIntent;

.field private final interval:J

.field private keepAliveTask:LN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroid/app/AlarmManager;

.field private readReceiver:Landroid/content/BroadcastReceiver;

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/parse/PushConnection;

.field private unregistered:Z

.field private writeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;J)V
    .locals 1

    .prologue
    .line 510
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;

    .line 512
    iput-wide p3, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->interval:J

    .line 513
    return-void
.end method

.method static synthetic access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parse/PushConnection$KeepAliveMonitor;)LN;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parse/PushConnection$KeepAliveMonitor;LN;)LN;
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:LN;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/parse/PushConnection$KeepAliveMonitor;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/PushConnection$KeepAliveMonitor;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private declared-synchronized signalKeepAliveFailure()V
    .locals 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->unregistered:Z

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v0

    sget-object v1, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :cond_0
    monitor-exit p0

    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public register()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 522
    sget-object v7, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 523
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 525
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.parse.PushConnection.readKeepAlive"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {v9, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.parse.PushConnection.writeKeepAlive"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v0, "alarm"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    .line 538
    invoke-static {v7, v3, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    .line 542
    iget-object v2, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 543
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 548
    :goto_0
    invoke-static {v7, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    .line 549
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 552
    const/4 v1, 0x2

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 554
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    iget-wide v4, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->interval:J

    iget-object v6, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 556
    new-instance v0, Lcom/parse/PushConnection$KeepAliveMonitor$1;

    invoke-direct {v0, p0}, Lcom/parse/PushConnection$KeepAliveMonitor$1;-><init>(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    iput-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v0, Lcom/parse/PushConnection$KeepAliveMonitor$2;

    invoke-direct {v0, p0, v7, v9}, Lcom/parse/PushConnection$KeepAliveMonitor$2;-><init>(Lcom/parse/PushConnection$KeepAliveMonitor;Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    .line 640
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.parse.PushConnection.readKeepAlive"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 644
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.parse.PushConnection.writeKeepAlive"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    return-void

    .line 545
    :cond_0
    const-string v0, "com.parse.PushConnection"

    const-string v2, "oldReadBroadcast was null"

    invoke-static {v0, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 660
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 661
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 662
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 663
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 665
    monitor-enter p0

    .line 666
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->unregistered:Z

    .line 667
    monitor-exit p0

    .line 668
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
