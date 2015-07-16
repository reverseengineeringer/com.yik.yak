.class public Lqp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "LqB;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:LqB;

.field final b:Lqo;


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lqp;->b:Lqo;

    invoke-virtual {v0}, Lqo;->d()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lqp;->b:Lqo;

    invoke-virtual {v0}, Lqo;->b()Lrg;

    move-result-object v0

    sget-object v1, Lrg;->h:Lrg;

    if-ne v0, v1, :cond_0

    .line 917
    check-cast p1, Lqs;

    invoke-interface {p1}, Lqs;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 919
    :cond_0
    return-object p1
.end method

.method public b()LqB;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lqp;->a:LqB;

    return-object v0
.end method
