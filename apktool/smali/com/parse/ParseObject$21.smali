.class Lcom/parse/ParseObject$21;
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

.field final synthetic val$fetchedObjects:Ljava/util/Map;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$21;->val$fetchedObjects:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseObject$21;->val$result:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 5
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
    .line 1736
    iget-object v0, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->serverData:Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1738
    iget-object v0, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$800(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1739
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    iget-object v2, p0, Lcom/parse/ParseObject$21;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1740
    iget-object v2, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseObject$21;->val$result:Lorg/json/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 1741
    monitor-exit v1

    .line 1742
    const/4 v0, 0x0

    return-object v0

    .line 1741
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
    .line 1733
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
