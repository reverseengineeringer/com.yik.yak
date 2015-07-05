.class Lkm;
.super LlP;


# instance fields
.field final synthetic a:Lkn;

.field final synthetic b:Lkl;


# direct methods
.method constructor <init>(Lkl;Lkn;)V
    .locals 0

    iput-object p1, p0, Lkm;->b:Lkl;

    iput-object p2, p0, Lkm;->a:Lkn;

    invoke-direct {p0}, LlP;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lkm;->a:Lkn;

    invoke-interface {v0, p1}, Lkn;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
