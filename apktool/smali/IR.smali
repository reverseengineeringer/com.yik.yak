.class public abstract LIR;
.super LIC;
.source "SourceFile"

# interfaces
.implements LIN;
.implements LIW;
.implements LJa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "LIC",
        "<TParams;TProgress;TResult;>;",
        "LIN",
        "<",
        "LJa;",
        ">;",
        "LIW;",
        "LJa;"
    }
.end annotation


# instance fields
.field private final a:LIX;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, LIC;-><init>()V

    .line 20
    new-instance v0, LIX;

    invoke-direct {v0}, LIX;-><init>()V

    iput-object v0, p0, LIR;->a:LIX;

    .line 21
    return-void
.end method


# virtual methods
.method public a(LJa;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, LIR;->b_()LIL;

    move-result-object v0

    sget-object v1, LIL;->a:LIL;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, LIR;->f()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LIN;

    invoke-interface {v0, p1}, LIN;->c(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, LIR;->f()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0, p1}, LJa;->a(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, LIS;

    invoke-direct {v0, p1, p0}, LIS;-><init>(Ljava/util/concurrent/Executor;LIR;)V

    .line 26
    invoke-super {p0, v0, p2}, LIC;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)LIC;

    .line 27
    return-void
.end method

.method public b()LIQ;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, LIR;->f()LIN;

    move-result-object v0

    check-cast v0, LIW;

    invoke-interface {v0}, LIW;->b()LIQ;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, LIR;->f()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0, p1}, LJa;->b(Z)V

    .line 65
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
    .line 49
    invoke-virtual {p0}, LIR;->f()LIN;

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
    .line 10
    check-cast p1, LJa;

    invoke-virtual {p0, p1}, LIR;->a(LJa;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, LIQ;->a(LIW;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, LIR;->f()LIN;

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
    .line 69
    invoke-virtual {p0}, LIR;->f()LIN;

    move-result-object v0

    check-cast v0, LIW;

    check-cast v0, LJa;

    invoke-interface {v0}, LJa;->e()Z

    move-result v0

    return v0
.end method

.method public f()LIN;
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
    .line 84
    iget-object v0, p0, LIR;->a:LIX;

    return-object v0
.end method
