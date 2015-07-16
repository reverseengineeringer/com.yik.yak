.class public Ljq;
.super Lja;


# instance fields
.field private final e:Ljn;

.field private final f:LiY;

.field private final g:LhM;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Ljq;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lja;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V

    new-instance v0, Ljn;

    iget-object v1, p0, Ljq;->d:Ljt;

    invoke-direct {v0, p1, v1}, Ljn;-><init>(Landroid/content/Context;Ljt;)V

    iput-object v0, p0, Ljq;->e:Ljn;

    iget-object v0, p0, Ljq;->d:Ljt;

    invoke-static {p1, p7, p8, v0}, LiY;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljt;)LiY;

    move-result-object v0

    iput-object v0, p0, Ljq;->f:LiY;

    iget-object v0, p0, Ljq;->d:Ljt;

    invoke-static {p1, v0}, LhM;->a(Landroid/content/Context;Ljt;)LhM;

    move-result-object v0

    iput-object v0, p0, Ljq;->g:LhM;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationRequest;LjW;Landroid/os/Looper;)V
    .locals 2

    iget-object v1, p0, Ljq;->e:Ljn;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljq;->e:Ljn;

    invoke-virtual {v0, p1, p2, p3}, Ljn;->a(Lcom/google/android/gms/location/LocationRequest;LjW;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v1, p0, Ljq;->e:Ljn;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljq;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Ljq;->e:Ljn;

    invoke-virtual {v0}, Ljn;->b()V

    iget-object v0, p0, Ljq;->e:Ljn;

    invoke-virtual {v0}, Ljn;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Lja;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Ljq;->e:Ljn;

    invoke-virtual {v0}, Ljn;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
