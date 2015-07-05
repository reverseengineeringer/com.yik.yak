.class Lcom/parse/ParseObject$10$1;
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1408
    iget-object v1, p0, Lcom/parse/ParseObject$10$1;->this$1:Lcom/parse/ParseObject$10;

    iget-object v2, v1, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$10$1;->this$1:Lcom/parse/ParseObject$10;

    iget-object v1, v1, Lcom/parse/ParseObject$10;->val$operations:LP;

    invoke-virtual {v1}, LP;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$10$1$1;-><init>(Lcom/parse/ParseObject$10$1;LR;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
