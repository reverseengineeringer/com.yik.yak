.class Lcom/parse/OfflineStore$6;
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
        "Ljava/lang/String;",
        "LN",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$includeIsDeletingEventually:Z

.field final synthetic val$query:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;ZLcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/parse/OfflineStore$6;->this$0:Lcom/parse/OfflineStore;

    iput-boolean p2, p0, Lcom/parse/OfflineStore$6;->val$includeIsDeletingEventually:Z

    iput-object p3, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery;

    iput-object p4, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LN",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 437
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    const-string v2, "ParseObjects A  INNER JOIN Dependencies B  ON A.uuid=B.uuid"

    .line 442
    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "A.uuid"

    aput-object v1, v3, v6

    .line 443
    const-string v1, "className=? AND key=?"

    .line 445
    iget-boolean v4, p0, Lcom/parse/OfflineStore$6;->val$includeIsDeletingEventually:Z

    if-nez v4, :cond_0

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND isDeletingEventually=0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery;

    invoke-virtual {v5}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    .line 450
    iget-object v0, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
