.class final Lcom/parse/ParseObject$37;
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
.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/parse/ParseObject$37;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$37;->val$sessionToken:Ljava/lang/String;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2262
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2264
    iget-object v0, p0, Lcom/parse/ParseObject$37;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2265
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2268
    :cond_0
    new-instance v0, LL;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, LL;-><init>(Ljava/lang/Object;)V

    .line 2270
    const/4 v1, 0x0

    invoke-static {v1}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$37$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$37$1;-><init>(Lcom/parse/ParseObject$37;LL;)V

    new-instance v3, Lcom/parse/ParseObject$37$2;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$37$2;-><init>(Lcom/parse/ParseObject$37;LL;)V

    invoke-virtual {v1, v2, v3}, LN;->a(Ljava/util/concurrent/Callable;LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2258
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
