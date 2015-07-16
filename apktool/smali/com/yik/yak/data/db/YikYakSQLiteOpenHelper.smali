.class public Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "YikYakDatabase"

.field private static final DATABASE_VERSION:I = 0x6

.field private static instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 39
    const-string v0, "YikYakDatabase"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    return-void
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "android_metadata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sqlite_sequence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    invoke-virtual {p0, p1, v1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    return-void
.end method

.method public static declared-synchronized get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
    .locals 5

    .prologue
    .line 56
    const-class v1, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 57
    const-class v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "YikYakSQLiteOpenHelper.init() has not been called! The application context needs to be passed!"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, LHm;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 47
    const-class v1, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    invoke-direct {v0, p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    .line 49
    sget-object v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->instance:Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_0
    monitor-exit v1

    return-void

    .line 51
    :cond_0
    :try_start_1
    const-class v0, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The YikYakSQLiteOpenHelper has already been initialized!"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, LHm;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteAllData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertDefaultEnvironments()V

    .line 66
    return-void
.end method

.method public deleteAllData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 69
    const-string v0, "SELECT * FROM sqlite_master WHERE type=\'table\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "android_metadata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sqlite_sequence"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    return-void
.end method

.method public deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public deleteTable(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public dropAllTables()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public dropThenCreateDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/yik/yak/data/db/table/BlockedYakTable;

    invoke-direct {v0}, Lcom/yik/yak/data/db/table/BlockedYakTable;-><init>()V

    invoke-virtual {v0}, Lcom/yik/yak/data/db/table/BlockedYakTable;->generateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;

    invoke-direct {v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;-><init>()V

    invoke-virtual {v0}, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;->generateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-direct {v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;-><init>()V

    invoke-virtual {v0}, Lcom/yik/yak/data/db/table/EnvironmentTable;->generateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/yik/yak/data/db/table/FavoritedYakTable;

    invoke-direct {v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;-><init>()V

    invoke-virtual {v0}, Lcom/yik/yak/data/db/table/FavoritedYakTable;->generateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper$1;

    invoke-direct {v1, p0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper$1;-><init>(Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->dropThenCreateDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    return-void
.end method
