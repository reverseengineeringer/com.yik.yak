.class Lcom/parse/ParsePinningEventuallyQueue$13$1;
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
        "Ljava/lang/Object;",
        "LR",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iput p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 484
    instance-of v1, v0, Lcom/parse/ParseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 490
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    .line 492
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LR;
    invoke-static {v0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)LR;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->unpinInBackground(Ljava/lang/String;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;LR;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;LR;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
