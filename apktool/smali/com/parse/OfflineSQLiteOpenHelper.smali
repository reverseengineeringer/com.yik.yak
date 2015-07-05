.class Lcom/parse/OfflineSQLiteOpenHelper;
.super Lcom/parse/ParseSQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "ParseOfflineStore"

.field private static final DATABASE_VERSION:I = 0x4

.field static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field static final KEY_IS_DELETING_EVENTUALLY:Ljava/lang/String; = "isDeletingEventually"

.field static final KEY_JSON:Ljava/lang/String; = "json"

.field static final KEY_KEY:Ljava/lang/String; = "key"

.field static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field static final KEY_UUID:Ljava/lang/String; = "uuid"

.field static final TABLE_DEPENDENCIES:Ljava/lang/String; = "Dependencies"

.field static final TABLE_OBJECTS:Ljava/lang/String; = "ParseObjects"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 52
    const-string v0, "ParseOfflineStore"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/parse/ParseSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    return-void
.end method

.method private createSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 61
    const-string v0, "CREATE TABLE ParseObjects (uuid TEXT PRIMARY KEY, className TEXT NOT NULL, objectId TEXT, json TEXT, isDeletingEventually INTEGER DEFAULT 0, UNIQUE(className, objectId));"

    .line 69
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "CREATE TABLE Dependencies (key TEXT NOT NULL, uuid TEXT NOT NULL, PRIMARY KEY(key, uuid));"

    .line 76
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public clearDatabase(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    const-string v0, "ParseOfflineStore"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 100
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;->createSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
