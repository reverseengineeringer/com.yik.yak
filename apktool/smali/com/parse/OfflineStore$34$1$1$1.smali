.class Lcom/parse/OfflineStore$34$1$1$1;
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
.field final synthetic this$3:Lcom/parse/OfflineStore$34$1$1;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$34$1$1;)V
    .locals 0

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/parse/OfflineStore$34$1$1$1;->this$3:Lcom/parse/OfflineStore$34$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 1
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
    .line 1204
    iget-object v0, p0, Lcom/parse/OfflineStore$34$1$1$1;->this$3:Lcom/parse/OfflineStore$34$1$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$34$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->endTransactionAsync()LN;

    .line 1205
    iget-object v0, p0, Lcom/parse/OfflineStore$34$1$1$1;->this$3:Lcom/parse/OfflineStore$34$1$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$34$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->close()LN;

    .line 1206
    return-object p1
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1200
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$34$1$1$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
