.class Lcom/parse/ParseObject$12;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:LL;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;LL;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$12;->val$operations:LL;

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
    .line 1367
    iget-object v0, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateSave()V

    .line 1369
    iget-object v0, p0, Lcom/parse/ParseObject$12;->val$operations:LL;

    iget-object v2, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v2

    invoke-virtual {v0, v2}, LL;->a(Ljava/lang/Object;)V

    .line 1370
    iget-object v0, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    const-string v2, "ACL"

    # invokes: Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$500(Lcom/parse/ParseObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$12;->this$0:Lcom/parse/ParseObject;

    const/4 v2, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->saveInBackground()LN;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseObject$12$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$12$1;-><init>(Lcom/parse/ParseObject$12;)V

    invoke-virtual {v0, v2}, LN;->c(LM;)LN;

    move-result-object p1

    monitor-exit v1

    .line 1383
    :goto_0
    return-object p1

    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$12;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
