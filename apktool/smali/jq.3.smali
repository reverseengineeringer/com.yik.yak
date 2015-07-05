.class public Ljq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljw",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:Landroid/content/ContentProviderClient;

.field private d:Z

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "LjZ;",
            "Ljs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljw",
            "<",
            "Ljn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljq;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljq;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljq;->e:Ljava/util/HashMap;

    iput-object p1, p0, Ljq;->b:Landroid/content/Context;

    iput-object p2, p0, Ljq;->a:Ljw;

    return-void
.end method

.method private a(LjZ;Landroid/os/Looper;)Ljs;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, LiE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Ljq;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljq;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs;

    if-nez v0, :cond_1

    new-instance v0, Ljs;

    invoke-direct {v0, p1, p2}, Ljs;-><init>(LjZ;Landroid/os/Looper;)V

    :cond_1
    iget-object v2, p0, Ljq;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->a()V

    :try_start_0
    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljn;

    iget-object v1, p0, Ljq;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljn;->a(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;LjZ;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->a()V

    invoke-direct {p0, p2, p3}, Ljq;->a(LjZ;Landroid/os/Looper;)Ljs;

    move-result-object v1

    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljn;

    invoke-interface {v0, p1, v1}, Ljn;->a(Lcom/google/android/gms/location/LocationRequest;Lke;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->a()V

    iget-object v0, p0, Ljq;->a:Ljw;

    invoke-interface {v0}, Ljw;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljn;

    invoke-interface {v0, p1}, Ljn;->a(Z)V

    iput-boolean p1, p0, Ljq;->d:Z

    return-void
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Ljq;->e:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ljq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljq;->a:Ljw;

    invoke-interface {v1}, Ljw;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ljn;

    invoke-interface {v1, v0}, Ljn;->a(Lke;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Ljq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Ljq;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljq;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
