.class Lcom/parse/ParseQuery$3;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$3;->val$user:Lcom/parse/ParseUser;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$3;->val$user:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->ignoreACLs:Z
    invoke-static {v3}, Lcom/parse/ParseQuery;->access$100(Lcom/parse/ParseQuery;)Z

    move-result v3

    # invokes: Lcom/parse/ParseQuery;->countFromCacheAsync(Lcom/parse/ParseUser;ZZ)LN;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/ParseQuery;->access$200(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;ZZ)LN;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->countFromNetworkAsync()LN;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$000(Lcom/parse/ParseQuery;)LN;

    move-result-object v0

    return-object v0
.end method
