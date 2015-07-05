.class public final LmH;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lnn;


# direct methods
.method public constructor <init>(Lnn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiE;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn;

    iput-object v0, p0, LmH;->a:Lnn;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LmH;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, LmH;->a:Lnn;

    check-cast p1, LmH;

    iget-object v1, p1, LmH;->a:Lnn;

    invoke-interface {v0, v1}, Lnn;->a(Lnn;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, LmH;->a:Lnn;

    invoke-interface {v0}, Lnn;->k()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, LmI;

    invoke-direct {v1, v0}, LmI;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
