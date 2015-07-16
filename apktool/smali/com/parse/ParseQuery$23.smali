.class Lcom/parse/ParseQuery$23;
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
        "LN",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/parse/ParseQuery$23;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$23;->val$objectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseQuery$23;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseQuery$CachePolicy;)LN;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/parse/ParseQuery$23;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$23;->val$objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseQuery$23;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseQuery;->getWithCachePolicyAsync(Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;
    invoke-static {v0, v1, p1, v2}, Lcom/parse/ParseQuery;->access$1600(Lcom/parse/ParseQuery;Ljava/lang/String;Lcom/parse/ParseQuery$CachePolicy;Lcom/parse/ParseUser;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1139
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$23;->call(Lcom/parse/ParseQuery$CachePolicy;)LN;

    move-result-object v0

    return-object v0
.end method
