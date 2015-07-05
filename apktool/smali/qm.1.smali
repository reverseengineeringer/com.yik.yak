.class public Lqm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lqy;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lqy;

.field final b:Lql;


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lqm;->b:Lql;

    invoke-virtual {v0}, Lql;->d()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lqm;->b:Lql;

    invoke-virtual {v0}, Lql;->b()Lrd;

    move-result-object v0

    sget-object v1, Lrd;->h:Lrd;

    if-ne v0, v1, :cond_0

    .line 917
    check-cast p1, Lqp;

    invoke-interface {p1}, Lqp;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 919
    :cond_0
    return-object p1
.end method

.method public b()Lqy;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lqm;->a:Lqy;

    return-object v0
.end method
