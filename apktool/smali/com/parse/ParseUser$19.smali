.class Lcom/parse/ParseUser$19;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$operations:LP;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;LP;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/parse/ParseUser$19;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$19;->val$operations:LP;

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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1394
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1395
    iget-object v2, p0, Lcom/parse/ParseUser$19;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$19;->val$operations:LP;

    invoke-virtual {v1}, LP;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LR;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$19$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseUser$19$1;-><init>(Lcom/parse/ParseUser$19;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, LR;->c(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
