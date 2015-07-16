.class final Lcom/parse/ParseObject$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<",
        "Ljava/lang/Void;",
        "LN",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 2505
    iput-object p1, p0, Lcom/parse/ParseObject$40;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$40;->val$user:Lcom/parse/ParseUser;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/parse/ParseObject$40;->val$objects:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$40;->val$user:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;
    invoke-static {v0, v1, p1}, Lcom/parse/ParseObject;->access$1500(Ljava/util/List;Lcom/parse/ParseUser;LN;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2505
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
