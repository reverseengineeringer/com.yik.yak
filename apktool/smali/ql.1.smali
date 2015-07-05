.class final Lql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqe",
        "<",
        "Lql;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqq",
            "<*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:LqY;

.field final d:Z


# virtual methods
.method public a(Lql;)I
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lql;->b:I

    iget v1, p1, Lql;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(LqB;LqB;)LqB;
    .locals 1

    .prologue
    .line 751
    check-cast p1, Lqn;

    check-cast p2, Lqn;

    invoke-virtual {p1, p2}, Lqn;->a(Lqn;)Lqn;

    move-result-object v0

    return-object v0
.end method

.method public a()LqY;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lql;->c:LqY;

    return-object v0
.end method

.method public a(Lqz;Lqy;)Lqz;
    .locals 1

    .prologue
    .line 745
    check-cast p1, Lqh;

    check-cast p2, Lqf;

    invoke-virtual {p1, p2}, Lqh;->a(Lqf;)Lqh;

    move-result-object v0

    return-object v0
.end method

.method public b()Lrd;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lql;->c:LqY;

    invoke-virtual {v0}, LqY;->b()Lrd;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lql;->d:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 696
    check-cast p1, Lql;

    invoke-virtual {p0, p1}, Lql;->a(Lql;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lql;->b:I

    return v0
.end method

.method public e()Lqq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lql;->a:Lqq;

    return-object v0
.end method
