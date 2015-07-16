.class public LIV;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements LIN;
.implements LIW;
.implements LJa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "LIN",
        "<",
        "LJa;",
        ">;",
        "LIW;",
        "LJa;"
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
    invoke-virtual {p0, p1}, LIV;->a(Ljava/lang/Object;)LIN;

    move-result-object v0

    iput-object v0, p0, LIV;->b:Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, LIV;->a(Ljava/lang/Object;)LIN;

    move-result-object v0

    iput-object v0, p0, LIV;->b:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public a()LIN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIN",
            "<",
            "LJa;",
            ">;:",
            "LIW;",
            ":",
            "LJa;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, LIV;->b:Ljava/lang/Object;

    check-cast v0, LIN;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)LIN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "LIN",
            "<",
            "LJa;",
            ">;:",
            "LIW;",
            ":",
            "LJa;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, LIX;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, LIN;

    .line 88
    :goto_0
    return-object p1

    :cond_0
    new-instance p1, LIX;

    invoke-direct {p1}, LIX;-><init>()V

    goto :goto_0
.end method

.method public a(LJa;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LIN;

    invoke-interface {v0, p1}, LIN;->c(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0, p1}, LJa;->a(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public b()LIQ;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    invoke-interface {v0}, LIW;->b()LIQ;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0, p1}, LJa;->b(Z)V

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
            "LJa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LIN;

    invoke-interface {v0}, LIN;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, LJa;

    invoke-virtual {p0, p1}, LIV;->a(LJa;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    invoke-interface {v0, p1}, LIW;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LIN;

    invoke-interface {v0}, LIN;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, LIV;->a()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0}, LJa;->e()Z

    move-result v0

    return v0
.end method
