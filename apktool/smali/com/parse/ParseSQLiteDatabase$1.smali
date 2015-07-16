.class Lcom/parse/ParseSQLiteDatabase$1;
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
    .line 46
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$1;->this$0:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(LN;)LN;
    .locals 2
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
    .line 49
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$1;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$000(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$1;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # setter for: Lcom/parse/ParseSQLiteDatabase;->current:LN;
    invoke-static {v0, p1}, Lcom/parse/ParseSQLiteDatabase;->access$102(Lcom/parse/ParseSQLiteDatabase;LN;)LN;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$1;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:LZ;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)LZ;

    move-result-object v0

    invoke-virtual {v0}, LZ;->a()LN;

    move-result-object v0

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(LN;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$1;->then(LN;)LN;

    move-result-object v0

    return-object v0
.end method
