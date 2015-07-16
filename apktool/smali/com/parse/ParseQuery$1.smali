.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TTResult;",
        "LN",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$c:Lcom/parse/ParseQuery$CommandDelegate;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CommandDelegate;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$1;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

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
            "<TTResult;>;)",
            "LN",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LN;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetworkAsync(Z)LN;

    move-result-object p1

    .line 427
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
