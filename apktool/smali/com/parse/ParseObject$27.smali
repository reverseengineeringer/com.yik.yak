.class Lcom/parse/ParseObject$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/parse/ParseObject$27;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$27;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseCommand;
    .locals 5

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/parse/ParseObject$27;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1816
    :try_start_0
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "get"

    iget-object v3, p0, Lcom/parse/ParseObject$27;->val$sessionToken:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1818
    const-string v2, "classname"

    iget-object v3, p0, Lcom/parse/ParseObject$27;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->className:Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/ParseObject;->access$900(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1821
    :try_start_1
    const-string v3, "objectId"

    iget-object v4, p0, Lcom/parse/ParseObject$27;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1825
    :try_start_2
    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1826
    monitor-exit v1

    return-object v0

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/parse/ParseObject$27;->call()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method
