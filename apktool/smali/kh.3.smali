.class public final Lkh;
.super Ljava/lang/Object;


# static fields
.field private static a:LkL;


# direct methods
.method private static a()LkL;
    .locals 2

    sget-object v0, Lkh;->a:LkL;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, LiB;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkL;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;F)Lkg;
    .locals 2

    :try_start_0
    new-instance v0, Lkg;

    invoke-static {}, Lkh;->a()LkL;

    move-result-object v1

    invoke-interface {v1, p0, p1}, LkL;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lhw;

    move-result-object v1

    invoke-direct {v0, v1}, Lkg;-><init>(Lhw;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(LkL;)V
    .locals 1

    invoke-static {p0}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkL;

    sput-object v0, Lkh;->a:LkL;

    return-void
.end method
