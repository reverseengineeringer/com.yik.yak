.class final Lcom/parse/ParseObject$34;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uniqueObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2050
    iput-object p1, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$34;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2054
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 2057
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    new-instance v1, Lcom/parse/ParseObject$34$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$34$1;-><init>(Lcom/parse/ParseObject$34;)V

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;LM;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$34;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
