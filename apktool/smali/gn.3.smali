.class Lgn;
.super Ljava/lang/Object;

# interfaces
.implements Lgm;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lgp;

.field private c:Lgq;

.field private d:Landroid/content/Context;

.field private e:LhJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgp;Lgq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgn;->d:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lgn;->b:Lgp;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lgn;->c:Lgq;

    return-void
.end method

.method static synthetic a(Lgn;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lgn;->a:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lgn;LhJ;)LhJ;
    .locals 0

    iput-object p1, p0, Lgn;->e:LhJ;

    return-object p1
.end method

.method static synthetic a(Lgn;)V
    .locals 0

    invoke-direct {p0}, Lgn;->g()V

    return-void
.end method

.method static synthetic b(Lgn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lgn;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lgn;)Lgq;
    .locals 1

    iget-object v0, p0, Lgn;->c:Lgq;

    return-object v0
.end method

.method static synthetic d(Lgn;)Lgp;
    .locals 1

    iget-object v0, p0, Lgn;->b:Lgp;

    return-object v0
.end method

.method private f()LhJ;
    .locals 1

    invoke-virtual {p0}, Lgn;->d()V

    iget-object v0, p0, Lgn;->e:LhJ;

    return-object v0
.end method

.method private g()V
    .locals 0

    invoke-direct {p0}, Lgn;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lgn;->b:Lgp;

    invoke-interface {v0}, Lgp;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lgn;->f()LhJ;

    move-result-object v0

    invoke-interface {v0}, LhJ;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ha;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lgn;->f()LhJ;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, LhJ;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHit failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    iget-object v2, p0, Lgn;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lgn;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lgc;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lgo;

    invoke-direct {v1, p0}, Lgo;-><init>(Lgn;)V

    iput-object v1, p0, Lgn;->a:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lgn;->d:Landroid/content/Context;

    iget-object v2, p0, Lgn;->a:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgc;->c(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iput-object v4, p0, Lgn;->a:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lgn;->c:Lgq;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lgq;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lgn;->e:LhJ;

    iget-object v0, p0, Lgn;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgn;->d:Landroid/content/Context;

    iget-object v1, p0, Lgn;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lgn;->a:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lgn;->b:Lgp;

    invoke-interface {v0}, Lgp;->e()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    invoke-virtual {p0}, Lgn;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lgn;->e:LhJ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
