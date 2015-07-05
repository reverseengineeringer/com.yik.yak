.class Ljh;
.super Lji;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic b:LjZ;

.field final synthetic c:Ljg;


# direct methods
.method constructor <init>(Ljg;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;LjZ;)V
    .locals 0

    iput-object p1, p0, Ljh;->c:Ljg;

    iput-object p3, p0, Ljh;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Ljh;->b:LjZ;

    invoke-direct {p0, p2}, Lji;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Ljt;

    invoke-virtual {p0, p1}, Ljh;->a(Ljt;)V

    return-void
.end method

.method protected a(Ljt;)V
    .locals 3

    iget-object v0, p0, Ljh;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Ljh;->b:LjZ;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljt;->a(Lcom/google/android/gms/location/LocationRequest;LjZ;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Ljh;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
