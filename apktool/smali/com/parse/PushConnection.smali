.class Lcom/parse/PushConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x9c40

.field static ENABLE_QUICK_ACK_CHECK:Z = false

.field static ENABLE_RETRY_DELAY:Z = false

.field static KEEP_ALIVE_ACK_INTERVAL:J = 0x0L

.field static KEEP_ALIVE_INTERVAL:J = 0x0L

.field private static final MAX_RETRY_DELAY_MS:J = 0x493e0L

.field private static final MIN_RETRY_DELAY_MS:J = 0x3a98L

.field private static final RETRY_MULT_FACTOR_MAX:D = 2.0

.field private static final RETRY_MULT_FACTOR_MIN:D = 1.5

.field private static final TAG:Ljava/lang/String; = "com.parse.PushConnection"

.field private static stateTransitionListener:Lcom/parse/PushConnection$StateTransitionListener;


# instance fields
.field private final eventSet:Lcom/parse/PushConnection$EventSet;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final host:Ljava/lang/String;

.field private final lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final port:I

.field private final service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/parse/PushConnection;->KEEP_ALIVE_INTERVAL:J

    .line 60
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    .line 62
    sput-boolean v2, Lcom/parse/PushConnection;->ENABLE_QUICK_ACK_CHECK:Z

    .line 65
    sput-boolean v2, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/parse/PushConnection;->service:Landroid/app/Service;

    .line 83
    iput-object p2, p0, Lcom/parse/PushConnection;->host:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/parse/PushConnection;->port:I

    .line 85
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 86
    new-instance v0, Lcom/parse/PushConnection$EventSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/PushConnection$EventSet;-><init>(Lcom/parse/PushConnection$1;)V

    iput-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    iget-object v0, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/PushConnection$WaitStartState;

    invoke-direct {v1, p0}, Lcom/parse/PushConnection$WaitStartState;-><init>(Lcom/parse/PushConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method static synthetic access$100()Lcom/parse/PushConnection$StateTransitionListener;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListener:Lcom/parse/PushConnection$StateTransitionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/PushConnection;)Landroid/app/Service;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/PushConnection;->service:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/PushConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/PushConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/PushConnection;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/parse/PushConnection;->port:I

    return v0
.end method

.method static synthetic access$600(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static closeSocket(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownInput()V

    .line 137
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setStateTransitionListener(Lcom/parse/PushConnection$StateTransitionListener;)V
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/parse/PushConnection;

    monitor-enter v1

    .line 151
    :try_start_0
    sput-object p0, Lcom/parse/PushConnection;->stateTransitionListener:Lcom/parse/PushConnection$StateTransitionListener;

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Wrote to push socket on main thread."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 121
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const-string v2, "com.parse.PushConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushConnection write failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " due to exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    sget-object v1, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    sget-object v1, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
