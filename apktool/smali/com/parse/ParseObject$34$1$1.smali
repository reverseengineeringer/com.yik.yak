.class Lcom/parse/ParseObject$34$1$1;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$34$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$34$1;)V
    .locals 0

    .prologue
    .line 2061
    iput-object p1, p0, Lcom/parse/ParseObject$34$1$1;->this$1:Lcom/parse/ParseObject$34$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2064
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2065
    iget-object v0, p0, Lcom/parse/ParseObject$34$1$1;->this$1:Lcom/parse/ParseObject$34$1;

    iget-object v0, v0, Lcom/parse/ParseObject$34$1;->this$0:Lcom/parse/ParseObject$34;

    iget-object v0, v0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2066
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/ParseObject$34$1$1;->this$1:Lcom/parse/ParseObject$34$1;

    iget-object v4, v4, Lcom/parse/ParseObject$34$1;->this$0:Lcom/parse/ParseObject$34;

    iget-object v4, v4, Lcom/parse/ParseObject$34;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseObject;->constructDeleteCommand(ZLjava/lang/String;)Lcom/parse/ParseCommand;
    invoke-static {v0, v3, v4}, Lcom/parse/ParseObject;->access$1200(Lcom/parse/ParseObject;ZLjava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 2068
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 2069
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2073
    :cond_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "multi"

    iget-object v3, p0, Lcom/parse/ParseObject$34$1$1;->this$1:Lcom/parse/ParseObject$34$1;

    iget-object v3, v3, Lcom/parse/ParseObject$34$1;->this$0:Lcom/parse/ParseObject$34;

    iget-object v3, v3, Lcom/parse/ParseObject$34;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string v2, "commands"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2075
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2061
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$34$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
