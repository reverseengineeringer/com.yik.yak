.class Lcom/parse/PushConnection$ReaderThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private socket:Ljava/net/Socket;

.field private stopped:Z

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 683
    iput-object p1, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 684
    iput-object p2, p0, Lcom/parse/PushConnection$ReaderThread;->socket:Ljava/net/Socket;

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    .line 686
    return-void
.end method

.method private runReaderLoop(Ljava/io/BufferedReader;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 715
    .line 719
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 720
    :try_start_1
    iget-object v2, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    .line 724
    :goto_1
    if-nez v2, :cond_0

    .line 751
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v2, v0

    goto :goto_1

    .line 729
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 732
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 738
    :goto_4
    if-eqz v0, :cond_1

    .line 740
    invoke-static {v0}, Lcom/parse/PushRouter;->handlePpnsPushAsync(Lorg/json/JSONObject;)LR;

    .line 745
    :cond_1
    monitor-enter p0

    .line 746
    :try_start_3
    iget-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    if-eqz v0, :cond_2

    .line 747
    monitor-exit p0

    goto :goto_2

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 733
    :catch_1
    move-exception v0

    .line 735
    const-string v3, "com.parse.PushConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_4

    .line 749
    :cond_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 693
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/parse/PushConnection$ReaderThread;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0, v0}, Lcom/parse/PushConnection$ReaderThread;->runReaderLoop(Ljava/io/BufferedReader;)V

    .line 701
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 706
    :cond_0
    :goto_1
    monitor-enter p0

    .line 707
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v0

    sget-object v1, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V

    .line 710
    :cond_1
    monitor-exit p0

    .line 711
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public stopReading()V
    .locals 1

    .prologue
    .line 755
    monitor-enter p0

    .line 756
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    .line 757
    monitor-exit p0

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
