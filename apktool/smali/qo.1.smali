.class final Lqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqh",
        "<",
        "Lqo;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lqt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqt",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lrb;

.field final d:Z


# virtual methods
.method public a(Lqo;)I
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lqo;->b:I

    iget v1, p1, Lqo;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(LqC;LqB;)LqC;
    .locals 1

    .prologue
    .line 745
    check-cast p1, Lqk;

    check-cast p2, Lqi;

    invoke-virtual {p1, p2}, Lqk;->a(Lqi;)Lqk;

    move-result-object v0

    return-object v0
.end method

.method public a(LqE;LqE;)LqE;
    .locals 1

    .prologue
    .line 751
    check-cast p1, Lqq;

    check-cast p2, Lqq;

    invoke-virtual {p1, p2}, Lqq;->a(Lqq;)Lqq;

    move-result-object v0

    return-object v0
.end method

.method public a()Lrb;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lqo;->c:Lrb;

    return-object v0
.end method

.method public b()Lrg;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lqo;->c:Lrb;

    invoke-virtual {v0}, Lrb;->b()Lrg;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lqo;->d:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 696
    check-cast p1, Lqo;

    invoke-virtual {p0, p1}, Lqo;->a(Lqo;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lqo;->b:I

    return v0
.end method

.method public e()Lqt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqt",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lqo;->a:Lqt;

    return-object v0
.end method
