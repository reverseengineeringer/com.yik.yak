.class Lcom/parse/OfflineStore$20$2;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$20;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$20;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/parse/OfflineStore$20$2;->this$1:Lcom/parse/OfflineStore$20;

    iput-object p2, p0, Lcom/parse/OfflineStore$20$2;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 943
    iget-object v0, p0, Lcom/parse/OfflineStore$20$2;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->setTransactionSuccessfulAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$20$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
