.class Lcom/facebook/Session$TokenRefreshRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 3

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1645
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/Session$TokenRefreshRequestHandler;

    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-direct {v1, v2, p0}, Lcom/facebook/Session$TokenRefreshRequestHandler;-><init>(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    .line 1648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0}, Lcom/facebook/Session;->access$1600(Lcom/facebook/Session;)Lcom/facebook/Session$TokenRefreshRequest;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/Session;->currentTokenRefreshRequest:Lcom/facebook/Session$TokenRefreshRequest;
    invoke-static {v0, v1}, Lcom/facebook/Session;->access$1602(Lcom/facebook/Session;Lcom/facebook/Session$TokenRefreshRequest;)Lcom/facebook/Session$TokenRefreshRequest;

    .line 1683
    :cond_0
    return-void
.end method

.method private refreshToken()V
    .locals 3

    .prologue
    .line 1686
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1687
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getTokenInfo()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1690
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1691
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1694
    :try_start_0
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1698
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    .line 1651
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1652
    if-eqz v0, :cond_0

    # getter for: Lcom/facebook/Session;->staticContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Session;->access$1500()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->this$0:Lcom/facebook/Session;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    .line 1658
    :goto_0
    return-void

    .line 1656
    :cond_0
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1662
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    .line 1663
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->refreshToken()V

    .line 1664
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 1668
    invoke-direct {p0}, Lcom/facebook/Session$TokenRefreshRequest;->cleanup()V

    .line 1673
    :try_start_0
    # getter for: Lcom/facebook/Session;->staticContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/Session;->access$1500()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
