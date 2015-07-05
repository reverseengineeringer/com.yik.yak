.class Lcom/parse/ParseQuery$5;
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
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 490
    :cond_0
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 491
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0

    .line 493
    :cond_1
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x65

    const-string v2, "no results found for query"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$5;->then(LR;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
