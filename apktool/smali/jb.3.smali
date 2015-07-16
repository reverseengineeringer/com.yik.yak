.class Ljb;
.super Ljava/lang/Object;

# interfaces
.implements Ljt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljt",
        "<",
        "Ljk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lja;


# direct methods
.method constructor <init>(Lja;)V
    .locals 0

    iput-object p1, p0, Ljb;->a:Lja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ljb;->a:Lja;

    invoke-static {v0}, Lja;->a(Lja;)V

    return-void
.end method

.method public b()Ljk;
    .locals 1

    iget-object v0, p0, Ljb;->a:Lja;

    invoke-virtual {v0}, Lja;->f()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Ljk;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Ljb;->b()Ljk;

    move-result-object v0

    return-object v0
.end method
