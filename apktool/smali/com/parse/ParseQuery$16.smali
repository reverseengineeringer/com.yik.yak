.class Lcom/parse/ParseQuery$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "LR",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/parse/ParseQuery$16;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$16;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 957
    iget-object v0, p0, Lcom/parse/ParseQuery$16;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$16;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$500(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseQuery$16;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LR;
    invoke-static {v0, v1, v2}, Lcom/parse/ParseQuery;->access$1400(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/parse/ParseQuery$16;->call()LR;

    move-result-object v0

    return-object v0
.end method
