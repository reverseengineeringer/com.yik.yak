.class Lcom/parse/OfflineStore$10;
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
        "Ljava/lang/String;",
        "LN",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$select:[Ljava/lang/String;

.field final synthetic val$uuid:LL;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;LL;Lcom/parse/ParseSQLiteDatabase;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/parse/OfflineStore$10;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$10;->val$uuid:LL;

    iput-object p3, p0, Lcom/parse/OfflineStore$10;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineStore$10;->val$select:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LN",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$uuid:LL;

    invoke-virtual {p1}, LN;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, LL;->a(Ljava/lang/Object;)V

    .line 660
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$uuid:LL;

    invoke-virtual {v0}, LL;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 661
    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v2, "ParseObjects"

    iget-object v3, p0, Lcom/parse/OfflineStore$10;->val$select:[Ljava/lang/String;

    const-string v4, "uuid = ?"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LN;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$10;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
