.class LX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:LQ;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:LP;

.field final synthetic e:LR;


# direct methods
.method constructor <init>(LR;Ljava/util/concurrent/Callable;LQ;Ljava/util/concurrent/Executor;LP;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, LX;->e:LR;

    iput-object p2, p0, LX;->a:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LX;->b:LQ;

    iput-object p4, p0, LX;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, LX;->d:LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, LX;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {v1}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    iget-object v1, p0, LX;->b:LQ;

    iget-object v2, p0, LX;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v1

    iget-object v0, p0, LX;->d:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ;

    iget-object v2, p0, LX;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, LX;->a(LR;)LR;

    move-result-object v0

    return-object v0
.end method
