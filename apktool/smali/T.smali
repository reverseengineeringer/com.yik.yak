.class LT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Void;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:LM;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:LL;

.field final synthetic e:LN;


# direct methods
.method constructor <init>(LN;Ljava/util/concurrent/Callable;LM;Ljava/util/concurrent/Executor;LL;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, LT;->e:LN;

    iput-object p2, p0, LT;->a:Ljava/util/concurrent/Callable;

    iput-object p3, p0, LT;->b:LM;

    iput-object p4, p0, LT;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, LT;->d:LL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LN;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, LT;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    iget-object v1, p0, LT;->b:LM;

    iget-object v2, p0, LT;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, LN;->d(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v1

    iget-object v0, p0, LT;->d:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM;

    iget-object v2, p0, LT;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, LN;->d(LM;Ljava/util/concurrent/Executor;)LN;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0, p1}, LT;->a(LN;)LN;

    move-result-object v0

    return-object v0
.end method
