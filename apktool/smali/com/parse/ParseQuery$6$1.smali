.class Lcom/parse/ParseQuery$6$1;
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
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$6;

.field final synthetic val$caching:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$6;Z)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/parse/ParseQuery$6$1;->this$1:Lcom/parse/ParseQuery$6;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$6$1;->val$caching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$6$1;->then(LR;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/parse/ParseQuery$6$1;->val$caching:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/parse/ParseQuery$6$1;->this$1:Lcom/parse/ParseQuery$6;

    iget-object v1, v1, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/Parse;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$6$1;->this$1:Lcom/parse/ParseQuery$6;

    iget-object v0, v0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->queryReceived:J
    invoke-static {v0, v2, v3}, Lcom/parse/ParseQuery;->access$702(Lcom/parse/ParseQuery;J)J

    .line 576
    iget-object v0, p0, Lcom/parse/ParseQuery$6$1;->this$1:Lcom/parse/ParseQuery$6;

    iget-object v1, v0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/parse/ParseQuery;->access$800(Lcom/parse/ParseQuery;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
