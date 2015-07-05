.class public Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllEnvironments()[Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "name ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/yik/yak/data/models/Environment;

    .line 35
    new-instance v3, LAg;

    invoke-direct {v3}, LAg;-><init>()V

    .line 37
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x0

    .line 41
    :cond_0
    invoke-virtual {v3, v1}, LAg;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v4

    aput-object v4, v2, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    return-object v2
.end method

.method public static getCurrentEnvironment()Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "isCurrentEnvironment = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, LAg;

    invoke-direct {v1}, LAg;-><init>()V

    invoke-virtual {v1, v0}, LAg;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v2

    .line 121
    :cond_0
    return-object v2
.end method

.method public static getEnvironment(I)Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-class v1, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, LAg;

    invoke-direct {v1}, LAg;-><init>()V

    invoke-virtual {v1, v0}, LAg;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v2

    .line 25
    :cond_0
    return-object v2
.end method

.method public static insertDefaultEnvironments()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 51
    new-instance v0, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 52
    const-string v1, "Production"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 53
    const-string v1, "PROD"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 54
    const-string v1, "[Use Default Server]"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 55
    const-string v1, "https://notify.yikyakapi.net/api"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 56
    const-string v1, "http://signedup.yikyakapi.net/upload"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v5}, Lcom/yik/yak/data/models/Environment;->setIsCurrentEnvironment(Z)V

    .line 58
    const-string v1, "https://bc.yikyakapi.net/api"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 61
    const-string v2, "QA"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 62
    const-string v2, "QA"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 63
    const-string v2, "http://qa.yikyakapi.net/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 64
    const-string v2, "http://notify-dev.yikyak.io/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 65
    const-string v2, "http://qa.yikyakapi.net:8001/upload"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 66
    const-string v2, "http://bcqa.yikyak.io/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v2}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 69
    const-string v3, "Staging"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 70
    const-string v3, "STAGE"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 71
    const-string v3, "https://staging.yikyakapi.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 72
    const-string v3, "https://notify.yikyak.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 73
    const-string v3, "http://signedup.yikyakapi.net/upload"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 74
    const-string v3, "https://bc.yikyakapi.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/yik/yak/data/models/Environment;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertEnvironments([Lcom/yik/yak/data/models/Environment;)V

    .line 77
    return-void
.end method

.method public static varargs insertEnvironments([Lcom/yik/yak/data/models/Environment;)V
    .locals 7

    .prologue
    .line 80
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    new-instance v2, LAg;

    invoke-direct {v2}, LAg;-><init>()V

    .line 87
    :try_start_0
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 88
    const-class v5, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4}, LAg;->a(Lcom/yik/yak/data/models/Environment;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static resetCurrentEnvironment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v2, "isCurrentEnvironment"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-class v2, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static setCurrentEnvironment(I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->resetCurrentEnvironment()V

    .line 130
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 133
    const-string v2, "isCurrentEnvironment"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-class v2, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public static setCurrentEnvironment(Lcom/yik/yak/data/models/Environment;)V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->setCurrentEnvironment(I)V

    .line 126
    return-void
.end method
