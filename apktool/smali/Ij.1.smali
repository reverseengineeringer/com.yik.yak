.class public abstract LIj;
.super LHU;
.source "SourceFile"

# interfaces
.implements LIf;
.implements LIo;
.implements LIs;


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
        "LHU",
        "<TParams;TProgress;TResult;>;",
        "LIf",
        "<",
        "LIs;",
        ">;",
        "LIo;",
        "LIs;"
    }
.end annotation


# instance fields
.field private final a:LIp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, LHU;-><init>()V

    .line 20
    new-instance v0, LIp;

    invoke-direct {v0}, LIp;-><init>()V

    iput-object v0, p0, LIj;->a:LIp;

    .line 21
    return-void
.end method


# virtual methods
.method public a(LIs;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, LIj;->b_()LId;

    move-result-object v0

    sget-object v1, LId;->a:LId;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    invoke-virtual {p0}, LIj;->f()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIf;

    invoke-interface {v0, p1}, LIf;->c(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, LIj;->f()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0, p1}, LIs;->a(Ljava/lang/Throwable;)V

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
    new-instance v0, LIk;

    invoke-direct {v0, p1, p0}, LIk;-><init>(Ljava/util/concurrent/Executor;LIj;)V

    .line 26
    invoke-super {p0, v0, p2}, LHU;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)LHU;

    .line 27
    return-void
.end method

.method public b()LIi;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, LIj;->f()LIf;

    move-result-object v0

    check-cast v0, LIo;

    invoke-interface {v0}, LIo;->b()LIi;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, LIj;->f()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0, p1}, LIs;->b(Z)V

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
            "LIs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, LIj;->f()LIf;

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
    .line 10
    check-cast p1, LIs;

    invoke-virtual {p0, p1}, LIj;->a(LIs;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, LIi;->a(LIo;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, LIj;->f()LIf;

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
    .line 69
    invoke-virtual {p0}, LIj;->f()LIf;

    move-result-object v0

    check-cast v0, LIo;

    check-cast v0, LIs;

    invoke-interface {v0}, LIs;->e()Z

    move-result v0

    return v0
.end method

.method public f()LIf;
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
    .line 84
    iget-object v0, p0, LIj;->a:LIp;

    return-object v0
.end method
