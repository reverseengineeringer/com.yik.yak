.class Lcom/parse/ParseFile$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$5;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$5;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$5$1;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<[B>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->this$0:Lcom/parse/ParseFile;

    # getter for: Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseFile;->access$000(Lcom/parse/ParseFile;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    iget-object v1, v1, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-virtual {v0}, LZ;->b()Z

    .line 569
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 563
    :cond_0
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$5$1;->this$1:Lcom/parse/ParseFile$5;

    iget-object v0, v0, Lcom/parse/ParseFile$5;->val$tcs:LZ;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LZ;->a(Ljava/lang/Object;)Z

    goto :goto_0
.end method
