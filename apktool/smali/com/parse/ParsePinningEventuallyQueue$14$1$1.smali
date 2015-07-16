.class Lcom/parse/ParsePinningEventuallyQueue$14$1$1;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/EventuallyPin;",
        ">;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$14$1;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$14$1;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$14$1;

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
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/EventuallyPin;

    .line 554
    const-string v3, "_eventuallyPin"

    invoke-virtual {v0, v3}, Lcom/parse/EventuallyPin;->unpinInBackground(Ljava/lang/String;)LN;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {v1}, LN;->a(Ljava/util/Collection;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$14$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
