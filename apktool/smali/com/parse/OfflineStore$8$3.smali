.class Lcom/parse/OfflineStore$8$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQ",
        "<TT;",
        "LR",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$object:LP;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;LP;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$3;->val$object:LP;

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
            "<TT;>;)",
            "LR",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:LP;

    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LP;->a(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v1, v0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:LP;

    invoke-virtual {v0}, LP;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$3;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
