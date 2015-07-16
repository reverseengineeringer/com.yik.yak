.class public final Lkr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, LmF;->a(Landroid/content/Context;)Llw;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lkr;->a(Llw;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    goto :goto_0
.end method

.method public static a(Llw;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Llw;->a()LkL;

    move-result-object v0

    invoke-static {v0}, Lkh;->a(LkL;)V

    invoke-interface {p0}, Llw;->b()Lne;

    move-result-object v0

    invoke-static {v0}, LmI;->a(Lne;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
