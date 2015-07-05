.class Lcom/parse/ParseQuery$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TTResult;",
        "LR",
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
    .line 432
    iput-object p1, p0, Lcom/parse/ParseQuery$2;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$2;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<TTResult;>;)",
            "LR",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/parse/ParseQuery$2;->val$c:Lcom/parse/ParseQuery$CommandDelegate;

    invoke-interface {v0}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCacheAsync()LR;

    move-result-object p1

    .line 442
    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
