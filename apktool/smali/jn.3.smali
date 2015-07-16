.class public Ljn;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt",
            "<",
            "Ljk;",
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
            "LjW;",
            "Ljp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljt",
            "<",
            "Ljk;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljn;->c:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljn;->d:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljn;->e:Ljava/util/HashMap;

    iput-object p1, p0, Ljn;->b:Landroid/content/Context;

    iput-object p2, p0, Ljn;->a:Ljt;

    return-void
.end method

.method private a(LjW;Landroid/os/Looper;)Ljp;
    .locals 3

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, LiB;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Ljn;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljn;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    if-nez v0, :cond_1

    new-instance v0, Ljp;

    invoke-direct {v0, p1, p2}, Ljp;-><init>(LjW;Landroid/os/Looper;)V

    :cond_1
    iget-object v2, p0, Ljn;->e:Ljava/util/HashMap;

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

    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->a()V

    :try_start_0
    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljk;

    iget-object v1, p0, Ljn;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljk;->a(Ljava/lang/String;)Landroid/location/Location;
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

.method public a(Lcom/google/android/gms/location/LocationRequest;LjW;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->a()V

    invoke-direct {p0, p2, p3}, Ljn;->a(LjW;Landroid/os/Looper;)Ljp;

    move-result-object v1

    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljk;

    invoke-interface {v0, p1, v1}, Ljk;->a(Lcom/google/android/gms/location/LocationRequest;Lkb;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->a()V

    iget-object v0, p0, Ljn;->a:Ljt;

    invoke-interface {v0}, Ljt;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljk;

    invoke-interface {v0, p1}, Ljk;->a(Z)V

    iput-boolean p1, p0, Ljn;->d:Z

    return-void
.end method

.method public b()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Ljn;->e:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ljn;->e:Ljava/util/HashMap;

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

    check-cast v0, Ljp;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljn;->a:Ljt;

    invoke-interface {v1}, Ljt;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Ljk;

    invoke-interface {v1, v0}, Ljk;->a(Lkb;)V

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
    iget-object v0, p0, Ljn;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Ljn;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljn;->a(Z)V
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
