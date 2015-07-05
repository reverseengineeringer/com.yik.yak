.class LU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LT;


# direct methods
.method constructor <init>(LT;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, LU;->a:LT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LR;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, LU;->a:LT;

    iget-object v0, v0, LT;->c:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 500
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, LU;->a:LT;

    iget-object v0, v0, LT;->c:Lad;

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, LU;->a:LT;

    iget-object v0, v0, LT;->c:Lad;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0, p1}, LU;->a(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
