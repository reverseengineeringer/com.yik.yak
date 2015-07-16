.class Lcom/parse/ParseQuery$6;
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
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

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
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v1

    if-nez v1, :cond_0

    .line 561
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$500(Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    # setter for: Lcom/parse/ParseQuery;->querySent:J
    invoke-static {v1, v2, v3}, Lcom/parse/ParseQuery;->access$602(Lcom/parse/ParseQuery;J)J

    .line 567
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;
    invoke-static {v1}, Lcom/parse/ParseQuery;->access$400(Lcom/parse/ParseQuery;)Lcom/parse/ParseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->executeAsync()LN;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseQuery$6$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseQuery$6$1;-><init>(Lcom/parse/ParseQuery$6;Z)V

    invoke-virtual {v1, v2}, LN;->c(LM;)LN;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$6;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
