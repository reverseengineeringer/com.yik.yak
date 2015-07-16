.class Lcom/parse/ParsePinningEventuallyQueue$5$1;
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
        "Lcom/parse/EventuallyPin;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParsePinningEventuallyQueue$5;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$5;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

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
            "Lcom/parse/EventuallyPin;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/EventuallyPin;

    .line 213
    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_1

    .line 215
    const/4 v0, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 216
    const-string v0, "ParsePinningEventuallyQueue"

    const-string v2, "Unable to save command for later."

    invoke-static {v0, v2, v1}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    .line 219
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v1, v1, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # getter for: Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v2, v2, Lcom/parse/ParsePinningEventuallyQueue$5;->val$tcs:LZ;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$5$1;->this$1:Lcom/parse/ParsePinningEventuallyQueue$5;

    iget-object v0, v0, Lcom/parse/ParsePinningEventuallyQueue$5;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    # invokes: Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()LN;
    invoke-static {v0}, Lcom/parse/ParsePinningEventuallyQueue;->access$300(Lcom/parse/ParsePinningEventuallyQueue;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$5$1$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$5$1;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    .line 237
    invoke-virtual {p1}, LN;->j()LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$5$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
