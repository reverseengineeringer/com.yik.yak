.class Lkj;
.super LlS;


# instance fields
.field final synthetic a:Lkk;

.field final synthetic b:Lki;


# direct methods
.method constructor <init>(Lki;Lkk;)V
    .locals 0

    iput-object p1, p0, Lkj;->b:Lki;

    iput-object p2, p0, Lkj;->a:Lkk;

    invoke-direct {p0}, LlS;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lkj;->a:Lkk;

    invoke-interface {v0, p1}, Lkk;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
