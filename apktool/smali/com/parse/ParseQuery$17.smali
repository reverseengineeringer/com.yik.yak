.class Lcom/parse/ParseQuery$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseQuery$CallableWithCachePolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CallableWithCachePolicy",
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
    .line 972
    iput-object p1, p0, Lcom/parse/ParseQuery$17;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$17;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseQuery$CachePolicy;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 975
    iget-object v0, p0, Lcom/parse/ParseQuery$17;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$17;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->getFirstWithCachePolicyAsync(Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LR;
    invoke-static {v0, p1, v1}, Lcom/parse/ParseQuery;->access$1400(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$17;->call(Lcom/parse/ParseQuery$CachePolicy;)LR;

    move-result-object v0

    return-object v0
.end method
