.class Lcom/parse/OfflineStore$15;
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

.field final synthetic val$uuid:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;LL;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/parse/OfflineStore$15;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$15;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$15;->val$uuid:LL;

    iput-object p4, p0, Lcom/parse/OfflineStore$15;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 903
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 904
    const-string v0, "key"

    iget-object v2, p0, Lcom/parse/OfflineStore$15;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v2, "uuid"

    iget-object v0, p0, Lcom/parse/OfflineStore$15;->val$uuid:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/parse/OfflineStore$15;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v2, "Dependencies"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Lcom/parse/ParseSQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$15;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
