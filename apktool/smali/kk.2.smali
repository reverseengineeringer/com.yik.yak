.class public final Lkk;
.super Ljava/lang/Object;


# static fields
.field private static a:LkI;


# direct methods
.method private static a()LkI;
    .locals 2

    sget-object v0, Lkk;->a:LkI;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, LiE;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkI;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;F)Lkj;
    .locals 2

    :try_start_0
    new-instance v0, Lkj;

    invoke-static {}, Lkk;->a()LkI;

    move-result-object v1

    invoke-interface {v1, p0, p1}, LkI;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lhz;

    move-result-object v1

    invoke-direct {v0, v1}, Lkj;-><init>(Lhz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(LkI;)V
    .locals 1

    invoke-static {p0}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkI;

    sput-object v0, Lkk;->a:LkI;

    return-void
.end method
