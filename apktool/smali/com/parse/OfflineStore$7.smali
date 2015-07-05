.class Lcom/parse/OfflineStore$7;
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
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$isCount:Z

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Ljava/util/List;Lcom/parse/ParseQuery;ZLcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/parse/OfflineStore$7;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$7;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    iput-object p4, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    iput-boolean p5, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    iput-object p6, p0, Lcom/parse/OfflineStore$7;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/parse/OfflineStore$7;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    iget-object v2, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v0, v1, v2}, Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery;)V

    .line 509
    iget-object v0, p0, Lcom/parse/OfflineStore$7;->val$results:Ljava/util/List;

    .line 510
    iget-object v1, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getSkip()I

    move-result v1

    .line 511
    iget-boolean v2, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    if-nez v2, :cond_0

    if-ltz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getSkip()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$7;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->getLimit()I

    move-result v1

    .line 518
    iget-boolean v2, p0, Lcom/parse/OfflineStore$7;->val$isCount:Z

    if-nez v2, :cond_2

    if-ltz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 519
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 523
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    .line 524
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 525
    new-instance v4, Lcom/parse/OfflineStore$7$1;

    invoke-direct {v4, p0, v0}, Lcom/parse/OfflineStore$7$1;-><init>(Lcom/parse/OfflineStore$7;Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v4}, LR;->d(LQ;)LR;

    move-result-object v0

    move-object v2, v0

    .line 531
    goto :goto_1

    .line 534
    :cond_1
    new-instance v0, Lcom/parse/OfflineStore$7$2;

    invoke-direct {v0, p0, v1}, Lcom/parse/OfflineStore$7$2;-><init>(Lcom/parse/OfflineStore$7;Ljava/util/List;)V

    invoke-virtual {v2, v0}, LR;->c(LQ;)LR;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$7;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
