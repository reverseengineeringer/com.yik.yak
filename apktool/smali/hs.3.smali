.class Lhs;
.super Ljava/lang/Object;

# interfaces
.implements LhD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LhD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0

    iput-object p1, p0, Lhs;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lhs;->a:Lhr;

    invoke-static {v0, p1}, Lhr;->a(Lhr;Lhq;)Lhq;

    iget-object v0, p0, Lhs;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhy;

    iget-object v2, p0, Lhs;->a:Lhr;

    invoke-static {v2}, Lhr;->b(Lhr;)Lhq;

    move-result-object v2

    invoke-interface {v0, v2}, Lhy;->a(Lhq;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhs;->a:Lhr;

    invoke-static {v0}, Lhr;->a(Lhr;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lhs;->a:Lhr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhr;->a(Lhr;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
