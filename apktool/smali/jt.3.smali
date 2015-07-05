.class public Ljt;
.super Ljd;


# instance fields
.field private final e:Ljq;

.field private final f:Ljb;

.field private final g:LhP;


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

    invoke-direct/range {v0 .. v8}, Ljt;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct/range {v0 .. v5}, Ljd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V

    new-instance v0, Ljq;

    iget-object v1, p0, Ljt;->d:Ljw;

    invoke-direct {v0, p1, v1}, Ljq;-><init>(Landroid/content/Context;Ljw;)V

    iput-object v0, p0, Ljt;->e:Ljq;

    iget-object v0, p0, Ljt;->d:Ljw;

    invoke-static {p1, p7, p8, v0}, Ljb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljw;)Ljb;

    move-result-object v0

    iput-object v0, p0, Ljt;->f:Ljb;

    iget-object v0, p0, Ljt;->d:Ljw;

    invoke-static {p1, v0}, LhP;->a(Landroid/content/Context;Ljw;)LhP;

    move-result-object v0

    iput-object v0, p0, Ljt;->g:LhP;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/location/LocationRequest;LjZ;Landroid/os/Looper;)V
    .locals 2

    iget-object v1, p0, Ljt;->e:Ljq;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljt;->e:Ljq;

    invoke-virtual {v0, p1, p2, p3}, Ljq;->a(Lcom/google/android/gms/location/LocationRequest;LjZ;Landroid/os/Looper;)V

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

    iget-object v1, p0, Ljt;->e:Ljq;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljt;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Ljt;->e:Ljq;

    invoke-virtual {v0}, Ljq;->b()V

    iget-object v0, p0, Ljt;->e:Ljq;

    invoke-virtual {v0}, Ljq;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Ljd;->disconnect()V

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

    iget-object v0, p0, Ljt;->e:Ljq;

    invoke-virtual {v0}, Ljq;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
