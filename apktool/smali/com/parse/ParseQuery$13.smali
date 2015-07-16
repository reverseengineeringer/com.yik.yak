.class Lcom/parse/ParseQuery$13;
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
        "LN",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

.field final synthetic val$callback:Lcom/parse/ParseCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CallableWithCachePolicy;Lcom/parse/ParseCallback;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$13;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    iput-object p3, p0, Lcom/parse/ParseQuery$13;->val$callback:Lcom/parse/ParseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$500(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 885
    iget-object v1, p0, Lcom/parse/ParseQuery$13;->val$callback:Lcom/parse/ParseCallback;

    invoke-static {v0, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(LN;Lcom/parse/ParseCallback;)LN;

    move-result-object v0

    .line 886
    new-instance v1, Lcom/parse/ParseQuery$13$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$13$1;-><init>(Lcom/parse/ParseQuery$13;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    .line 898
    :goto_0
    return-object v0

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$13;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    iget-object v1, p0, Lcom/parse/ParseQuery$13;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$500(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/parse/ParseQuery$13;->call()LN;

    move-result-object v0

    return-object v0
.end method
