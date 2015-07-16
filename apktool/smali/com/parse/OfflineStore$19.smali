.class Lcom/parse/OfflineStore$19;
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
        "Lcom/parse/ParseObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/parse/OfflineStore$19;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$19;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$19;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "LN",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/parse/OfflineStore$19;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$19;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$19;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)LN;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$19$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$19$1;-><init>(Lcom/parse/OfflineStore$19;)V

    invoke-virtual {v0, v1}, LN;->b(LM;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$19;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
