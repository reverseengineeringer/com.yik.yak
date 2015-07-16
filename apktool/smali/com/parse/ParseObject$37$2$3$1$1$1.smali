.class Lcom/parse/ParseObject$37$2$3$1$1$1;
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
        "Lorg/json/JSONArray;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$4:Lcom/parse/ParseObject$37$2$3$1$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37$2$3$1$1;)V
    .locals 0

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/parse/ParseObject$37$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$37$2$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Lorg/json/JSONArray;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$37$2$3$1$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 2365
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2366
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$37$2$3$1$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v0, v0, Lcom/parse/ParseObject$37$2$3;->val$current:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$37$2$3$1$1$1;->this$4:Lcom/parse/ParseObject$37$2$3$1$1;

    iget-object v1, v1, Lcom/parse/ParseObject$37$2$3$1$1;->this$3:Lcom/parse/ParseObject$37$2$3$1;

    iget-object v1, v1, Lcom/parse/ParseObject$37$2$3$1;->this$2:Lcom/parse/ParseObject$37$2$3;

    iget-object v1, v1, Lcom/parse/ParseObject$37$2$3;->val$operations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-virtual {v0, v4, v1}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2369
    :cond_0
    invoke-static {v3}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$37$2$3$1$1$1$1;

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseObject$37$2$3$1$1$1$1;-><init>(Lcom/parse/ParseObject$37$2$3$1$1$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2359
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2$3$1$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
