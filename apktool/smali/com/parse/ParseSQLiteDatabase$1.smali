.class Lcom/parse/ParseSQLiteDatabase$1;
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
        "Ljava/lang/Void;",
        "LR",
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
.method public then(LR;)LR;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "LR",
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

    # setter for: Lcom/parse/ParseSQLiteDatabase;->current:LR;
    invoke-static {v0, p1}, Lcom/parse/ParseSQLiteDatabase;->access$102(Lcom/parse/ParseSQLiteDatabase;LR;)LR;

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$1;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:Lad;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)Lad;

    move-result-object v0

    invoke-virtual {v0}, Lad;->a()LR;

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

.method public bridge synthetic then(LR;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$1;->then(LR;)LR;

    move-result-object v0

    return-object v0
.end method