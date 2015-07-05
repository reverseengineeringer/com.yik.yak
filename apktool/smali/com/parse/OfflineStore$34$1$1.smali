.class Lcom/parse/OfflineStore$34$1$1;
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
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/OfflineStore$34$1;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$34$1;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/parse/OfflineStore$34$1$1;->this$2:Lcom/parse/OfflineStore$34$1;

    iput-object p2, p0, Lcom/parse/OfflineStore$34$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/parse/OfflineStore$34$1$1;->this$2:Lcom/parse/OfflineStore$34$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$34$1;->this$1:Lcom/parse/OfflineStore$34;

    iget-object v0, v0, Lcom/parse/OfflineStore$34;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$34$1$1;->this$2:Lcom/parse/OfflineStore$34$1;

    iget-object v1, v1, Lcom/parse/OfflineStore$34$1;->this$1:Lcom/parse/OfflineStore$34;

    iget-object v1, v1, Lcom/parse/OfflineStore$34;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$34$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$1200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$34$1$1$2;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$34$1$1$2;-><init>(Lcom/parse/OfflineStore$34$1$1;)V

    invoke-virtual {v0, v1}, LR;->d(LQ;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$34$1$1$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$34$1$1$1;-><init>(Lcom/parse/OfflineStore$34$1$1;)V

    invoke-virtual {v0, v1}, LR;->b(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$34$1$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
