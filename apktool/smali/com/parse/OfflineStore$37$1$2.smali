.class Lcom/parse/OfflineStore$37$1$2;
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
.field final synthetic this$2:Lcom/parse/OfflineStore$37$1;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$37$1;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/parse/OfflineStore$37$1$2;->this$2:Lcom/parse/OfflineStore$37$1;

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
    .line 1275
    iget-object v0, p0, Lcom/parse/OfflineStore$37$1$2;->this$2:Lcom/parse/OfflineStore$37$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$37$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->setTransactionSuccessfulAsync()LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$37$1$2;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
