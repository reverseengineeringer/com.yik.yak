.class Lcom/parse/ParseObject$37$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<",
        "Ljava/lang/Void;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$37;

.field final synthetic val$remaining:LP;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37;LP;)V
    .locals 0

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/parse/ParseObject$37$2;->this$0:Lcom/parse/ParseObject$37;

    iput-object p2, p0, Lcom/parse/ParseObject$37$2;->val$remaining:LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2282
    iget-object v0, p0, Lcom/parse/ParseObject$37$2;->val$remaining:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 2283
    # invokes: Lcom/parse/ParseObject;->canBeSerialized()Z
    invoke-static {v0}, Lcom/parse/ParseObject;->access$1400(Lcom/parse/ParseObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2284
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2286
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject$37$2;->val$remaining:LP;

    invoke-virtual {v0, v2}, LP;->a(Ljava/lang/Object;)V

    .line 2291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to save a PFObject with a relation to a cycle."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2299
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 2307
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2309
    new-instance v2, Lcom/parse/ParseObject$37$2$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$37$2$2;-><init>(Lcom/parse/ParseObject$37$2;)V

    invoke-virtual {v0, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseObject$37$2$1;

    invoke-direct {v2, p0, v1}, Lcom/parse/ParseObject$37$2$1;-><init>(Lcom/parse/ParseObject$37$2;Ljava/util/List;)V

    invoke-virtual {v0, v2}, LR;->c(LQ;)LR;

    move-result-object v0

    .line 2323
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    new-instance v3, Lcom/parse/ParseObject$37$2$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/parse/ParseObject$37$2$3;-><init>(Lcom/parse/ParseObject$37$2;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v3}, LR;->d(LQ;)LR;

    move-result-object v0

    .line 2396
    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2275
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
