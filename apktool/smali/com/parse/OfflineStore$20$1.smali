.class Lcom/parse/OfflineStore$20$1;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$20;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$20;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 945
    iput-object p1, p0, Lcom/parse/OfflineStore$20$1;->this$1:Lcom/parse/OfflineStore$20;

    iput-object p2, p0, Lcom/parse/OfflineStore$20$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LR;)LR;
    .locals 1
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
    .line 948
    iget-object v0, p0, Lcom/parse/OfflineStore$20$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->endTransactionAsync()LR;

    .line 949
    iget-object v0, p0, Lcom/parse/OfflineStore$20$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->close()LR;

    .line 950
    return-object p1
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$20$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method