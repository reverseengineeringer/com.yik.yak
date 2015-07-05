.class public final Lku;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, LmC;->a(Landroid/content/Context;)Llt;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lku;->a(Llt;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget v0, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    goto :goto_0
.end method

.method public static a(Llt;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Llt;->a()LkI;

    move-result-object v0

    invoke-static {v0}, Lkk;->a(LkI;)V

    invoke-interface {p0}, Llt;->b()Lnb;

    move-result-object v0

    invoke-static {v0}, LmF;->a(Lnb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
