.class Lcom/parse/ParseObject$6;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;

.field final synthetic val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$6;->val$fetchedObjects:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseObject$6;->val$result:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/ParseObject$6;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1286
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$6;->then(LR;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LR;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1290
    :try_start_0
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    iget-object v2, p0, Lcom/parse/ParseObject$6;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {v0, v2}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1291
    iget-object v2, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParseObject$6;->val$result:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/parse/ParseObject$6;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

    # invokes: Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    invoke-static {v2, v3, v0, v4}, Lcom/parse/ParseObject;->access$100(Lcom/parse/ParseObject;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V

    .line 1292
    monitor-exit v1

    .line 1293
    const/4 v0, 0x0

    return-object v0

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
