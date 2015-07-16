.class public Lja;
.super Lia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia",
        "<",
        "Ljk;",
        ">;"
    }
.end annotation


# instance fields
.field protected final d:Ljt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt",
            "<",
            "Ljk;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lia;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljb;

    invoke-direct {v0, p0}, Ljb;-><init>(Lja;)V

    iput-object v0, p0, Lja;->d:Ljt;

    iput-object p5, p0, Lja;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lja;)V
    .locals 0

    invoke-virtual {p0}, Lja;->e()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lja;->c(Landroid/os/IBinder;)Ljk;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected a(Lir;Lid;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lja;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x648278

    invoke-virtual {p0}, Lja;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lir;->e(Lio;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected c(Landroid/os/IBinder;)Ljk;
    .locals 1

    invoke-static {p1}, Ljl;->a(Landroid/os/IBinder;)Ljk;

    move-result-object v0

    return-object v0
.end method
