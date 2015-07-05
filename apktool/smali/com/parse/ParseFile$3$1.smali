.class Lcom/parse/ParseFile$3$1;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$3;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$3$1;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseFile;->access$000(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v1, v1, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    invoke-virtual {v0}, Lad;->b()Z

    .line 437
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 432
    :cond_0
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$3$1;->this$1:Lcom/parse/ParseFile$3;

    iget-object v0, v0, Lcom/parse/ParseFile$3;->val$tcs:Lad;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method
