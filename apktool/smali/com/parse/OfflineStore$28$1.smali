.class Lcom/parse/OfflineStore$28$1;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$28;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$28;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/parse/OfflineStore$28$1;->this$1:Lcom/parse/OfflineStore$28;

    iput-object p2, p0, Lcom/parse/OfflineStore$28$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1049
    iget-object v0, p0, Lcom/parse/OfflineStore$28$1;->this$1:Lcom/parse/OfflineStore$28;

    iget-object v0, v0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$28$1;->this$1:Lcom/parse/OfflineStore$28;

    iget-object v1, v1, Lcom/parse/OfflineStore$28;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$28$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$900(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$28$1$2;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$28$1$2;-><init>(Lcom/parse/OfflineStore$28$1;)V

    invoke-virtual {v0, v1}, LN;->d(LM;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$28$1$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$28$1$1;-><init>(Lcom/parse/OfflineStore$28$1;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$28$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
