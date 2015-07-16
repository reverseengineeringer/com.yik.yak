.class Lcom/parse/ParseQueryAdapter$3;
.super Lcom/parse/FindCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/FindCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQueryAdapter;

.field final synthetic val$firstCallBack:LL;

.field final synthetic val$page:I

.field final synthetic val$query:Lcom/parse/ParseQuery;

.field final synthetic val$shouldClear:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseQueryAdapter;Lcom/parse/ParseQuery;ZLL;I)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iput-object p2, p0, Lcom/parse/ParseQueryAdapter$3;->val$query:Lcom/parse/ParseQuery;

    iput-boolean p3, p0, Lcom/parse/ParseQueryAdapter$3;->val$shouldClear:Z

    iput-object p4, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:LL;

    iput p5, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    invoke-direct {p0}, Lcom/parse/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x78

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v0, v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 395
    :goto_0
    return-void

    .line 359
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # setter for: Lcom/parse/ParseQueryAdapter;->hasNextPage:Z
    invoke-static {v0, v1}, Lcom/parse/ParseQueryAdapter;->access$002(Lcom/parse/ParseQueryAdapter;Z)Z

    .line 394
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # invokes: Lcom/parse/ParseQueryAdapter;->notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V
    invoke-static {v0, p1, p2}, Lcom/parse/ParseQueryAdapter;->access$600(Lcom/parse/ParseQueryAdapter;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 362
    :cond_3
    if-eqz p1, :cond_2

    .line 363
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter$3;->val$shouldClear:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iget v3, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    # setter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v0, v3}, Lcom/parse/ParseQueryAdapter;->access$202(Lcom/parse/ParseQueryAdapter;I)I

    .line 367
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->val$firstCallBack:LL;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, LL;->a(Ljava/lang/Object;)V

    .line 372
    :cond_4
    iget v0, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    iget-object v3, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v3}, Lcom/parse/ParseQueryAdapter;->access$200(Lcom/parse/ParseQueryAdapter;)I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 373
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    iget v3, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    # setter for: Lcom/parse/ParseQueryAdapter;->currentPage:I
    invoke-static {v0, v3}, Lcom/parse/ParseQueryAdapter;->access$202(Lcom/parse/ParseQueryAdapter;I)I

    .line 376
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v4}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v4

    if-le v0, v4, :cond_7

    move v0, v1

    :goto_2
    # setter for: Lcom/parse/ParseQueryAdapter;->hasNextPage:Z
    invoke-static {v3, v0}, Lcom/parse/ParseQueryAdapter;->access$002(Lcom/parse/ParseQueryAdapter;Z)Z

    .line 379
    :cond_5
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$400(Lcom/parse/ParseQueryAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v1}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 381
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectsPerPage:I
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$300(Lcom/parse/ParseQueryAdapter;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    :cond_6
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # getter for: Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/parse/ParseQueryAdapter$3;->val$page:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    # invokes: Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V
    invoke-static {v0}, Lcom/parse/ParseQueryAdapter;->access$500(Lcom/parse/ParseQueryAdapter;)V

    .line 391
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$3;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-virtual {v0}, Lcom/parse/ParseQueryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 376
    goto :goto_2
.end method
