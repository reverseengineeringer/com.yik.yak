.class Lcom/parse/OfflineStore$40;
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
        "Ljava/lang/String;",
        "LR",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$uuid:LP;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LP;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$40;->val$uuid:LP;

    iput-object p3, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LR",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1317
    new-array v1, v3, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v1, v4

    .line 1318
    const-string v2, "uuid=?"

    .line 1319
    new-array v3, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/OfflineStore$40;->val$uuid:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1320
    iget-object v0, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v4, "Dependencies"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$40;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
