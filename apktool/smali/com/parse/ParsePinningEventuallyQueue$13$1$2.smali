.class Lcom/parse/ParsePinningEventuallyQueue$13$1$2;
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
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

.field final synthetic val$saveTask:LN;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;LN;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->val$saveTask:LN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
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
    .line 504
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->val$saveTask:LN;

    invoke-virtual {v0}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 506
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$13;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;

    move-result-object p1

    .line 510
    :cond_0
    :goto_0
    return-object p1

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 508
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$13$1;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->handleDeleteEventuallyResultAsync(Ljava/lang/Object;)LN;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
