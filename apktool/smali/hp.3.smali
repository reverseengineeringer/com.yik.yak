.class Lhp;
.super Ljava/lang/Object;

# interfaces
.implements LhA;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LhA",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lho;


# direct methods
.method constructor <init>(Lho;)V
    .locals 0

    iput-object p1, p0, Lhp;->a:Lho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lhp;->a:Lho;

    invoke-static {v0, p1}, Lho;->a(Lho;Lhn;)Lhn;

    iget-object v0, p0, Lhp;->a:Lho;

    invoke-static {v0}, Lho;->a(Lho;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhv;

    iget-object v2, p0, Lhp;->a:Lho;

    invoke-static {v2}, Lho;->b(Lho;)Lhn;

    move-result-object v2

    invoke-interface {v0, v2}, Lhv;->a(Lhn;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhp;->a:Lho;

    invoke-static {v0}, Lho;->a(Lho;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lhp;->a:Lho;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lho;->a(Lho;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
