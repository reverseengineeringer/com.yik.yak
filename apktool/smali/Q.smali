.class LQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LP;


# direct methods
.method constructor <init>(LP;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, LQ;->a:LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LN;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, LQ;->a:LP;

    iget-object v0, v0, LP;->c:LZ;

    invoke-virtual {v0}, LZ;->c()V

    .line 500
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, LQ;->a:LP;

    iget-object v0, v0, LP;->c:LZ;

    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, LQ;->a:LP;

    iget-object v0, v0, LP;->c:LZ;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0, p1}, LQ;->a(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
