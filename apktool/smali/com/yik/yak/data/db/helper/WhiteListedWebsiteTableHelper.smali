.class public Lcom/yik/yak/data/db/helper/WhiteListedWebsiteTableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWhiteListedWebsites()[Lcom/yik/yak/data/models/Website;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "name ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/yik/yak/data/models/Website;

    .line 18
    new-instance v3, LAu;

    invoke-direct {v3}, LAu;-><init>()V

    .line 19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 23
    :cond_0
    invoke-virtual {v3, v1}, LAu;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Website;

    move-result-object v4

    aput-object v4, v2, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 29
    return-object v2
.end method

.method public static insertWebsites([Lcom/yik/yak/data/models/Website;)V
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 38
    :try_start_0
    new-instance v2, LAu;

    invoke-direct {v2}, LAu;-><init>()V

    .line 40
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 41
    const-class v5, Lcom/yik/yak/data/db/table/WhiteListedWebsiteTable;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4}, LAu;->a(Lcom/yik/yak/data/models/Website;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 50
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
