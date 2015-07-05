.class Lcom/parse/ParsePinningEventuallyQueue$13;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getType()I

    move-result v1

    .line 466
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getObject()Lcom/parse/ParseObject;

    move-result-object v2

    .line 467
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 470
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v3, v0}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)LR;

    move-result-object v0

    .line 479
    :goto_0
    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$13$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue$13$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V

    invoke-virtual {v0, v3}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 473
    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;)LR;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
