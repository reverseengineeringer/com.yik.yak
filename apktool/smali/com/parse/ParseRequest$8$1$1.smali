.class Lcom/parse/ParseRequest$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TResponse;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseRequest$8$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$8$1;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TResponse;>;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lad;

    invoke-virtual {v0}, Lad;->c()V

    .line 389
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_0
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lad;

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRequest$8$1$1;->this$2:Lcom/parse/ParseRequest$8$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$8$1;->val$retryTask:Lad;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$8$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
