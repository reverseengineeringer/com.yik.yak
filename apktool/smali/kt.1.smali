.class public Lkt;
.super Lhr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhr",
        "<",
        "Lkr;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:LhD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LhD",
            "<",
            "Lkr;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/maps/GoogleMapOptions;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 1

    invoke-direct {p0}, Lhr;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkt;->e:Ljava/util/List;

    iput-object p1, p0, Lkt;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lkt;->c:Landroid/content/Context;

    iput-object p3, p0, Lkt;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method protected a(LhD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LhD",
            "<",
            "Lkr;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkt;->a:LhD;

    invoke-virtual {p0}, Lkt;->g()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lkt;->a:LhD;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkt;->a()Lhq;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkt;->c:Landroid/content/Context;

    invoke-static {v0}, LmC;->a(Landroid/content/Context;)Llt;

    move-result-object v0

    iget-object v1, p0, Lkt;->c:Landroid/content/Context;

    invoke-static {v1}, LhC;->a(Ljava/lang/Object;)Lhz;

    move-result-object v1

    iget-object v2, p0, Lkt;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Llt;->a(Lhz;Lcom/google/android/gms/maps/GoogleMapOptions;)LkU;

    move-result-object v0

    iget-object v1, p0, Lkt;->a:LhD;

    new-instance v2, Lkr;

    iget-object v3, p0, Lkt;->b:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lkr;-><init>(Landroid/view/ViewGroup;LkU;)V

    invoke-interface {v1, v2}, LhD;->a(Lhq;)V

    iget-object v0, p0, Lkt;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    invoke-virtual {p0}, Lkt;->a()Lhq;

    move-result-object v1

    check-cast v1, Lkr;

    invoke-virtual {v1, v0}, Lkr;->a(Lkv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkt;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
