.class Lcom/parse/ParseObject$37$2$3$1$1;
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
.field final synthetic this$3:Lcom/parse/ParseObject$37$2$3$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37$2$3$1;)V
    .locals 0

    .prologue
    .line 2343
    iput-object p1, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 6
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
    .line 2346
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 2347
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2348
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v1, v1, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v1, v1, Lcom/parse/ParseObject$37$2$3;->val$operations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v5, v5, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v5, v5, Lcom/parse/ParseObject$37$2$3;->this$1:Lcom/parse/ParseObject$37$2;

    iget-object v5, v5, Lcom/parse/ParseObject$37$2;->this$0:Lcom/parse/ParseObject$37;

    iget-object v5, v5, Lcom/parse/ParseObject$37;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/parse/ParseObject;->constructSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 2351
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 2352
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2347
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2356
    :cond_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "multi"

    iget-object v2, p0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v2, v2, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v2, v2, Lcom/parse/ParseObject$37$2$3;->this$1:Lcom/parse/ParseObject$37$2;

    iget-object v2, v2, Lcom/parse/ParseObject$37$2;->this$0:Lcom/parse/ParseObject$37;

    iget-object v2, v2, Lcom/parse/ParseObject$37;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v1, "commands"

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2358
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->executeAsync()LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->i()LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$37$2$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$37$2$3$1$1$1;-><init>(Lcom/parse/ParseObject$37$2$3$1$1;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2343
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2$3$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
