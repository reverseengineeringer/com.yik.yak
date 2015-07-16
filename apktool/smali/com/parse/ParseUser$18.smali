.class Lcom/parse/ParseUser$18;
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
        "Lorg/json/JSONObject;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1406
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1407
    iget-object v1, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v1, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    const/4 v3, 0x0

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v2, v3}, Lcom/parse/ParseUser;->access$402(Lcom/parse/ParseUser;Z)Z

    .line 1409
    const-string v2, "is_new"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/parse/ParseUser$18;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseUser;->isLazy:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1402(Lcom/parse/ParseUser;Z)Z

    .line 1422
    const/4 v0, 0x0

    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    .line 1419
    :cond_0
    const-string v2, "_User"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1420
    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)LN;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)LN;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1423
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
    .line 1403
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$18;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
