.class Lcom/parse/ParseObject$37$2$3$1$1$1$1;
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
.field final synthetic this$5:Lcom/parse/ParseObject$37$2$3$1$1$1;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$37$2$3$1$1$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/parse/ParseObject$37$2$3$1$1$1$1;->this$5:Lcom/parse/ParseObject$37$2$3$1$1$1;

    iput-object p2, p0, Lcom/parse/ParseObject$37$2$3$1$1$1$1;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 3
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
    .line 2373
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2379
    iget-object v0, p0, Lcom/parse/ParseObject$37$2$3$1$1$1$1;->val$tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN;

    .line 2380
    invoke-virtual {v0}, LN;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2385
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2370
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$37$2$3$1$1$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
