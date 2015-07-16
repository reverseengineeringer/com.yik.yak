.class Lcom/parse/ParseSQLiteDatabase$3;
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
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$3;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$3;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

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
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$3;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->writable:Z
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$400(Lcom/parse/ParseSQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$3;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    invoke-static {v0}, LN;->a(Ljava/lang/Object;)LN;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$3;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$3;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
