.class public Lcom/parse/PushConnection$ConnectState;
.super Lcom/parse/PushConnection$State;
.source "SourceFile"


# instance fields
.field private lastDelay:J

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;J)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 247
    iput-wide p2, p0, Lcom/parse/PushConnection$ConnectState;->lastDelay:J

    .line 248
    return-void
.end method

.method private nextDelay()J
    .locals 8

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/parse/PushConnection$ConnectState;->lastDelay:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 311
    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 313
    return-wide v0
.end method

.method private sendHandshake(Ljava/net/Socket;)Z
    .locals 5

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    invoke-static {}, Lcom/parse/PushRouter;->getPushRequestJSONAsync()LR;

    move-result-object v0

    .line 294
    :try_start_0
    invoke-virtual {v0}, LR;->g()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    invoke-virtual {v0}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 300
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {p1, v0}, Lcom/parse/PushConnection;->access$700(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    .line 304
    :goto_1
    return v0

    .line 295
    :catch_0
    move-exception v2

    .line 296
    const-string v3, "com.parse.PushConnection"

    const-string v4, "Unexpected interruption when waiting for handshake to be sent"

    invoke-static {v3, v4, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 6

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 254
    const/4 v1, 0x0

    .line 257
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->host:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/PushConnection;->access$400(Lcom/parse/PushConnection;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->port:I
    invoke-static {v5}, Lcom/parse/PushConnection;->access$500(Lcom/parse/PushConnection;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 259
    if-eqz v3, :cond_0

    .line 260
    const v4, 0x9c40

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 261
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 262
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 263
    invoke-direct {p0, v2}, Lcom/parse/PushConnection$ConnectState;->sendHandshake(Ljava/net/Socket;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 278
    const-string v3, "com.parse.PushConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to push server due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_1
    if-nez v0, :cond_2

    .line 282
    # invokes: Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V
    invoke-static {v2}, Lcom/parse/PushConnection;->access$600(Ljava/net/Socket;)V

    .line 283
    new-instance v0, Lcom/parse/PushConnection$WaitRetryState;

    iget-object v1, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Lcom/parse/PushConnection$ConnectState;->nextDelay()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/PushConnection$WaitRetryState;-><init>(Lcom/parse/PushConnection;J)V

    .line 285
    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/parse/PushConnection$ConnectedState;

    iget-object v1, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v0, v1, v2}, Lcom/parse/PushConnection$ConnectedState;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V

    goto :goto_1

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0

    .line 265
    :catch_1
    move-exception v1

    goto :goto_0
.end method
