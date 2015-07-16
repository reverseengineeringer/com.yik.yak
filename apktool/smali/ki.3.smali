.class public final Lki;
.super Ljava/lang/Object;


# instance fields
.field private final a:LkO;

.field private b:LkH;


# direct methods
.method public constructor <init>(LkO;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkO;

    iput-object v0, p0, Lki;->a:LkO;

    return-void
.end method


# virtual methods
.method public a()LkO;
    .locals 1

    iget-object v0, p0, Lki;->a:LkO;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)LmK;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lki;->a:LkO;

    invoke-interface {v0, p1}, LkO;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lnq;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, LmK;

    invoke-direct {v0, v1}, LmK;-><init>(Lnq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lkg;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lki;->a:LkO;

    invoke-virtual {p1}, Lkg;->a()Lhw;

    move-result-object v1

    invoke-interface {v0, v1}, LkO;->a(Lhw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lkk;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lki;->a:LkO;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LkO;->a(LlR;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lki;->a:LkO;

    new-instance v1, Lkj;

    invoke-direct {v1, p0, p1}, Lkj;-><init>(Lki;Lkk;)V

    invoke-interface {v0, v1}, LkO;->a(LlR;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lki;->a:LkO;

    invoke-interface {v0}, LkO;->a()Lcom/google/android/gms/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lki;->a:LkO;

    invoke-interface {v0}, LkO;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()LkH;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lki;->b:LkH;

    if-nez v0, :cond_0

    new-instance v0, LkH;

    iget-object v1, p0, Lki;->a:LkO;

    invoke-interface {v1}, LkO;->k()Llm;

    move-result-object v1

    invoke-direct {v0, v1}, LkH;-><init>(Llm;)V

    iput-object v0, p0, Lki;->b:LkH;

    :cond_0
    iget-object v0, p0, Lki;->b:LkH;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
