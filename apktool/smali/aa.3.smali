.class Laa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TTResult;",
        "LR",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LQ;

.field final synthetic b:LR;


# direct methods
.method constructor <init>(LR;LQ;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Laa;->b:LR;

    iput-object p2, p0, Laa;->a:LQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR;)LR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TTResult;>;)",
            "LR",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, LR;->a(Ljava/lang/Exception;)LR;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static {}, LR;->h()LR;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Laa;->a:LQ;

    invoke-virtual {p1, v0}, LR;->a(LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Laa;->a(LR;)LR;

    move-result-object v0

    return-object v0
.end method