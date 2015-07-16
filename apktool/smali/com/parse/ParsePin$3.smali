.class final Lcom/parse/ParsePin$3;
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
        "Lcom/parse/ParsePin;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/parse/ParsePin$3;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Lcom/parse/ParsePin;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 89
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v2

    .line 101
    if-nez v2, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/parse/ParsePin$3;->val$objects:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 107
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 108
    invoke-virtual {v1, v0}, Lcom/parse/OfflineStore;->unpinAsync(Lcom/parse/ParseObject;)LN;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v0, v2}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Z)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/parse/ParsePin$3;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
