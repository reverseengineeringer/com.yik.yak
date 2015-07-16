.class Lcom/parse/ParseQuery$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TTResult;",
        "LN",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$13;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$13;)V
    .locals 0

    .prologue
    .line 886
    iput-object p1, p0, Lcom/parse/ParseQuery$13$1;->this$1:Lcom/parse/ParseQuery$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<TTResult;>;)",
            "LN",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$13$1;->this$1:Lcom/parse/ParseQuery$13;

    iget-object v0, v0, Lcom/parse/ParseQuery$13;->val$callable:Lcom/parse/ParseQuery$CallableWithCachePolicy;

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CallableWithCachePolicy;->call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$13$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
