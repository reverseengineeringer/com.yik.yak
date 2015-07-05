.class public LiP;
.super Lid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lid",
        "<",
        "LiT;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lid;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, LiP;->c(Landroid/os/IBinder;)LiT;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.service.START"

    return-object v0
.end method

.method protected a(Liu;Lig;)V
    .locals 2

    const v0, 0x648278

    invoke-virtual {p0}, LiP;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Liu;->j(Lir;ILjava/lang/String;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonService"

    return-object v0
.end method

.method protected c(Landroid/os/IBinder;)LiT;
    .locals 1

    invoke-static {p1}, LiU;->a(Landroid/os/IBinder;)LiT;

    move-result-object v0

    return-object v0
.end method
