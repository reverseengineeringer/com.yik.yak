.class Lcom/parse/OfflineStore$20;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "LN",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$includeAllChildren:Z

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Z)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/parse/OfflineStore$20;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$20;->val$object:Lcom/parse/ParseObject;

    iput-boolean p3, p0, Lcom/parse/OfflineStore$20;->val$includeAllChildren:Z

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
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;)",
            "LN",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSQLiteDatabase;

    .line 935
    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->beginTransactionAsync()LN;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$20$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$20$3;-><init>(Lcom/parse/OfflineStore$20;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$20$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$20$2;-><init>(Lcom/parse/OfflineStore$20;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LN;->d(LM;)LN;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$20$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$20$1;-><init>(Lcom/parse/OfflineStore$20;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 931
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$20;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
