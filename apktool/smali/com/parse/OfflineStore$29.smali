.class Lcom/parse/OfflineStore$29;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$uuidsToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$29;->val$uuidsToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$29;->then(LN;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(LN;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/OfflineStore;->access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore$29;->val$uuidsToDelete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1110
    iget-object v1, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1111
    if-eqz v1, :cond_0

    .line 1112
    iget-object v4, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/parse/OfflineStore;->access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    iget-object v1, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    invoke-static {v1}, Lcom/parse/OfflineStore;->access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/WeakValueHashMap;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    const/4 v0, 0x0

    return-object v0
.end method
