.class Lcom/parse/OfflineStore$41;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$uuid:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/parse/OfflineStore$41;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$41;->val$uuid:LL;

    iput-object p3, p0, Lcom/parse/OfflineStore$41;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    const-string v1, "uuid=?"

    .line 1378
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/parse/OfflineStore$41;->val$uuid:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    .line 1379
    iget-object v0, p0, Lcom/parse/OfflineStore$41;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v3, "ParseObjects"

    invoke-virtual {v0, v3, v1, v2}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1374
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$41;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
