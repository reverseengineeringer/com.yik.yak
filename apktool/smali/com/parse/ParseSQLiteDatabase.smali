.class Lcom/parse/ParseSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final dbExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field private current:LR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLock:Ljava/lang/Object;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final tcs:Lad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">.ad;"
        }
    .end annotation
.end field

.field private writable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    .line 34
    invoke-static {}, LR;->a()Lad;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:Lad;

    .line 44
    iput-boolean p1, p0, Lcom/parse/ParseSQLiteDatabase;->writable:Z

    .line 46
    sget-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$1;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(LQ;)LR;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/ParseSQLiteDatabase;LR;)LR;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/ParseSQLiteDatabase;)Lad;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:Lad;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/ParseSQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/parse/ParseSQLiteDatabase;->writable:Z

    return v0
.end method


# virtual methods
.method public beginTransactionAsync()LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$4;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 104
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$5;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$10;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 178
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$11;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$21;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$21;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 317
    new-instance v2, Lcom/parse/ParseSQLiteDatabase$22;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$22;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endTransactionAsync()LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$8;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$8;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 151
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$9;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$9;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$17;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$17;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 270
    new-instance v2, Lcom/parse/ParseSQLiteDatabase$18;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$18;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$15;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$15;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;I)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 247
    new-instance v2, Lcom/parse/ParseSQLiteDatabase$16;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$16;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/parse/ParseSQLiteDatabase;->writable:Z

    return v0
.end method

.method open(Landroid/database/sqlite/SQLiteOpenHelper;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$3;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseSQLiteDatabase$3;-><init>(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$2;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 87
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)LR;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v6, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v6

    .line 200
    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$13;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v0, v1}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$12;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 223
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$14;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$14;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$24;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$24;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$23;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$23;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 360
    new-instance v2, Lcom/parse/ParseSQLiteDatabase$25;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$25;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTransactionSuccessfulAsync()LR;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$6;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$6;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 127
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$7;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$7;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)LR;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LR",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v6, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v6

    .line 287
    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$19;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$19;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v0, v1}, LR;->d(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, LR;->j()LR;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:LR;

    .line 294
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$20;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$20;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, LR;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, LR;->b(LQ;Ljava/util/concurrent/Executor;)LR;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
