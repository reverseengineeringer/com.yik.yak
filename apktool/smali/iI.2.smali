.class LiI;
.super LiL;


# instance fields
.field final synthetic a:LiH;


# direct methods
.method constructor <init>(LiH;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, LiI;->a:LiH;

    invoke-direct {p0, p2}, LiL;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, LiM;

    invoke-virtual {p0, p1}, LiI;->a(LiM;)V

    return-void
.end method

.method protected a(LiM;)V
    .locals 2

    invoke-virtual {p1}, LiM;->f()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LiQ;

    new-instance v1, LiJ;

    invoke-direct {v1, p0}, LiJ;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, LiQ;->a(LiN;)V

    return-void
.end method
