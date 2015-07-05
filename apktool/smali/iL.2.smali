.class LiL;
.super LiO;


# instance fields
.field final synthetic a:LiK;


# direct methods
.method constructor <init>(LiK;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, LiL;->a:LiK;

    invoke-direct {p0, p2}, LiO;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, LiP;

    invoke-virtual {p0, p1}, LiL;->a(LiP;)V

    return-void
.end method

.method protected a(LiP;)V
    .locals 2

    invoke-virtual {p1}, LiP;->f()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LiT;

    new-instance v1, LiM;

    invoke-direct {v1, p0}, LiM;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, LiT;->a(LiQ;)V

    return-void
.end method
