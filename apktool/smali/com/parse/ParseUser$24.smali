.class Lcom/parse/ParseUser$24;
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$oldAnonymousData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/parse/ParseUser$24;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$24;->val$oldAnonymousData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/ParseUser$24;->val$authType:Ljava/lang/String;

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
    .line 1488
    iget-object v0, p0, Lcom/parse/ParseUser$24;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1489
    :try_start_0
    invoke-virtual {p1}, LN;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, LN;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$24;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$24;->val$oldAnonymousData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1100(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 1491
    monitor-exit v1

    .line 1494
    :goto_0
    return-object p1

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$24;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$24;->val$authType:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$1000(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 1494
    monitor-exit v1

    goto :goto_0

    .line 1495
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
    .line 1485
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$24;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
