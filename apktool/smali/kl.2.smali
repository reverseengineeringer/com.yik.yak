.class public final Lkl;
.super Ljava/lang/Object;


# instance fields
.field private final a:LkL;

.field private b:LkE;


# direct methods
.method public constructor <init>(LkL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkL;

    iput-object v0, p0, Lkl;->a:LkL;

    return-void
.end method


# virtual methods
.method public a()LkL;
    .locals 1

    iget-object v0, p0, Lkl;->a:LkL;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)LmH;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkl;->a:LkL;

    invoke-interface {v0, p1}, LkL;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lnn;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, LmH;

    invoke-direct {v0, v1}, LmH;-><init>(Lnn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lkj;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkl;->a:LkL;

    invoke-virtual {p1}, Lkj;->a()Lhz;

    move-result-object v1

    invoke-interface {v0, v1}, LkL;->a(Lhz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lkn;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lkl;->a:LkL;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LkL;->a(LlO;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lkl;->a:LkL;

    new-instance v1, Lkm;

    invoke-direct {v1, p0, p1}, Lkm;-><init>(Lkl;Lkn;)V

    invoke-interface {v0, v1}, LkL;->a(LlO;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkl;->a:LkL;

    invoke-interface {v0}, LkL;->a()Lcom/google/android/gms/maps/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkl;->a:LkL;

    invoke-interface {v0}, LkL;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()LkE;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkl;->b:LkE;

    if-nez v0, :cond_0

    new-instance v0, LkE;

    iget-object v1, p0, Lkl;->a:LkL;

    invoke-interface {v1}, LkL;->k()Llj;

    move-result-object v1

    invoke-direct {v0, v1}, LkE;-><init>(Llj;)V

    iput-object v0, p0, Lkl;->b:LkE;

    :cond_0
    iget-object v0, p0, Lkl;->b:LkE;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
