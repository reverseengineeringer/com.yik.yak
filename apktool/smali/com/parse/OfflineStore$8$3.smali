.class Lcom/parse/OfflineStore$8$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LM",
        "<TT;",
        "LN",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$object:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;LL;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$3;->val$object:LL;

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
            "<TT;>;)",
            "LN",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:LL;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LL;->a(Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v1, v0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$3;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
