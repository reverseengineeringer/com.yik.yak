.class Lcom/parse/ParseQuery$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/parse/ParseQuery$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CommandDelegate",
        "<",
        "Ljava/util/List",
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
    .line 468
    iput-object p1, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$4;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runFromCacheAsync()LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$4;->val$user:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->ignoreACLs:Z
    invoke-static {v3}, Lcom/parse/ParseQuery;->access$100(Lcom/parse/ParseQuery;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ParseQuery;->findFromCacheAsync(Lcom/parse/ParseUser;ZZ)LN;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetworkAsync(Z)LN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lcom/parse/ParseQuery$4;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->findFromNetworkAsync(Z)LN;
    invoke-static {v0, p1}, Lcom/parse/ParseQuery;->access$300(Lcom/parse/ParseQuery;Z)LN;

    move-result-object v0

    return-object v0
.end method
