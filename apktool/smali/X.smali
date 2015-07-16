.class LX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TTResult;",
        "LN",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LM;

.field final synthetic b:LN;


# direct methods
.method constructor <init>(LN;LM;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, LX;->b:LN;

    iput-object p2, p0, LX;->a:LM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LN;)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TTResult;>;)",
            "LN",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, LN;->a(Ljava/lang/Exception;)LN;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 412
    :cond_0
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, LN;->h()LN;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, LX;->a:LM;

    invoke-virtual {p1, v0}, LN;->b(LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p1}, LX;->a(LN;)LN;

    move-result-object v0

    return-object v0
.end method
