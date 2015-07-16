.class Lcom/parse/ParseSQLiteDatabase$10;
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
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$10;->this$0:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$10;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$10;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:LZ;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)LZ;

    move-result-object v0

    invoke-virtual {v0, v2}, LZ;->b(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$10;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:LZ;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)LZ;

    move-result-object v0

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$10;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:LZ;
    invoke-static {v1}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)LZ;

    move-result-object v1

    invoke-virtual {v1, v2}, LZ;->b(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$10;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
