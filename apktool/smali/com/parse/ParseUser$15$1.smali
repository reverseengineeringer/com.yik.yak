.class Lcom/parse/ParseUser$15$1;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$15;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$15;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1316
    :try_start_0
    invoke-virtual {p1}, LR;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$700(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v2, v2, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1318
    iget-object v0, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v2, v2, Lcom/parse/ParseUser$15;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1319
    iget-object v0, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v2, v2, Lcom/parse/ParseUser$15;->val$oldAnonymousData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1100(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 1320
    invoke-virtual {p1}, LR;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, LR;->a(Ljava/lang/Exception;)LR;

    move-result-object v0

    monitor-exit v1

    .line 1325
    :goto_0
    return-object v0

    .line 1322
    :cond_0
    invoke-virtual {p1}, LR;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-static {}, LR;->h()LR;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1325
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser$15$1;->this$0:Lcom/parse/ParseUser$15;

    iget-object v0, v0, Lcom/parse/ParseUser$15;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, LR;->a(Ljava/lang/Object;)LR;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$15$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
