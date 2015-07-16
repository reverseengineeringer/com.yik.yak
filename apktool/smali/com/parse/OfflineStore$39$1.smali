.class Lcom/parse/OfflineStore$39$1;
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
        "Lcom/parse/ParsePin;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$39;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$39;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iput-object p2, p0, Lcom/parse/OfflineStore$39$1;->val$uuid:Ljava/lang/String;

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
            "Lcom/parse/ParsePin;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 1343
    invoke-virtual {v0}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v1

    .line 1344
    if-eqz v1, :cond_1

    .line 1345
    iget-object v2, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v2, v2, Lcom/parse/OfflineStore$39;->val$object:Lcom/parse/ParseObject;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1346
    invoke-virtual {p1}, LN;->j()LN;

    move-result-object v0

    .line 1356
    :goto_0
    return-object v0

    .line 1349
    :cond_0
    iget-object v2, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v2, v2, Lcom/parse/OfflineStore$39;->val$object:Lcom/parse/ParseObject;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1350
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v0, v0, Lcom/parse/OfflineStore$39;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$39$1;->val$uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v2, v2, Lcom/parse/OfflineStore$39;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$900(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    goto :goto_0

    .line 1354
    :cond_1
    invoke-virtual {v0, v1}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 1356
    iget-object v1, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v1, v1, Lcom/parse/OfflineStore$39;->this$0:Lcom/parse/OfflineStore;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/OfflineStore$39$1;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v3, v3, Lcom/parse/OfflineStore$39;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2, v3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1338
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$39$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
