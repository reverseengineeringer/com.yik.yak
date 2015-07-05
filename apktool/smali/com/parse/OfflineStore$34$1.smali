.class Lcom/parse/OfflineStore$34$1;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "LR",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$34;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$34;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/parse/OfflineStore$34$1;->this$1:Lcom/parse/OfflineStore$34;

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
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p1}, LR;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSQLiteDatabase;

    .line 1192
    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->beginTransactionAsync()LR;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$34$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$34$1$1;-><init>(Lcom/parse/OfflineStore$34$1;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, LR;->d(LQ;)LR;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1188
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$34$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method
