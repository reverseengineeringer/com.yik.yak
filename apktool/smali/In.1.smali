.class public LIn;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements LIf;
.implements LIo;
.implements LIs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "LIf",
        "<",
        "LIs;",
        ">;",
        "LIo;",
        "LIs;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1}, LIn;->a(Ljava/lang/Object;)LIf;

    move-result-object v0

    iput-object v0, p0, LIn;->b:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    invoke-virtual {p0, p1}, LIn;->a(Ljava/lang/Object;)LIf;

    move-result-object v0

    iput-object v0, p0, LIn;->b:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public a()LIf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIf",
            "<",
            "LIs;",
            ">;:",
            "LIo;",
            ":",
            "LIs;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, LIn;->b:Ljava/lang/Object;

    check-cast v0, LIf;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)LIf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIf",
            "<",
            "LIs;",
            ">;:",
            "LIo;",
            ":",
            "LIs;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, LIp;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, LIf;

    .line 88
    :goto_0
    return-object p1

    :cond_0
    new-instance p1, LIp;

    invoke-direct {p1}, LIp;-><init>()V

    goto :goto_0
.end method

.method public a(LIs;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIf;

    invoke-interface {v0, p1}, LIf;->c(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0, p1}, LIs;->a(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public b()LIi;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    invoke-interface {v0}, LIo;->b()LIi;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0, p1}, LIs;->b(Z)V

    .line 59
    return-void
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "LIs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIf;

    invoke-interface {v0}, LIf;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, LIs;

    invoke-virtual {p0, p1}, LIn;->a(LIs;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    invoke-interface {v0, p1}, LIo;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIf;

    invoke-interface {v0}, LIf;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, LIn;->a()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0}, LIs;->e()Z

    move-result v0

    return v0
.end method
