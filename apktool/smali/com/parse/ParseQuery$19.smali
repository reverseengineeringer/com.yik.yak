.class Lcom/parse/ParseQuery$19;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$caching:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Z)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/parse/ParseQuery$19;->this$0:Lcom/parse/ParseQuery;

    iput-boolean p2, p0, Lcom/parse/ParseQuery$19;->val$caching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/parse/ParseQuery$19;->val$caching:Z

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    .line 1007
    iget-object v1, p0, Lcom/parse/ParseQuery$19;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/parse/Parse;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$19;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
