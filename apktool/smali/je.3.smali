.class Lje;
.super Ljf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic b:LjW;

.field final synthetic c:Ljd;


# direct methods
.method constructor <init>(Ljd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;LjW;)V
    .locals 0

    iput-object p1, p0, Lje;->c:Ljd;

    iput-object p3, p0, Lje;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lje;->b:LjW;

    invoke-direct {p0, p2}, Ljf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Ljq;

    invoke-virtual {p0, p1}, Lje;->a(Ljq;)V

    return-void
.end method

.method protected a(Ljq;)V
    .locals 3

    iget-object v0, p0, Lje;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lje;->b:LjW;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljq;->a(Lcom/google/android/gms/location/LocationRequest;LjW;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Kw:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lje;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
