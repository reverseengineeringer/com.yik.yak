.class Lcom/parse/ParseObject$10$1;
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
        "Ljava/lang/Object;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$10;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$10;)V
    .locals 0

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/parse/ParseObject$10$1;->this$1:Lcom/parse/ParseObject$10;

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
            "Ljava/lang/Object;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1408
    iget-object v1, p0, Lcom/parse/ParseObject$10$1;->this$1:Lcom/parse/ParseObject$10;

    iget-object v2, v1, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$10$1;->this$1:Lcom/parse/ParseObject$10;

    iget-object v1, v1, Lcom/parse/ParseObject$10;->val$operations:LL;

    invoke-virtual {v1}, LL;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$10$1$1;-><init>(Lcom/parse/ParseObject$10$1;LN;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
