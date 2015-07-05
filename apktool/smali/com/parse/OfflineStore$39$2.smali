.class Lcom/parse/OfflineStore$39$2;
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
        "Lcom/parse/ParseObject;",
        "LR",
        "<",
        "Lcom/parse/ParsePin;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$39;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$39;)V
    .locals 0

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/parse/OfflineStore$39$2;->this$1:Lcom/parse/OfflineStore$39;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "LR",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 1336
    iget-object v1, p0, Lcom/parse/OfflineStore$39$2;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v1, v1, Lcom/parse/OfflineStore$39;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$39$2;->this$1:Lcom/parse/OfflineStore$39;

    iget-object v2, v2, Lcom/parse/OfflineStore$39;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$39$2;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
