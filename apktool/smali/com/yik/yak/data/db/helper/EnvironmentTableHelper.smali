.class public Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllEnvironments()[Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 31
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

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Lcom/yik/yak/data/models/Environment;

    .line 37
    new-instance v3, LAs;

    invoke-direct {v3}, LAs;-><init>()V

    .line 39
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 43
    :cond_0
    invoke-virtual {v3, v1}, LAs;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v4

    aput-object v4, v2, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    return-object v2
.end method

.method public static getCurrentEnvironment()Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 118
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

    .line 125
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    new-instance v1, LAs;

    invoke-direct {v1}, LAs;-><init>()V

    invoke-virtual {v1, v0}, LAs;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v2

    .line 129
    :cond_0
    return-object v2
.end method

.method public static getEnvironment(I)Lcom/yik/yak/data/models/Environment;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 16
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

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, LAs;

    invoke-direct {v1}, LAs;-><init>()V

    invoke-virtual {v1, v0}, LAs;->a(Landroid/database/Cursor;)Lcom/yik/yak/data/models/Environment;

    move-result-object v2

    .line 27
    :cond_0
    return-object v2
.end method

.method public static insertDefaultEnvironments()V
    .locals 6

    .prologue
    const v4, 0x7f0800e6

    const/4 v5, 0x1

    .line 53
    new-instance v0, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v0}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 54
    const-string v1, "Production"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 55
    const-string v1, "PROD"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 56
    const-string v1, "[Use Default Server]"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 57
    const-string v1, "https://notify.yikyakapi.net/api"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 58
    const-string v1, "http://signedup.yikyakapi.net/upload"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v5}, Lcom/yik/yak/data/models/Environment;->setIsCurrentEnvironment(Z)V

    .line 60
    const-string v1, "https://bc.yikyakapi.net/api"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 61
    const-string v1, "http://lv.yikyakapi.net"

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setLinkEndpoint(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/data/models/Environment;->setConfigurationEndpoint(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v1}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 65
    const-string v2, "QA"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 66
    const-string v2, "QA"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 67
    const-string v2, "http://qa.yikyakapi.net/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 68
    const-string v2, "http://notify-dev.yikyak.io/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 69
    const-string v2, "http://upload.qa.yikyakapi.net/upload"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 70
    const-string v2, "http://bcqa.yikyak.io/api"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 71
    const-string v2, "http://lv.qa.yikyakapi.net"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setLinkEndpoint(Ljava/lang/String;)V

    .line 72
    const-string v2, "http://peeks-test-46705659.us-east-1.elb.amazonaws.com/configurations/locate"

    invoke-virtual {v1, v2}, Lcom/yik/yak/data/models/Environment;->setConfigurationEndpoint(Ljava/lang/String;)V

    .line 74
    new-instance v2, Lcom/yik/yak/data/models/Environment;

    invoke-direct {v2}, Lcom/yik/yak/data/models/Environment;-><init>()V

    .line 75
    const-string v3, "Staging"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setName(Ljava/lang/String;)V

    .line 76
    const-string v3, "STAGE"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setShortName(Ljava/lang/String;)V

    .line 77
    const-string v3, "https://staging.yikyakapi.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setMainApiEndpoint(Ljava/lang/String;)V

    .line 78
    const-string v3, "https://notify.yikyak.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setNotificationEndpoint(Ljava/lang/String;)V

    .line 79
    const-string v3, "http://signedup.yikyakapi.net/upload"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setImageUploadEndpoint(Ljava/lang/String;)V

    .line 80
    const-string v3, "https://bc.yikyakapi.net/api"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setBasecampEndpoint(Ljava/lang/String;)V

    .line 81
    const-string v3, "http://lv.yikyakapi.net"

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setLinkEndpoint(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/yik/yak/YikYak;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yik/yak/data/models/Environment;->setConfigurationEndpoint(Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/yik/yak/data/models/Environment;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->insertEnvironments([Lcom/yik/yak/data/models/Environment;)V

    .line 85
    return-void
.end method

.method public static varargs insertEnvironments([Lcom/yik/yak/data/models/Environment;)V
    .locals 7

    .prologue
    .line 88
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 92
    new-instance v2, LAs;

    invoke-direct {v2}, LAs;-><init>()V

    .line 95
    :try_start_0
    array-length v3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 96
    const-class v5, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4}, LAs;->a(Lcom/yik/yak/data/models/Environment;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
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

    .line 108
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 111
    const-string v2, "isCurrentEnvironment"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-class v2, Lcom/yik/yak/data/db/table/EnvironmentTable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public static setCurrentEnvironment(I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 137
    invoke-static {}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->resetCurrentEnvironment()V

    .line 138
    invoke-static {}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->get()Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/data/db/YikYakSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    const-string v2, "isCurrentEnvironment"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
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

    .line 147
    return-void
.end method

.method public static setCurrentEnvironment(Lcom/yik/yak/data/models/Environment;)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/yik/yak/data/models/Environment;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/yik/yak/data/db/helper/EnvironmentTableHelper;->setCurrentEnvironment(I)V

    .line 134
    return-void
.end method
