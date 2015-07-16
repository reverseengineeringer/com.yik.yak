.class public Lkx;
.super Lho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lho",
        "<",
        "Lkv;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:LhA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LhA",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Fragment;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lho;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkx;->d:Ljava/util/List;

    iput-object p1, p0, Lkx;->b:Landroid/app/Fragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lkx;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lkx;->g()V

    return-void
.end method

.method public static synthetic a(Lkx;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lkx;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(LhA;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LhA",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkx;->a:LhA;

    invoke-virtual {p0}, Lkx;->g()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lkx;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkx;->a:LhA;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkx;->a()Lhn;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lkx;->c:Landroid/app/Activity;

    invoke-static {v0}, Lkr;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lkx;->c:Landroid/app/Activity;

    invoke-static {v0}, LmF;->a(Landroid/content/Context;)Llw;

    move-result-object v0

    iget-object v1, p0, Lkx;->c:Landroid/app/Activity;

    invoke-static {v1}, Lhz;->a(Ljava/lang/Object;)Lhw;

    move-result-object v1

    invoke-interface {v0, v1}, Llw;->c(Lhw;)Llg;

    move-result-object v0

    iget-object v1, p0, Lkx;->a:LhA;

    new-instance v2, Lkv;

    iget-object v3, p0, Lkx;->b:Landroid/app/Fragment;

    invoke-direct {v2, v3, v0}, Lkv;-><init>(Landroid/app/Fragment;Llg;)V

    invoke-interface {v1, v2}, LhA;->a(Lhn;)V

    iget-object v0, p0, Lkx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkt;

    invoke-virtual {p0}, Lkx;->a()Lhn;

    move-result-object v1

    check-cast v1, Lkv;

    invoke-virtual {v1, v0}, Lkv;->a(Lkt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmL;

    invoke-direct {v1, v0}, LmL;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lkx;->d:Ljava/util/List;

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
