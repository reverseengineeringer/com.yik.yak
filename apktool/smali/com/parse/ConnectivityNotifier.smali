.class Lcom/parse/ConnectivityNotifier;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "com.parse.ConnectivityNotifier"

.field private static final singleton:Lcom/parse/ConnectivityNotifier;


# instance fields
.field private hasRegisteredReceiver:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ConnectivityNotifier$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0}, Lcom/parse/ConnectivityNotifier;-><init>()V

    sput-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    return-void
.end method

.method static getNotifier()Lcom/parse/ConnectivityNotifier;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications()Z

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 79
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 80
    const-string v0, "com.parse.ConnectivityNotifier"

    const-string v2, "Trying to check network connectivity without a known context. Has Parse.initialize been called from Application.onCreate? (Not Activity.onCreate)"

    invoke-static {v0, v2}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 74
    invoke-interface {v0, p2}, Lcom/parse/ConnectivityNotifier$ConnectivityListener;->networkConnectivityStatusChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications()Z

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryToRegisterForNetworkStatusNotifications()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 46
    iget-object v2, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-boolean v3, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    if-eqz v3, :cond_0

    .line 48
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    return v0

    .line 52
    :cond_0
    :try_start_1
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 53
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 55
    :cond_1
    :try_start_3
    sget-object v3, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z
    :try_end_3
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 60
    :catch_0
    move-exception v0

    :try_start_5
    const-string v0, "com.parse.ConnectivityNotifier"

    const-string v3, "Cannot register a broadcast receiver because the executing thread is currently in a broadcast receiver. Will try again later."

    invoke-static {v0, v3}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v1

    goto :goto_0
.end method
