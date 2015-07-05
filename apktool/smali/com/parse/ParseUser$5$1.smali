.class Lcom/parse/ParseUser$5$1;
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
.field final synthetic this$1:Lcom/parse/ParseUser$5;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$5;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iput-object p2, p0, Lcom/parse/ParseUser$5$1;->val$operations:Lcom/parse/ParseOperationSet;

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
    .line 710
    iget-object v0, p0, Lcom/parse/ParseUser$5$1;->this$1:Lcom/parse/ParseUser$5;

    iget-object v1, v0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParseUser$5$1;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$5$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseUser$5$1$1;-><init>(Lcom/parse/ParseUser$5$1;LR;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
