.class Lcom/parse/OfflineStore$30;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/parse/OfflineStore$30;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$30;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$30;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 4
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
    .line 1100
    const-string v0, "key=?"

    .line 1101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineStore$30;->val$key:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1102
    iget-object v2, p0, Lcom/parse/OfflineStore$30;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v3, "Dependencies"

    invoke-virtual {v2, v3, v0, v1}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$30;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
